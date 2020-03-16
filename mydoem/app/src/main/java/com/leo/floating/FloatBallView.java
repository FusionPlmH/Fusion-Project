package com.leo.floating;


import android.accessibilityservice.AccessibilityService;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.dome.leo.R;

import java.lang.reflect.Field;

import static com.android.systemui.UId.UID68;
import static com.android.systemui.UId.UID69;
import static com.android.systemui.UId.UID70;
import static com.android.systemui.UId.UID71;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingClickString;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingClickStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingDownSlideDelete;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingDownString;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingDownStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingLeftString;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingLeftStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingRightString;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingRightStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingUPString;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingUPStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingVibrate;
import static com.os.leo.utils.LeoUserSettings.getLeoFloatingVibratelevel;
import static com.os.leo.utils.LeoUserSettings.setLeoUesFloatingRightString;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingClickString;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingClickStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingDownSlideDelete;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingDownString;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingDownStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingLeftString;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingLeftStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingRightStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingUPString;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingUPStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingVibrate;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrFloatingVibratelevel;
import static com.os.leo.utils.LeoUserString.LeoAction;
import static com.os.leo.utils.LeoUtils.getLeoUri;


/**
 * Created by wangxiandeng on 2016/11/25.
 */

public class FloatBallView extends LinearLayout {
    private ImageView mImgBall;
    private ImageView mImgBigBall;
    private ImageView mImgBg;

    private WindowManager mWindowManager;

    private WindowManager.LayoutParams mLayoutParams;

    private long mLastDownTime;
    private float mLastDownX;
    private float mLastDownY;

    private boolean mIsLongTouch;

    private boolean mIsTouching;

    private float mTouchSlop;
    private final static long LONG_CLICK_LIMIT = 300;
    private final static long REMOVE_LIMIT = 1500;
    private final static long CLICK_LIMIT = 200;

    private int mStatusBarHeight;


    private int mCurrentMode;

    private final static int MODE_NONE = 0x000;
    private final static int MODE_DOWN = 0x001;
    private final static int MODE_UP = 0x002;
    private final static int MODE_LEFT = 0x003;
    private final static int MODE_RIGHT = 0x004;
    private final static int MODE_MOVE = 0x005;
    private final static int MODE_GONE = 0x006;

    private final static int OFFSET = 30;

    private float mBigBallX;
    private float mBigBallY;

    private int mOffsetToParent;
    private int mOffsetToParentY;


public Context mContext;

