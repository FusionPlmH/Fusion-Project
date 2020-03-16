package com.android.settingslib.salt.widget;



import android.content.Context;

import static com.android.settingslib.salt.utils.LeoManages.mLeoFloatBall;
import static com.android.settingslib.salt.utils.LeoManages.setLeoMiniBackAction;


public class MeterBack extends MeterBase {
	public static final String NAME = MeterBack.class.getSimpleName();

	public MeterBack(Context context) {
		super(context);
		Register(NAME, this);
		MiniButton("back_selector", "pop_back",
				"back_pressed");
	}



	public void Click() {
		updateAction(setLeoMiniBackAction,mLeoFloatBall[15],200);
	}

}
