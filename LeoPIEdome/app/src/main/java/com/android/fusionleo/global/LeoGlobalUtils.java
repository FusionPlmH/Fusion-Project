package com.android.fusionleo.global;


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
import android.os.SystemProperties;
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





import static com.android.fusionleo.global.LeoGlobalLunar.ConstellationString;
import static com.android.fusionleo.global.LeoGlobalValues.APPURL;
import static com.android.fusionleo.global.LeoGlobalValues.APPURL_EN;
import static com.android.fusionleo.global.LeoGlobalValues.SSSSOSSSS;
import static com.android.fusionleo.global.LeoGlobalValues.getAPPNAME;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiA;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiB;



public class LeoGlobalUtils{
    public  static  String  LEO_ACTION_GLOBAL= "ACTION";
    public  static  String  LEO_ACTION_SERVICE= "com.global.hitomileo.action.service";
    public  static  String  HITOMILEO_ACTION_LOCK= "com.hitomileo.action.lock";
    public  static  String  HITOMILEO_ACTION_HOME= "com.hitomileo.action.home";
    public  static  String  HITOMILEO_ACTION_BACK= "com.hitomileo.action.back";
    public  static  String  HITOMILEO_ACTION_SOUND_PLUS= "com.hitomileo.action.SOUND_plus";
    public  static  String  HITOMILEO_ACTION_SOUND_MINUS= "com.hitomileo.action.SOUND_minus";
    public  static  String  HITOMILEO_ACTION_MOBEDATA= "com.hitomileo.action.mobedata";
    public  static  String  HITOMILEO_ACTION_PART_SCREENSSHOT= "com.hitomileo.action.part_screenshot";
    public  static  String  HITOMILEO_ACTION_WIFI_CODE= "com.hitomileo.action.wifi_code";
    public  static  String  HITOMILEO_ACTION_FINDER= "com.hitomileo.action.finder";
    public  static  String  HITOMILEO_ACTION_TASK= "com.hitomileo.action.task";
    public  static  String  HITOMILEO_ACTION_CAMERA= "com.hitomileo.action.camera";
    public  static  String  HITOMILEO_ACTION_NOTIFICATION= "com.hitomileo.action.notification";
    public  static  String  HITOMILEO_ACTION_SCREENSSHOT= "com.hitomileo.action.screenshot";
    public  static  String  HITOMILEO_ACTION_CLEARMEMORY= "com.hitomileo.action.clearmemory";
    public  static  String  HITOMILEO_ACTION_KILLAPP= "com.hitomileo.action.killapp";
    public  static  String  HITOMILEO_ACTION_SCREENRECORD= "com.hitomileo.action.screenrecord";
    public  static  String  HITOMILEO_ACTION_MWDIA_UP= "com.hitomileo.action.media.up";
    public  static  String  HITOMILEO_ACTION_MWDIA_DOWN= "com.hitomileo.action.media.down";
    public  static  String  HITOMILEO_ACTION_MADIA_PLAY= "com.hitomileo.action.media.play";
    public  static  String  HITOMILEO_ACTION_VIBRATE= "com.hitomileo.action.vibrate";
    public  static  String  HITOMILEO_ACTION_WIFI= "com.hitomileo.action.wifi";
    public  static  String  HITOMILEO_ACTION_APP_GLOBALACTIONS= "com.hitomileo.action.globalactions";
    public  static  String  HITOMILEO_ACTION_AIRPLANE= "com.hitomileo.action.airplane";
    public  static  String  HITOMILEO_ACTION_LAST_APP= "com.hitomileo.action.last.app";
    public  static  String  HITOMILEO_ACTION_BIXBY_VOICE= "com.hitomileo.action.bixby.voice";
    public  static  String  HITOMILEO_ACTION_BIXBY_HOME= "com.hitomileo.action.bixbyhome";
    public  static  String  HITOMILEO_ACTION_WAKEUP= "com.hitomileo.action.wake.up";
    public  static  String  HITOMILEO_ACTION_LEOAPPNAEM= "com.hitomileo.action.leoapp";
    public  static  String  HITOMILEO_ACTION_OUTDOOR= "com.hitomileo.action.outdoor";
    public  static  String  HITOMILEO_ACTION_SPLITSCTEEN= "com.hitomileo.action.splitscreen";
    public  static  String  HITOMILEO_ACTION_TORCH= "com.hitomileo.action.flashlight";
    public  static  String  HITOMILEO_ACTION_MIPOP= "com.hitomileo.action.mipop";
    public  static  String  HITOMILEO_ACTION_FLOATBLL= "com.hitomileo.action.floatball";
    public  static  String  HITOMILEO_ACTION_RECOBERY= "com.hitomileo.action.recovery";
    public  static  String  HITOMILEO_ACTION_DOWNLOAD= "com.hitomileo.action.download";
    public  static  String  HITOMILEO_ACTION_SHUTDOWN= "com.hitomileo.action.shutdown";
    public  static  String  HITOMILEO_ACTION_QUICK_BOOT= "com.hitomileo.action.quick_restart";
    public  static  String  HITOMILEO_ACTION_REBOOT= "com.hitomileo.action.reboot";
    public  static  String  HITOMILEO_ACTION_TODAY= "com.hitomileo.action.Today";
    public  static  String  HITOMILEO_ACTION_SYSTEMUI= "com.hitomileo.action.systemui";

