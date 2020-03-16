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

import com.android.systemui.Dependency;
import com.android.systemui.Rune;

import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.HashMap;
import java.util.Objects;

import javax.security.auth.callback.CallbackHandler;

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




}
