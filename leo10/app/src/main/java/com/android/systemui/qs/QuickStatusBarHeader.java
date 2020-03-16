package com.android.systemui.qs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.AlarmManager.AlarmClockInfo;
import android.content.BroadcastReceiver;
import android.content.Context;

import android.content.res.Configuration;
import android.util.AttributeSet;

import android.widget.RelativeLayout;




public class QuickStatusBarHeader extends RelativeLayout {

    public QuickStatusBarHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);

        boolean z = configuration.orientation == 2;

    }

    public void onFinishInflate() {
        super.onFinishInflate();


    }

}
