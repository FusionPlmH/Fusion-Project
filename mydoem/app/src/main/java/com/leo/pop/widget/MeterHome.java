package com.leo.pop.widget;

import android.app.Instrumentation;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Vibrator;
import android.util.Log;
import android.view.MotionEvent;


import com.leo.pop.animation.AnimationParking;

import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipHomeAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipHomeActionApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipVibrate;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipVibrateLevel;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureVibrationLevel;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightLongClickAction;
import static com.os.leo.utils.LeoUserString.LeoAction;

public class MeterHome extends MeterBase {
	public static final String NAME = MeterHome.class.getSimpleName();
	private int changeX = 0;
	private int changeY = 0;
	private boolean hasMoved = false;
	private int mTouchStartX = 0;
	private int mTouchStartY = 0;

	public MeterHome(Context context) {
		super(context);
		Register(NAME, this);
		setImageResource(getLeoResource("drawable/home_selector"));
		setResId(getLeoResource("drawable/home")
				, getLeoResource("drawable/home_pressed"));
	}

	public void Click() {
	    LeoSettings(getContext());
		Vibrate(getContext(),setLeoUesrMipVibrate,setLeoUesrMipVibrateLevel);
		int Style=setLeoUesrMipHomeAction;
		if (Style <= 0) {
			Style=101;
		}
		LeoAction(getContext(),Style,setLeoUesrMipHomeActionApp);
	}
	@Override
	protected void LongClick() {

	}
	public Vibrator mVibrator;
	public void Vibrate(Context c,int off,int style) {
		if (off== 1) {
			this.mVibrator = (Vibrator) c.getSystemService(Context.VIBRATOR_SERVICE);
			this.mVibrator.vibrate(style);
		}
	}

	protected void onConfigurationChanged(Configuration configuration) {
		super.onConfigurationChanged(configuration);
		Until.initialPop(getContext());
		AnimationParking.land();
	}

	@Override
	public boolean onTouchEvent(MotionEvent event) {
		int rawX = (int) event.getRawX();
		int rawY = (int) event.getRawY() - Until.STATUS_HEIGHT;
		if ((Math.abs(rawX - mTouchStartX) <= Until.MOVE_MAX_SIZE)
			&& (Math.abs(rawY - mTouchStartY) <= Until.MOVE_MAX_SIZE))
		return super.onTouchEvent(event);
		switch (event.getAction()) {
		case MotionEvent.ACTION_DOWN:
		//	AppLog.i("OUT", "back ACTION_DOWN" + this.hasMoved);
			this.changeX = rawX;
			this.changeY = rawY;
			this.mTouchStartX = rawX;
			this.mTouchStartY = rawY;
			break;
		case MotionEvent.ACTION_MOVE:
		// AppLog.i("OUT", "back ACTION_OUTSIDE");
			int offsetX = rawX - changeX;
			int offsetY = rawY - changeY;
			if ((Math.abs(offsetX) > 3) || (Math.abs(offsetY) > 3)) {
			//	AppLog.i("way", "baseX/offsetX = " + baseX + "/" + offsetX);
				baseX = offsetX + baseX;
				baseY = offsetY + baseY;
				AnimationParking.updateAll(baseX, baseY);
				changeX = rawX;
				changeY = rawY;
				moved();
			}
			break;

		case MotionEvent.ACTION_UP:
			//Log.i("Suhao.Click", "MeterBacd.UP, MOVE_MAX_SIZE/baseX= "
				//	+ Until.MOVE_MAX_SIZE + " / " + baseX);
			if (!this.hasMoved) {
			}
			hasMoved = false;
			break;
		default:
			break;
		}
		return super.onTouchEvent(event);

	}
    /* boolean bool = true;
    int i = (int)event.getRawX();
    int j = -25 + (int)event.getRawY();
    switch (event.getAction())
    {
    }
    for (;;)
    {
        bool = super.onTouchEvent(event);
        do
        {
            return bool;
            AppLog.i("OUT", "back ACTION_DOWN" + this.hasMoved);
            mTouchDown = bool;
            this.changeX = i;
            this.changeY = j;
            this.mTouchStartX = i;
            this.mTouchStartY = j;
            this.isDown = bool;
            break;
            AppLog.i("OUT", "back ACTION_OUTSIDE");
            break;
            int k = i - this.changeX;
            int m = j - this.changeY;
            if ((Math.abs(k) > 3) || (Math.abs(m) > 3))
            {
                AppLog.i("MBack", "baseX/offsetX = " + baseX + "/" + k);
                baseX = k + baseX;
                baseY = m + baseY;
                AnimationParking.updateAll(baseX, baseY);
                this.changeX = i;
                this.changeY = j;
            }
        } while ((Math.abs(i - this.mTouchStartX) <= Until.MOVE_MAX_SIZE) && (Math.abs(j - this.mTouchStartY) <= Until.MOVE_MAX_SIZE));
        moved();
        return bool;
        AppLog.i("Suhao.Click", "MeterBacd.UP, MOVE_MAX_SIZE/baseX= " + Until.MOVE_MAX_SIZE + " / " + baseX);
        if (!this.hasMoved) {}
        mTouchDown = false;
        this.hasMoved = false;
        this.isDown = false;
    }*/
}
