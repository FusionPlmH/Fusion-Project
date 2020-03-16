package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources.NotFoundException;
import android.database.ContentObserver;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.telephony.CellLocation;
import android.telephony.PhoneStateListener;
import android.telephony.PreciseCallState;
import android.telephony.PreciseDataConnectionState;
import android.telephony.ServiceState;
import android.telephony.SignalStrength;

import com.android.internal.util.State;

import com.android.systemui.Dependency;
import com.android.systemui.Rune;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Objects;


import static com.android.settingslib.salt.SaltIcon.getLeoStatusBarIcons;
import static com.android.settingslib.salt.SaltIcon.mSalt5GConnected;
import static com.android.settingslib.salt.SaltIcon.mSalt5GConnected10;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoIntKey;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBar5GStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBar5Gicon;
import static com.android.systemui.statusbar.policy.TelephonyIcons.SIMPLIFIED_G;
import static com.android.systemui.statusbar.policy.TelephonyIcons.refreshSalt5GSignal;

public class MobileSignalController  {

    private final int LTE_ON_CDMA_FALSE = 0;

    private final int LTE_ON_CDMA_UNKNOWN = -1;
    private int mActiveSimCount;
    private int[] mActivityIconSet;
    /* access modifiers changed from: private */
    public ArrayList<String> mApnBlackList;
    /* access modifiers changed from: private */
    public boolean mBootDataSvcAcquired;
    /* access modifiers changed from: private */
    public boolean mBootVoiceSvcAcquired;

    private int mCurSvcSate;
    private int mCurrentSignalStrength;
    /* access modifiers changed from: private */
    public int mDataNetType = 0;
    /* access modifiers changed from: private */
    public int mDataState = 0;
    private int mDataTypeIconAtSignalIconArea;
    private MobileIconGroup mDefaultIcons;

    private int mDisabledDataIcon;
    private Handler mHandler;
    private boolean mHasMobileData;
    private boolean mImsConnected;
    /* access modifiers changed from: private */
    public IndianOperators mIndianOperator;
    private String mInitialNetworkName;
    private boolean mIsATOCardUsingLTEIcon;
    private boolean mIsAnotherSlotCallingState;
    private boolean mIsAnotherSlotCtcCard;
    private boolean mIsCmccCard;
    private boolean mIsCtcCard;
    private boolean mIsLteOnCdma;
    /* access modifiers changed from: private */
    public boolean mIsVoLteCallState;
    private boolean mIsVoWifiInfo;
    private String mLastCB;
    /* access modifiers changed from: private */
    public String mLastDataSpn;
    /* access modifiers changed from: private */
    public int mLastEFSPN;
    /* access modifiers changed from: private */
    public String mLastPlmn;
    /* access modifiers changed from: private */
    public boolean mLastShowPlmn;
    /* access modifiers changed from: private */
    public boolean mLastShowSpn;
    /* access modifiers changed from: private */
    public String mLastSpn;
    private ContentObserver mMobileDataObserver;
    private ContentObserver mNWBoosterObserver;
    public String[] mNetworkManuallySelected;
    private String mNetworkNameDefault;


    private int mPreSvcSate;
    /* access modifiers changed from: private */
    public String mPreciseAPNType;
    /* access modifiers changed from: private */
    public int mPreciseDataState;
    /* access modifiers changed from: private */
    public ServiceState mServiceState;
    /* access modifiers changed from: private */
    public boolean mShouldBlockPLMNInfoUpdate;
    /* access modifiers changed from: private */
    public SignalStrength mSignalStrength;
    /* access modifiers changed from: private */
    public int mSlotId;
    private int mSubId;

    private int mTargetSignalStrength;
    private boolean mTransitionState;
    private boolean mVoLTEConnected;
    public boolean mVoWifiConnected;

    public enum IndianOperators {
        AIRTEL,
        RELIANCE,
        OTHERS
    }

    static class MobileIconGroup  {
        final int mDataContentDescription;
        final int mDataType;
        final boolean mIsWide;
        final int mNwBoosterDataType;
        final int mQsDataType;

        public MobileIconGroup(String str, int[][] iArr, int[][] iArr2, int[] iArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z) {

            this.mDataContentDescription = i6;
            this.mDataType = i7;
            this.mIsWide = z;
            this.mQsDataType = i7;
            this.mNwBoosterDataType = 0;
        }

