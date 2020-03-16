package android.telephony;


import android.annotation.RequiresPermission;

public class ATelephonyManage {

    public boolean getDataEnabled() {
        return isDataEnabled();
    }
    public boolean isDataEnabled() {
        return false;
    }

    @RequiresPermission(android.Manifest.permission.MODIFY_PHONE_STATE)
    public void setDataEnabled(boolean enable) {
      //  setDataEnabled(getSubId(SubscriptionManager.getDefaultDataSubscriptionId()), enable);
    }
}
	