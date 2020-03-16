package com.fusionleo.LeoX.systemui.widget;



import android.content.Context;
import android.os.Vibrator;

import com.android.leo.R;

import static com.fusionleo.LeoProvider.LeoManages.mLeoFloatBall;
import static com.fusionleo.LeoProvider.LeoManages.setLeoMiniFlashlightAction;


public class MeterFlashlight extends MeterBase {
	public static final String NAME = MeterFlashlight.class.getSimpleName();

	public MeterFlashlight(Context context) {
		super(context);
		Register(NAME, this);

		MiniButton("flashlight_selector", "pop_flashlight","flashlight_pressed");
	}

	public void Click() {
		updateAction(setLeoMiniFlashlightAction,mLeoFloatBall[18],214);
	}

}
