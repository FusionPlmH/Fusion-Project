package com.android.settingslib.salt.widget;


import android.content.Context;

import static com.android.settingslib.salt.utils.LeoManages.mLeoFloatBall;
import static com.android.settingslib.salt.utils.LeoManages.setLeoMiniFlashlightAction;

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
