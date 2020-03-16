package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.telephony.SubscriptionInfo;
import android.widget.TextView;

import com.android.settingslib.wifi.AccessPoint;
import com.android.systemui.DemoMode;

import java.util.List;

public interface NetworkController extends DemoMode, CallbackController<NetworkController.SignalCallback> {

    public interface OperatorLogoIconListener {
        void setOperatorLogoIconVisible(boolean z);
    }

    public interface SignalCallback {
        default void setBtTetherIndicators(boolean z, int i) {
        }

        default   void setEthernetIndicators(IconState iconState) {
        }

        default   void setEthernetIndicators(IconState iconState, int i) {
        }

        default    void setImsIcon(Drawable drawable, int i, boolean z, CharSequence charSequence) {
        }

        default    void setIsAirplaneMode(IconState iconState) {
        }

        default      void setMPTCPIndicators(boolean z, int i, int i2, int i3) {
        }

        default     void setMobileDataEnabled(boolean z) {
        }

        default  void setMobileDataIndicators(IconState iconState, IconState iconState2, int i, int i2, boolean z, boolean z2, int i3, int i4, String str, String str2, boolean z3, int i5, boolean z4) {
        }

        default  void setMobileDataIndicators(IconState iconState, IconState iconState2, int i, int i2, boolean z, boolean z2, String str, String str2, boolean z3, int i3, boolean z4) {
        }

        default  void setNWBoosterIndicators(boolean z, boolean z2, int i, int i2, int i3) {
        }

        default   void setNoSims(boolean z, boolean z2) {
        }

        default    void setSubs(List<SubscriptionInfo> list) {
        }

        default   void setWifiIndicators(boolean z, IconState iconState, IconState iconState2, boolean z2, boolean z3, int i, String str, boolean z4, String str2) {
        }

        default   void setWifiIndicators(boolean z, IconState iconState, IconState iconState2, boolean z2, boolean z3, String str, boolean z4, String str2) {
        }
    }

    public interface AccessPointController {

        public interface AccessPointCallback {
           // void onAccessPointsChanged(List<AccessPoint> list);

            void onSettingsActivityTriggered(Intent intent);
        }

        public interface WifiApBleStateChangeCallback {
            void onWifiApBleStateChanged(int i, String str);
        }

        void addAccessPointCallback(AccessPointCallback accessPointCallback);

        void addWifiApBleStateChangeCallback(WifiApBleStateChangeCallback wifiApBleStateChangeCallback);

        boolean canConfigWifi();

      //  boolean connect(AccessPoint accessPoint);

        int getIcon(AccessPoint accessPoint);

     //   int getSmartTetheringIcon(SemWifiApBleScanResult semWifiApBleScanResult);

      //  List<SemWifiApBleScanResult> getWifiApBleScanList();

        int getWifiApBleStatus(String str);

        void removeAccessPointCallback(AccessPointCallback accessPointCallback);

        void removeWifiApBleStateChangeCallback(WifiApBleStateChangeCallback wifiApBleStateChangeCallback);

        void scanForAccessPoints();

        void startSettings(AccessPoint accessPoint);

       // boolean triggerWifiApBleConnection(SemWifiApBleScanResult semWifiApBleScanResult);
    }

    public interface EmergencyListener {
        void setEmergencyCallsOnly(boolean z);
    }

    public static class IconState {
        public final String contentDescription;
        public final int icon;
        public final boolean visible;

        public IconState(boolean z, int i, int i2, Context context) {
            this(z, i, context.getString(i2));
        }

        public IconState(boolean z, int i, String str) {
            this.visible = z;
            this.icon = i;
            this.contentDescription = str;
        }
    }

    boolean IsPowerOffServiceState();

    void addCallback(SignalCallback signalCallback);

    void addEmergencyListener(EmergencyListener emergencyListener);

    void addOperatorLogoIconListener(OperatorLogoIconListener operatorLogoIconListener);

    AccessPointController getAccessPointController();

   // DataSaverController getDataSaverController();

   // DataUsageController getMobileDataController();

    String getMobileDataNetworkName();

    boolean hasEmergencyCryptKeeperText();

    boolean hasMobileDataFeature();

    boolean hasVoiceCallingFeature();

    boolean isRadioOn();

    void onEmergencyModeChanged();

    void removeCallback(SignalCallback signalCallback);

    void removeEmergencyListener(EmergencyListener emergencyListener);

    void setCarrierLabel(TextView textView);

    void setCarrierLabelSlot1(TextView textView);

    void setCarrierLabelSlot2(TextView textView);

    void setImsIcon(Drawable drawable, int i, boolean z, CharSequence charSequence);

  //  void setStatusBarCarrierLabelManager(StatusBarCarrierLabelInflater statusBarCarrierLabelInflater);

    void setWifiEnabled(boolean z);

    void updateOperatorLogoIconVisibility();
}
