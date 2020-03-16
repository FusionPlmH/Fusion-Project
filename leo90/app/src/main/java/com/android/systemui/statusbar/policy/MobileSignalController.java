package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources.NotFoundException;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.net.NetworkInfo;
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
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.telephony.gsm.GsmCellLocation;
import android.text.TextUtils;
import android.util.Log;
import android.util.SparseArray;

import com.android.leo.BuildConfig;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.util.DeviceState;
import com.samsung.systemui.splugins.coloring.PluginQSColoring;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Objects;

import javax.security.auth.callback.CallbackHandler;

import static com.android.systemui.util.LeoDrawable.mG5LeoICON;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.setLeoStatusBar5Gicon;

public class MobileSignalController  {

    private final int LTE_ON_CDMA_FALSE = 0;

    private final int LTE_ON_CDMA_UNKNOWN = -1;
    private int mActiveSimCount;
    private int[] mActivityIconSet;
    private ArrayList<String> mApnBlackList;
    private boolean mBootDataSvcAcquired;
    private boolean mBootVoiceSvcAcquired;
    private Bitmap.Config mConfig;
    private int mCurSvcSate;
    private int mCurrentSignalStrength;
    private int mDataNetType = 0;
    private int mDataState = 0;
    private int mDataTypeIconAtSignalIconArea;
    private MobileIconGroup mDefaultIcons;

    private int mDisabledDataIcon;
    private Handler mHandler;
    private boolean mHasMobileData;
    private boolean mImsConnected;
    private IndianOperators mIndianOperator;
    private String mInitialNetworkName;
    private boolean mIsATOCardUsingLTEIcon;
    private boolean mIsAnotherSlotCallingState;
    private boolean mIsAnotherSlotCtcCard;
    private boolean mIsCmccCard;
    private boolean mIsCtcCard;
    private boolean mIsLteOnCdma;
    private boolean mIsVoLteCallState;
    private boolean mIsVoWifiInfo;
    private String mLastCB;
    private String mLastDataSpn;
    private int mLastEFSPN;
    private String mLastPlmn;
    private boolean mLastShowPlmn;
    private boolean mLastShowSpn;
    private String mLastSpn;
    private ContentObserver mMobileDataObserver;
    private ContentObserver mNWBoosterObserver;
    public String[] mNetworkManuallySelected;
    private String mNetworkNameDefault;
    private final String mNetworkNameSeparator = null;
    final SparseArray<MobileIconGroup> mNetworkToIconLookup = null;

  //  @VisibleForTesting

    private int mPreSvcSate;
    private String mPreciseAPNType;
    private int mPreciseDataState;
    private ServiceState mServiceState;
    private boolean mShouldBlockPLMNInfoUpdate;
    private SignalStrength mSignalStrength;
    private int mSlotId;
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

        public MobileIconGroup(String name, int[][] sbIcons, int[][] qsIcons, int[] contentDesc, int sbNullState, int qsNullState, int sbDiscState, int qsDiscState, int discContentDesc, int dataContentDesc, int dataType, boolean isWide) {
            super();
            this.mDataContentDescription = dataContentDesc;
            this.mDataType = dataType;
            this.mIsWide = isWide;
            this.mQsDataType = dataType;
            this.mNwBoosterDataType = 0;
        }

        public MobileIconGroup(String name, int[][] sbIcons, int[][] qsIcons, int[] contentDesc, int sbNullState, int qsNullState, int sbDiscState, int qsDiscState, int discContentDesc, int dataContentDesc, int dataType, boolean isWide, int nwBoosterDataType) {
            super();
            this.mDataContentDescription = dataContentDesc;
            this.mDataType = dataType;
            this.mIsWide = isWide;
            this.mQsDataType = dataType;
            this.mNwBoosterDataType = nwBoosterDataType;
        }
    }
Context mContext;
    private boolean isShowSlot() {
        LeoSysUiManages(mContext);
        return setLeoStatusBar5Gicon;
    }

    private MobileIconGroup updateSimplifiedMobileIconGroup() {
        MobileIconGroup mobileIconGroup = null;
        this.mActivityIconSet = TelephonyIcons.DATA_ACTIVITY_SIMPLIFIED;

        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("updateSimplifiedMobileIconGroup(): ");
        stringBuilder.append(this.mDataNetType);

        switch (this.mDataNetType ) {
            case 0:

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
            case PluginQSColoring.COLORING_INDEX_QSTILE_ON_ICON /*12*/:
            case 14:
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_THREE_G;
                this.mDataTypeIconAtSignalIconArea = 2131232408;
                break;
            case 8:
            case 9:
            case 10:

            case 13:
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_FOUR_G;
                if (!isShowSlot()) {
                    this.mDataTypeIconAtSignalIconArea = 2131232410;
                    break;
                }
                mobileIconGroup = TelephonyIcons.SIMPLIFIED_FOUR_5G;
                this.mDataTypeIconAtSignalIconArea = mG5LeoICON;
                break;
            case 15:

                break;
            default:
                mobileIconGroup = TelephonyIcons.UNKNOWN;
                this.mDataTypeIconAtSignalIconArea = 0;
                break;
        }

        return mobileIconGroup;
    }


}
