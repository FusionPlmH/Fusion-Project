package com.android.fusionleo.salt.widget;

import android.content.Context;
import android.os.Vibrator;

import com.android.leo.R;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipTaskAction;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipTaskActionApp;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipVibrate;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrMipVibrateLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class MeterRecent extends MeterBase {
	public static final String NAME = MeterRecent.class.getSimpleName();

	public MeterRecent(Context paramContext) {
		super(paramContext);
		Register(NAME, this);
		//setSoundEffectsEnabled(true);
		setImageResource(getLeoMiResource("drawable/recent_selector"));
		setResId(getLeoMiResource("drawable/pop_recent")
			, getLeoMiResource("drawable/recent_pressed"));
	//	setImageResource(R.drawable.flashlight_selector);
		//(R.drawable.pop_flashlight, R.drawable.flashlight_pressed);
	}

	public void Click() {
		LeoStatusSettings(mContext);
		Vibrate(mContext,setLeoUesrMipVibrate,setLeoUesrMipVibrateLevel);
		int Style=setLeoUesrMipTaskAction;
		if (Style <= 0) {
			Style=109;
		}
		LeoGlobalActiong(mContext,Style,setLeoUesrMipTaskActionApp);

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
