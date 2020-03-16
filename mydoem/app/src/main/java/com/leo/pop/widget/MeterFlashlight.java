package com.leo.pop.widget;



import android.content.Context;
import android.os.Vibrator;

import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipFlashlightAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipFlashlightActionApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipVibrate;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipVibrateLevel;
import static com.os.leo.utils.LeoUserString.LeoAction;

public class MeterFlashlight extends MeterBase {
	public static final String NAME = MeterFlashlight.class.getSimpleName();

	public MeterFlashlight(Context context) {
		super(context);
		Register(NAME, this);
		//setSoundEffectsEnabled(true);
	//	setImageResource(R.drawable.flashlight_selector);
		//setResId(R.drawable.flashlight, R.drawable.flashlight_pressed);
		setImageResource(getLeoResource("drawable/flashlight_selector"));
		setResId(getLeoResource("drawable/flashlight")
				, getLeoResource("drawable/flashlight_pressed"));
	}

	public void Click() {
		LeoSettings(getContext());
		Vibrate(getContext(),setLeoUesrMipVibrate,setLeoUesrMipVibrateLevel);
		int Style= setLeoUesrMipFlashlightAction;
		if (Style <= 0) {
			Style=116;
		}
		LeoAction(getContext(),Style,setLeoUesrMipFlashlightActionApp);

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
