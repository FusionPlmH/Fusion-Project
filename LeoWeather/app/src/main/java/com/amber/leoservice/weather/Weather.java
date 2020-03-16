package com.amber.leoservice.weather;



import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;


import com.amber.leoservice.R;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;



public class Weather{
    public static boolean isLunarSetting() {
        String language = getLanguageEnv();
        if (language != null
                && (language.trim().equals("zh-CN") || language.trim().equals("zh-HK") || language.trim().equals("zh-MO")|| language.trim().equals("zh-TW")))
            return true;
        else
            return false;
    }
    static String getLanguageEnv() {
        Locale l = Locale.getDefault();
        String language = l.getLanguage();
        String country = l.getCountry().toLowerCase();
        if ("zh".equals(language)) {
            if ("cn".equals(country)) {
                language = "zh-CN";//中国大陆
            }else if ("hk".equals(country)) {
                language = "zh-HK";//中国香港
            } else if ("mo".equals(country)) {
                language = "zh-MO";//中国澳门
            }else if ("".equals(country)) {
                language = "zh-TW";//中国台湾省
            }
        }
        return language;
    }
    public static String getLocation(Context context) {
        String str;
        if (isLunarSetting()==true) {
            str= getLocationCN(context);//中文定位
        }else {
            str=getLocationEN(context);//英文定位
        }
        return str;
    }
    public static String getLocationCN(Context context) {
        String str = "";
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{getSelectLocation(context)});
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
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{getSelectLocation(context)});
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
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{getSelectLocation(context)});
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
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{getSelectLocation(context)});
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
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{getSelectLocation(context)});
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
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{getSelectLocation(context)});
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

    private static final int[] LIFE_DUST = new int[]{R.string.aqi_dust_good,R.string.aqi_moderate,R.string.aqi_unhealthy_for_sensitive_groups,R.string.aqi_unhealthy, R.string.aqi_hazardous, R.string.aqi_very_unhealthy};


    public static int getTodayLifeDustText(int degree) {
        return degree<= 50 ? LIFE_DUST[0] : degree<= 100 ? LIFE_DUST[1] : degree <= 150 ? LIFE_DUST[2] : degree<= 200 ? LIFE_DUST[3] : degree <= 300 ? LIFE_DUST[4] : degree > 300 ? LIFE_DUST[5] : 0;
    }


    public static int getAQIIndex(Context context ) {
        int aqi = 0;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{getSelectLocation(context)});
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_AQI_INDEX"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                aqi = query.getInt(query.getColumnIndex("COL_WEATHER_AQI_INDEX"));
            }
            query.close();
        }
        return aqi;
    }


    public static String getTodayLifeDustDegreeString(int i) {
        return i < 300 ? String.valueOf(i) : "300+";
    }

    public static String getChinaAQI(Context context) {
        String str = "";
            int todayLifeDustText = getTodayLifeDustText(getAQIIndex(context));
            if (todayLifeDustText > 0) {
                str = "AQI " +  context.getResources().getString(todayLifeDustText)+ " (" +getTodayLifeDustDegreeString(getAQIIndex(context))  + ")";

            }
        return str;
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
    public static String getSelectLocation(Context context) {
        String str = "";
        String str2 = "COL_SETTING_LAST_SEL_LOCATION";
        Cursor query = context.getContentResolver().query(Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/settings"), new String[]{"COL_SETTING_LAST_SEL_LOCATION"}, (String) null, (String[]) null, (String) null);
        if (query != null) {
            while (query.moveToNext()) {
                str = query.getString(query.getColumnIndex("COL_SETTING_LAST_SEL_LOCATION"));
            }
            query.close();
        }
        return (str == null || str == "" || str.length() == 0) ? "cityId:current" : str;
    }

    static Float getRealFeelTemperature(Context context) {
        Float f = null;
        Uri parse = Uri.parse("content://com.sec.android.daemonapp.ap.accuweather.provider/weatherinfo");
        String format = String.format("COL_WEATHER_KEY=\"%s\"", new Object[]{getSelectLocation(context)});
        String str = "COL_WEATHER_FEELSLIKE_TEMP";
        Cursor query = context.getContentResolver().query(parse, new String[]{"COL_WEATHER_FEELSLIKE_TEMP"}, format, (String[]) null, (String) null);
        if (query != null) {
            while (query.moveToNext()) {
                f = Float.valueOf(query.getFloat(query.getColumnIndex("COL_WEATHER_FEELSLIKE_TEMP")));
            }
            query.close();
        }
        return f;
    }
    public static String getRealFeelTemperature(Context context, int i) {
        return Integer.toString(getTemp(getRealFeelTemperature(context), i));
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
        Cursor query =context.getContentResolver().query(parse, new String[]{"COL_WEATHER_WEATHER_TEXT"}, format, null, null);
        if (query != null) {
            while (query.moveToNext()) {
                str = query.getString(query.getColumnIndex("COL_WEATHER_WEATHER_TEXT"));
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

    public static String getDetailedLocation(Context context) {
        return updateLeoWeatherLocationCountry(context)+" "+updateLeoWeatherLocationProvince(context);
    }
}