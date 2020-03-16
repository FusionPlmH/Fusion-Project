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

import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;

import java.util.Observable;
import java.util.Observer;


public class NetspeedView extends TextView implements ConfigurationListener, DarkIconDispatcher.DarkReceiver, Observer {
    public static String mActiveInterface;
    public static Context mContext;
    public static boolean mNetspeedSwitch = false;
    public static boolean mVpnConnected = false;
    private final String TAG = "NetworkSpeedView";
    private boolean isDexMode = false;
    private boolean mAttached;
    private float mBatteryIconDarkModeAlpha;
    private float mBatteryIconLightModeAlpha;
    private int mDarkModeFillColor;
    private boolean mIsForceTintColor = false;
    private int mLightModeFillColor;
    public boolean mNetworkStats = false;
    public Handler mNetworkStatsHandler = null;

    public NetspeedView(Context context) {
        super(context);
        mContext = context;

    }

    public NetspeedView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext = context;

    }
    private boolean mShouldUseQsTintColor = false;

    public void setForceQsTintColor(boolean z, float f) {
        mShouldUseQsTintColor=z;
        onDarkChanged(new Rect(), 0.0f, -1107296257);
    }
    public NetspeedView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mContext = context;

    }
    private void registerListener() {

    }


    public void onAttachedToWindow() {
        super.onAttachedToWindow();

    }

    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {

    }

    @Override
    public void update(Observable o, Object arg) {

    }
}
