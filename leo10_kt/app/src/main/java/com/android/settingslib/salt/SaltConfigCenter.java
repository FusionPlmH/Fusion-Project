package com.android.settingslib.salt;
import android.annotation.SuppressLint;
import android.app.StatusBarManager;
import android.content.ContentUris;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.icu.util.Calendar;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.provider.AlarmClock;
import android.provider.CalendarContract;
import android.telephony.TelephonyManager;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import android.util.Log;
import android.view.View;


import com.android.systemui.plugins.DarkIconDispatcher;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoCustomString;

import static com.android.settingslib.salt.SaltConfigFrame.getCustomArray;
import static com.android.settingslib.salt.SaltConfigFrame.getCustomDrawable;

import static com.android.settingslib.salt.SaltConfigFrame.getLeoSystemProper;
import static com.android.settingslib.salt.SaltConfigFrame.getStringIdentifier;
import static com.android.settingslib.salt.SaltConfigFrame.getStringLeoArray;
import static com.android.settingslib.salt.SaltConfigFrame.isChineseLanguage;
import static com.android.settingslib.salt.SaltConfigFrame.mSaltContext;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.utils.LeoManages.getLeoFramework;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardDoubleTap;


@SuppressLint("NewApi")
public class SaltConfigCenter{

    public static boolean qcomCPU(){
        return getLeoSystemProper("ro.hardware").equals("qcom");
    }
    public static String getCpuTemp() {
        String result = null;
        String line ;
        String temp;
        String CPU;
        try {
            if (qcomCPU()) {
                CPU=rt100foleo("L3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTEvdGVtcA==");
            }else {
                CPU=rt100foleo("L3N5cy9jbGFzcy90aGVybWFsL3RoZXJtYWxfem9uZTAvdGVtcA==");
            }
            BufferedReader br = new BufferedReader(new FileReader(CPU));
            line = br.readLine();
            if (line != null) {
                long temperature = Long.parseLong(line);
                if (temperature < 0) {
                    temp = "";
                } else {
                    temp = (float) (temperature / 1000.0)+"";
                }
                result = temp;
            }
        } catch (IOException e) {
            e.printStackTrace();
        }
        return result;
    }
    static String ACTION_BATTERY= Intent.ACTION_BATTERY_CHANGED;
    public static  float getBatteryTemp() {
        return ((float) mSaltContext.registerReceiver(null, new IntentFilter(ACTION_BATTERY)).getIntExtra("temperature", 0)) / 10.0f;
    }
    public  static Drawable CustomDrawable(String str){
        return getCustomDrawable(mSaltContext, str);
    }
    public static Drawable[] LogoIcon = {CustomDrawable("ic_leo"),
            CustomDrawable("ic_alibaba"),
            CustomDrawable("ic_apple_logo"),
            CustomDrawable("ic_baidu"),
            CustomDrawable("ic_cmcc"),
            CustomDrawable("ic_google"),
            CustomDrawable("ic_ios"),
            CustomDrawable("ic_linux"),
            CustomDrawable("ic_tencent"),
            CustomDrawable("ic_telecom"),
            CustomDrawable("ic_unicom"),
            CustomDrawable("ic_windows"),
            CustomDrawable("ic_ubuntu"),
            CustomDrawable("ic_ctc_go"),
            CustomDrawable("ic_alienware"),
            CustomDrawable("ic_bianfu"),
            CustomDrawable("ic_panda"),
            CustomDrawable("ic_love")
    };



