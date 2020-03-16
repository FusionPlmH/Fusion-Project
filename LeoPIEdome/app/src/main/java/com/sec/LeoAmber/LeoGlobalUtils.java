package com.sec.LeoAmber;


import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.icu.util.Calendar;
import android.net.Uri;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Date;
import java.util.Locale;


;
import static com.android.fusionleo.global.LeoGlobalLunar.ConstellationString;
import static com.android.fusionleo.global.LeoGlobalValues.APPURL;
import static com.android.fusionleo.global.LeoGlobalValues.APPURL_EN;
import static com.android.fusionleo.global.LeoGlobalValues.SSSSOSSSS;
import static com.android.fusionleo.global.LeoGlobalValues.getAPPNAME;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiA;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiB;



public class LeoGlobalUtils{

    public static String getLeoString(Context cxt,String key) {

        return Settings.System.getString(cxt.getContentResolver(), key);
    }

    public static int getLeoInt(Context cxt, String key, int defaultValue) {

        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
    }
    public static String getLeoWeatherDateStyle(int LOG,int Symbol,int week,boolean Week,String date,int style ,boolean details)  {
        String leoDate ;
        String DateFormat = "";
        String WEEKK=getLeoGlobalDateWeek(week,Week);
        Date now = new Date();
        String clockDateFormat = date;
        if (clockDateFormat == null || clockDateFormat.isEmpty()) {
            String str;
            if (isLunarSetting()==true) {
                str="MMMd日";
            }else {
                str="MMMM dd";
            }
            leoDate = DateFormat.format((LOG ==0) ? str+getSymbol(Symbol,Week)+WEEKK : WEEKK+ getSymbol(Symbol,Week)+str, now)+getSymbol(Symbol,Week)+getLeoGlobalLunarStyle(style,details);
        } else {
            leoDate=DateFormat.format( (LOG ==0) ? clockDateFormat+getSymbol(Symbol,Week)+WEEKK : WEEKK+getSymbol(Symbol,Week)+clockDateFormat , now)+ getSymbol(Symbol,Week)+getLeoGlobalLunarStyle(style,details);
        }

        return leoDate;
    }
    private static final String TAG = "LeoGlobalUtils"+"\n"+"Qian" ;
    public static String getLeoGlobalLunarStyle(int style ,boolean details) {
        Calendar instance = android.icu.util.Calendar.getInstance();
        String LeoLunarStyle="";
        if(getAPPNAME().equals(hitomiA())){
            Log.v(TAG, "Disabled");
        }else if(getAPPNAME().equals(hitomiB())){
            Log.v(TAG, "Disabled");
        }else if (isLunarSetting()==true) {
            if (details){
                if (style == 0) {
                    //时辰年月日
                    LeoLunarStyle= (new LeoGlobalLunar(instance).toLunarChineseSrting());
                } else if (style == 1) {
                    //时辰年月日
                    LeoLunarStyle= (new LeoGlobalLunar(instance).toLunarChineseTimeSrting());
                } else if (style== 2) {
                    // 属相年月日
                    LeoLunarStyle=(new LeoGlobalLunar(instance).toLunarChineseZodiacSrting());
                }else if (style== 3) {
                    // 时辰属相年月
                    LeoLunarStyle=(new LeoGlobalLunar(instance).toLunarChineseZodiacTimeSrting());
                }

            }
        }
        return LeoLunarStyle;
    }
    public static String getLeoGlobalClockDetails(int detailstyle ,boolean details ) {
        android.icu.util.Calendar instance = android.icu.util.Calendar.getInstance();
        ;
        String clockDetailsString="";
        if (isLunarSetting()==true) {
            //星期风格选择
            if (details){
                if (detailstyle == 0) {
                    //时辰
                    clockDetailsString= getTimeDetailChinese();
                } else if (detailstyle == 1) {
                    //时段
                    clockDetailsString= getTimeDetailMore();
                } else if (detailstyle== 2) {
                    // 星座
                    clockDetailsString=ConstellationString(instance);
                }else if (detailstyle== 3) {
                    clockDetailsString=getSeason();
                }

            }
        }

        return clockDetailsString;
    }


    public static String getLeoGlobalDateWeek( int DateWeekDisplay,boolean Week ) {
        String DateWeekString="";
        //星期风格选择
        if (Week) {
            if (isLunarSetting()==true) {
                if(getAPPNAME().equals(hitomiA())){//根据小姐姐的序列号 修改默认星期为日语星期格式
                    DateWeekString= getWeekJapan();//日语星期
                }else if(getAPPNAME().equals(hitomiB())){//根据小姐姐的序列号 修改默认星期为日语星期格式
                    DateWeekString= getWeekJapan();//日语星期
                }else{
                    if (DateWeekDisplay ==0) {
                        DateWeekString=getWeekA();
                    } else if (DateWeekDisplay == 1) {
                        DateWeekString= getWeek();
                    } else if (DateWeekDisplay== 2) {
                        DateWeekString= getWeekTwo();
                    }else if (DateWeekDisplay== 3) {
                        DateWeekString= getWeekJapan();//日语星期
                    }
                }
            }else {
                DateWeekString="EEE";//中国意外的地区显示星期格式
            }
        }
        return DateWeekString;
    }

