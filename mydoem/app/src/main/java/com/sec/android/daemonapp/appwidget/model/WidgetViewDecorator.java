package com.sec.android.daemonapp.appwidget.model;

import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Parcelable;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import android.widget.ImageView;
import android.widget.RemoteViews;

import com.sec.android.daemonapp.common.WidgetUtil;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Collections;
import java.util.List;
import java.util.TimeZone;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherCustomDateFormat;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherDateBR;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherDateWeek;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherDateWeekOrientation;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherDateWeekStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherLunar;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherLunarConstellation;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherLunarConstellationOrientation;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherLunarStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisplayWeatherLunarSymbol;
import static com.os.leo.utils.LeoUserString.*;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;


public class WidgetViewDecorator {

    public static int getLeoResource(Context context, String resource) {
        return context.getResources().getIdentifier(resource, null, "com.sec.android.daemonapp");
    }
    private static void drawDate(Context context, RemoteViews remoteViews, int i, TimeZone timeZone) {
        CharSequence string;
        int textId = WidgetUtil.getTextId(context, getLeoResource(context,"id/widget_date"), i);
        int textColor = WidgetUtil.getTextColor(i, getLeoResource(context,"color/col_def_time_font_color"));
        remoteViews.setViewVisibility(getLeoResource(context,"id/widget_date_bg"), 8);
        remoteViews.setViewVisibility(getLeoResource(context,"id/widget_date"), 8);
        LeoSettings(context);
        Calendar instance = Calendar.getInstance();
        long currentTimeMillis = System.currentTimeMillis();
        instance.setTimeZone(timeZone);
        instance.setTimeInMillis(currentTimeMillis);

        string = DateFormat.format(
                getLeoWeatherDateStyle(setLeoUesrDisplayWeatherDateBR,
                        setLeoUesrDisplayWeatherDateWeekOrientation,
                        setLeoUesrDisplayWeatherLunarSymbol,
                        setLeoUesrDisplayWeatherDateWeekStyle,
                        setLeoUesrDisplayWeatherDateWeek ,
                        setLeoUesrDisplayWeatherCustomDateFormat,
                        setLeoUesrDisplayWeatherLunarStyle,
                        setLeoUesrDisplayWeatherLunarConstellationOrientation,
                        setLeoUesrDisplayWeatherLunar,
                        setLeoUesrDisplayWeatherLunarConstellation
                ), instance);
        remoteViews.setString(textId, "setTimeZone", timeZone.getID());
        remoteViews.setCharSequence(textId, "setFormat12Hour", string);
        remoteViews.setCharSequence(textId, "setFormat24Hour", string);
        remoteViews.setTextColor(textId, context.getResources().getColor(textColor));
        remoteViews.setViewVisibility(textId, 0);
     
    }



    public static void getWeatherData(Context context, ImageView imageView) {
        Intent intent = new Intent(LEO_ACTION_WEATHER);
        intent.putExtra("WEATHER", (CharSequence) imageView);
        context.sendBroadcast(intent);
    }


    public static void getCityData(Context context, String str) {

        Intent intent = new Intent(LEO_ACTION_WEATHER_LOCATION);
        intent.putExtra("LOCATION", str);
        context.sendBroadcast(intent);
    }
    public static void getTmepData(Context context, int style1, int style2) {

        String str = style1 + "℃"+" "+ style2 + "℃";
        Intent intent = new Intent(LEO_ACTION_WEATHER_TEMP);
        intent.putExtra("TEMP", str);
        context.sendBroadcast(intent);
    }
    public static void getTmepData2(Context context, int style1, int style2) {

        String str = style1 + "℃"+"-"+ style2 + "℃";
        Intent intent = new Intent(LEO_ACTION_WEATHER_TEMP_SINGLE);
        intent.putExtra("SINGLETEMP", str);
        context.sendBroadcast(intent);
    }
    public static void getCurrentTmepData(Context context, int style) {
        String str = style+ "℃";
        Intent intent = new Intent(LEO_ACTION_WEATHER_AQI);
        intent.putExtra("CURRENTTEMP", str);
        context.sendBroadcast(intent);
    }
}
