package com.android.settingslib.salt.widget;

import java.util.HashMap;
import java.util.Map;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.PixelFormat;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.ImageView;

import com.android.settingslib.salt.animation.AnimationParking;
import static com.android.settingslib.salt.SaltConfigFrame.getCustomDrawable;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoHaptics;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoMiniVibratorEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoMiniVibratorLevel;



public abstract class MeterBase extends ImageView {
    public Context mContext;
	public static Map<String, MeterBase> MeterMap = new HashMap<String, MeterBase>();
	public static int baseX = 0;
	public static int baseY = Until.SCREEM_HEIGHT / 2;
	private Handler handler4LongClick = new Handler();
	private boolean hasMoved = false;
	public boolean isLongClick = false;
	private final long mTime4LongClick = 1000L;
	public WindowManager mWindowManager ;
	private String resId ;
	private String Selected;
	private Runnable runnable4LongClick = () -> {
	};
	public WindowManager.LayoutParams wmParams = new WindowManager.LayoutParams();
	public MeterBase(Context context) {
		super(context);
        mContext=context;
		this.mWindowManager = ((WindowManager)mContext.getApplicationContext()
				.getSystemService(Context.WINDOW_SERVICE));
		this.wmParams.type = LayoutParams.TYPE_SYSTEM_ALERT;
		this.wmParams.format = PixelFormat.TRANSPARENT;
		wmParams.flags = LayoutParams.FLAG_NOT_FOCUSABLE | LayoutParams.FLAG_WATCH_OUTSIDE_TOUCH | WindowManager.LayoutParams.FLAG_SHOW_WHEN_LOCKED;
		this.wmParams.gravity = Gravity.LEFT | Gravity.TOP;
		this.wmParams.x = baseX;
		this.wmParams.y = baseY;
		this.wmParams.height = Until.IMAGE_WIDTH;
		this.wmParams.width = Until.IMAGE_WIDTH;
		this.mWindowManager.addView(this, wmParams);
		SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(getContext());
		boolean isMipopShow = sp.getBoolean(
				"", false);
		if (isMipopShow) {
			setVisibility(VISIBLE);
		} else {
			setVisibility(GONE);
		}
	}



	public static Map<String, MeterBase> getMap() {
		return MeterMap;
	}

	protected abstract void Click();

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
			MiniDrawable(Selected);
			handler4LongClick.postDelayed(runnable4LongClick, mTime4LongClick);
			AnimationParking.stop();
			return true;
		case MotionEvent.ACTION_MOVE:
			return true;
		case MotionEvent.ACTION_UP:

			MiniDrawable(resId);
			this.handler4LongClick.removeCallbacks(runnable4LongClick);
			if (!hasMoved) {
				if (!isLongClick) {

					Click();
				}
			}
			if(isLongClick){

			}else if(hasMoved){

			}
			
	        hasMoved = false;
	        isLongClick = false;
            AnimationParking.start();
            return true;

		default:
			break;
		}
		AnimationParking.shrinkStart();
		return true;

	}



	public void update(int x, int y) {
		wmParams.x = x;
		wmParams.y = y;
		mWindowManager.updateViewLayout(this, wmParams);
	}
	public void MiniDrawable(String XML){
		setImageDrawable(getCustomDrawable(getContext(),XML));
	}

	public void MiniButton(String xml,String normal,String selected){
		MiniDrawable(xml);
		resId= normal;
		Selected= selected;
	}

	public void updateAction(int style,String str,int mr) {
		Context context= getContext();
		LeoSysUiManages( context);
		setLeoHaptics(context,setLeoMiniVibratorEnabled,setLeoMiniVibratorLevel);
		int c2=style;
		if(c2<=0){
			c2=mr;
		}
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("I'm from China");
        stringBuilder.append("developer");
        stringBuilder.append(new String(new char[]{'s', 'a', 'l', 't'}));
        Log.d(TAG, stringBuilder.toString());
		setLeoAction(context,str, c2);
	}
	public final static String TAG =MeterBase.class.getSimpleName();
}
