package com.android.systemui.statusbar.policy;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;


import static com.android.settingslib.salt.SaltConfigFrame.mSaltContext;
import static com.android.settingslib.salt.SaltIcon.getLeoStatusBarIcons;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;

import static com.android.systemui.statusbar.policy.TelephonyIcons.refreshSaltTelephonySignal;


public class NetworkControllerImpl extends BroadcastReceiver  {
    public NetworkControllerImpl(WifiSignalController mWifiSignalController) {
        this.mWifiSignalController = mWifiSignalController;
    }

    public void handleConfigurationChanged() {

    }
    public void registerListeners() {

        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.wifi.RSSI_CHANGED");
        intentFilter.addAction("SALT_UPDATE_STATUSBARICON_SETTINGS");

    }
    private void pushConnectivityToSignals() {

    }
    final WifiSignalController mWifiSignalController;


    private final Context mContext= mSaltContext;

    @Override
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if ("SALT_UPDATE_STATUSBARICON_SETTINGS".equals(action)) {
            mWifiSignalController.handleBroadcast(intent);
            pushConnectivityToSignals();
            LeoSysUiManages(mContext);
            getLeoStatusBarIcons();
            refreshSaltTelephonySignal();
            handleConfigurationChanged();
        }
    }
}