    public static String getLeoMianBatteryStyle (String str2) {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? getLeoFramework() : str);
        }
        return str;
    }
        static String   getLeoChineseWeek(int Style,  String[] LeoWeek) {
        switch (Style) {
            case 1:
                return LeoWeek[0];
            case 2:
                return LeoWeek[1];
            case 3:
                return LeoWeek[2];
            case 4:
                return LeoWeek[3];
            case 5:
                return LeoWeek[4];
            case 6:
                return LeoWeek[5];
            case 7:
                return LeoWeek[6];
            default:
                return "";
        }
    }

    public static String   getLeoChineseWeekStyle(Context context,boolean of, int Style) {
        String week="";
        if(of){
            if(isChineseLanguage()){
                Calendar   mCalendar = Calendar.getInstance();
                int mLeoChineseWeek= mCalendar.get(Calendar.DAY_OF_WEEK);
                if(Style==0){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX2RlZmF1bHQ=")));
                }else if (Style == 1){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX2dlbmVyYWw=")));
                }else if (Style == 2){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX3Byb3ZpbmNpYWxpc20=")));
                }else if (Style == 3){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX3NpbXBsZW5lc3M=")));
                }else if (Style == 4){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX2FuY2llbnQ=")));
                }else if (Style == 5){
                    week=getLeoChineseWeek(mLeoChineseWeek,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV93ZWVrX3N0eWxlX2NoYWxkYWljdA==")));
                }
            }else{
                //如果使用的语言不是中文,简体,繁体将默认为系统日期格式
                week="EEE";
            }
        }
        return week;
    }
    public static String getLeoDateStyle(Context mContext,int data_location,boolean of,int week,int SymbolStyle,String Symbolstr,String dateFormat)  {
        String leoDate ;
        String DateFormat = "";

        Date now = new Date();
        String clockDateFormat =dateFormat;
        String Symbol="";

        if(of){
            Symbol=getLeoSymbolStyle(mContext,SymbolStyle,Symbolstr," ");
        }
        String WEEKK=getLeoChineseWeekStyle(mContext,of,week);
        if (clockDateFormat == null || clockDateFormat.isEmpty()) {
            String str=LeoString("default_date_format");
            leoDate = DateFormat.format((data_location ==0) ? str+Symbol+WEEKK: WEEKK+ Symbol+str, now);
        } else {
            leoDate=DateFormat.format( (data_location==0) ? clockDateFormat+Symbol+WEEKK : WEEKK+Symbol+clockDateFormat , now);
        }

        return leoDate;
    }
    public static  String  LeoString(String str){
        return getStringIdentifier(mSaltContext,str);
    }

    public static String  LeoSaltSymbolStyle(Context mContext,int style, String str){
        return getLeoSymbolStyle(mContext,style,str," ");
    }
    public static  String  getLeoSymbolStyle(Context mContext,int style, String str, String str2){
        String[] SaltSymbolStyle=getCustomArray(mContext,rt100foleo("c3ltYm9sX3N0eWxlX2VudHJpZXM="));
        String STR;
        if(style==14){
            STR=getLeoCustomString(str);
        }else if(style<=0) {
            STR=str2;
        }else {
            STR = SaltSymbolStyle[style];
        }
        return STR;
    }
    public static String  getLeoTimeStyle(Context context,int lunarmonth, boolean of,int Style,String str) {
        String Time="";
         int mLeoChineseHours= Calendar.getInstance().getTime().getHours();
        Calendar mCalendar = Calendar.getInstance();
        int MONTH = mCalendar.get(Calendar.MONTH);
        if(isChineseLanguage() ){
            if(of){
                if(Style ==0){
                    Time= getLeoTimeDetailChinese(mLeoChineseHours,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV8xMlRpbWU=")));
                    //时辰
                }else if (Style == 1){
                    Time=  getLeoChineseTimeDetail(mLeoChineseHours,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV8xMlRpbWVpbnRlcnZhbA==")));
                    //时段
                } else if (Style == 2){
                    Time=  getLeoChineseTimePiu(mLeoChineseHours,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV81VGltZQ==")));
                    //打更
                } else if (Style == 3){
                    Time=  getLeoChineseTimeSeason(MONTH,getStringLeoArray(context,rt100foleo("Q2hpbmVzZV80c2Vhc29u")));
                    //季节
                } else if (Style == 4){
                    //星座
                    Time= ConstellationString(context,mCalendar);
                }else if (Style == 5){
                    Time=new LeoLunar(mCalendar,context).toLeoLunarChineseLunar(false,false,lunarmonth, 0);
                }else if (Style == 6){
                    SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat("yyyy");// HH:mm:ss
                    Date date = new Date(System.currentTimeMillis());
                    int yearOfNumber =  mCalendar.get(java.util.Calendar.DAY_OF_YEAR);//获得当天是一年中的第几天
                    int week2 =  mCalendar.get( mCalendar.WEEK_OF_YEAR);
                    Time=simpleDateFormat2.format(date)+"年"+week2+"周"+yearOfNumber+"天";
                }else if (Style == 7){
                    Time=getLeoCustomString( str);
                }
            }
        }
        return Time;
    }

    public static final int[] ConstellationEdgeDay = { 20, 19, 21, 21, 21, 22,
            23, 23, 23, 23, 22, 22 };

    static   String ConstellationString(Context context,Calendar time) {
        String[] str= getStringLeoArray(context,rt100foleo("Y29uc3RlbGxhdGlvbl8xMlRpbWU="));
        int month = time.get(Calendar.MONTH);
        int day = time.get(Calendar.DAY_OF_MONTH);
        if (day < ConstellationEdgeDay[month]) {
            month = month - 1;
        }
        if (month >= 0) {
            return str[month];
        }
        // default to return 魔羯
        return str[11];
    }


    static String getLeoChineseTimeSeason(int style,String[] TimeDetail){
        switch (style) {
            case 0:
                return TimeDetail[3];
            case 1:
                return TimeDetail[3];
            case 2:
                return TimeDetail[0];
            case 3:
                return TimeDetail[0];
            case 4:
                return TimeDetail[0];
            case 5:
                return TimeDetail[1];
            case 6:
                return TimeDetail[1];
            case 7:
                return TimeDetail[1];
            case 8:
                return TimeDetail[2];
            case 9:
                return TimeDetail[2];
            case 10:
                return TimeDetail[2];
            case 11:
                return TimeDetail[3];
            default:
                return "";
        }
    }

    static String getLeoChineseTimePiu(int style,String[] TimeDetail) {
        switch (style) {
            case 0:
                return TimeDetail[2];//2
            case 1:
                return TimeDetail[2];//3
            case 2:
                return TimeDetail[3];//3
            case 3:
                return TimeDetail[3];//3
            case 4:
                return TimeDetail[4];//4
            case 5:
                return TimeDetail[4];//4
            case 19:
                return TimeDetail[0];//1
            case 20:
                return TimeDetail[0];//1
            case 21:
                return TimeDetail[0];//1
            case 22:
                return TimeDetail[1];//2
            case 23:
                return TimeDetail[1];//2
            default:
                return "";
        }
    }
    static String getLeoChineseTimeDetail(int style,String[] TimeDetail) {
        switch (style) {
            case 0:
                return TimeDetail[0];
            case 1:
                return TimeDetail[0];//凌晨
            case 2:
                return TimeDetail[1];
            case 3:
                return TimeDetail[1];//拂晓
            case 4:
                return TimeDetail[2];
            case 5:
                return TimeDetail[2];
            case 6:
                return TimeDetail[3];//清晨
            case 7:
                return TimeDetail[4];//早晨
            case 8:
                return TimeDetail[5];//上午
            case 9:
                return TimeDetail[5];
            case 10:
                return TimeDetail[5];
            case 11:
                return TimeDetail[6];//中午
            case 12:
                return TimeDetail[6];
            case 13:
                return TimeDetail[7];//午后
            case 14:
                return TimeDetail[7];
            case 15:
                return TimeDetail[8];//下午
            case 16:
                return TimeDetail[8];
            case 17:
                return TimeDetail[9];//黄昏
            case 18:
                return TimeDetail[10];//傍晚
            case 19:
                return TimeDetail[11];//
            case 20:
                return TimeDetail[11];//
            case 21:
                return TimeDetail[11];//
            case 22:
                return TimeDetail[12];//
            case 23:
                return TimeDetail[12];//
            default:
                return "";
        }
    }
     static String getLeoTimeDetailChinese(int style,String[] TimeDetail) {
        switch (style) {
            case 0:
                return TimeDetail[0];
            case 1:
                return TimeDetail[1];
            case 2:
                return TimeDetail[1];
            case 3:
                return TimeDetail[2];
            case 4:
                return TimeDetail[2];
            case 5:
                return TimeDetail[3];
            case 6:
                return TimeDetail[3];
            case 7:
                return TimeDetail[4];
            case 8:
                return TimeDetail[4];
            case 9:
                return TimeDetail[5];
            case 10:
                return TimeDetail[5];
            case 11:
                return TimeDetail[6];
            case 12:
                return TimeDetail[6];
            case 13:
                return TimeDetail[7];
            case 14:
                return TimeDetail[7];
            case 15:
                return TimeDetail[8];
            case 16:
                return TimeDetail[8];
            case 17:
                return TimeDetail[9];
            case 18:
                return TimeDetail[9];
            case 19:
                return TimeDetail[10];
            case 20:
                return TimeDetail[10];
            case 21:
                return TimeDetail[11];
            case 22:
                return TimeDetail[11];
            case 23:
                return TimeDetail[0];
            default:
                return "";
        }
    }
    public static   class TypefaceFonts extends MetricAffectingSpan {
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

        private  void setTypeFace(Paint paint, Typeface tf) {
            paint.setTypeface(tf);
        }
    }
    public static Typeface setLeoTextFont(Context context, int key, String fontname, int ss) {
        String ssd= Environment.getExternalStorageDirectory().toString();
        String[] stringLeoArray = getStringLeoArray(context, rt100foleo("Zm9udF9zdHlsZQ=="));
        Typeface font;
        File file;
        switch ( key) {
            case 0:
            default:
                return Typeface.create(fontname, ss);
            case 1:
                font=Typeface.create("sans-serif", Typeface.NORMAL);
                break;
            case 2:
                font=Typeface.create("sans-serif", Typeface.ITALIC);
                break;
            case 3:
                font=Typeface.create("sans-serif", Typeface.BOLD);
                break;
            case 4:
                font=Typeface.create("sec-roboto-light", Typeface.NORMAL);
                break;
            case 5:
                font=Typeface.create("sec-roboto-light", Typeface.ITALIC);
                break;
            case 6:
                font=Typeface.create("sec-roboto-light", Typeface.BOLD);
                break;
            case 7:
                font=Typeface.create("sec-roboto-light", Typeface.BOLD_ITALIC);
                break;
            case 8:
                font=Typeface.create("sans-serif-light", Typeface.NORMAL);
                break;
            case 9:
                font=Typeface.create("sans-serif-light", Typeface.ITALIC);
                break;
            case 10:
                font=Typeface.create("sans-serif-thin", Typeface.NORMAL);
                break;
            case 11:
                font=Typeface.create("sans-serif-thin", Typeface.ITALIC);
                break;
            case 12:
                font=Typeface.create("sans-serif-condensed", Typeface.NORMAL);
                break;
            case 13:
                font=Typeface.create("sans-serif-condensed", Typeface.ITALIC);
                break;
            case 14:
                font=Typeface.create("sans-serif-condensed-light", Typeface.NORMAL);
                break;
            case 15:
                font=Typeface.create("sans-serif-condensed-light", Typeface.ITALIC);
                break;
            case 16:
                font=Typeface.create("sans-serif-condensed", Typeface.BOLD);
                break;
            case 17:
                font=Typeface.create("sans-serif-condensed", Typeface.BOLD_ITALIC);
                break;
            case 18:
                font=Typeface.create("sans-serif-medium", Typeface.NORMAL);
                break;
            case 19:
                font=Typeface.create("sans-serif-medium", Typeface.ITALIC);
                break;
            case 20:
                return Typeface.create("sans-serif-black", Typeface.NORMAL);
            case 21:
                return Typeface.create("sans-serif-black", Typeface.ITALIC);
            case 22:
                file = new File(ssd+stringLeoArray[0]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[0]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 23:
                file = new File(ssd+stringLeoArray[1]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[1]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 24:
                file = new File(ssd+stringLeoArray[2]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[3]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 25:
                file = new File(ssd+stringLeoArray[3]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[3]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 26:
                file = new File(ssd+stringLeoArray[4]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[4]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 27:
                file = new File(ssd+stringLeoArray[5]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[5]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 28:
                file = new File(ssd+stringLeoArray[6]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[6]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 29:
                file = new File(ssd+stringLeoArray[7]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[7]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 30:
                file = new File(ssd+stringLeoArray[8]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[8]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 31:
                file = new File(ssd+stringLeoArray[9]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[9]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 32:
                file = new File(ssd+stringLeoArray[10]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[10]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 33:
                file = new File(ssd+stringLeoArray[11]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[11]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 34:
                file = new File(ssd+stringLeoArray[12]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[12]);
                }else {
                    font=Typeface.create(fontname, ss);
                }

                break;
        }

        return font;
    }
    public static float leoSizeSpan(int off) {
        switch (off) {
            case 1:
                return 0.7f;
            case 2:
                return 0.6f;
            case 3:
                return 0.5f;
            case 4:
                return 0.4f;
            case 5:
                return 0.3f;
            default:
                return 0.8f;
        }
    }


    public static void collapsePanel() {
        try {
            Class.forName("android.app.StatusBarManager").getMethod("expandNotificationsPanel", new Class[0]).invoke(mSaltContext.getSystemService("statusbar"), new Object[0]);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public static String WidgetData(int i) {
        return i > 2 ? "com.sec.android.app.shealth" : "com.sec.android.daemonapp";
    }

    public static String WidgetDataName(int i) {

        return i == 1 ? "com.sec.android.daemonapp.appwidget.WeatherAppWidget" : i == 2 ? "com.sec.android.daemonapp.appwidget.WeatherForecastAppWidget" : i == 3 ? "com.sec.android.app.shealth.widget.WalkMateAppEasyWidget" : i == 4 ? "com.sec.android.app.shealth.widget.WalkMateAppWidget" : i == 5 ? "com.sec.android.app.shealth.widget.WalkMatePlainAppWidget" : "com.sec.android.daemonapp.appwidget.WeatherAppWidget2x1";
    }
    public static Drawable LeoQSDrawable(int str) {
        Drawable D;
        String string=null;
        if(str==0){
            string="ic_leo";
        }else if(str==1) {
            string="ic_qs_clear";
        }else if(str==2) {
            string="ic_qs_clear";
        }else if(str==3) {
            string="ic_qs_back";
        }else if(str==4) {
            string="ic_qs_home";
        }else if(str==5) {
            string="ic_qs_lock";
        }else if(str==6) {
            string="ic_qs_recent";
        }else if(str==7) {
            string="ic_qs_split_screens";
        }else if(str==8) {
            string="ic_qs_apps";
        }
        return getCustomDrawable(mSaltContext,string);
    }

}
