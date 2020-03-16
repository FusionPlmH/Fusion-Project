package com.android.fusionleo.salt.widget;



import android.content.Context;
import android.os.Vibrator;

import com.android.leo.R;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipBackAction;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipBackActionApp;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipVibrate;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipVibrateLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class MeterBack extends MeterBase {
	public static final String NAME = MeterBack.class.getSimpleName();

	public MeterBack(Context context) {
		super(context);
		Register(NAME, this);
	setImageResource(getLeoMiResource("drawable/back_selector"));
		setResId(getLeoMiResource("drawable/pop_back")
			, getLeoMiResource("drawable/back_pressed"));
		//setImageResource(R.drawable.flashlight_selector);
		//setResId(R.drawable.pop_flashlight, R.drawable.flashlight_pressed);
	}

	public void Click() {
		LeoStatusSettings(mContext);
		Vibrate(mContext,setLeoUesrMipVibrate,setLeoUesrMipVibrateLevel);
		int Style=setLeoUesrMipBackAction;
		if (Style <= 0) {
			Style=102;
		}
		LeoGlobalActiong(mContext,Style,setLeoUesrMipBackActionApp);
	}
	public Vibrator mVibrator;
	public void Vibrate(Context c,int off,int style) {
		if (off== 1) {
			this.mVibrator = (Vibrator) c.getSystemService(Context.VIBRATOR_SERVICE);
			this.mVibrator.vibrate(style);
		}
	}
	public void LongClick() {
		//AppLog.i("way", "home  long click");
	}
}
