package com.android.launcher3.framework.view.util;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Intent;
import android.os.UserHandle;
import android.util.Log;
import android.util.TypedValue;
import android.view.View;


public class ActivityHelper {
    private static final String ACTIVE_LAUNCH_ACTION = "com.samsung.DO_ACTIVE_LAUNCH";
    private static final String ACTIVE_LAUNCH_KNOX_ACTION = "com.samsung.DO_ACTIVE_LAUNCH_FOR_KNOX_LAUNCHER";
    private static final String EXTRA_PACKAGE_NAME = "package_name";
    private static final String EXTRA_USER_ID = "userid";
    private static final String TAG = "ActivityHelper";

    public static int getResourceIdFromAttribute(Activity activity, int i) {
        TypedValue typedValue = new TypedValue();
        activity.getTheme().resolveAttribute(i, typedValue, true);
        return typedValue.resourceId;
    }



    public static void startHomeSettingActivity(Activity activity) {
        startHomeSettingActivity(activity, false);
    }

    public static void startHomeSettingActivity(Activity activity, boolean z) {
        Log.d(TAG, "launch setting Activity.");
        Intent intent = new Intent();
        intent.setClassName(activity, "com.android.launcher3.infra.activity.SettingsActivity");
        intent.addFlags(32768);
        activity.startActivity(intent);
        if (z) {

        }
    }
}
