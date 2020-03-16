package com.sec.android.daemonapp.appwidget.model;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;


public class IntentHelper {
    private IntentHelper() {
        throw new IllegalStateException();
    }


    public static PendingIntent getClockIntent(Context context) {
        try {
            context.getPackageManager().getPackageInfo("com.sec.android.app.clockpackage", 1);
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setComponent(new ComponentName("com.sec.android.app.clockpackage", "com.sec.android.app.clockpackage.ClockPackage"));
            return PendingIntent.getActivity(context, 0, intent, 134217728);
        } catch (NameNotFoundException e) {

            return PendingIntent.getActivity(context, 0, new Intent("android.intent.action.SHOW_ALARMS"), 134217728);
        }
    }
}
