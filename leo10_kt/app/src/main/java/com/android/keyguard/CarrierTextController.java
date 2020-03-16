/*
 * Copyright (C) 2019 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.keyguard;

import static android.telephony.PhoneStateListener.LISTEN_ACTIVE_DATA_SUBSCRIPTION_ID_CHANGE;
import static android.telephony.PhoneStateListener.LISTEN_NONE;



import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import android.os.Handler;
import android.os.SystemProperties;
import android.telephony.CarrierConfigManager;
import android.telephony.PhoneStateListener;
import android.telephony.ServiceState;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.Log;

import androidx.annotation.VisibleForTesting;



import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

/**
 * Controller that generates text including the carrier names and/or the status of all the SIM
 * interfaces in the device. Through a callback, the updates can be retrieved either as a list or
 * separated by a given separator {@link CharSequence}.
 */
public class CarrierTextController {
    private static final boolean DEBUG =false;
    private static final String TAG = "CarrierTextController";


    private boolean mTelephonyCapable;
    private boolean mShowMissingSim;
    private boolean mShowAirplaneMode;
    @VisibleForTesting
    protected KeyguardUpdateMonitor mKeyguardUpdateMonitor;
    private WifiManager mWifiManager;
    private boolean[] mSimErrorState;
    private final int mSimSlotsNumber=0;
    private CarrierTextCallback mCarrierTextCallback;
    private Context mContext;
    private CharSequence mSeparator;

    @VisibleForTesting
    protected boolean mDisplayOpportunisticSubscriptionCarrierText;


    @VisibleForTesting
    protected final KeyguardUpdateMonitorCallback mCallback = new KeyguardUpdateMonitorCallback() {
        @Override
        public void onRefreshCarrierInfo() {
            if (DEBUG) {
                Log.d(TAG, "onRefreshCarrierInfo(), mTelephonyCapable: "
                        + Boolean.toString(mTelephonyCapable));
            }
            updateCarrierText();
        }

        @Override
        public void onTelephonyCapable(boolean capable) {
            if (DEBUG) {
                Log.d(TAG, "onTelephonyCapable() mTelephonyCapable: "
                        + Boolean.toString(capable));
            }
            mTelephonyCapable = capable;
            updateCarrierText();
        }


    };

    private int mActiveMobileDataSubscription = SubscriptionManager.INVALID_SUBSCRIPTION_ID;
    private PhoneStateListener mPhoneStateListener = new PhoneStateListener() {
        @Override
        public void onActiveDataSubscriptionIdChanged(int subId) {
            mActiveMobileDataSubscription = subId;
            if (mKeyguardUpdateMonitor != null) {
                updateCarrierText();
            }
        }
    };

    /**
     * The status of this lock screen. Primarily used for widgets on LockScreen.
     */
    private enum StatusMode {
        Normal, // Normal case (sim card present, it's not locked)
        NetworkLocked, // SIM card is 'network locked'.
        SimMissing, // SIM card is missing.
        SimMissingLocked, // SIM card is missing, and device isn't provisioned; don't allow access
        SimPukLocked, // SIM card is PUK locked because SIM entered wrong too many times
        SimLocked, // SIM card is currently locked
        SimPermDisabled, // SIM card is permanently disabled due to PUK unlock failure
        SimNotReady, // SIM is not ready yet. May never be on devices w/o a SIM.
        SimIoError, // SIM card is faulty
        SimUnknown // SIM card is unknown
    }

    /**
     * Controller that provides updates on text with carriers names or SIM status.
     * Used by {@link CarrierText}.
     *
     * @param separator Separator between different parts of the text
     */
    public CarrierTextController(Context context, CharSequence separator, boolean showAirplaneMode,
            boolean showMissingSim) {
        mContext = context;


        mShowAirplaneMode = showAirplaneMode;
        mShowMissingSim = showMissingSim;

        mWifiManager = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
        mSeparator = separator;
       // mWakefulnessLifecycle = Dependency.get(WakefulnessLifecycle.class);

    }