    public FloatBallView(Context context) {
        super(context);

        mContext=context;
        mWindowManager = (WindowManager) getContext().getSystemService(Context.WINDOW_SERVICE);
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
        initView();

    }
    private LeoRomObserver mLeoRomObserver;
    private Vibrator mVibrator;
    private void initView() {
        //LeoSettings(mContext);
        inflate(getContext(), getLeoResource("layout/leo_floating"), this);
        mImgBall = (ImageView) findViewById(getLeoResource("id/floating_press_img"));
        mImgBigBall = (ImageView) findViewById(getLeoResource("id/floating_bg"));
        mImgBg = (ImageView) findViewById(getLeoResource("id/floating_img"));
        mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        mCurrentMode = MODE_NONE;

        mStatusBarHeight = getStatusBarHeight();
        mOffsetToParent = dip2px(25);
        mOffsetToParentY = mStatusBarHeight + mOffsetToParent;


        mImgBigBall.post(() -> {
            mBigBallX = mImgBigBall.getX();
            mBigBallY = mImgBigBall.getY();
        });

        mImgBg.setOnTouchListener((v, event) -> {
            switch (event.getAction()) {
                case MotionEvent.ACTION_DOWN:
                    mIsTouching = true;
                    mImgBall.setVisibility(INVISIBLE);
                    mImgBigBall.setVisibility(VISIBLE);
                    mLastDownTime = System.currentTimeMillis();
                    mLastDownX = event.getX();
                    mLastDownY = event.getY();
                    postDelayed(() -> {
                        if (isLongTouch()) {
                            mIsLongTouch = true;
                            Vibrate();
                        }
                    }, LONG_CLICK_LIMIT);
                    break;
                case MotionEvent.ACTION_MOVE:
                    if (!mIsLongTouch && isTouchSlop(event)) {
                        return true;
                    }
                    if (mIsLongTouch && (mCurrentMode == MODE_NONE || mCurrentMode == MODE_MOVE)) {
                        mLayoutParams.x = (int) (event.getRawX() - mOffsetToParent);
                        mLayoutParams.y = (int) (event.getRawY() - mOffsetToParentY);
                        mWindowManager.updateViewLayout(FloatBallView.this, mLayoutParams);
                        mBigBallX = mImgBigBall.getX();
                        mBigBallY = mImgBigBall.getY();
                        mCurrentMode = MODE_MOVE;
                    } else {
                        doGesture(event);
                    }
                    break;
                case MotionEvent.ACTION_CANCEL:
                case MotionEvent.ACTION_UP:
                    mIsTouching = false;
                    if (mIsLongTouch) {
                        mIsLongTouch = false;
                    } else if (isClick(event)) {
                        updateclick();
                    } else {
                        doUp();
                    }
                    mImgBall.setVisibility(VISIBLE);
                    mImgBigBall.setVisibility(INVISIBLE);
                    mCurrentMode = MODE_NONE;
                    break;
            }
            return true;
        });
    }


    private boolean isLongTouch() {
        long time = System.currentTimeMillis();
        if (mIsTouching && mCurrentMode == MODE_NONE && (time - mLastDownTime >= LONG_CLICK_LIMIT)) {
            return true;
        }
        return false;
    }

    /**
     * 移除悬浮球
     */
    private void toRemove() {

     if (mRemoveBall==1) {
         Vibrate();
            FloatWindowManager.removeBallView(getContext());
    }

    }
private  int mRemoveBall;
    /**
     * 判断是否是轻微滑动
     *
     * @param event
     * @return
     */
    private boolean isTouchSlop(MotionEvent event) {
        float x = event.getX();
        float y = event.getY();
        if (Math.abs(x - mLastDownX) < mTouchSlop && Math.abs(y - mLastDownY) < mTouchSlop) {
            return true;
        }
        return false;
    }

    /**
     * 判断手势（左右滑动、上拉下拉)）
     *
     * @param event
     */
    private void doGesture(MotionEvent event) {
        float offsetX = event.getX() - mLastDownX;
        float offsetY = event.getY() - mLastDownY;

        if (Math.abs(offsetX) < mTouchSlop && Math.abs(offsetY) < mTouchSlop) {
            return;
        }
        if (Math.abs(offsetX) > Math.abs(offsetY)) {
            if (offsetX > 0) {
                if (mCurrentMode == MODE_RIGHT) {
                    return;
                }
                mCurrentMode = MODE_RIGHT;
                mImgBigBall.setX(mBigBallX + OFFSET);
                mImgBigBall.setY(mBigBallY);
            } else {
                if (mCurrentMode == MODE_LEFT) {
                    return;
                }
                mCurrentMode = MODE_LEFT;
                mImgBigBall.setX(mBigBallX - OFFSET);
                mImgBigBall.setY(mBigBallY);
            }
        } else {
            if (offsetY > 0) {
                if (mCurrentMode == MODE_DOWN || mCurrentMode == MODE_GONE) {
                    return;
                }
                mCurrentMode = MODE_DOWN;
                mImgBigBall.setX(mBigBallX);
                mImgBigBall.setY(mBigBallY + OFFSET);
                //如果长时间保持下拉状态，将会触发移除悬浮球功能
                postDelayed(() -> {
                    if (mCurrentMode == MODE_DOWN && mIsTouching) {
                        toRemove();
                        mCurrentMode = MODE_GONE;
                    }
                }, REMOVE_LIMIT);
            } else {
                if (mCurrentMode == MODE_UP) {

                    return;
                }
                mCurrentMode = MODE_UP;
                mImgBigBall.setX(mBigBallX);
                mImgBigBall.setY(mBigBallY - OFFSET);
            }
        }
    }

