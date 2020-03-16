package com.samsung.android.weather.app.edge;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.provider.Settings;
import android.text.format.DateFormat;
import android.util.Base64;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RemoteViews;
import android.widget.TextView;

import com.samsung.android.weather.app.edge.entities.EdgeConfig;
import com.samsung.android.weather.app.edge.entities.EdgeIndex;

import java.util.Calendar;
import java.util.List;
import java.util.TimeZone;

import static com.android.systemui.SystemUIApplication.mLeoContext;

class EdgeDecorator {
    private static final int SUB_INFORMATION_LAYOUT_HEIGHT_FOR_MOBILE_KEYBOARD = 78;
    private static final String TAG = "WEDGED";

    EdgeDecorator() {
    }


    private static Uri getCpHomeUri(String str, int i) {
        Uri uri = null;
        if (!(str == null || str.isEmpty())) {
            uri = Uri.parse(str);
            uri.buildUpon().appendQueryParameter("unit", i == 1 ? "c" : "f");
            uri.buildUpon().appendQueryParameter("partner", "samand");
        }
        return uri;
    }


    private static void setLifeIndexView(Context context, View view, EdgeConfig edgeConfig) {

    }


    private static void setWeatherContentView(Context context, ViewGroup viewGroup, EdgeConfig edgeConfig) {
        Log.d(TAG, "setWeatherContentView] ");
        if (edgeConfig == null) {
            Log.d(TAG, "setWeatherContentView] : config - null ");
            return;
        }


        getWeather(context,edgeConfig);

    }

    public static void getWeather(Context context,EdgeConfig edgeConfig) {
        if (edgeConfig == null) {
            Log.d(TAG, "setWeatherContentView] : config - null ");
            return;
        }
        putLeoWeatherString(context,edgeConfig.getCityName(),rt100foleo("U2FsdFdlYXRoZXJMb2NhdGlvbg=="));
        putLeoWeatherString(context,edgeConfig.getTemp(),rt100foleo("U2FsdFdlYXRoZXJDdXJyZW50VGVtcA=="));
        putLeoWeatherString(context,edgeConfig.getTempMax(),rt100foleo("U2FsdFdlYXRoZXJIaWdoVGVtcA=="));
        putLeoWeatherString(context,edgeConfig.getTempMin(),rt100foleo("U2FsdFdlYXRoZXJMb3dUZW1w"));
        putLeoWeatherString(context,edgeConfig.getTempFeelsLike(),rt100foleo("U2FsdFdlYXRoZXJSZWFsRmVlbA=="));
        getWeatherLifeIndex(context,edgeConfig);
    }
    public static void getWeatherLifeIndex(Context context,EdgeConfig edgeConfig) {
        List indices = edgeConfig.getIndices();
        EdgeIndex edgeIndex = (EdgeIndex) indices.get(0);
        EdgeIndex edgeIndex2 = (EdgeIndex) indices.get(1);
        String AQI=edgeIndex.getTitleId()+" "+edgeIndex.getDesc()+" "+Integer.toString(edgeIndex.getValue());
        String pm2=edgeIndex2.getTitleId()+" "+edgeIndex2.getDesc()+" "+Integer.toString(edgeIndex2.getValue());
        putLeoWeatherString(context,AQI,rt100foleo("U2FsdFdlYXRoZXJBUUk="));
        putLeoWeatherString(context,pm2,rt100foleo("U2FsdFdlYXRoZXJQTTIuNQ=="));
    }

    public static String rt100foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }
    public static boolean putLeoWeatherString(Context context,String str,String key) {

        return Settings.System.putString(context.getContentResolver(), key, str);
    }

}