    /**
     * Checks if there are faulty cards. Adds the text depending on the slot of the card
     *
     * @param text:   current carrier text based on the sim state
     * @param carrierNames names order by subscription order
     * @param subOrderBySlot array containing the sub index for each slot ID
     * @param noSims: whether a valid sim card is inserted
     * @return text
     */
    private CharSequence updateCarrierTextWithSimIoError(CharSequence text,
            CharSequence[] carrierNames, int[] subOrderBySlot, boolean noSims) {
        final CharSequence carrier = "";

        // mSimErrorState has the state of each sim indexed by slotID.
        for (int index = 0; index < mSimErrorState.length; index++) {
            if (!mSimErrorState[index]) {
                continue;
            }
            // In the case when no sim cards are detected but a faulty card is inserted
            // overwrite the text and only show "Invalid card"
            if (noSims) {

            } else if (subOrderBySlot[index] != -1) {

            } else {
                // concatenate "Invalid card" when faulty card is inserted in other slot

            }

        }
        return text;
    }

    /**
     * Sets the listening status of this controller. If the callback is null, it is set to
     * not listening
     *
     * @param callback Callback to provide text updates
     */
    public void setListening(CarrierTextCallback callback) {
        TelephonyManager telephonyManager = ((TelephonyManager) mContext
                .getSystemService(Context.TELEPHONY_SERVICE));
        if (callback != null) {
            mCarrierTextCallback = callback;

        }
    }

    /**
     * @param subscriptions
     */
    private void filterMobileSubscriptionInSameGroup(List<SubscriptionInfo> subscriptions) {

    }

    /**
     * updates if opportunistic sub carrier text should be displayed or not
     *
     */
    @VisibleForTesting
    public void updateDisplayOpportunisticSubscriptionCarrierText(boolean isEnable) {
        mDisplayOpportunisticSubscriptionCarrierText = isEnable;
    }

    protected List<SubscriptionInfo> getSubscriptionInfo() {
        List<SubscriptionInfo> subs;

        return null;
    }

    protected void updateCarrierText() {
        boolean allSimsMissing = true;
        boolean anySimReadyAndInService = false;
        CharSequence displayText = null;
        List<SubscriptionInfo> subs = getSubscriptionInfo();

        final int numSubs = subs.size();
        final int[] subsIds = new int[numSubs];
        // This array will contain in position i, the index of subscription in slot ID i.
        // -1 if no subscription in that slot
        final int[] subOrderBySlot = new int[mSimSlotsNumber];
        for (int i = 0; i < mSimSlotsNumber; i++) {
            subOrderBySlot[i] = -1;
        }
        final CharSequence[] carrierNames = new CharSequence[numSubs];
        if (DEBUG) Log.d(TAG, "updateCarrierText(): " + numSubs);

        for (int i = 0; i < numSubs; i++) {
            int subId = subs.get(i).getSubscriptionId();
            carrierNames[i] = "";
            subsIds[i] = subId;
            subOrderBySlot[subs.get(i).getSimSlotIndex()] = i;

        }
        // Only create "No SIM card" if no cards with CarrierName && no wifi when some sim is READY
        // This condition will also be true always when numSubs == 0
        if (allSimsMissing && !anySimReadyAndInService) {
            if (numSubs != 0) {
                // Shows "No SIM card | Emergency calls only" on devices that are voice-capable.
                // This depends on mPlmn containing the text "Emergency calls only" when the radio
                // has some connectivity. Otherwise, it should be null or empty and just show
                // "No SIM card"
                // Grab the first subscripton, because they all should contain the emergency text,
                // described above.
                displayText = makeCarrierStringOnEmergencyCapable(
                        getMissingSimMessage(), subs.get(0).getCarrierName());
            } else {
                // We don't have a SubscriptionInfo to get the emergency calls only from.
                // Grab it from the old sticky broadcast if possible instead. We can use it
                // here because no subscriptions are active, so we don't have
                // to worry about MSIM clashing.

            }
        }

        if (TextUtils.isEmpty(displayText)) displayText = joinNotEmpty(mSeparator, carrierNames);

        displayText = updateCarrierTextWithSimIoError(displayText, carrierNames, subOrderBySlot,
                allSimsMissing);

        boolean airplaneMode = false;
        // APM (airplane mode) != no carrier state. There are carrier services
        // (e.g. WFC = Wi-Fi calling) which may operate in APM.

        final CarrierTextCallbackInfo info = new CarrierTextCallbackInfo(
                displayText,
                carrierNames,
                !allSimsMissing,
                subsIds,
                airplaneMode);
        postToCallback(info);
    }

