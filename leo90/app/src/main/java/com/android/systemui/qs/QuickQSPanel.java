package com.android.systemui.qs;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.AlarmManager.AlarmClockInfo;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;

import android.content.res.Configuration;
import android.os.Handler;
import android.util.AttributeSet;

import android.widget.RelativeLayout;

import com.android.leo.R;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.fusionleo.LeoLogoView;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.DeviceState;
import com.fusionleo.LeoProvider.LeoObserver;


public class QuickQSPanel extends QSPanel implements LeoObserver.ObListener{


    public QuickQSPanel(Context context) {
        super(context);
        setQuickQSTileNum();
        updateLeoChange();
    }
    public  void updateLeoChange() {



    }
    @Override
    public void onLeoChange(String str) {


    }
    private int mCurrentOrientation;

    public void setMaxTiles(int i) {


    }

    private void setQuickQSTileNum() {
        int integer;
        Object obj = mCurrentOrientation == 2 ? 1 : null;
        boolean isMobileKeyboardConnected = DeviceState.isMobileKeyboardConnected(getContext());
        if (obj == null || !isMobileKeyboardConnected) {
            integer = getContext().getResources().getInteger(Rune.SYSUI_IS_TABLET_DEVICE ? R.integer.quick_qs_tile_num_tablet : R.integer.quick_qs_tile_num);
        } else {
            integer = getContext().getResources().getInteger(R.integer.quick_qs_tile_num_mobile);
        }
        setMaxTiles(integer);

        ((TunerService) Dependency.get(TunerService.class)).setValue("sysui_qqs_count", integer);
    }

}
