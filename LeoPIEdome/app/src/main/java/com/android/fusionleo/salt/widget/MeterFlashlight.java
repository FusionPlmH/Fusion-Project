package com.android.fusionleo.salt.widget;



import android.content.Context;
import android.os.Vibrator;

import com.android.leo.R;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipFlashlightAction;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipFlashlightActionApp;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipVibrate;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipVibrateLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class MeterFlashlight extends MeterBase {
	public static final String NAME = MeterFlashlight.class.getSimpleName();

	public MeterFlashlight(Context context) {
		super(context);
		Register(NAME, this);
		//setSoundEffectsEnabled(true);
	//setImageResource(R.drawable.flashlight_selector);
		//setResId(R.drawable.pop_flashlight, R.drawable.flashlight_pressed);
		setImageResource(getLeoMiResource("drawable/flashlight_selector"));
		setResId(getLeoMiResource("drawable/pop_flashlight")
		, getLeoMiResource("drawable/flashlight_pressed"));
	}

	public void Click() {
		LeoStatusSettings(mContext);
		Vibrate(mContext,setLeoUesrMipVibrate,setLeoUesrMipVibrateLevel);
		int Style= setLeoUesrMipFlashlightAction;
		if (Style <= 0) {
			Style=130;
		}
		LeoGlobalActiong(mContext,Style,setLeoUesrMipFlashlightActionApp);

	}
	public Vibrator mVibrator;
	public void Vibrate(Context c,int off,int style) {
		if (off== 1) {
			this.mVibrator = (Vibrator) c.getSystemService(Context.VIBRATOR_SERVICE);
			this.mVibrator.vibrate(style);
		}
	}
	public void LongClick() {
	//	AppLog.i("way", "menu  long click");
	}
}
