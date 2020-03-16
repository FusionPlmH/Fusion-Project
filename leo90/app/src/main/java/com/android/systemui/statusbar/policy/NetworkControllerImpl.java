package com.android.systemui.statusbar.policy;

import android.app.Notification.BigTextStyle;
import android.app.Notification.Builder;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.ConnectivityManager.NetworkCallback;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.Uri;
import android.net.wifi.WifiManager;
import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.PersistableBundle;
import android.os.SystemProperties;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.telephony.CarrierConfigManager;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.SubscriptionManager.OnSubscriptionsChangedListener;
import android.telephony.TelephonyManager;
import android.text.TextPaint;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.widget.TextView;

import com.android.keyguard.CarrierText;
import com.android.keyguard.KeyguardUpdateMonitor;

import com.android.systemui.Rune;
import com.android.systemui.settings.CurrentUserTracker;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;

public class NetworkControllerImpl extends BroadcastReceiver implements NetworkController {



    public NetworkControllerImpl(Context context, Looper looper) {

    }


    @Override
    public void onReceive(Context context, Intent intent) {

    }

    @Override
    public boolean IsPowerOffServiceState() {
        return false;
    }

    @Override
    public void addCallback(SignalCallback signalCallback) {

    }

    @Override
    public void addEmergencyListener(EmergencyListener emergencyListener) {

    }

    @Override
    public void addOperatorLogoIconListener(OperatorLogoIconListener operatorLogoIconListener) {

    }

    @Override
    public AccessPointController getAccessPointController() {
        return null;
    }

    @Override
    public String getMobileDataNetworkName() {
        return null;
    }

    @Override
    public boolean hasEmergencyCryptKeeperText() {
        return false;
    }

    @Override
    public boolean hasMobileDataFeature() {
        return false;
    }

    @Override
    public boolean hasVoiceCallingFeature() {
        return false;
    }

    @Override
    public boolean isRadioOn() {
        return false;
    }

    @Override
    public void onEmergencyModeChanged() {

    }

    @Override
    public void removeCallback(SignalCallback signalCallback) {

    }

    @Override
    public void removeEmergencyListener(EmergencyListener emergencyListener) {

    }
   public static CharSequence getCarrierLabel;
    @Override
    public void setCarrierLabel(TextView textView) {
      getCarrierLabel=textView.getText();
    }

    @Override
    public void setCarrierLabelSlot1(TextView textView) {

    }

    @Override
    public void setCarrierLabelSlot2(TextView textView) {

    }

    @Override
    public void setImsIcon(Drawable drawable, int i, boolean z, CharSequence charSequence) {

    }

    @Override
    public void setWifiEnabled(boolean z) {

    }

    @Override
    public void updateOperatorLogoIconVisibility() {

    }

    @Override
    public void disable(int state1, int state2, boolean animate) {

    }

    @Override
    public void dispatchDemoCommand(String command, Bundle args) {

    }
}
