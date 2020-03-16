package com.salt.config;

import android.app.Activity;
import android.os.Bundle;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import com.android.settingslib.salt.animation.AnimationParking;
import com.android.settingslib.salt.widget.MeterBack;
import com.android.settingslib.salt.widget.MeterBase;
import com.android.settingslib.salt.widget.MeterFlashlight;
import com.android.settingslib.salt.widget.MeterHome;
import com.android.settingslib.salt.widget.MeterRecent;
import com.android.systemui.statusbar.salt.SaltAction;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }


}
