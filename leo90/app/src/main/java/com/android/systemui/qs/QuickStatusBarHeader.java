package com.android.systemui.qs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.AlarmManager.AlarmClockInfo;
import android.content.BroadcastReceiver;
import android.content.Context;

import android.content.res.Configuration;
import android.util.AttributeSet;

import android.widget.RelativeLayout;
import com.android.systemui.fusionleo.LeoLogoView;



public class QuickStatusBarHeader extends RelativeLayout {
    public LeoLogoView mHeaderLeoLogo;
    public QuickStatusBarHeader(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);

        boolean z = configuration.orientation == 2;

        mHeaderLeoLogo.useWallpaperTextColor(z);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        LeoStatusBarHeader();

    }
  public void LeoStatusBarHeader(){
      mHeaderLeoLogo=findViewWithTag("leo_statusbar_logo_view");
  }
}