    @VisibleForTesting
    protected void postToCallback(CarrierTextCallbackInfo info) {

        final CarrierTextCallback callback = mCarrierTextCallback;
        if (callback != null) {

        }
    }

    private Context getContext() {
        return mContext;
    }

    private String getMissingSimMessage() {

        return null;
    }

    private String getAirplaneModeMessage() {


        return null;
    }

    /**
     * Top-level function for creating carrier text. Makes text based on simState, PLMN
     * and SPN as well as device capabilities, such as being emergency call capable.
     *
     * @return Carrier text if not in missing state, null otherwise.
     */


    /*
     * Add emergencyCallMessage to carrier string only if phone supports emergency calls.
     */
    private CharSequence makeCarrierStringOnEmergencyCapable(
            CharSequence simMessage, CharSequence emergencyCallMessage) {

        return simMessage;
    }

    /*
     * Add "SIM card is locked" in parenthesis after carrier name, so it is easily associated in
     * DSDS
     */
    private CharSequence makeCarrierStringOnLocked(CharSequence simMessage,
            CharSequence carrierName) {

        return simMessage;
    }

    /**
     * Determine the current status of the lock screen given the SIM state and other stuff.
     */

    private static CharSequence concatenate(CharSequence plmn, CharSequence spn,
            CharSequence separator) {
        final boolean plmnValid = !TextUtils.isEmpty(plmn);
        final boolean spnValid = !TextUtils.isEmpty(spn);
        if (plmnValid && spnValid) {
            return new StringBuilder().append(plmn).append(separator).append(spn).toString();
        } else if (plmnValid) {
            return plmn;
        } else if (spnValid) {
            return spn;
        } else {
            return "";
        }
    }

    /**
     * Joins the strings in a sequence using a separator. Empty strings are discarded with no extra
     * separator added so there are no extra separators that are not needed.
     */
    private static CharSequence joinNotEmpty(CharSequence separator, CharSequence[] sequences) {
        int length = sequences.length;
        if (length == 0) return "";
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < length; i++) {
            if (!TextUtils.isEmpty(sequences[i])) {
                if (!TextUtils.isEmpty(sb)) {
                    sb.append(separator);
                }
                sb.append(sequences[i]);
            }
        }
        return sb.toString();
    }

    private static List<CharSequence> append(List<CharSequence> list, CharSequence string) {
        if (!TextUtils.isEmpty(string)) {
            list.add(string);
        }
        return list;
    }



    /**
     * Data structure for passing information to CarrierTextController subscribers
     */
    public static final class CarrierTextCallbackInfo {
        public final CharSequence carrierText;
        public final CharSequence[] listOfCarriers;
        public final boolean anySimReady;
        public final int[] subscriptionIds;
        public boolean airplaneMode;

        @VisibleForTesting
        public CarrierTextCallbackInfo(CharSequence carrierText, CharSequence[] listOfCarriers,
                boolean anySimReady, int[] subscriptionIds) {
            this(carrierText, listOfCarriers, anySimReady, subscriptionIds, false);
        }

        @VisibleForTesting
        public CarrierTextCallbackInfo(CharSequence carrierText, CharSequence[] listOfCarriers,
                boolean anySimReady, int[] subscriptionIds, boolean airplaneMode) {
            this.carrierText = carrierText;
            this.listOfCarriers = listOfCarriers;
            this.anySimReady = anySimReady;
            this.subscriptionIds = subscriptionIds;
            this.airplaneMode = airplaneMode;
        }
    }

    /**
     * Callback to communicate to Views
     */
    public interface CarrierTextCallback {
        /**
         * Provides updated carrier information.
         */
        default void updateCarrierInfo(CarrierTextCallbackInfo info) {};

        /**
         * Notifies the View that the device is going to sleep
         */
        default void startedGoingToSleep() {};

        /**
         * Notifies the View that the device finished waking up
         */
        default void finishedWakingUp() {};
    }
}
