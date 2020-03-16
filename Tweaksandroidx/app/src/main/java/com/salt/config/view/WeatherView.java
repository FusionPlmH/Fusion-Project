package com.salt.config.view;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ApplicationInfo;

import android.content.pm.PackageManager;
import android.database.Cursor;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Display;
import android.view.View;
import android.widget.TextView;

import androidx.annotation.Nullable;

import com.salt.config.R;
import java.text.SimpleDateFormat;
import java.util.Date;

import static com.salt.frame.LeadFrame.isChineseLanguage;

public class WeatherView extends TextView {
    public Context mContext;
    private String mWeatherLocation;
    private String mWeatherCurrentTemp;
    private String mWeatherLowTemp;
    private String mWeatherHighTemp;
    private String mWeatherAQI;
    private String mWeatherState;
    private String mWeatherRealFeel;
    private String mWeatherDetailedLocation;
    private String mWeatherDetail;


    public WeatherView(Context context) {
        super(context);
    }

    public WeatherView(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        mContext=context;
        UpdateWeather();
    }

    public void refreshWeather2(Context context){
        if (isWeatherTrue(context)) {

            mWeatherRealFeel = context.getResources().getString( R.string. life_index_s_temp) + " " + getRealFeelTemperature(context,getTempScale(context)) + getTempScaleText(context);
            mWeatherLocation =getLocation(context);
            mWeatherCurrentTemp =getCurrentTemperature(context,getTempScale(context)) + getTempScaleText(context);
            mWeatherLowTemp =getLowTemp(context,getTempScale(context)) + getTempScaleText(context);
            mWeatherHighTemp = getHighTemp(context, getTempScale(context)) + getTempScaleText(context);
            mWeatherState =getWeatherInfoTextWCN(context);
            mWeatherAQI =getChinaAQI(context);
            mWeatherDetailedLocation=getDetailedLocation(context)+" "+getLocation(context);
            mWeatherDetail=updateLeoWeatherDetail(context);
                    Settings.System.putString(
                            context.getContentResolver(), "SaltWeatherLocation", mWeatherLocation);
                    Settings.System.putString(
                            context.getContentResolver(), "SaltWeatherCurrentTemp", mWeatherCurrentTemp);
                    Settings.System.putString(
                            context.getContentResolver(), "SaltWeatherState", mWeatherState);
                    Settings.System.putString(
                            context.getContentResolver(), "SaltWeatherHighTemp", mWeatherHighTemp);
                    Settings.System.putString(
                            context.getContentResolver(), "SaltWeatherLowTemp", mWeatherLowTemp);
                    Settings.System.putString(
                            context.getContentResolver(), "SaltWeatherRealFeel", mWeatherRealFeel);
                    Settings.System.putString(
                            context.getContentResolver(), "SaltWeatherAQI", mWeatherAQI);


            };
    }

    public void UpdateWeather(){
        String string;

       if (isWeatherTrue(mContext)) {
        WeatherOn();
        string =mWeatherLocation+" " +mWeatherCurrentTemp+"｜"+mWeatherState+
                mWeatherHighTemp+"-"
                +mWeatherLowTemp+" " + mWeatherRealFeel;
           refreshWeather2(getContext());
        setText(string);
        setVisibility(VISIBLE);

    }else {
        setText("三星天气未定位");
    }
}

  public String Weather(){
      String Weather="";
      if (isWeatherTrue(mContext)) {
          WeatherOn();
          String string =mWeatherDetailedLocation ;
          Weather=string+"\n"+
                  mWeatherCurrentTemp+"｜"+mWeatherState+
                  mWeatherHighTemp+"-"
                  +mWeatherLowTemp+"\n" + mWeatherRealFeel+"\n"+ mWeatherAQI
                  +"\n" +mWeatherDetail;
      }

      return Weather;
  }


    private void  WeatherOn() {
        if (isWeatherTrue(mContext)) {

            mWeatherRealFeel = mContext.getResources().getString( R.string. life_index_s_temp) + " " + getRealFeelTemperature(mContext,getTempScale(mContext)) + getTempScaleText(mContext);
            mWeatherLocation =getLocation(mContext);
            mWeatherCurrentTemp =getCurrentTemperature(mContext,getTempScale(mContext)) + getTempScaleText(mContext);
            mWeatherLowTemp =getLowTemp(mContext,getTempScale(mContext)) + getTempScaleText(mContext);
            mWeatherHighTemp = getHighTemp(mContext, getTempScale(mContext)) + getTempScaleText(mContext);
            mWeatherState =getWeatherInfoTextWCN(mContext);
            mWeatherAQI =getChinaAQI(mContext);
            mWeatherDetailedLocation=getDetailedLocation(mContext)+" "+getLocation(mContext);
            mWeatherDetail=updateLeoWeatherDetail(mContext);
        }
    }


    public String mWeatherFormat = "aHH:mm";

