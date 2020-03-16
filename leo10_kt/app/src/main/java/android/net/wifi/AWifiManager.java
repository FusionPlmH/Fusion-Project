package android.net.wifi;

import android.annotation.RequiresPermission;
import android.os.RemoteException;

public class AWifiManager {
    public static final int WIFI_AP_STATE_DISABLING = 10;
    public static final int WIFI_AP_STATE_ENABLED = 13;
    @RequiresPermission(android.Manifest.permission.ACCESS_WIFI_STATE)
    public int getWifiApState() {
        //return mService.getWifiApEnabledState();
        return 0;
    }
    public static final int WIFI_AP_STATE_DISABLED = 11;
    public static final int WIFI_AP_STATE_ENABLING = 12;
}