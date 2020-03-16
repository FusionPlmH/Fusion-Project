package com.android.fusionleo.salt.widget;

import java.util.HashMap;
import java.util.Map;

import android.content.ContentResolver;
import android.content.Context;
import android.content.SharedPreferences;
import android.database.ContentObserver;
import android.graphics.Paint;
import android.graphics.PixelFormat;
import android.graphics.PorterDuff;
import android.os.Handler;
import android.os.Vibrator;
import android.preference.PreferenceManager;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;

import com.android.fusionleo.salt.animation.AnimationParking;


public abstract class MeterBase extends ImageView {
	public static Map<String, MeterBase> MeterMap = new HashMap<>();
	public static int baseX = 0;
	public static int baseY = Until.SCREEM_HEIGHT / 2;
	//public static int mLeftMargin = 0;
	//public static boolean mTouchDown = false;
	//public static Paint paint = new Paint();
	private Handler handler4LongClick = new Handler();
	private boolean hasMoved = false;
	public boolean isLongClick = false;
	private final long mTime4LongClick = 1000L;
	public WindowManager mWindowManager;
	private int resId = 0;
	private int resIdPressed = 0;
	private Runnable runnable4LongClick = () -> {
        //isLongClick = true;
    //	LongClick();
    };
	protected Context mContext;
	public WindowManager.LayoutParams wmParams = new WindowManager.LayoutParams();
	public MeterBase(Context context) {
		super(context);
        mContext=context;
		this.mWindowManager = ((WindowManager) context.getApplicationContext().getSystemService(Context.WINDOW_SERVICE));
		this.wmParams.type = LayoutParams.TYPE_SYSTEM_ALERT;
		this.wmParams.format = PixelFormat.TRANSPARENT;
		wmParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE | LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH;
		this.wmParams.gravity = Gravity.LEFT | Gravity.TOP;
		this.wmParams.x = baseX;
		this.wmParams.y = baseY;
		this.wmParams.height = Until.IMAGE_WIDTH;
		this.wmParams.width = Until.IMAGE_WIDTH;
		this.mWindowManager.addView(this, wmParams);
		SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(mContext);

		boolean isMipopShow = sp.getBoolean(
				"", false);

		if (isMipopShow) {
			setVisibility(VISIBLE);
		} else {
			setVisibility(GONE);
		}
	}

    public  int getLeoMiResource(String resource ) {
        return  mContext.getResources().getIdentifier(resource, null, "com.android.systemui");

    }

	public static Map<String, MeterBase> getMap() {
		return MeterMap;
	}

	protected abstract void Click();

	protected abstract void LongClick();

	public void Register(String name, MeterBase key) {
		MeterMap.put(name, key);
	}

	public void moved() {
		hasMoved = true;
		handler4LongClick.removeCallbacks(runnable4LongClick);
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN:
		//	AppLog.i("OUT", "base DOWN" + hasMoved);
			setImageResource(resIdPressed);
			handler4LongClick.postDelayed(runnable4LongClick, mTime4LongClick);
			AnimationParking.stop();
			return true;
		case MotionEvent.ACTION_MOVE:
			return true;
		case MotionEvent.ACTION_UP:
		//	AppLog.i("OUT", "base UP" + this.hasMoved);
			setImageResource(resId);
			this.handler4LongClick.removeCallbacks(runnable4LongClick);
			if (!hasMoved) {
				if (!isLongClick) {
					//AppLog.i("Suhao.Click", "MeterBase.UP, Click");
					Click();
				}
			}
			if(isLongClick){
				//LongClick();
			//	AppLog.i("Suhao.Click", "MeterBase.UP, Long click");
			}else if(hasMoved){
			//	AppLog.i("Suhao.Click", "MeterBase.UP, has moved");
			}
			
	        hasMoved = false;
	        isLongClick = false;
            AnimationParking.start();
            return true;

		default:
			break;
		}
		//AppLog.i("OUT", "base ACTION_OUTSIDE" + this.hasMoved);
		AnimationParking.shrinkStart();
		return true;
        /*for (;;)
        {
            return true;
            AppLog.i("OUT", "base DOWN" + this.hasMoved);
            setImageResource(this.resIdPressed);
            this.handler4LongClick.postDelayed(this.runnable4LongClick, 1000L);
            AnimationParking.stop();
            continue;
            AppLog.i("OUT", "base UP" + this.hasMoved);
            setImageResource(this.resId);
            this.handler4LongClick.removeCallbacks(this.runnable4LongClick);
            if (!this.hasMoved) {
                if (!this.isLongClick)
                {
                    AppLog.i("Suhao.Click", "MeterBase.UP, Click");
                    Click();
                }
            }
            for (;;)
            {
                this.hasMoved = false;
                this.isLongClick = false;
                AnimationParking.start();
                break;
                AppLog.i("Suhao.Click", "MeterBase.UP, Long click");
                continue;
                AppLog.i("Suhao.Click", "MeterBase.UP, has moved");
            }
            AppLog.i("OUT", "base ACTION_OUTSIDE" + this.hasMoved);
            AnimationParking.shrinkStart();
        }*/
	}

	public void setResId(int normal, int pressed) {
		resId = normal;
		resIdPressed = pressed;
	}

	public void update(int x, int y) {
		wmParams.x = x;
		wmParams.y = y;
		mWindowManager.updateViewLayout(this, wmParams);
	}
}