    public  static  String  HITOMILEO_ACTION_BLUE= "com.hitomileo.action.bluetooth";

    static {
        System.loadLibrary(SSSSOSSSS);
    }

    public static void LeoGlobalActiong( Context context,int defStyle, String appkey) {
        Intent intent = new Intent();
        intent.setAction(LEO_ACTION_SERVICE);
        switch (defStyle) {
            case 100://锁屏
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_LOCK);
                context.sendBroadcast(intent);
                break;
            case 101://HOME
                intent.putExtra(LEO_ACTION_GLOBAL, HITOMILEO_ACTION_HOME);
                context.sendBroadcast(intent);
                break;
            case 102://返回
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_BACK);
                context.sendBroadcast(intent);
                break;
            case 103://音量+
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SOUND_PLUS);
                context.sendBroadcast(intent);
                break;
            case 104://音量-
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SOUND_MINUS);
                context.sendBroadcast(intent);
                break;
            case 105://移动数据
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MOBEDATA);
                context.sendBroadcast(intent);
                break;
            case 106://局部截图
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_PART_SCREENSSHOT);
                context.sendBroadcast(intent);
                break;
            case 107://本地WIFI密码
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_WIFI_CODE);
                context.sendBroadcast(intent);
                break;
            case 108://S搜索
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_FINDER);
                context.sendBroadcast(intent);
                break;
            case 109://最近任务
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_TASK);
                context.sendBroadcast(intent);
                break;
            case 110://相机
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_CAMERA);
                context.sendBroadcast(intent);
                break;
            case 111://展开下拉
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_NOTIFICATION);
                context.sendBroadcast(intent);
                break;
            case 112://屏幕截图
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SCREENSSHOT);
                context.sendBroadcast(intent);
                break;
            case 113://后台进程清理
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_CLEARMEMORY);
                context.sendBroadcast(intent);
                break;
            case 114://结束当前程序
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_KILLAPP);
                context.sendBroadcast(intent);
                break;
            case 115://屏幕录像
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SCREENRECORD);
                context.sendBroadcast(intent);
                break;
            case 116://上一曲
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MWDIA_UP);
                context.sendBroadcast(intent);
                break;
            case 117://下一曲
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MWDIA_DOWN);
                context.sendBroadcast(intent);
                break;
            case 118://播放暂停
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MADIA_PLAY);
                context.sendBroadcast(intent);
                break;
            case 119://声音模式
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_VIBRATE);
                context.sendBroadcast(intent);
                break;
            case 120://WIFI切换
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_WIFI);
                context.sendBroadcast(intent);
                 break;
            case 121://电源菜单
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_APP_GLOBALACTIONS);
                context.sendBroadcast(intent);
                break;
            case 122://飞行模式
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_AIRPLANE);
                context.sendBroadcast(intent);
                break;
            case 123://上一个程序
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_LAST_APP);
                context.sendBroadcast(intent);
                break;
            case 124://BIXBY语音
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_BIXBY_VOICE);
                context.sendBroadcast(intent);
                break;
            case 125://BIXBY主页
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_BIXBY_HOME);
                context.sendBroadcast(intent);
                break;
            case 126://LEOapp
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_LEOAPPNAEM);
                context.sendBroadcast(intent);
                break;
            case 127://户外模式
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_OUTDOOR);
                context.sendBroadcast(intent);
                break;
            case 128://任何程序
              //  StartAppLication(context,appkey);
                break;
            case 129://分屏
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SPLITSCTEEN);
                context.sendBroadcast(intent);
                break;
            case 130://手电
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_TORCH);
                context.sendBroadcast(intent);
                break;
            case 131://屏幕助手
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_MIPOP);
                context.sendBroadcast(intent);
                break;
            case 132://悬浮球
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_FLOATBLL);
                context.sendBroadcast(intent);
                break;
            case 133://一年中的今天
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_TODAY);
                context.sendBroadcast(intent);
                break;
            case 134://蓝牙
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_BLUE);
                context.sendBroadcast(intent);
                break;

        }
    }

    public static void LeoHitomiActiong( Context context,int defStyle) {
        Intent intent = new Intent();
        intent.setAction(LEO_ACTION_SERVICE);
        switch (defStyle) {
            case 0://关机
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SHUTDOWN);
                context.sendBroadcast(intent);
                break;
            case 1://重启
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_REBOOT);
                context.sendBroadcast(intent);
                break;
            case 2://快速重启
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_QUICK_BOOT);
                context.sendBroadcast(intent);
                break;
            case 3://卡刷
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_RECOBERY);
                context.sendBroadcast(intent);
                break;
            case 4://线刷
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_DOWNLOAD);
                context.sendBroadcast(intent);
                break;
            case 5://屏幕唤醒
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_WAKEUP);
                context.sendBroadcast(intent);
                break;
            case 6://屏幕唤醒
                intent.putExtra(LEO_ACTION_GLOBAL,HITOMILEO_ACTION_SYSTEMUI);
                context.sendBroadcast(intent);
                break;
        }
    }
    public static String getLeoString(Context cxt,String key) {

        return Settings.System.getString(cxt.getContentResolver(), key);
    }
    public static Uri getLeoUri(String key) {
        return Settings.System.getUriFor( key);
    }
    public static int getLeoInt(Context cxt, String key, int defaultValue) {

        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
    }
    public static String getLeoGlobalDateStyle(int LOG,int Symbol,int week,boolean Week,String date)  {
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
            leoDate = DateFormat.format((LOG ==0) ? str+getSymbol(Symbol,Week)+WEEKK : WEEKK+ getSymbol(Symbol,Week)+str, now);
        } else {
            leoDate=DateFormat.format( (LOG ==0) ? clockDateFormat+getSymbol(Symbol,Week)+WEEKK : WEEKK+getSymbol(Symbol,Week)+clockDateFormat , now);
        }

        return leoDate;
    }
    private static final String TAG = "LeoGlobalUtils"+"\n"+"深見　ひとみ" ;
    public static String getLeoGlobalLunarStyle(int style ,int orientation ,int Symbol ,boolean details ,boolean lation ,String str ,boolean M) {
        Calendar instance = android.icu.util.Calendar.getInstance();
           String LeoLunarStyle="";
           String Lunar="";
           String  Constellation="";
        if(getAPPNAME().equals(hitomiA())){
            Log.v(TAG, "Disabled");
        }else if(getAPPNAME().equals(hitomiB())){
            Log.v(TAG, "Disabled");
        }else if (isLunarSetting()==true) {
            if (details){
                if (style == 0) {
                    //时辰年月日
                    Lunar= (new LeoGlobalLunar(instance).toLunarChineseSrting());
                } else if (style == 1) {
                    //时辰年月日
                    Lunar= (new LeoGlobalLunar(instance).toLunarChineseTimeSrting());
                } else if (style== 2) {
                    // 属相年月日
                    Lunar=(new LeoGlobalLunar(instance).toLunarChineseZodiacSrting());
                }else if (style== 3) {
                    // 时辰属相年月
                    if (M) {
                        Lunar=(new LeoGlobalLunar(instance).toLunarChineseZodiacTimeMultiSrting());
                    }else {
                        Lunar=(new LeoGlobalLunar(instance).toLunarChineseZodiacTimeSrting());
                    }

                }if (style== 4) {
                    // 时辰属相年月
                    Lunar=getLeoCustomString(str);

                }
                if (lation){
                    Constellation=ConstellationString(instance);
                }
                if (orientation== 0) {
                    LeoLunarStyle =Lunar+getSymbol(Symbol,lation)+Constellation;
                } else if (orientation== 1) {
                    LeoLunarStyle =Constellation+getSymbol(Symbol,lation)+ Lunar;
                }
            }
        }
        return LeoLunarStyle;
    }
    public static String getLeoGlobalClockDetails(int detailstyle ,boolean details ) {
        android.icu.util.Calendar instance = android.icu.util.Calendar.getInstance();

        String clockDetailsString="";
        if (isLunarSetting()==true) {
            //星期风格选择
            if (details){
                if (detailstyle == 0) {
                    //时辰
                    clockDetailsString= getTimeDetailChinese();
                }   else if (detailstyle == 1) {
                    //时段
                    clockDetailsString= getTimeDetailMore();
                } else if (detailstyle== 2) {
                    // 星座
                    clockDetailsString=ConstellationString(instance);
                }else if (detailstyle== 3) {
                    // 农历
                    clockDetailsString=(new LeoGlobalLunar(instance).toLunarChineseSrting());
                }else if (detailstyle== 4) {
                    // 农历
                    clockDetailsString=getSeason();
                }

            }
        }

        return clockDetailsString;
    }


    public static String getLeoAPPnameUIR() {
        String TrafficDownload;
        if (isLunarSetting()==true) {
            TrafficDownload=APPURL;
        }else {
            TrafficDownload=APPURL_EN;
        }
        return TrafficDownload;
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

    public static String getAnalogWeek(int week) {
        switch (Calendar.getInstance().get(7)) {
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

    public static class TypefaceFonts extends MetricAffectingSpan {
        private final Typeface typeface;

        public TypefaceFonts(Typeface typeface) {
            this.typeface = typeface;
        }

        public void updateDrawState(TextPaint ds) {
            setTypeFace(ds, this.typeface);
        }

        public void updateMeasureState(TextPaint paint) {
            setTypeFace(paint, this.typeface);
        }

        private static void setTypeFace(Paint paint, Typeface tf) {
            paint.setTypeface(tf);
        }
    }

    public static Typeface setLeoRomFonts(int lock, int key) {

        Typeface font = null;
        switch (key) {
            case 0:
            default:
                if (lock == 0) {
                    font=TypefaceStyleDefault;
                } else if ( lock == 1) {
                    font=DefaultLockClock;
                }
                break;
            case 1:
                font=TypefaceStyle1;
                break;
            case 2:
                font=TypefaceStyle2;
                break;
            case 3:
                font=TypefaceStyle3;
                break;
            case 4:
                font=TypefaceStyle4;
                break;
            case 5:
                font=TypefaceStyle5;
                break;
            case 6:
                font=TypefaceStyle6;
                break;
            case 7:
                font=TypefaceStyle7;
                break;
            case 8:
                font=TypefaceStyle8;
                break;
            case 9:
                font=TypefaceStyle9;
                break;
            case 10:
                font=TypefaceStyle10;
                break;
            case 11:
                font=TypefaceStyle11;
                break;
            case 12:
                font=TypefaceStyle12;
                break;
            case 13:
                font=TypefaceStyle13;
                break;
            case 14:
                font=TypefaceStyle14;
                break;
            case 15:
                font=TypefaceStyle15;
                break;
            case 16:
                font=TypefaceStyle16;
                break;
            case 17:
                font=TypefaceStyle17;
                break;
            case 18:
                font=TypefaceStyle18;
                break;
            case 19:
                font=TypefaceStyle19;
                break;
            case 20:
                font=TypefaceStyle20;
                break;
            case 21:
                font=TypefaceStyle21;
                break;
            case 22:
                font=TypefaceStyle22;
                break;
            case 23:
                font=TypefaceStyle23;
                break;
            case 24:
                font=TypefaceStyle24;
                break;
            case 25:
                font=TypefaceStyle25;
                break;
            case 26:
                font=TypefaceStyle26;
                break;
            case 27:
                font=TypefaceStyle27;
                break;
            case 28:
                font=TypefaceStyle28;
                break;
            case 29:
                font=TypefaceStyle29;
                break;
            case 30:
                font=TypefaceStyle30;
                break;
            case 31:
                font=TypefaceStyle31;
                break;
            case 32:
                font=TypefaceStyle32;
                break;
            case 33:
                font=TypefaceStyle33;
                break;
            case 34:
                font=TypefaceStyle34;
                break;
            case 35:
                font=TypefaceStyle35;
                break;
            case 36:
                font=TypefaceStyle36;
                break;
        }


        return font;
    }


    public static Typeface TypefaceStyleDefault =Typeface.create("sans-serif", Typeface.NORMAL);
    public static Typeface  TypefaceStyle1 =Typeface.create("sans-serif", Typeface.ITALIC);
    public static Typeface  TypefaceStyle2 =Typeface.create("sans-serif", Typeface.BOLD);
    public static Typeface  TypefaceStyle3 =Typeface.create("sans-serif", Typeface.BOLD_ITALIC);
    public static Typeface  TypefaceStyle4 =Typeface.create("sans-serif-light", Typeface.NORMAL);
    public static Typeface  TypefaceStyle5 =Typeface.create("sans-serif-light", Typeface.ITALIC);
    public static Typeface  TypefaceStyle6 =Typeface.create("sans-serif-thin", Typeface.NORMAL);
    public static Typeface  TypefaceStyle7 =Typeface.create("sans-serif-thin", Typeface.ITALIC);
    public static Typeface  TypefaceStyle8=Typeface.create("sans-serif-condensed", Typeface.NORMAL);
    public static Typeface  TypefaceStyle9 =Typeface.create("sans-serif-condensed", Typeface.ITALIC);
    public static Typeface  TypefaceStyle10 =Typeface.create("sans-serif-condensed-light", Typeface.NORMAL);
    public static Typeface TypefaceStyle11 =Typeface.create("sans-serif-condensed-light", Typeface.ITALIC);
    public static Typeface TypefaceStyle12 =Typeface.create("sans-serif-condensed", Typeface.BOLD);
    public static Typeface TypefaceStyle13 =Typeface.create("sans-serif-condensed", Typeface.BOLD_ITALIC);
    public static Typeface TypefaceStyle14 =Typeface.create("sans-serif-medium", Typeface.NORMAL);
    public static Typeface TypefaceStyle15 =Typeface.create("sans-serif-medium", Typeface.ITALIC);
    public static Typeface TypefaceStyle16 =Typeface.create("sans-serif-black", Typeface.NORMAL);
    public static Typeface TypefaceStyle17 =Typeface.create("sans-serif-black", Typeface.ITALIC);
    public static Typeface TypefaceStyle18 =Typeface.create("cursive", Typeface.NORMAL);
    public static Typeface TypefaceStyle19 =Typeface.create("cursive", Typeface.BOLD);
    public static Typeface TypefaceStyle20 =Typeface.create("casual", Typeface.NORMAL);
    public static Typeface TypefaceStyle21 =Typeface.create("serif", Typeface.NORMAL);
    public static Typeface TypefaceStyle22 =Typeface.create("serif", Typeface.ITALIC);
    public static Typeface TypefaceStyle23 =Typeface.create("serif", Typeface.BOLD);
    public static Typeface TypefaceStyle24 =Typeface.create("serif", Typeface.BOLD_ITALIC);
    public static Typeface TypefaceStyle25 =Typeface.createFromFile("system/fonts/leoshouxie.ttf");
    public static Typeface TypefaceStyle26=Typeface.createFromFile("system/fonts/leozlyjt.ttf");
    public static Typeface TypefaceStyle27=Typeface.createFromFile("system/fonts/leolove.ttf");
    public static Typeface TypefaceStyle28=Typeface.createFromFile("system/fonts/leohz.ttf");
    public static Typeface TypefaceStyle29=Typeface.createFromFile("system/fonts/leoguzhuan.ttf");
    public static Typeface TypefaceStyle30=Typeface.createFromFile("system/fonts/leody.ttf");
    public static Typeface TypefaceStyle31=Typeface.createFromFile("system/fonts/leokongxin.ttf");
    public static Typeface TypefaceStyle32=Typeface.createFromFile("system/fonts/leomudan.ttf");
    public static Typeface TypefaceStyle33=Typeface.createFromFile("system/fonts/leofzkt.ttf");
    public static Typeface TypefaceStyle34=Typeface.createFromFile("system/fonts/leofzybkt.ttf");
    public static Typeface TypefaceStyle35=Typeface.createFromFile("system/fonts/leohypinyin.ttf");
    public static Typeface TypefaceStyle36=Typeface.createFromFile("system/fonts/LeoHitomi.ttf");
    public static Typeface DefaultLockClock=Typeface.createFromFile("system/fonts/Clock2017L.ttf");
    public static String ReadFile(String str) {
        Throwable th;
        File file = new File(str);
        StringBuffer stringBuffer = new StringBuffer("");
        FileInputStream fileInputStream = null;
        try {
            FileInputStream fileInputStream2 = new FileInputStream(file);
            while (true) {
                try {
                    int read = fileInputStream2.read();
                    if (read == -1) {
                        break;
                    }
                    stringBuffer.append((char) read);
                } catch (Exception e) {
                    fileInputStream = fileInputStream2;
                } catch (Throwable th2) {
                    th = th2;
                    fileInputStream = fileInputStream2;
                }
            }
            if (fileInputStream2 != null) {
                try {
                    fileInputStream2.close();
                    fileInputStream = fileInputStream2;
                } catch (Exception e2) {
                    fileInputStream = fileInputStream2;
                }
            } else {
                fileInputStream = fileInputStream2;
            }
        } catch (Exception e3) {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception e4) {
                }
            }
            return stringBuffer.toString().trim();
        } catch (Throwable th3) {
            th = th3;
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (Exception e5) {
                }
            }
            try {
                throw th;
            } catch (Throwable throwable) {
                throwable.printStackTrace();
            }
        }
        return stringBuffer.toString().trim();
    }

    public static int getBlendColorForPercent(int fullColor, int emptyColor, boolean reversed,
                                              int percentage) {
        float[] newColor = new float[3];
        float[] empty = new float[3];
        float[] full = new float[3];
        Color.colorToHSV(fullColor, full);
        int fullAlpha = Color.alpha(fullColor);
        Color.colorToHSV(emptyColor, empty);
        int emptyAlpha = Color.alpha(emptyColor);
        float blendFactor = percentage/100f;
        if (reversed) {
            if (empty[0] < full[0]) {
                empty[0] += 360f;
            }
            newColor[0] = empty[0] - (empty[0]-full[0])*blendFactor;
        } else {
            if (empty[0] > full[0]) {
                full[0] += 360f;
            }
            newColor[0] = empty[0] + (full[0]-empty[0])*blendFactor;
        }
        if (newColor[0] > 360f) {
            newColor[0] -= 360f;
        } else if (newColor[0] < 0) {
            newColor[0] += 360f;
        }
        newColor[1] = empty[1] + ((full[1]-empty[1])*blendFactor);
        newColor[2] = empty[2] + ((full[2]-empty[2])*blendFactor);
        int newAlpha = (int) (emptyAlpha + ((fullAlpha-emptyAlpha)*blendFactor));
        return Color.HSVToColor(newAlpha, newColor);
    }

    public static void getLeoGradientStroke(GradientDrawable leoDrawable, boolean StrokeEnabled, int StrokeThickness, int DashWidth, int DashGap, int DashColor , int ColorRadius){
        int mCustomStrokeThickness=StrokeThickness;
        int mCustomDashWidth=DashWidth;
        int mCustomDashGap=DashGap;
        int mCustomDashColor=DashColor;
        boolean mCustomEnabled= StrokeEnabled;
        // leoDrawable. setColor(color);
        if (mCustomEnabled) {
            leoDrawable.setStroke(mCustomStrokeThickness, mCustomDashColor, mCustomDashWidth, mCustomDashGap);
            leoDrawable.setCornerRadius((float) ColorRadius);
        }
    }
    public static GradientDrawable getLeoBasicColor(boolean StrokeEnabled,int StrokeThickness, int DashWidth,int DashGap,int DashColor ,int ColorRadius,int bgColor){
        GradientDrawable LeoGradientDrawable= new GradientDrawable();
        int mCustomStrokeThickness=StrokeThickness;
        int mCustomDashWidth=DashWidth;
        int mCustomDashGap=DashGap;
        int mCustomDashColor=DashColor;
        boolean mCustomEnabled= StrokeEnabled;
        LeoGradientDrawable. setColor(bgColor);
        if (mCustomEnabled) {

            LeoGradientDrawable.setStroke(mCustomStrokeThickness, mCustomDashColor, mCustomDashWidth, mCustomDashGap);
            LeoGradientDrawable.setCornerRadius((float) ColorRadius);
        }
        return LeoGradientDrawable;
    }
    public static void getLeoWallpaperColor(Drawable ddd, int coloron, int color){
        if (coloron==1) {
            ddd.setColorFilter(color, PorterDuff.Mode.MULTIPLY);
        }
    }
    public static void getLeoWallpaperAlpha(Drawable ddd,boolean Alpha,int getAlpha){
        if (Alpha) {
            ddd.setAlpha(getAlpha);
        }
    }

    public static GradientDrawable LeoGradientDrawable(int StartColor, int CenterColor, int EndColor, int FourColor, int fivecolor, int sixrColor,
                                                       int EnableCenterColor , int GradientBgStyle, boolean StrokeEnabled, int StrokeThickness,
                                                       int DashWidth, int DashGap, int DashColor , int CornerRadius , int GradientBgType , int ColorRadius){
        GradientDrawable LeoGradientDrawable= new GradientDrawable();
        int[] BackgroundGradientColor ;
        if (EnableCenterColor == 0) {
            BackgroundGradientColor = new int[3];
            BackgroundGradientColor[0] = StartColor;
            BackgroundGradientColor[1] = CenterColor;
            BackgroundGradientColor[2] = EndColor;

        } else  {
            BackgroundGradientColor = new int[6];
            BackgroundGradientColor[0] = StartColor;
            BackgroundGradientColor[1] = CenterColor;
            BackgroundGradientColor[2] = EndColor;
            BackgroundGradientColor[3] = FourColor;
            BackgroundGradientColor[4] = fivecolor;
            BackgroundGradientColor[5] = sixrColor;
        }
        switch ( GradientBgStyle) {
            case 0:
                //xia-shang
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, BackgroundGradientColor);
                break;
            case 1:
                //zuo-you
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, BackgroundGradientColor);
                break;
            case 2:
                //you-zuo
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, BackgroundGradientColor);
                break;
            case 3:
                //you-zuo
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.RIGHT_LEFT, BackgroundGradientColor);
                break;
            case 4:
                //youxie-zuoshang
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BR_TL, BackgroundGradientColor);
                break;
            case 5:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BL_TR, BackgroundGradientColor);
                break;
            case 6:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, BackgroundGradientColor);
                break;
            case 7:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TR_BL, BackgroundGradientColor);
                break;
        }


        getLeoGradientStroke(LeoGradientDrawable,
                StrokeEnabled,
                StrokeThickness,
                DashWidth,
                DashGap,
                DashColor,
                CornerRadius);
        LeoGradientDrawable.setGradientType(GradientBgType);
        LeoGradientDrawable.setCornerRadius((float) CornerRadius);
        LeoGradientDrawable.setGradientRadius((float) ColorRadius);

        return LeoGradientDrawable;
    }
    static Drawable ddd;
    public static Drawable getLeoWallpaper(Context cxt,String str,int ColorEnable,int color,boolean AlphaEnable,int alpha ){
        //   Drawable ddd=null;
        if (str != null) {
            File backgroundwallpaper = new File(Uri.parse(str).getPath());
            if (backgroundwallpaper != null) {
                ddd = new BitmapDrawable(cxt.getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
        }
            getLeoWallpaperColor(ddd, ColorEnable, color);
            getLeoWallpaperAlpha(ddd,AlphaEnable,alpha);
        }

        return ddd;
    }
    static Drawable BlurDrawable;
    public static Drawable getLeoBlurWallpaper(Context cxt, String str , int blur,int ColorEnable,int color,boolean AlphaEnable,int alpha){
        if (str != null) {
            File backgroundwallpaper = new File(Uri.parse(str).getPath());
            if (backgroundwallpaper != null) {
                bitmapWallpaper = BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath());

                Bitmap finalBitmap =LeoGlobalBlur.with(cxt)
                        .bitmap(bitmapWallpaper)
                        .radius(blur)
                        .scale(8)
                        .blur();
                BlurDrawable= new BitmapDrawable(cxt.getResources(), finalBitmap);
            }
        }
        getLeoWallpaperColor(BlurDrawable, ColorEnable, color);
        getLeoWallpaperAlpha(BlurDrawable,AlphaEnable,alpha);
        return BlurDrawable;
    }
    static Bitmap bitmapWallpaper;


    public static int readFile(String path, int defaultValue) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(
                    path));
            int i = Integer.parseInt(bufferedReader.readLine(), 10);
            bufferedReader.close();
            return i;
        } catch (Exception localException) {
        }
        return defaultValue;
    }

    public static  String readCurrentFile(File file) throws IOException {
        InputStream input = new FileInputStream(file);
        try {
            BufferedReader reader = new BufferedReader(new InputStreamReader(
                    input));
            StringBuilder sb = new StringBuilder();
            String line;
            while ((line = reader.readLine()) != null) {
                sb.append(line);
            }
            return sb.toString();
        } finally {
            input.close();
        }
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
    public static  float  mNavBar=(((float) SystemProperties.getInt("persist.sys.display_density", 420)) / 160.0f);
}