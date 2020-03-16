package com.sec.android.daemonapp.appwidget.model;

import android.content.Context;
import android.os.Build.VERSION;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.view.LayoutInflater;
import android.widget.RemoteViews;
import android.widget.TextView;
import com.samsung.android.weather.entity.Weather;

import com.samsung.android.weather.ui.common.data.system.SystemProvider;
import com.samsung.android.weather.ui.common.util.WeatherLocale;

import com.samsung.android.weather.util.SLog;
import com.sec.android.daemonapp.appwidget.entities.WidgetConfig;

import com.sec.android.daemonapp.common.WidgetUtil;

import java.text.SimpleDateFormat;
import java.time.ZoneId;
import java.util.Calendar;
import java.util.Comparator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import java.util.function.Function;
import java.util.stream.Collectors;


import static com.sec.LeoAmber.LeoGlobalUtils.*;

public class WidgetViewDecorator {
    public static void decorateAMPM(Context context, RemoteViews remoteViews, WidgetConfig widgetConfig, Weather weather) {
        TimeZone timeZone;
        if (weather != null) {
            Object timeZone2 = weather.getCurrentObservation().getTime().getTimeZone();
            timeZone = !TextUtils.isEmpty((CharSequence) timeZone2) ? TimeZone.getTimeZone((ZoneId) timeZone2) : TimeZone.getDefault();
        } else {
            timeZone = TimeZone.getDefault();
        }
        int textId = WidgetUtil.getTextId(context, getLeoResource(context,"id/widget_am_pm"), widgetConfig.getTheme());
        int textColor = WidgetUtil.getTextColor(widgetConfig.getTheme(), getLeoResource(context,"color/col_def_time_font_color"));
        remoteViews.setViewVisibility(getLeoResource(context,"id/widget_am_pm_bg"), 8);
        remoteViews.setViewVisibility(getLeoResource(context,"id/widget_am_pm"), 8);
        if (isLunarSetting()==true) {
            remoteViews.setString( textId,"setTimeZone",getLeoGlobalClockDetails(1,true));
        }else {
            remoteViews.setString(textId, "setTimeZone", timeZone.getID());
        }
        remoteViews.setTextColor(textId, context.getResources().getColor(textColor));
        remoteViews.setViewVisibility(textId, 0);
    }


    public static int getLeoResource(Context context, String resource) {
        return context.getResources().getIdentifier(resource, null, context.getPackageName());
    }

    public static void decorateDate(Context context, RemoteViews remoteViews, WidgetConfig widgetConfig, Weather weather) {
        TimeZone timeZone;
        if (weather != null) {
            Object timeZone2 = weather.getCurrentObservation().getTime().getTimeZone();
            timeZone = !TextUtils.isEmpty((CharSequence) timeZone2) ? TimeZone.getTimeZone((ZoneId) timeZone2) : TimeZone.getDefault();
        } else {
            timeZone = TimeZone.getDefault();
        }
        int textId = WidgetUtil.getTextId(context, getLeoResource(context,"id/widget_date"), widgetConfig.getTheme());
        int textColor = WidgetUtil.getTextColor(widgetConfig.getTheme(), getLeoResource(context,"color/col_def_time_font_color"));
        remoteViews.setViewVisibility(getLeoResource(context,"id/widget_date_bg"), 8);
        remoteViews.setViewVisibility(getLeoResource(context,"id/widget_date"), 8);
        Calendar instance = Calendar.getInstance();
        CharSequence string ;

            if (isLunarSetting()==true) {
                string= DateFormat.format(
                        getLeoWeatherDateStyle(1,
                               1,
                               0,
                                true,
                              null ,
                                0,
                                true
                        ), instance);
            }else {
                string= WeatherLocale.isKorean(context.getResources().getConfiguration().getLocales().get(0)) ?
                        context.getResources().getString(getLeoResource(context,"string/abbrev_wday_month_day_no_year")) :
                        WeatherLocale.isDateFormatMMMPattern(context.getResources().getConfiguration().getLocales().get(0)) ?
                                DateFormat.getBestDateTimePattern(SystemProvider.getLocale(context), context.getResources().getString(getLeoResource(context,"string/abbrev_wday_month_day_no_year"))).replace("MMMM", "MMM") :
                                DateFormat.getBestDateTimePattern(SystemProvider.getLocale(context), context.getResources().getString(getLeoResource(context,"string/abbrev_wday_month_day_no_year")));
            }


     //   SLog.d("", "drawDate, dateFormat : " + string);

        long currentTimeMillis = System.currentTimeMillis();
        instance.setTimeZone(timeZone);
        instance.setTimeInMillis(currentTimeMillis);
     //   SLog.d("", "drawDate, date : " + DateFormat.format(string, instance));
        remoteViews.setString(textId, "setTimeZone", timeZone.getID());
        remoteViews.setCharSequence(textId, "setFormat12Hour", string);
        remoteViews.setCharSequence(textId, "setFormat24Hour", string);
        remoteViews.setTextColor(textId, context.getResources().getColor(textColor));
        remoteViews.setViewVisibility(textId, 0);
    }



}
