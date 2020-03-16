package com.android.systemui.simpleindicator;

import android.net.Uri;
import android.provider.Settings.System;
import android.util.Log;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;

import java.util.HashMap;
import java.util.Iterator;

public class SimpleIndicatorManager  {
    private SimpleIndicatorCarrierCrew mCarrierCrew;
    private boolean mIsAddedTunable = false;
    private SimpleIndicatorMediator mMediator;
    private SimpleIndicatorSettingsListener mSettingsListener = new SimpleIndicatorSettingsListener();

    private HashMap<String, SimpleIndicatorSubscriber> mSubscriberList = new HashMap();

    private class SimpleIndicatorSettingsListener  {
        private final Uri[] mSettingsValueList;

        private SimpleIndicatorSettingsListener() {
            this.mSettingsValueList = new Uri[]{System.getUriFor("status_bar_show_network_information")};
        }

        public void init() {

        }

        public void onChanged(Uri uri) {

        }
    }



    /* access modifiers changed from: private */
    public void notifyNewsToSubscribers() {

    }


    public boolean isHomeCarrierDisabled() {
       // return ((SettingsHelper) Dependency.get(SettingsHelper.class)).isNetworkInfoBlocked() || (isPluginConnected() && this.mCarrierCrew.isHomeCarrierDisabled());
        return false;
    }

    public boolean isLockCarrierDisabled() {
        return isPluginConnected() && this.mCarrierCrew.isLockCarrierDisabled();
    }

    public boolean isPanelCarrierDisabled() {
        return isPluginConnected() && this.mCarrierCrew.isPanelCarrierDisabled();
    }

    public boolean isPluginConnected() {
        return this.mMediator != null && this.mMediator.isPluginConnected();
    }

    public void notifyPluginConfigurationChanged() {
    }

    public void notifyPluginConnected() {
        if (!this.mIsAddedTunable) {
          //  ((TunerService) Dependency.get(TunerService.class)).addTunable(this, new String[]{"icon_blacklist"});
            this.mIsAddedTunable = true;
        }
    }

    public void notifyPluginDisconnected() {
        if (this.mIsAddedTunable) {
           // ((TunerService) Dependency.get(TunerService.class)).addTunable(this, new String[]{"icon_blacklist"});
            this.mIsAddedTunable = true;
        }
    }

    public void onTuningChanged(String str, String str2) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("onTuningChanged() key:");
        stringBuilder.append(str);
        stringBuilder.append(", newValue:");
        stringBuilder.append(str2);
       // Log.d("[QuickStar]SimpleIndicatorManager", stringBuilder.toString());
        this.mCarrierCrew.updateAllData(str, str2);
     //   this.mStatusBar.getMainHanlder().post(new $$Lambda$SimpleIndicatorManager$WBF53BpQMwPlgknhSP5gMUNi5_o(this));
    }

    public void registerSubscriber(String str, SimpleIndicatorSubscriber simpleIndicatorSubscriber) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("registerSubscriber() membershipKey:");
        stringBuilder.append(str);
        stringBuilder.append(", reader:");
        stringBuilder.append(simpleIndicatorSubscriber);
       // Log.d("[QuickStar]SimpleIndicatorManager", stringBuilder.toString());
        this.mSubscriberList.put(str, simpleIndicatorSubscriber);
        simpleIndicatorSubscriber.updateQuickStarStyle();
    }

    public void setBlackListDBValue(String str) {
       // this.mStatusBar.getMainHanlder().post(new $$Lambda$SimpleIndicatorManager$WUx5vjaRxwdIoSFqBG5pI5T39Y(this, str));
    }

    public void unregisterSubscriber(String str) {
        this.mSubscriberList.remove(str);
    }
}