        public String getLocation(Context context) {
            String str;
            if (isChineseLanguage()) {
                str= getLocationCN(context);//中文定位
            }else {
                str=getLocationEN(context);//英文定位
            }
            return str;
        }
        public  String getLocationCN(Context context) {
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

        public  String getLocationEN(Context context) {
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


        public String getTempScaleText(Context context) {
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

        public  String getCurrentTemperature(Context context, int i) {
            return Integer.toString(getTemp(getCurrentTemperature(context), i));
        }

        Float getCurrentTemperature(Context context) {
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


        int getTemp(Float f, int i) {
            return i == 1 ? f.floatValue() < 0.0f ? (int) (((double) f.floatValue()) - 0.5d) : (int) (((double) f.floatValue()) + 0.5d) : ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d)) < 0.0f ? (int) (((double) ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d))) - 0.5d) : (int) (((double) ((float) ((((double) f.floatValue()) * 1.8d) + 32.0d))) + 0.5d);
        }

        public  boolean isWeatherTrue(Context context) {
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

        public int getTempScale(Context context) {
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
        Float getHighTemperature(Context context) {
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


        public  String getHighTemp(Context context, int i) {
            return Integer.toString(getTemp(getHighTemperature(context), i));
        }
        Float getLowTemperature(Context context) {
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

        public  String getLowTemp(Context context, int i) {
            return Integer.toString(getTemp(getLowTemperature(context), i));
        }

        private  final int[] LIFE_DUST = new int[]{ R.string. index_state_chn_dust_good,
             R.string. index_state_chn__moderate,
                R.string. index_state_chn_unhealthy_for_sensitive_groups,
                R.string. index_state_chn_unhealthy,
                R.string. index_state_chn_hazardous,
                R.string. index_state_chn_very_unhealthy} ;


        public  int getTodayLifeDustText(int degree) {
            return degree<= 50 ? LIFE_DUST[0] : degree<= 100 ? LIFE_DUST[1] : degree <= 150 ? LIFE_DUST[2] : degree<= 200 ? LIFE_DUST[3] : degree <= 300 ? LIFE_DUST[4] : degree > 300 ? LIFE_DUST[5] : 0;
        }


        public  int getAQIIndex(Context context ) {
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


        public  String getTodayLifeDustDegreeString(int i) {
            return i < 300 ? String.valueOf(i) : "300+";
        }

        public  String getChinaAQI(Context context) {
            String str = "";
            int todayLifeDustText = getTodayLifeDustText(getAQIIndex(context));
            if (todayLifeDustText > 0) {
                str = "AQI " +  context.getResources().getString(todayLifeDustText)+ " (" +getTodayLifeDustDegreeString(getAQIIndex(context))  + ")";

            }
            return str;
        }

        public  String getWeatherInfoTextWCN(Context context) {
            int weatherIconNum=getLeoWeatherIcon(context);
            int resourceId = R.string. weather_state_99;
            String resourceName = "";
            if ((weatherIconNum >= 0 && weatherIconNum <= 33) || ((weatherIconNum >= 53 && weatherIconNum <= 58) || weatherIconNum == 49 || weatherIconNum == 99 || weatherIconNum == 301 || weatherIconNum == 302)) {
                resourceName = "weather_state_" + (weatherIconNum < 10 ? "0" + weatherIconNum : Integer.valueOf(weatherIconNum));
            }
            if (!TextUtils.isEmpty(resourceName)) {
                resourceId = context.getResources().getIdentifier(resourceName, "string", context.getPackageName());
            }
            return getWeatherText(context, resourceId);
        }
        public  String getWeatherText(Context context, int id) {
            return id > 0 ? context.getString(id) : "";
        }
        public  int getLeoWeatherIcon(Context context) {
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
        public  long getSunRiseTime(Context context) {
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
        public  String getSunRiseTime(Context context, String str) {
            Date date = new Date();
            date.setTime(getSunRiseTime(context));
            return new SimpleDateFormat(str).format(date);
        }
        public  long getSunSetTime(Context context) {
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

        public  String getSunSetTime(Context context, String str) {
            Date date = new Date();
            date.setTime(getSunSetTime(context));
            return new SimpleDateFormat(str).format(date);
        }
        public  String getSelectLocation(Context context) {
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

        Float getRealFeelTemperature(Context context) {
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
        public  String getRealFeelTemperature(Context context, int i) {
            return Integer.toString(getTemp(getRealFeelTemperature(context), i));
        }

        public    String updateLeoWeatherLocationProvince(Context context) {
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

        public  String updateLeoWeatherDetail(Context context) {
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

        public   String updateLeoWeatherLocationCountry(Context context) {
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

        public  String getDetailedLocation(Context context) {
            return updateLeoWeatherLocationCountry(context)+" "+updateLeoWeatherLocationProvince(context);
        }
}
