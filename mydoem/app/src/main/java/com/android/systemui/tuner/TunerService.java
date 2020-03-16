package com.android.systemui.tuner;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.UserHandle;
import android.provider.Settings.Secure;
import com.android.systemui.Dependency;

public abstract class TunerService {

    public interface Tunable {
        void onTuningChanged(String str, String str2);
    }

    public static class ClearReceiver extends BroadcastReceiver {
        public void onReceive(Context context, Intent intent) {
            if ("com.android.systemui.action.CLEAR_TUNER".equals(intent.getAction())) {
                ((TunerService) Dependency.get(TunerService.class)).clearAll();
            }
        }
    }

    public abstract void addTunable(Tunable tunable, String... strArr);

    public abstract void clearAll();

    public abstract int getValue(String str, int i);

    public abstract String getValue(String str);

    public abstract String getValue(String str, String str2);

    public abstract void removeTunable(Tunable tunable);

    public abstract void setValue(String str, int i);

    public abstract void setValue(String str, String str2);

    private static Context userContext(Context context) {


        return context;
    }

    public static final void setTunerEnabled(Context context, boolean enabled) {
        int i;
        int i2 = 2;
        PackageManager packageManager = userContext(context).getPackageManager();
       // ComponentName componentName = new ComponentName(context, TunerActivity.class);
        if (enabled) {
            i = 1;
        } else {
            i = 2;
        }
       // packageManager.setComponentEnabledSetting(componentName, i, 1);
        PackageManager packageManager2 = userContext(context).getPackageManager();
        ComponentName componentName2 = new ComponentName(context, "com.android.systemui.tuner.TunerSettingLink");
        if (enabled) {
            i2 = 1;
        }
        packageManager2.setComponentEnabledSetting(componentName2, i2, 1);
    }

    public static final boolean isTunerEnabled(Context context) {
      //  return userContext(context).getPackageManager().getComponentEnabledSetting(new ComponentName(context, TunerActivity.class)) == 1;
        return false;
    }

    public static final void showResetRequest(final Context context, final Runnable onDisabled) {

    }
}
