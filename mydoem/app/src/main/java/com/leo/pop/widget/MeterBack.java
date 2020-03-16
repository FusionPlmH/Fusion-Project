package com.leo.pop.widget;



import android.content.Context;
import android.os.Vibrator;

import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipBackAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipBackActionApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipVibrate;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipVibrateLevel;
import static com.os.leo.utils.LeoUserString.LeoAction;

public class MeterBack extends MeterBase {
	public static final String NAME = MeterBack.class.getSimpleName();

	public MeterBack(Context context) {
		super(context);
		Register(NAME, this);
		setImageResource(getLeoResource("drawable/back_selector"));
		setResId(getLeoResource("drawable/back")
				, getLeoResource("drawable/back_pressed"));
	}

	public void Click() {
		LeoSettings(getContext());
		Vibrate(getContext(),setLeoUesrMipVibrate,setLeoUesrMipVibrateLevel);
		int Style=setLeoUesrMipBackAction;
		if (Style <= 0) {
			Style=101;
		}
		LeoAction(getContext(),Style,setLeoUesrMipBackActionApp);
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
