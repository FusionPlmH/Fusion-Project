package com.fusionleo.LeoX.systemui.widget;

import android.content.Context;
import android.os.Vibrator;

import com.android.leo.R;

import static com.fusionleo.LeoProvider.LeoManages.mLeoFloatBall;
import static com.fusionleo.LeoProvider.LeoManages.setLeoMiniHomeAction;
import static com.fusionleo.LeoProvider.LeoManages.setLeoMiniRecentAction;


public class MeterRecent extends MeterBase {
	public static final String NAME = MeterRecent.class.getSimpleName();

	public MeterRecent(Context paramContext) {
		super(paramContext);
		Register(NAME, this);
		MiniButton("recent_selector","pop_recent","recent_pressed");
	}

	public void Click() {
		updateAction(setLeoMiniRecentAction,mLeoFloatBall[17],203);
	}


}