        public MobileIconGroup(String str, int[][] iArr, int[][] iArr2, int[] iArr3, int i, int i2, int i3, int i4, int i5, int i6, int i7, boolean z, int i8) {

            this.mDataContentDescription = i6;
            this.mDataType = i7;
            this.mIsWide = z;
            this.mQsDataType = i7;
            this.mNwBoosterDataType = i8;
        }


    }

    class MobilePhoneStateListener extends PhoneStateListener {

        }

        public void onCarrierNetworkChange(boolean z) {


        }

        public void onCellLocationChanged(CellLocation cellLocation) {

        }

        public void onDataActivity(int i) {


            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("onDataActivity: direction=");
            stringBuilder.append(i);

        }

        public void onDataConnectionStateChanged(int i, int i2) {

        }

        public void onPreciseCallStateChanged(PreciseCallState preciseCallState) {

        }

        public void onPreciseDataConnectionStateChanged(PreciseDataConnectionState preciseDataConnectionState) {

        }

        public void onServiceStateChanged(ServiceState serviceState) {

        }

        public void onSignalStrengthsChanged(SignalStrength signalStrength) {

    }

    static class MobileState extends State {
        boolean airplaneMode;
        boolean bluetoothTethered;
        int callState;
        boolean carrierNetworkChangeMode;
        int cdmaEriIconIndex;
        int cdmaEriIconMode;
        boolean dataConnected;
        int dataRegState;
        boolean dataSim;
        boolean emergencyModeActivated;
        boolean is5G;
        boolean isCAIndicator;
        boolean isDefault;
        boolean isEmergency;
        boolean isLTEFemtoCell;
        boolean isMobileDataSettingEnabled;
        boolean isSRoaming;
        String networkName;
        String networkNameData;
        boolean nwBoosterRilEnabled;
        boolean nwBoosterSettingEnabled;
        int optionalRadioTech;
        boolean roaming;
        boolean userSetup;
        int voiceRegState;

        MobileState() {
        }

        public void copyFrom(State state) {

            MobileState mobileState = (MobileState) state;
            this.dataSim = mobileState.dataSim;
            this.networkName = mobileState.networkName;
            this.networkNameData = mobileState.networkNameData;
            this.dataConnected = mobileState.dataConnected;
            this.isDefault = mobileState.isDefault;
            this.isEmergency = mobileState.isEmergency;
            this.airplaneMode = mobileState.airplaneMode;
            this.carrierNetworkChangeMode = mobileState.carrierNetworkChangeMode;
            this.userSetup = mobileState.userSetup;
            this.roaming = mobileState.roaming;
            this.isLTEFemtoCell = mobileState.isLTEFemtoCell;
            this.cdmaEriIconIndex = mobileState.cdmaEriIconIndex;
            this.cdmaEriIconMode = mobileState.cdmaEriIconMode;
            this.nwBoosterRilEnabled = mobileState.nwBoosterRilEnabled;
            this.nwBoosterSettingEnabled = mobileState.nwBoosterSettingEnabled;
            this.emergencyModeActivated = mobileState.emergencyModeActivated;
            this.callState = mobileState.callState;
            this.isMobileDataSettingEnabled = mobileState.isMobileDataSettingEnabled;
            this.bluetoothTethered = mobileState.bluetoothTethered;
            this.isCAIndicator = mobileState.isCAIndicator;
            this.isSRoaming = mobileState.isSRoaming;
            this.voiceRegState = mobileState.voiceRegState;
            this.dataRegState = mobileState.dataRegState;
            this.optionalRadioTech = mobileState.optionalRadioTech;
            this.is5G = mobileState.is5G;
        }

