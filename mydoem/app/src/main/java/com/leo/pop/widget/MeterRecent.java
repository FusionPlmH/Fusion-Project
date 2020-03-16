package com.leo.pop.widget;

import android.content.Context;
import android.os.Vibrator;


import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipTaskAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipTaskActionApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipVibrate;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMipVibrateLevel;
import static com.os.leo.utils.LeoUserString.LeoAction;

public class MeterRecent extends MeterBase {
	public static final String NAME = MeterRecent.class.getSimpleName();

	public MeterRecent(Context paramContext) {
		super(paramContext);
		Register(NAME, this);
		//setSoundEffectsEnabled(true);
		setImageResource(getLeoResource("drawable/recent_selector"));
		setResId(getLeoResource("drawable/recent")
				, getLeoResource("drawable/recent_pressed"));
	}

	public void Click() {

		LeoSettings(getContext());
		Vibrate(getContext(),setLeoUesrMipVibrate,setLeoUesrMipVibrateLevel);
		int Style=setLeoUesrMipTaskAction;
		if (Style <= 0) {
			Style=109;
		}
		LeoAction(getContext(),Style,setLeoUesrMipTaskActionApp);

	}
	public Vibrator mVibrator;
	public void Vibrate(Context c,int off,int style) {
		if (off== 1) {
			this.mVibrator = (Vibrator) c.getSystemService(Context.VIBRATOR_SERVICE);
			this.mVibrator.vibrate(style);
		}
	}

	public void LongClick() {
		//AppLog.i("way", "recent  long click");
	}
}