    public static String getLeoCustomString (String str2)
    {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? "Leo ROM" : str);
        }
        return str;
    }

    public static String getWeek(){
        Calendar cal = Calendar.getInstance();
        int i = cal.get(Calendar.DAY_OF_WEEK);
        switch (i) {
            case 1:
                return "星期日";
            case 2:
                return "星期一";
            case 3:
                return "星期二";
            case 4:
                return "星期三";
            case 5:
                return "星期四";
            case 6:
                return "星期五";
            case 7:
                return "星期六";
            default:
                return "";
        }
    }

    public static String getWeekA(){
        Calendar cal = Calendar.getInstance();
        int i = cal.get(Calendar.DAY_OF_WEEK);
        switch (i) {
            case 1:
                return "周日";
            case 2:
                return "周一";
            case 3:
                return "周二";
            case 4:
                return "周三";
            case 5:
                return "周四";
            case 6:
                return "周五";
            case 7:
                return "周六";
            default:
                return "";
        }
    }
    public static String getSymbol(int Symbol,boolean Week){
        if(getAPPNAME().equals(hitomiA())){
            Log.v(TAG, "Disabled");
        }else if(getAPPNAME().equals(hitomiB())){
            Log.v(TAG, "Disabled");
        }else{
            if (Week) {
                switch (Symbol) {
                    case 1:
                        return ",";
                    case 2:
                        return "/";
                    case 3:
                        return "‖";
                    case 4:
                        return "✤";
                    case 5:
                        return "*";
                    case 6:
                        return "ღ";
                    case 7:
                        return "｜";
                    case 8:
                        return "∫";
                    case 9:
                        return "♪";
                    case 10:
                        return "┆";
                    case 11:
                        return ":";
                    default:
                        return " ";
                }
            }
        }

        return "";
    }



    public static String getWeekTwo(){
        Calendar cal = Calendar.getInstance();
        int i = cal.get(Calendar.DAY_OF_WEEK);
        switch (i) {
            case 1:
                return "日";
            case 2:
                return "一";
            case 3:
                return "二";
            case 4:
                return "三";
            case 5:
                return "四";
            case 6:
                return "五";
            case 7:
                return "六";
            default:
                return "";
        }
    }
    public static String getTimeDetailChinese() {
        switch (Calendar.getInstance().getTime().getHours()) {
            case 0:
                return "子时";
            case 1:
                return "丑时";
            case 2:
                return "丑时";
            case 3:
                return "寅时";
            case 4:
                return "寅时";
            case 5:
                return "卯时";
            case 6:
                return "卯时";
            case 7:
                return "辰时";
            case 8:
                return "辰时";
            case 9:
                return "巳时";
            case 10:
                return "巳时";
            case 11:
                return "午时";
            case 12:
                return "午时";
            case 13:
                return "未时";
            case 14:
                return "未时";
            case 15:
                return "申时";
            case 16:
                return "申时";
            case 17:
                return "酉时";
            case 18:
                return "酉时";
            case 19:
                return "戌时";
            case 20:
                return "戌时";
            case 21:
                return "亥时";
            case 22:
                return "亥时";
            case 23:
                return "子时";
            default:
                return "";
        }
    }

    public static String getTimeDetailMore() {
        switch (Calendar.getInstance().getTime().getHours()) {
            case 0:
                return "凌晨";
            case 1:
                return "凌晨";
            case 2:
                return "凌晨";
            case 3:
                return "凌晨";
            case 4:
                return "黎明";
            case 5:
                return "黎明";
            case 6:
                return "拂晓";
            case 7:
                return "早晨";
            case 8:
                return "上午";
            case 9:
                return "上午";
            case 10:
                return "上午";
            case 11:
                return "中午";
            case 12:
                return "中午";
            case 13:
                return "中午";
            case 14:
                return "下午";
            case 15:
                return "下午";
            case 16:
                return "黄昏";
            case 17:
                return "黄昏";
            case 18:
                return "傍晚";
            case 19:
                return "傍晚";
            case 20:
                return "晚上";
            case 21:
                return "晚上";
            case 22:
                return "午夜";
            case 23:
                return "午夜";
            default:
                return "";
        }
    }

    public static String getSeason(){
        Calendar cal = Calendar.getInstance();
        int i = cal.get(Calendar.MONTH);
        switch (i) {
            case 1:
                return "冬季";
            case 2:
                return "春季";
            case 3:
                return "春季";
            case 4:
                return "春季";
            case 5:
                return "夏季";
            case 6:
                return "夏季";
            case 7:
                return "夏季";
            case 8:
                return "秋季";
            case 9:
                return "秋季";
            case 10:
                return "秋季";
            case 11:
                return "冬季";
            default:
                return "冬季";
        }
    }
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



    public static String getWeekJapan(){
        Calendar cal = Calendar.getInstance();
        int i = cal.get(Calendar.DAY_OF_WEEK);
        switch (i) {
            case 1:
                return "(日)";//星期天
            case 2:
                return "(月)";//星期1
            case 3:
                return "(火)";//星期2
            case 4:
                return "(水)";//星期3
            case 5:
                return "(木)";//星期4
            case 6:
                return "(金)";//星期5
            case 7:
                return "(土)";//星期6
            default:
                return "";
        }
    }

}