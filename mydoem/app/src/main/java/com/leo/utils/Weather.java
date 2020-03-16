package com.leo.utils;



import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;

import com.dome.leo.R;

import java.text.SimpleDateFormat;
import java.util.Date;

import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserString.getSymbol;
import static com.os.leo.utils.LeoUtils.isLunarSetting;


public class Weather{
    public static String getLocation(Context context) {
        String str;
        if (isLunarSetting()==true) {
            str=getLocationCN(context);//中文定位
        }else {
            str=getLocationEN(context);//英文定位
        }
        return str;
    }
    public static String getLocationCN(Context context) {
        String str = "";
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_NAME"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                str = query.getString(query.getColumnIndex("COL_WEATHER_NAME"));
            }
            query.close();
        }
        return str;
    }

    public static String getLocationEN(Context context) {
        String str = "";
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_NAME_ENG"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                str = query.getString(query.getColumnIndex("COL_WEATHER_NAME_ENG"));
            }
            query.close();
        }
        return str;
    }

    public static String getTempScaleText(Context context) {
        int i = 1;
        //String str = "COL_SETTING_TEMP_SCALE";
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/settings"), new String[]{"COL_SETTING_TEMP_SCALE"}, (String) null, (String[]) null, (String) null);
        if (query != null) {
            while (query.moveToNext()) {
                i = query.getInt(query.getColumnIndex("COL_SETTING_TEMP_SCALE"));
            }
            query.close();
        }
        return i == 1 ? "℃" : "℉";
    }

    public static String getCurrentTemperature(Context context, int i) {
        return Integer.toString(getTemp(getCurrentTemperature(context), i));
    }

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


    static int getTemp(Float f, int i) {
        return i == 1 ? f.floatValue() < 0.0f ? (int) (((double) f.floatValue()) - 0.5d) : (int) (((double) f.floatValue()) + 0.5d) : ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d)) < 0.0f ? (int) (((double) ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d))) - 0.5d) : (int) (((double) ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d))) + 0.5d);
    }

    public static boolean isWeatherTrue(Context context) {
        boolean z = false;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        ContentResolver contentResolver = context.getContentResolver();
        try {
            Cursor query = contentResolver.query(parse, null, null, null, null);
            if (query != null) {
                while (query.moveToNext()) {
                    Cursor query2 = contentResolver.query(parse, null, format, null, null);
                    if (query2 != null) {
                        while (query2.moveToNext()) {
                            z = true;
                        }
                        query2.close();
                    }
                }
                query.close();
            }
        } catch (Exception e) {
        }
        return z;
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
    static Float getHighTemperature(Context context) {
        Float f = null;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        String str = "COL_WEATHER_HIGH_TEMP";
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_HIGH_TEMP"}, format, (String[]) null, (String) null);
        if (query != null) {
            while (query.moveToNext()) {
                f = Float.valueOf(query.getFloat(query.getColumnIndex("COL_WEATHER_HIGH_TEMP")));
            }
            query.close();
        }
        return f;
    }


    public static String getHighTemp(Context context, int i) {
        return Integer.toString(getTemp(getHighTemperature(context), i));
    }
    static Float getLowTemperature(Context context) {
        Float f = null;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
       // String str = "COL_WEATHER_LOW_TEMP";
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_LOW_TEMP"}, format, (String[]) null, (String) null);
        if (query != null) {
            while (query.moveToNext()) {
                f = Float.valueOf(query.getFloat(query.getColumnIndex("COL_WEATHER_LOW_TEMP")));
            }
            query.close();
        }
        return f;
    }

    public static String getLowTemp(Context context, int i) {
        return Integer.toString(getTemp(getLowTemperature(context), i));
    }
    public static String getTodayLifeDustTextJP(int degree) {
        if (degree <= 50) {
            return "非常に良い";
        }
        if (degree <= 100) {
            return "良い";
        }
        if (degree <= 150) {
            return "軽度的に汚れ";
        }
        if (degree <= 200) {
            return "中度的に汚れ";
        }
        if (degree <= 300) {
            return "厳重的に汚れ";
        }
        if (degree > 300) {
            return "重度的に汚れ";
        }
        return String.valueOf(0);
    }

    public static String getTodayLifeDustText(int degree) {
        if (degree <= 50) {
            return "优";
        }
        if (degree <= 100) {
            return "良";
        }
        if (degree <= 150) {
            return "轻度污染";
        }
        if (degree <= 200) {
            return "中度污染";
        }
        if (degree <= 300) {
            return "严重污染";
        }
        if (degree > 300) {
            return "重度污染";
        }
        return String.valueOf(0);
    }
    public static String getTodayLifeDustTextEN(int degree) {
        if (degree <= 50) {
            return "Excellent";
        }
        if (degree <= 100) {
            return "Good";
        }
        if (degree <= 150) {
            return "Mild pollution";
        }
        if (degree <= 200) {
            return "Moderately polluted";
        }
        if (degree <= 300) {
            return "Serious pollution";
        }
        if (degree > 300) {
            return "Severe pollution";
        }
        return String.valueOf(0);
    }
    public static int getAQIIndex(Context context ) {
        int aqi = 0;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_AQI_INDEX"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                aqi = query.getInt(query.getColumnIndex("COL_WEATHER_AQI_INDEX"));
            }
            query.close();
        }
        return aqi;
    }
    public static String getChinaAQI(Context context) {
        String str;
        if (isLunarSetting()==true) {
            str=getTodayLifeDustText(getAQIIndex(context));//中文定位
        }else {
            str=getTodayLifeDustTextEN(getAQIIndex(context));//英文定位
        }
        return "AQI "+str+" ("+getAQIIndex(context)+")";
    }

    public static String getWeatherInfoTextWCN(Context context) {
        int weatherIconNum=getLeoWeatherIcon(context);
        int resourceId = R.string.weather_state_99;
        String resourceName = "";
        if ((weatherIconNum >= 0 && weatherIconNum <= 33) || ((weatherIconNum >= 53 && weatherIconNum <= 58) || weatherIconNum == 49 || weatherIconNum == 99 || weatherIconNum == 301 || weatherIconNum == 302)) {
            resourceName = "weather_state_" + (weatherIconNum < 10 ? "0" + weatherIconNum : Integer.valueOf(weatherIconNum));
        }
        if (!TextUtils.isEmpty(resourceName)) {
            resourceId = context.getResources().getIdentifier(resourceName, "string", context.getPackageName());
        }
        return getWeatherText(context, resourceId);
    }
    public static String getWeatherText(Context context, int id) {
        return id > 0 ? context.getString(id) : "";
    }
    public static int getLeoWeatherIcon(Context context) {
        int i = 0;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{"cityId:current"});
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_ICON_NUM"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                i = query.getInt(query.getColumnIndex("COL_WEATHER_ICON_NUM"));
            }
            query.close();
        }
        return i;
    }
    public static long getSunRiseTime(Context context) {
        long j = 0;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_SUNRISE_TIME"}, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                j = query.getLong(query.getColumnIndex("COL_WEATHER_SUNRISE_TIME"));
            }
            query.close();
        }
        return j;
    }
    public static String getSunRiseTime(Context context, String str) {
        Date date = new Date();
        date.setTime(getSunRiseTime(context));
        return new SimpleDateFormat(str).format(date);
    }
    public static long getSunSetTime(Context context) {
        long j = 0;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_SUNSET_TIME"}, null, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                j = query.getLong(query.getColumnIndex("COL_WEATHER_SUNSET_TIME"));
            }
            query.close();
        }
        return j;
    }

    public static String getSunSetTime(Context context, String str) {
        Date date = new Date();
        date.setTime(getSunSetTime(context));
        return new SimpleDateFormat(str).format(date);
    }


}