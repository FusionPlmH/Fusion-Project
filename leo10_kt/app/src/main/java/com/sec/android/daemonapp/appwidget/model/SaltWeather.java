/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.sec.android.daemonapp.appwidget.model;



import android.content.Context;
import android.database.Cursor;
import android.net.Uri;

public  class SaltWeather {
 public static Context mContext;
 private static String mWeatherLocation="";
 private static String mWeatherCurrentTemp="";
 private static String mWeatherLowTemp="";
 private static String mWeatherHighTemp="";
 private static String mWeatherAQI="";
 private static String mWeatherState="";
 private static String mWeatherRealFeel="";

 public SaltWeather(Context context){
  mContext=context;
 }

 public static void detWeather(){

 }

 public static int getLeoUIResource(String resource) {
  return mContext.getResources().getIdentifier(resource, null,"com.sec.android.daemonapp");
 }

 private static   final int[] LIFE_DUST = new int[]{
         getLeoUIResource("string/index_state_chn_dust_good"),
         getLeoUIResource("string/index_state_chn__moderate"),
         getLeoUIResource("string/index_state_chn_unhealthy_for_sensitive_groups"),
         getLeoUIResource("string/index_state_chn_unhealthy"),
         getLeoUIResource("string/index_state_chn_hazardous"),
         getLeoUIResource("string/index_state_chn_very_unhealthy")};


 public static int getTodayLifeDustText(int degree) {
  return degree<= 50 ? LIFE_DUST[0] : degree<= 100 ? LIFE_DUST[1] : degree <= 150 ? LIFE_DUST[2] : degree<= 200 ? LIFE_DUST[3] : degree <= 300 ? LIFE_DUST[4] : degree > 300 ? LIFE_DUST[5] : 0;
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


 public static String getTodayLifeDustDegreeString(int i) {
  return i < 300 ? String.valueOf(i) : "300+";
 }
}