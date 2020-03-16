package com.sec.android.daemonapp.appwidget.model;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.util.Log;



public class IntentHelper {
    private IntentHelper() {
        throw new IllegalStateException();
    }

    public static PendingIntent getClockIntent(Context context) {
        try {
            updateLeoWeather(context);
            context.getPackageManager().getPackageInfo("com.sec.android.app.clockpackage", 1);
            Intent intent = new Intent("android.intent.action.MAIN");
            intent.addCategory("android.intent.category.LAUNCHER");
            intent.setComponent(new ComponentName("com.sec.android.app.clockpackage", "com.sec.android.app.clockpackage.ClockPackage"));
            return PendingIntent.getActivity(context, 0, intent, 134217728);
        } catch (NameNotFoundException e) {
            Log.e("", "" + e.getLocalizedMessage());
            return PendingIntent.getActivity(context, 0, new Intent("android.intent.action.SHOW_ALARMS"), 134217728);
        }
    }

    public static PendingIntent getDetailIntent(Context context, int i) {
        Intent startDetailIntent = i == 4003 ? getStartDetailIntent("com.sec.android.widgetapp.ap.hero.accuweather.action.ACTIVITY2X1") : i == 4007 ? getStartDetailIntent("com.sec.android.widgetapp.ap.hero.accuweather.action.ACTIVITY_FORECAST") : getStartDetailIntent("com.sec.android.widgetapp.ap.hero.accuweather.action.ACTIVITY");
        startDetailIntent.setPackage("com.sec.android.daemonapp");
        updateLeoWeather(context);
        return PendingIntent.getBroadcast(context, 0, startDetailIntent, 134217728);
    }

    public static PendingIntent getEmptyIntent(Context context, int i) {
        Intent intent = i == 4003 ? new Intent("com.sec.android.widgetapp.ap.hero.accuweather.action.CITY_CNT_ZERO_FOR_2X1") : i == 4007 ? new Intent("com.sec.android.widgetapp.ap.hero.accuweather.action.CITY_CNT_ZERO_FOR_FORECAST") : new Intent("com.sec.android.widgetapp.ap.hero.accuweather.action.CITY_CNT_ZERO");
        intent.setPackage(context.getPackageName());
        return PendingIntent.getBroadcast(context, 0, intent, 0);
    }

    public static PendingIntent getFaceWidgetDetailIntent(Context context) {
        Intent intent = new Intent("com.samsung.android.weather.facewidget.action.START_ACTIVITY");
        intent.setPackage("com.sec.android.daemonapp");
        updateLeoWeather(context);
        return PendingIntent.getBroadcast(context, 0, intent, 134217728);
    }

    public static PendingIntent getFaceWidgetEmptyIntent(Context context) {
        Intent intent = new Intent("com.samsung.android.weather.facewidget.action.FACEWIDGET_CITY_CNT_ZERO");
        intent.setPackage("com.sec.android.daemonapp");
        updateLeoWeather(context);
        return PendingIntent.getBroadcast(context, 0, intent, 134217728);
    }

    public static PendingIntent getFaceWidgetRefreshIntent(Context context) {
        Intent intent = new Intent("com.samsung.android.weather.facewidget.action.MANUAL_REFRESH");
        intent.setPackage("com.sec.android.daemonapp");
        updateLeoWeather(context);
        return PendingIntent.getBroadcast(context, 0, intent, 134217728);
    }

    public static PendingIntent getLocationSetting(Context context, int i) {
        Intent intent = i == 4003 ? new Intent("com.sec.android.widgetapp.ap.hero.accuweather.action.START_LOCATION_SETTINGS_FOR_2X1") : i == 4007 ? new Intent("com.sec.android.widgetapp.ap.hero.accuweather.action.START_LOCATION_SETTINGS_FOR_FORECAST") : new Intent("com.sec.android.widgetapp.ap.hero.accuweather.action.START_LOCATION_SETTINGS");
        intent.setPackage("com.sec.android.daemonapp");
        updateLeoWeather(context);
        return PendingIntent.getBroadcast(context, 0, intent, 134217728);
    }

    public static PendingIntent getRefreshIntent(Context context, int i) {
        Intent intent = i == 4003 ? new Intent("com.sec.android.widgetapp.ap.accuweatherdaemon.action.MANUALREFRESH_FOR_2X1") : i == 4007 ? new Intent("com.sec.android.widgetapp.ap.accuweatherdaemon.action.ACTION_SEC_MANUAL_REFRESH_FOR_FORECAST") : new Intent("com.sec.android.widgetapp.ap.accuweatherdaemon.action.MANUALREFRESH");
        intent.setPackage("com.sec.android.daemonapp");
        updateLeoWeather(context);
        return PendingIntent.getBroadcast(context, 0, intent, 134217728);
    }

    public static PendingIntent getRestoreIntent(Context context, int i) {
        Intent intent = i == 4003 ? new Intent("com.sec.android.widgetapp.ap.hero.accuweather.widget.action.ACTION_RESTORE_START_WEATHER2X1_WIDGET") : i == 4007 ? new Intent("com.sec.android.widgetapp.ap.hero.accuweather.widget.action.ACTION_RESTORE_START_WEATHER_FORECAST_WIDGET") : new Intent("com.sec.android.widgetapp.ap.hero.accuweather.widget.action.ACTION_RESTORE_START_WEATHER_WIDGET");
        intent.setPackage("com.sec.android.daemonapp");
        updateLeoWeather(context);
        return PendingIntent.getBroadcast(context, 0, intent, 134217728);
    }

    private static Intent getStartDetailIntent(String str) {

        Intent intent = new Intent(str);
        intent.putExtra("cls", "com.samsung.android.weather.intent.action.internal.PARTICULARS");
        return intent;
    }


    public static void updateLeoWeather( Context C) {
        new  WeatherClient(C);
    }
}