        public boolean equals(Object obj) {
          //return super.equals(obj) && Objects.equals(((MobileState) obj).networkName, this.networkName) && Objects.equals(((MobileState) obj).networkNameData, this.networkNameData) && ((MobileState) obj).dataSim == this.dataSim && ((MobileState) obj).dataConnected == this.dataConnected && ((MobileState) obj).isEmergency == this.isEmergency && ((MobileState) obj).airplaneMode == this.airplaneMode && ((MobileState) obj).carrierNetworkChangeMode == this.carrierNetworkChangeMode && ((MobileState) obj).userSetup == this.userSetup && ((MobileState) obj).isDefault == this.isDefault && ((MobileState) obj).isLTEFemtoCell == this.isLTEFemtoCell && ((MobileState) obj).cdmaEriIconIndex == this.cdmaEriIconIndex && ((MobileState) obj).cdmaEriIconMode == this.cdmaEriIconMode && ((MobileState) obj).nwBoosterRilEnabled == this.nwBoosterRilEnabled && ((MobileState) obj).nwBoosterSettingEnabled == this.nwBoosterSettingEnabled && ((MobileState) obj).emergencyModeActivated == this.emergencyModeActivated && ((MobileState) obj).callState == this.callState && ((MobileState) obj).isMobileDataSettingEnabled == this.isMobileDataSettingEnabled && ((MobileState) obj).bluetoothTethered == this.bluetoothTethered && ((MobileState) obj).isCAIndicator == this.isCAIndicator && ((MobileState) obj).isSRoaming == this.isSRoaming && ((MobileState) obj).voiceRegState == this.voiceRegState && ((MobileState) obj).dataRegState == this.dataRegState && ((MobileState) obj).optionalRadioTech == this.optionalRadioTech && ((MobileState) obj).is5G == this.is5G && ((MobileState) obj).roaming == this.roaming;
            return false;
        }

        /* access modifiers changed from: protected */
        public void toString(StringBuilder stringBuilder) {

            stringBuilder.append(',');
            stringBuilder.append("dataSim=");
            stringBuilder.append(this.dataSim);
            stringBuilder.append(',');
            stringBuilder.append("networkName=");
            stringBuilder.append(this.networkName);
            stringBuilder.append(',');
            stringBuilder.append("networkNameData=");
            stringBuilder.append(this.networkNameData);
            stringBuilder.append(',');
            stringBuilder.append("dataConnected=");
            stringBuilder.append(this.dataConnected);
            stringBuilder.append(',');
            stringBuilder.append("roaming=");
            stringBuilder.append(this.roaming);
            stringBuilder.append(',');
            stringBuilder.append("isDefault=");
            stringBuilder.append(this.isDefault);
            stringBuilder.append(',');
            stringBuilder.append("isEmergency=");
            stringBuilder.append(this.isEmergency);
            stringBuilder.append(',');
            stringBuilder.append("airplaneMode=");
            stringBuilder.append(this.airplaneMode);
            stringBuilder.append(',');
            stringBuilder.append("carrierNetworkChangeMode=");
            stringBuilder.append(this.carrierNetworkChangeMode);
            stringBuilder.append(',');
            stringBuilder.append("userSetup=");
            stringBuilder.append(this.userSetup);
            stringBuilder.append(',');
            stringBuilder.append("isLTEFemtoCell=");
            stringBuilder.append(this.isLTEFemtoCell);
            stringBuilder.append(',');
            stringBuilder.append("cdmaEriIconIndex=");
            stringBuilder.append(this.cdmaEriIconIndex);
            stringBuilder.append(',');
            stringBuilder.append("cdmaEriIconMode=");
            stringBuilder.append(this.cdmaEriIconMode);
            stringBuilder.append(',');
            stringBuilder.append("nwBoosterRilEnabled=");
            stringBuilder.append(this.nwBoosterRilEnabled);
            stringBuilder.append(',');
            stringBuilder.append("nwBoosterSettingEnabled=");
            stringBuilder.append(this.nwBoosterSettingEnabled);
            stringBuilder.append(',');
            stringBuilder.append("emergencyModeActivated=");
            stringBuilder.append(this.emergencyModeActivated);
            stringBuilder.append(',');
            stringBuilder.append("callState=");
            stringBuilder.append(this.callState);
            stringBuilder.append(',');
            stringBuilder.append("isMobileDataSettingEnabled=");
            stringBuilder.append(this.isMobileDataSettingEnabled);
            stringBuilder.append(',');
            stringBuilder.append("bluetoothTethered=");
            stringBuilder.append(this.bluetoothTethered);
            stringBuilder.append(',');
            stringBuilder.append("isCAIndicator=");
            stringBuilder.append(this.isCAIndicator);
            stringBuilder.append(',');
            stringBuilder.append("isSRoaming=");
            stringBuilder.append(this.isSRoaming);
            stringBuilder.append(',');
            stringBuilder.append("voiceRegState=");
            stringBuilder.append(this.voiceRegState);
            stringBuilder.append(',');
            stringBuilder.append("dataRegState=");
            stringBuilder.append(this.dataRegState);
            stringBuilder.append(',');
            stringBuilder.append("optionalRadioTech=");
            stringBuilder.append(this.optionalRadioTech);
            stringBuilder.append(',');
            stringBuilder.append(',');
            stringBuilder.append("is5G=");
            stringBuilder.append(this.is5G);
        }
    }

