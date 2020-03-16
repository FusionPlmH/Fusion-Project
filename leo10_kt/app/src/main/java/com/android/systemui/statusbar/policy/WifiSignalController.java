package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.content.Intent;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.NetworkScoreManager;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.Messenger;
import android.os.SystemProperties;
import android.text.TextUtils;
import android.util.Log;

import com.android.internal.util.AsyncChannel;

import com.android.systemui.Rune;

import java.io.PrintWriter;
import java.util.Objects;


import static com.android.settingslib.salt.SaltIcon.getLeoResource;
import static com.android.settingslib.salt.SaltIcon.getLeoStatusBarIcons;
import static com.android.settingslib.salt.SaltIcon.mLeoStatusBarWIFIActivity;
import static com.android.settingslib.salt.SaltIcon.mLeoStatusBarWifiIconStyle;
import static com.android.systemui.statusbar.policy.WifiSignalController.*;

public class WifiSignalController   {


    public WifiSignalController(String str, Context context, int i, NetworkControllerImpl networkControllerImpl) {


    }

    public void handleBroadcast(Intent intent) {
        String str;
        StringBuilder stringBuilder;
        boolean z;
        String action = intent.getAction();
        if (action.equals("android.net.wifi.WIFI_STATE_CHANGED")) {

        }

    }
    private void dlxSetNewWiFi() {
        getLeoStatusBarIcons();

        SignalController.IconGroup iconGroup = new SignalController.IconGroup("Wi-Fi Icons", mLeoStatusBarWifiIconStyle, WifiIcons.QS_WIFI_SIGNAL_STRENGTH, AccessibilityContentDescriptions.WIFI_CONNECTION_STRENGTH, getLeoResource("drawable/stat_sys_wifi_signal_null"), getLeoResource("drawable/ic_qs_wifi_no_network"),getLeoResource("drawable/stat_sys_wifi_signal_null"), getLeoResource("drawable/ic_qs_wifi_no_network"), getLeoResource("string/accessibility_no_wifi"));
      //  wifiState2.iconGroup = iconGroup;
       // wifiState.iconGroup = iconGroup;


        mActivityIconSet =mLeoStatusBarWIFIActivity;
    }
    private int[] mActivityIconSet = mLeoStatusBarWIFIActivity;


    static class WifiState  {
        boolean imsConnectionState;
        boolean isTransient;
        boolean receivedConnectivityReport = true;
        String ssid;
        String statusLabel;
        boolean wifi6Mode;
        boolean wifiCallingConnected;

        WifiState() {
        }





        public boolean equals(Object obj) {
            boolean z = false;

            WifiState wifiState = (WifiState) obj;
            if (Objects.equals(wifiState.ssid, this.ssid) && wifiState.isTransient == this.isTransient && TextUtils.equals(wifiState.statusLabel, this.statusLabel) && wifiState.receivedConnectivityReport == this.receivedConnectivityReport && Objects.equals(Boolean.valueOf(((WifiState) obj).wifiCallingConnected), Boolean.valueOf(this.wifiCallingConnected)) && Objects.equals(Boolean.valueOf(((WifiState) obj).wifi6Mode), Boolean.valueOf(this.wifi6Mode)) && Objects.equals(Boolean.valueOf(((WifiState) obj).imsConnectionState), Boolean.valueOf(this.imsConnectionState))) {
                z = true;
            }
            return z;
        }

        /* access modifiers changed from: protected */
        public void toString(StringBuilder stringBuilder) {

        }
    }


}
