package com.fusionleo.LeoX.systemui.widget;



import android.content.Context;

import com.android.leo.R;

import static com.fusionleo.LeoProvider.LeoManages.mLeoFloatBall;
import static com.fusionleo.LeoProvider.LeoManages.setLeoMiniBackAction;
import static com.fusionleo.LeoProvider.LeoManages.setLeoMiniFlashlightAction;


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