    class SignalUpdateHandler extends Handler {
        SignalUpdateHandler() {
        }

        public void handleMessage(Message message) {
            if (message.what == 70) {

            }
        }
    }


    public int getVoiceNetworkType() {
        return 0;
    }


    private MobileIconGroup updateSimplifiedMobileIconGroup() {
        MobileIconGroup mobileIconGroup;
        this.mActivityIconSet = TelephonyIcons.DATA_ACTIVITY_SIMPLIFIED;
        getLeoStatusBarIcons();
        switch (this.mDataNetType == 18 ? getVoiceNetworkType() : this.mDataNetType) {
            case 0:
                mobileIconGroup = TelephonyIcons.UNKNOWN;
                if (shouldDisplayCTCOpSignalSpec() ) {
                    this.mDataTypeIconAtSignalIconArea = 2131232407;
                    mobileIconGroup = TelephonyIcons.SIMPLIFIED_TWO_G;
                    break;
                }
                this.mDataTypeIconAtSignalIconArea = 0;
                break;

            case 1:
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_G;
                this.mDataTypeIconAtSignalIconArea = 2131232413;
                break;
            case 2:
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_E;
                this.mDataTypeIconAtSignalIconArea = 2131232412;
                break;
            case 3:
            case 17:
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_THREE_G;
                this.mDataTypeIconAtSignalIconArea = 2131232408;
                break;
            case 4:
            case 7:
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_ONE_X;
                this.mDataTypeIconAtSignalIconArea = 2131232406;
                break;
            case 5:
            case 6:
            case 12:
            case 14:
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_THREE_G;
                this.mDataTypeIconAtSignalIconArea = 2131232408;
                break;
            case 8:
            case 9:
            case 10:
                if (!Rune.STATBAR_SUPPORT_HSDPA_DATA_ICON) {
                    mobileIconGroup = TelephonyIcons.SIMPLIFIED_THREE_G;
                    this.mDataTypeIconAtSignalIconArea = 2131232408;
                    break;
                }
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_H;
                this.mDataTypeIconAtSignalIconArea = 2131232414;
                break;
            case 13:
                if (!isShowSlot()) {
                    mobileIconGroup = TelephonyIcons.SIMPLIFIED_FOUR_G;
                    this.mDataTypeIconAtSignalIconArea = 2131232410;
                    break;
                }
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_FOUR_5G;
                this.mDataTypeIconAtSignalIconArea =isG5LeoICON();
                break;
            case 15:
                if (!Rune.STATBAR_SUPPORT_HSDPA_DATA_ICON) {
                    mobileIconGroup = TelephonyIcons.SIMPLIFIED_THREE_G;
                    this.mDataTypeIconAtSignalIconArea = 2131232408;
                    break;
                }
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_H_PLUS;
                this.mDataTypeIconAtSignalIconArea = 2131232415;
                break;
            default:
                mobileIconGroup = TelephonyIcons.UNKNOWN;
                this.mDataTypeIconAtSignalIconArea = 0;
                break;
        }
        if (Rune.STATBAR_SUPPORT_DISABLED_DATA_ICON) {
            this.mDisabledDataIcon = mobileIconGroup.mDataType;
        }
        return mobileIconGroup;
    }
   Context mContext;

    private boolean shouldDisplayCTCOpSignalSpec() {
        refresh();
        return false;
    }
    private boolean isShowSlot() {
       LeoSysUiManages(mContext);
        return setLeoStatusBar5Gicon;
    }
    private int isG5LeoICON() {
        LeoSysUiManages(mContext);
        refreshSalt5GSignal();
        return setLeoStatusBar5GStyle?mSalt5GConnected10:mSalt5GConnected;
    }

    private void refresh() {
        isG5LeoICON();
        LeoSysUiManages(mContext);
        getLeoStatusBarIcons();
        updateSimplifiedMobileIconGroup();
    }
    public void handleBroadcast(Intent intent) {
        String str;
        StringBuilder stringBuilder;
        boolean z;
        String action = intent.getAction();
        if ("SALT_UPDATE_STATUSBARICON_SETTINGS".equals(action)) {
            refresh();
        }

    }
}
