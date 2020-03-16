package com.android.systemui.statusbar.policy;

import android.animation.ArgbEvaluator;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.net.ConnectivityManager;
import android.net.IConnectivityManager.Stub;
import android.net.NetworkInfo;
import android.net.NetworkInfo.State;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;
import com.android.systemui.statusbar.policy.DarkIconDispatcher.DarkReceiver;
import java.util.Observable;
import java.util.Observer;

import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrStatusbarNetworkState;

public class NetspeedView extends TextView implements ConfigurationListener, DarkReceiver, Observer {
    /* access modifiers changed from: private|static */
    public static String mActiveInterface;
    /* access modifiers changed from: private|static */
    public static Context mContext;
    /* access modifiers changed from: private|static */
    public static boolean mNetspeedSwitch = false;
    /* access modifiers changed from: private|static */
    public static boolean mVpnConnected = false;
    private final String TAG = "NetworkSpeedView";
    private boolean isDexMode = false;
    private boolean mAttached;
    private float mBatteryIconDarkModeAlpha;
    private float mBatteryIconLightModeAlpha;

    private int mDarkModeFillColor;
    private boolean mIsForceTintColor = false;
    private int mLightModeFillColor;

    /* access modifiers changed from: private */
    public boolean mNetworkStats = false;
    /* access modifiers changed from: private */
    public Handler mNetworkStatsHandler = null;
    /* access modifiers changed from: private */


    public NetspeedView(Context context) {
        super(context);
        mContext = context;

    }

    public NetspeedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext = context;

    }

    public NetspeedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mContext = context;

    }
    private void registerListener() {

    }

        public void updateSettings() {
        LeoSysUiManages(mContext);
        int style=setLeoUesrStatusbarNetworkState;
        if(style>0){
         setVisibility(GONE);
        }else if(style==0){
         setVisibility(VISIBLE);
            registerListener();
        }
    }
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        updateSettings();
    }

    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {

    }

    @Override
    public void update(Observable o, Object arg) {

    }
}
