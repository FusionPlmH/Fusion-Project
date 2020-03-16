package com.android.settingslib.salt.widget;

import android.content.Context;

import static com.android.settingslib.salt.utils.LeoManages.mLeoFloatBall;
import static com.android.settingslib.salt.utils.LeoManages.setLeoMiniRecentAction;

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