    /**
     * 手指抬起后，根据当前模式触发对应功能
     */
    public void Vibrate() { ;
      if (setLeoUesrFloatingVibrate== 1) {
           mVibrator = (Vibrator) this.mContext.getSystemService(Context.VIBRATOR_SERVICE);
            this.mVibrator.vibrate(setLeoUesrFloatingVibratelevel);
       // this.mVibrator.vibrate(15);
  }
    }
    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoFloatingDownSlideDelete()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingVibrate()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingVibratelevel()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingLeftStyle()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingRightStyle()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingDownStyle()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingUPStyle()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingClickStyle()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingLeftString()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingRightString()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingDownString()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingUPString()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoFloatingClickString()), false, this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateSetting();
            doUp();
        }
    }
    private void updateSetting() {
        LeoSettings(mContext);
        doUp();
        mRemoveBall=setLeoUesrFloatingDownSlideDelete;

    }
    private void updateclick() {
        Vibrate();
        int c3=setLeoUesrFloatingClickStyle;
        if(c3<=0){
            c3=101;
        }
        LeoAction(getContext(),c3,setLeoUesrFloatingClickString);
    }

    private void updateAction(int style) {
        Vibrate();
        switch (style) {
            case 0://
                int a=setLeoUesrFloatingLeftStyle;
                if(a<=0){
                    a=109;
                }
                LeoAction(getContext(),a,setLeoUesrFloatingLeftString);
                break;
            case 1:
                int b=setLeoUesrFloatingRightStyle;;
                if(b<=0){
                  b=124;
                }
                LeoAction(getContext(),b,setLeoUesFloatingRightString);
                break;
            case 2:
                int c1=setLeoUesrFloatingDownStyle;
                if(c1<=0){
                    c1=102;
                }
                LeoAction(getContext(),c1,setLeoUesrFloatingDownString);
                break;
            case 3:
                int c2=setLeoUesrFloatingUPStyle;
                if(c2<=0){
                    c2=111;
                }
                LeoAction(getContext(),c2,setLeoUesrFloatingUPString);
                break;

        }
    }
    private void doUp() {
        switch (mCurrentMode) {
            case MODE_LEFT:
                updateAction(0);
                break;
            case MODE_RIGHT:
                updateAction(1);
                break;
            case MODE_DOWN:
                updateAction(2);
                break;
            case MODE_UP:
                updateAction(3);
                break;

        }
        mImgBigBall.setX(mBigBallX);
        mImgBigBall.setY(mBigBallY);
    }

    public void setLayoutParams(WindowManager.LayoutParams params) {
        mLayoutParams = params;
    }


    /**
     * 判断是否是单击
     *
     * @param event
     * @return
     */
    private boolean isClick(MotionEvent event) {
        float offsetX = Math.abs(event.getX() - mLastDownX);
        float offsetY = Math.abs(event.getY() - mLastDownY);
        long time = System.currentTimeMillis() - mLastDownTime;

        if (offsetX < mTouchSlop * 2 && offsetY < mTouchSlop * 2 && time < CLICK_LIMIT) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * 获取通知栏高度
     *
     * @return
     */
    private int getStatusBarHeight() {
        int statusBarHeight = 0;
        try {
            Class<?> c = Class.forName("com.android.internal.R$dimen");
            Object o = c.newInstance();
            Field field = c.getField("status_bar_height");
            int x = (Integer) field.get(o);
            statusBarHeight = getResources().getDimensionPixelSize(x);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return statusBarHeight;
    }

    public int dip2px(float dip) {
        return (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, dip, getContext().getResources().getDisplayMetrics()
        );
    }

}
