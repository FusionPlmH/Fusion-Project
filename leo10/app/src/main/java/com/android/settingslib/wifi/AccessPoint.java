package com.android.settingslib.wifi;

import android.content.Context;
import android.net.NetworkInfo;
import android.net.NetworkInfo.DetailedState;
import android.net.NetworkInfo.State;
import android.net.NetworkKey;
import android.net.ScoredNetwork;
import android.net.wifi.ScanResult;
import android.net.wifi.WifiConfiguration;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;

import android.os.Bundle;
import android.os.Parcelable;
import android.os.SystemClock;
import android.support.annotation.NonNull;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.TtsSpan.TelephoneBuilder;
import android.util.ArraySet;
import android.util.Log;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class AccessPoint implements Comparable<AccessPoint> {
    static final AtomicInteger sLastId = new AtomicInteger(0);
    private String bssid;
    AccessPointListener mAccessPointListener;
    private int mCarrierApEapType;
    private String mCarrierName;
    private WifiConfiguration mConfig;
    private final Context mContext;
    private String mFqdn;
    int mId;
    private WifiInfo mInfo;
    private boolean mIsCarrierAp;
    private boolean mIsScoredNetworkMetered;
    private String mKey;
    private NetworkInfo mNetworkInfo;
    private String mProviderFriendlyName;
    private int mRssi;
  //  private final ArraySet<ScanResult> mScanResults;
   // private final Map<String, TimestampedScoredNetwork> mScoredNetworkCache;
    private int mSpeed;
    private Object mTag;
    private int networkId;
    private int pskType;
    private int security;
    private String ssid;

    public interface AccessPointListener {
        void onAccessPointChanged(AccessPoint accessPoint);

        void onLevelChanged(AccessPoint accessPoint);
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface Speed {
    }

    public AccessPoint(Context context, WifiConfiguration wifiConfiguration) {
       // this.mScanResults = new ArraySet();
      //  this.mScoredNetworkCache = new HashMap();
        this.networkId = -1;
        this.pskType = 0;
        this.mRssi = Integer.MIN_VALUE;
        this.mSpeed = 0;
        this.mIsScoredNetworkMetered = false;
        this.mIsCarrierAp = false;
        this.mCarrierApEapType = -1;
        this.mCarrierName = null;
        this.mContext = context;
        loadConfig(wifiConfiguration);
        this.mId = sLastId.incrementAndGet();
    }

    public AccessPoint(Context context, Bundle bundle) {
     //   this.mScanResults = new ArraySet();
       // this.mScoredNetworkCache = new HashMap();
        this.networkId = -1;
        int i = 0;
        this.pskType = 0;
        this.mRssi = Integer.MIN_VALUE;
        this.mSpeed = 0;
        this.mIsScoredNetworkMetered = false;
        this.mIsCarrierAp = false;
        this.mCarrierApEapType = -1;
        this.mCarrierName = null;
        this.mContext = context;
        if (bundle.containsKey("key_config")) {
            this.mConfig = (WifiConfiguration) bundle.getParcelable("key_config");
        }
        if (this.mConfig != null) {
            loadConfig(this.mConfig);
        }
        if (bundle.containsKey("key_ssid")) {
            this.ssid = bundle.getString("key_ssid");
        }
        if (bundle.containsKey("key_security")) {
            this.security = bundle.getInt("key_security");
        }
        if (bundle.containsKey("key_speed")) {
            this.mSpeed = bundle.getInt("key_speed");
        }
        if (bundle.containsKey("key_psktype")) {
            this.pskType = bundle.getInt("key_psktype");
        }
        this.mInfo = (WifiInfo) bundle.getParcelable("key_wifiinfo");
        if (bundle.containsKey("key_networkinfo")) {
            this.mNetworkInfo = (NetworkInfo) bundle.getParcelable("key_networkinfo");
        }
        if (bundle.containsKey("key_scanresults")) {
            Parcelable[] parcelableArray = bundle.getParcelableArray("key_scanresults");
          //  this.mScanResults.clear();
            int length = parcelableArray.length;
            while (i < length) {
              //  this.mScanResults.add((ScanResult) parcelableArray[i]);
                i++;
            }
        }
        if (bundle.containsKey("key_scorednetworkcache")) {
            Iterator it = bundle.getParcelableArrayList("key_scorednetworkcache").iterator();
            while (it.hasNext()) {
              //  TimestampedScoredNetwork timestampedScoredNetwork = (TimestampedScoredNetwork) it.next();
              //  this.mScoredNetworkCache.put(timestampedScoredNetwork.getScore().networkKey.wifiKey.bssid, timestampedScoredNetwork);
            }
        }
        if (bundle.containsKey("key_fqdn")) {
            this.mFqdn = bundle.getString("key_fqdn");
        }
        if (bundle.containsKey("key_provider_friendly_name")) {
            this.mProviderFriendlyName = bundle.getString("key_provider_friendly_name");
        }
        if (bundle.containsKey("key_is_carrier_ap")) {
            this.mIsCarrierAp = bundle.getBoolean("key_is_carrier_ap");
        }
        if (bundle.containsKey("key_carrier_ap_eap_type")) {
            this.mCarrierApEapType = bundle.getInt("key_carrier_ap_eap_type");
        }
        if (bundle.containsKey("key_carrier_name")) {
            this.mCarrierName = bundle.getString("key_carrier_name");
        }
        update(this.mConfig, this.mInfo, this.mNetworkInfo);
        updateKey();
        updateRssi();
        this.mId = sLastId.incrementAndGet();
    }

    AccessPoint(Context context, Collection<ScanResult> collection) {
     //   this.mScanResults = new ArraySet();
      //  this.mScoredNetworkCache = new HashMap();
        this.networkId = -1;
        this.pskType = 0;
        this.mRssi = Integer.MIN_VALUE;
        this.mSpeed = 0;
        this.mIsScoredNetworkMetered = false;
        this.mIsCarrierAp = false;
        this.mCarrierApEapType = -1;
        this.mCarrierName = null;
        this.mContext = context;
        if (collection.isEmpty()) {
            throw new IllegalArgumentException("Cannot construct with an empty ScanResult list");
    }
       // this.mScanResults.addAll(collection);
        ScanResult scanResult = (ScanResult) collection.iterator().next();
        this.ssid = scanResult.SSID;
        this.bssid = scanResult.BSSID;
        this.security = getSecurity(scanResult);
        if (this.security == 2) {
            this.pskType = getPskType(scanResult);
        }
        updateKey();
        updateRssi();

    }

    private int generateAverageSpeedForSsid() {


        return roundToClosestSpeedEnum(0);
    }

    public static String getKey(ScanResult scanResult) {
        StringBuilder stringBuilder = new StringBuilder();
        if (TextUtils.isEmpty(scanResult.SSID)) {
            stringBuilder.append(scanResult.BSSID);
        } else {
            stringBuilder.append(scanResult.SSID);
        }
        stringBuilder.append(',');
        stringBuilder.append(getSecurity(scanResult));
        return stringBuilder.toString();
    }

    public static String getKey(WifiConfiguration wifiConfiguration) {
        StringBuilder stringBuilder = new StringBuilder();
        if (TextUtils.isEmpty(wifiConfiguration.SSID)) {
            stringBuilder.append(wifiConfiguration.BSSID);
        } else {
            stringBuilder.append(removeDoubleQuotes(wifiConfiguration.SSID));
        }
        stringBuilder.append(',');
        stringBuilder.append(getSecurity(wifiConfiguration));
        return stringBuilder.toString();
    }

    private static int getPskType(ScanResult scanResult) {
        boolean contains = scanResult.capabilities.contains("WPA-PSK");
        boolean contains2 = scanResult.capabilities.contains("WPA2-PSK");
        if (contains2 && contains) {
            return 3;
        }
        if (contains2) {
            return 2;
        }
        if (contains) {
            return 1;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Received abnormal flag string: ");
        stringBuilder.append(scanResult.capabilities);
        Log.w("SettingsLib.AccessPoint", stringBuilder.toString());
        return 0;
    }

    private static int getSecurity(ScanResult scanResult) {
        return scanResult.capabilities.contains("WEP") ? 1 : scanResult.capabilities.contains("PSK") ? 2 : scanResult.capabilities.contains("EAP") ? 3 : 0;
    }

    static int getSecurity(WifiConfiguration wifiConfiguration) {
        int i = 1;
        if (wifiConfiguration.allowedKeyManagement.get(1)) {
            return 2;
        }
        if (wifiConfiguration.allowedKeyManagement.get(2) || wifiConfiguration.allowedKeyManagement.get(3)) {
            return 3;
        }
        if (wifiConfiguration.wepKeys[0] == null) {
            i = 0;
        }
        return i;
    }

    private static String getSpeedLabel(Context context, int i) {
        //return i != 5 ? i != 10 ? i != 20 ? i != 30 ? null : context.getString(R.string.speed_label_very_fast) : context.getString(R.string.speed_label_fast) : context.getString(R.string.speed_label_okay) : context.getString(R.string.speed_label_slow);
        return null;
    }

    public static String getSpeedLabel(Context context, ScoredNetwork scoredNetwork, int i) {
        return "";
    }

    private boolean isInfoForThisAccessPoint(WifiConfiguration wifiConfiguration, WifiInfo wifiInfo) {
        if (isPasspoint() || this.networkId == -1) {
            return wifiConfiguration != null ? matches(wifiConfiguration) : this.ssid.equals(removeDoubleQuotes(wifiInfo.getSSID()));
        } else {
            return this.networkId == wifiInfo.getNetworkId();
        }
    }

    private static boolean isVerboseLoggingEnabled() {
        return false;
    }

    public static /* synthetic */ void lambda$setScanResults$1(AccessPoint accessPoint) {
        if (accessPoint.mAccessPointListener != null) {
            accessPoint.mAccessPointListener.onLevelChanged(accessPoint);
        }
    }

    public static /* synthetic */ void lambda$setScanResults$2(AccessPoint accessPoint) {
        if (accessPoint.mAccessPointListener != null) {
            accessPoint.mAccessPointListener.onAccessPointChanged(accessPoint);
        }
    }

    public static /* synthetic */ void lambda$update$3(AccessPoint accessPoint) {
        if (accessPoint.mAccessPointListener != null) {
            accessPoint.mAccessPointListener.onAccessPointChanged(accessPoint);
        }
    }

    public static /* synthetic */ void lambda$update$4(AccessPoint accessPoint) {
        if (accessPoint.mAccessPointListener != null) {
            accessPoint.mAccessPointListener.onLevelChanged(accessPoint);
        }
    }

    public static /* synthetic */ void lambda$update$5(AccessPoint accessPoint) {
        if (accessPoint.mAccessPointListener != null) {
            accessPoint.mAccessPointListener.onAccessPointChanged(accessPoint);
        }
    }



    static String removeDoubleQuotes(String str) {
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        int length = str.length();
        return (length > 1 && str.charAt(0) == '\"' && str.charAt(length - 1) == '\"') ? str.substring(1, length - 1) : str;
    }

    private static int roundToClosestSpeedEnum(int i) {
        return i < 5 ? 0 : i < 7 ? 5 : i < 15 ? 10 : i < 25 ? 20 : 30;
    }

    public static String securityToString(int i, int i2) {
        return i == 1 ? "WEP" : i == 2 ? i2 == 1 ? "WPA" : i2 == 2 ? "WPA2" : i2 == 3 ? "WPA_WPA2" : "PSK" : i == 3 ? "EAP" : "NONE";
    }

    private void updateKey() {
        StringBuilder stringBuilder = new StringBuilder();
        if (TextUtils.isEmpty(getSsidStr())) {
            stringBuilder.append(getBssid());
        } else {
            stringBuilder.append(getSsidStr());
        }
        stringBuilder.append(',');
        stringBuilder.append(getSecurity());
        this.mKey = stringBuilder.toString();
    }

    private boolean updateMetered() {

        return false;
    }

    private void updateRssi() {
        if (!isActive()) {
            int i = Integer.MIN_VALUE;


        }
    }

    private boolean updateScores() {

        return false;
    }

    private boolean updateSpeed() {
        int i = this.mSpeed;
        this.mSpeed = generateAverageSpeedForSsid();
        boolean z = i != this.mSpeed;
        if (isVerboseLoggingEnabled() && z) {
            Log.i("SettingsLib.AccessPoint", String.format("%s: Set speed to %d", new Object[]{this.ssid, Integer.valueOf(this.mSpeed)}));
        }
        return z;
    }

    public int compareTo(@NonNull AccessPoint accessPoint) {
        if (isActive() && !accessPoint.isActive()) {
            return -1;
        }
        if (!isActive() && accessPoint.isActive()) {
            return 1;
        }
        if (isReachable() && !accessPoint.isReachable()) {
            return -1;
        }
        if (!isReachable() && accessPoint.isReachable()) {
            return 1;
        }
        if (isSaved() && !accessPoint.isSaved()) {
            return -1;
        }
        if (!isSaved() && accessPoint.isSaved()) {
            return 1;
        }
        if (getSpeed() != accessPoint.getSpeed()) {
            return accessPoint.getSpeed() - getSpeed();
        }
        int calculateSignalLevel = WifiManager.calculateSignalLevel(accessPoint.mRssi, 5) - WifiManager.calculateSignalLevel(this.mRssi, 5);
        if (calculateSignalLevel != 0) {
            return calculateSignalLevel;
        }
        calculateSignalLevel = getSsidStr().compareToIgnoreCase(accessPoint.getSsidStr());
        return calculateSignalLevel != 0 ? calculateSignalLevel : getSsidStr().compareTo(accessPoint.getSsidStr());
    }

    public boolean equals(Object obj) {
        boolean z = false;
        if (!(obj instanceof AccessPoint)) {
            return false;
        }
        if (compareTo((AccessPoint) obj) == 0) {
            z = true;
        }
        return z;
    }

    public String getBssid() {
        return this.bssid;
    }

    public String getConfigName() {
        return "";
    }

    public DetailedState getDetailedState() {
        if (this.mNetworkInfo != null) {
            return this.mNetworkInfo.getDetailedState();
        }
        Log.w("SettingsLib.AccessPoint", "NetworkInfo is null, cannot return detailed state");
        return null;
    }

    public WifiInfo getInfo() {
        return this.mInfo;
    }

    public String getKey() {
        return this.mKey;
    }

    public int getLevel() {
        return WifiManager.calculateSignalLevel(this.mRssi, 5);
    }

    public Set<ScanResult> getScanResults() {

        return null;
    }



    public int getSecurity() {
        return this.security;
    }

    /* access modifiers changed from: 0000 */
    public int getSpeed() {
        return this.mSpeed;
    }

    /* access modifiers changed from: 0000 */
    public String getSpeedLabel() {
        return getSpeedLabel(this.mSpeed);
    }

    /* access modifiers changed from: 0000 */
    public String getSpeedLabel(int i) {
        return getSpeedLabel(this.mContext, i);
    }

    public CharSequence getSsid() {
        SpannableString spannableString = new SpannableString(this.ssid);
        spannableString.setSpan(new TelephoneBuilder(this.ssid).build(), 0, this.ssid.length(), 18);
        return spannableString;
    }

    public String getSsidStr() {
        return this.ssid;
    }

    public int hashCode() {
        int i = 0;
        if (this.mInfo != null) {
            i = 0 + (13 * this.mInfo.hashCode());
        }
        return ((i + (19 * this.mRssi)) + (23 * this.networkId)) + (29 * this.ssid.hashCode());
    }

    public boolean isActive() {
        return (this.mNetworkInfo == null || (this.networkId == -1 && this.mNetworkInfo.getState() == State.DISCONNECTED)) ? false : true;
    }

    public boolean isConnectable() {
        return getLevel() != -1 && getDetailedState() == null;
    }

    public boolean isEphemeral() {
        return false;
    }

    public boolean isMetered() {
        return false;
    }

    public boolean isPasspoint() {
        return false;
    }

    public boolean isReachable() {
        return this.mRssi != Integer.MIN_VALUE;
    }

    public boolean isSaved() {
        return this.networkId != -1;
    }

    /* access modifiers changed from: 0000 */

    public void loadConfig(WifiConfiguration wifiConfiguration) {
        this.ssid = wifiConfiguration.SSID == null ? "" : removeDoubleQuotes(wifiConfiguration.SSID);
        this.bssid = wifiConfiguration.BSSID;
        this.security = getSecurity(wifiConfiguration);
        updateKey();
        this.networkId = wifiConfiguration.networkId;
        this.mConfig = wifiConfiguration;
    }

    public boolean matches(WifiConfiguration wifiConfiguration) {
        boolean z = false;

        return z;
    }

    /* access modifiers changed from: 0000 */

    public void setRssi(int i) {
        this.mRssi = i;
    }

    /* access modifiers changed from: 0000 */
    public void setScanResults(Collection<ScanResult> collection) {

    }

    public void setTag(Object obj) {
        this.mTag = obj;
    }

    public String toString() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("AccessPoint(");
        stringBuilder = stringBuilder.append(this.ssid);
        if (this.bssid != null) {
            stringBuilder.append(":");
            stringBuilder.append(this.bssid);
        }
        if (isSaved()) {
            stringBuilder.append(',');
            stringBuilder.append("saved");
        }
        if (isActive()) {
            stringBuilder.append(',');
            stringBuilder.append("active");
        }
        if (isEphemeral()) {
            stringBuilder.append(',');
            stringBuilder.append("ephemeral");
        }
        if (isConnectable()) {
            stringBuilder.append(',');
            stringBuilder.append("connectable");
        }
        if (this.security != 0) {
            stringBuilder.append(',');
            stringBuilder.append(securityToString(this.security, this.pskType));
        }
        stringBuilder.append(",level=");
        stringBuilder.append(getLevel());
        if (this.mSpeed != 0) {
            stringBuilder.append(",speed=");
            stringBuilder.append(this.mSpeed);
        }
        stringBuilder.append(",metered=");
        stringBuilder.append(isMetered());
        if (isVerboseLoggingEnabled()) {
            stringBuilder.append(",rssi=");
            stringBuilder.append(this.mRssi);
            stringBuilder.append(",scan cache size=");

        }
        stringBuilder.append(')');
        return stringBuilder.toString();
    }

    /* access modifiers changed from: 0000 */
    public void update(WifiConfiguration wifiConfiguration) {
        this.mConfig = wifiConfiguration;
        this.networkId = wifiConfiguration != null ? wifiConfiguration.networkId : -1;

    }

    public boolean update(WifiConfiguration wifiConfiguration, WifiInfo wifiInfo, NetworkInfo networkInfo) {
        boolean z = false;
        int level = getLevel();
        if (wifiInfo != null && isInfoForThisAccessPoint(wifiConfiguration, wifiInfo)) {
            z = this.mInfo == null;
            if (this.mConfig != wifiConfiguration) {
                update(wifiConfiguration);
            }
            if (this.mRssi != wifiInfo.getRssi() && wifiInfo.getRssi() != -127) {
                this.mRssi = wifiInfo.getRssi();
                z = true;
            } else if (!(this.mNetworkInfo == null || networkInfo == null || this.mNetworkInfo.getDetailedState() == networkInfo.getDetailedState())) {
                z = true;
            }
            this.mInfo = wifiInfo;
            this.mNetworkInfo = networkInfo;
        } else if (this.mInfo != null) {
            z = true;
            this.mInfo = null;
            this.mNetworkInfo = null;
        }

        return z;
    }

    /* access modifiers changed from: 0000 */
    public boolean update() {

        return false;
    }
}
