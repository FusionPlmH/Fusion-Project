package com.android.settingslib.salt;



import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.drawable.Drawable;
import android.os.Handler;

import android.util.Log;
import android.util.TypedValue;
import android.view.MotionEvent;

import android.view.ViewConfiguration;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.android.settingslib.salt.utils.LeoReceiver;

import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.SaltConfigFrame.getCustomDrawable;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoHaptics;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.mLeoFloatBall;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallAlpha;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallClickAction;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallDownAction;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallDownSlideDelete;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallIconSize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallIconStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallLeftAction;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallRightAction;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallUPAction;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallVibratorEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallVibratorLevel;
import static com.android.settingslib.salt.widget.Until.getStatusBarHeight;


public class SaltFloatBall extends LinearLayout implements LeoReceiver.BroadcastListener{

  private ImageView mImgBigBall;
    private ImageView mImgBg;
    public final static String TAG =SaltFloatBall.class.getSimpleName();
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

    public SaltFloatBall(Context context) {
        super(context);

        mContext=context;

        mWindowManager = (WindowManager) getContext().getSystemService(Context.WINDOW_SERVICE);

        initView();
        updateSetting();
        BroadcastReceiver actionBroadcastReceiver = new LeoReceiver(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(rt100foleo("U0FMVF9VUERBVEVfRkxPQVRfR0VTVFVSRV9TRVRUSU5HUw=="));
        mContext.registerReceiver(actionBroadcastReceiver, intentFilter);

    }
    public  int getLeoFloatResource(String resource ) {
        return  mContext.getResources().getIdentifier(resource, null, "com.android.systemui");

    }
    public  Drawable[] BallIcon = {CustomDrawable("tw_leo_tweaks"),
            CustomDrawable("ball_1"),
            CustomDrawable("ball_2"),
            CustomDrawable("ball_3"),
            CustomDrawable("ball_4"),
            CustomDrawable("ball_6"),
            CustomDrawable("ball_0"),
            CustomDrawable("ball_7"),
            CustomDrawable("ball_8"),
            CustomDrawable("ball_9"),
            CustomDrawable("ball_10"),
            CustomDrawable("ball_11"),
            CustomDrawable("ball_12"),
            CustomDrawable("ball_14"),
            CustomDrawable("ball_15"),
            CustomDrawable("ball_16"),
            CustomDrawable("ball_17"),
            CustomDrawable("ball_18"),

    };
    public Drawable CustomDrawable(String str){
        return getCustomDrawable(getContext(), str);
    }
    private void initView() {
        //LeoSettings(mContext);
        inflate(getContext(),getLeoFloatResource("layout/salt_floating_layout"), this);
        mImgBigBall = (ImageView) findViewWithTag("leo_floating_bg");
        mImgBg = (ImageView)findViewWithTag("leo_floating_img");
        mTouchSlop = ViewConfiguration.get(getContext()).getScaledTouchSlop();
        mCurrentMode = MODE_NONE;
        mStatusBarHeight =getStatusBarHeight(mContext);
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
                 //   mImgBall.setVisibility(INVISIBLE);
                    mImgBigBall.setVisibility(VISIBLE);
                    mLastDownTime = System.currentTimeMillis();
                    mLastDownX = event.getX();
                    mLastDownY = event.getY();
                    postDelayed(() -> {
                        if (isLongTouch()) {
                            mIsLongTouch = true;
                            Vibrate(mContext);
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
                        mWindowManager.updateViewLayout(this, mLayoutParams);
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
                        updateAction(mContext,setLeoFloatBallClickAction,mLeoFloatBall[6],200);
                    } else {
                        doUp();
                    }
                  //  mImgBall.setVisibility(VISIBLE);
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

    private void toRemove() {

     if (mRemoveBall==1) {
         Vibrate(mContext);
         SaltFloatWindowManager.removeBallView(getContext());
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
    public void Vibrate(Context context) { ;
       setLeoHaptics(context,setLeoFloatBallVibratorEnabled,setLeoFloatBallVibratorLevel);
    }


    private void updateSetting() {
       LeoSysUiManages( mContext );
        doUp();
        mRemoveBall=setLeoFloatBallDownSlideDelete;
        Drawable drawable  =BallIcon[setLeoFloatBallIconStyle];
        int alpha=setLeoFloatBallAlpha;
        mImgBigBall.setImageDrawable(drawable);
        mImgBigBall.getDrawable().setAlpha(alpha);
        mImgBg.setImageDrawable(drawable);
        mImgBg.getDrawable().setAlpha(alpha);
        setViewSize(setLeoFloatBallIconSize);
    }

    public void setViewSize( float width) {
       setScaleX(width);
      setScaleY(width);
    }
    private void updateAction(Context context,int style,String str,int mr) {
        Vibrate(context);
        int c2=style;
        if(c2<=0){
            c2=mr;
        }
        setLeoAction(mContext,str, c2);
    }
    private void doUp() {
        Context context=mContext;
        switch (mCurrentMode) {
            case MODE_LEFT:
                updateAction(context,setLeoFloatBallLeftAction,mLeoFloatBall[9],203);
                break;
            case MODE_RIGHT:
                updateAction(context,setLeoFloatBallRightAction,mLeoFloatBall[10],203);
                break;
            case MODE_DOWN:
                updateAction(context,setLeoFloatBallDownAction,mLeoFloatBall[8],202);
                break;
            case MODE_UP:
                updateAction(context,setLeoFloatBallUPAction,mLeoFloatBall[7],201);
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


    public int dip2px(float dip) {
        return (int) TypedValue.applyDimension(
                TypedValue.COMPLEX_UNIT_DIP, dip, getContext().getResources().getDisplayMetrics()
        );
    }


    @Override
    public void onLeoChange(Intent intent) {
        String action = intent.getAction();
        if (action.equals(rt100foleo("U0FMVF9VUERBVEVfRkxPQVRfR0VTVFVSRV9TRVRUSU5HUw=="))) {
            updateSetting();
        }
    }
}
