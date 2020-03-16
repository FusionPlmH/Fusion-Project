package com.tweaks.leo.utils;


import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;


public class Weather{
    static Float getCurrentTemperature(Context context) {
        Float f = null;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        String str = "COL_WEATHER_CURRENT_TEMP";
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_CURRENT_TEMP"}, format, (String[]) null, (String) null);
        if (query != null) {
            while (query.moveToNext()) {
                f = Float.valueOf(query.getFloat(query.getColumnIndex("COL_WEATHER_CURRENT_TEMP")));
            }
            query.close();
        }
        return f;
    }

    public static String getCurrentTemperature(Context context, int i) {
        return Integer.toString(getTemp(getCurrentTemperature(context), i));
    }



    static int getTemp(Float f, int i) {
        return i == 1 ? f.floatValue() < 0.0f ? (int) (((double) f.floatValue()) - 0.5d) : (int) (((double) f.floatValue()) + 0.5d) : ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d)) < 0.0f ? (int) (((double) ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d))) - 0.5d) : (int) (((double) ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d))) + 0.5d);
    }


    public static int getTempScale(Context context) {
        int i = 1;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/settings");
        String str = "COL_SETTING_TEMP_SCALE";
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_SETTING_TEMP_SCALE"}, (String) null, (String[]) null, (String) null);
        if (query != null) {
            while (query.moveToNext()) {
                i = query.getInt(query.getColumnIndex("COL_SETTING_TEMP_SCALE"));
            }
            query.close();
        }
        return i;
    }


    public static   String updateLeoWeatherDistrict(Context context) {
        String str = "";
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        Cursor query =context.getContentResolver().query(parse, new String[]{"COL_WEATHER_NAME"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                str = query.getString(query.getColumnIndex("COL_WEATHER_NAME"));
            }
            query.close();
        }
        return str;
    }

    public static   String updateLeoWeatherLocationCountry(Context context) {
        String str = "";
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        Cursor query =context.getContentResolver().query(parse, new String[]{"COL_WEATHER_COUNTRY"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                str = query.getString(query.getColumnIndex("COL_WEATHER_COUNTRY"));
            }
            query.close();
        }
        return str;
    }
    public static   String updateLeoWeatherLocationProvince(Context context) {
        String str = "";
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        Cursor query =context.getContentResolver().query(parse, new String[]{"COL_WEATHER_STATE"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                str = query.getString(query.getColumnIndex("COL_WEATHER_STATE"));
            }
            query.close();
        }
        return str;
    }

    public static   String updateLeoWeatherDetail(Context context) {
        String str = "";
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        Cursor query =context.getContentResolver().query(parse, new String[]{"COL_WEATHER_FORECAST_TEXT"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                str = query.getString(query.getColumnIndex("COL_WEATHER_FORECAST_TEXT"));
            }
            query.close();
        }
        return str;
    }
    public static   String updateLeoWeatherLocation(Context context) {
        String str;
        str=updateLeoWeatherDistrict(context)+" "+" "+updateLeoWeatherLocationProvince(context)+" ";
        return str;
    }
}