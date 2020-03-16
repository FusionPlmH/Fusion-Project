package com.os.leo.utils;


import android.content.Context;
import android.content.Intent;
import android.icu.util.Calendar;
import android.text.TextUtils;




import java.io.File;
import java.io.FileInputStream;
import java.util.Date;
import static com.os.leo.utils.LeoUserValues.*;
import static com.os.leo.utils.LeoUtils.isLunarSetting;
import static com.os.leo.utils.Lunar.ConstellationString;
import static com.android.server.policy.LeoWindowAction.*;


public class LeoUserString{
    public  static  String LEO_ACTION_RECENT_TASK = "com.leo.action.recent.task";
    public  static  String LEO_ACTION_SCREENSHOT = "com.leo.action.screenshot";
    public  static  String  LEO_ACTION_SPlLITSCREEN= "com.leo.action.splitcreen";
    public  static  String  LEO_ACTION_APP_KILL= "com.leo.action.app.kill";
    public  static  String  LEO_ACTION_APP_CLEARMEMORY= "com.leo.action.app.clearmemory";
    public  static  String  LEO_ACTION_APP_CLEARMEMORY_FALSE= "com.leo.action.app.clearmemory.false";
    public  static  String  LEO_ACTION_APP_GLOBALACTIONS= "com.leo.action.globalactions";
    public  static  String  LEO_ACTION_TORCH = "com.leo.action.torchLight";
    public  static  String  LEO_ACTION_AIRPLANE= "com.leo.action.airplane";
    public  static  String  LEO_ACTION_MOBILEDATA= "com.leo.action.mobiledata";
    public  static  String  LEO_ACTION_WIFI= "com.leo.action.wifi";
    public  static  String  LEO_ACTION_SCREENOFF= "com.leo.action.screenoff";
    public  static  String  LEO_ACTION_NOTIFICATION= "com.leo.action.notification";
    public  static  String  LEO_ACTION_VIBRATE= "com.leo.action.vibrate";

    public  static  String  LEO_ACTION_LAST_APP= "com.leo.action.last.app";
    public  static  String  LEO_ACTION_BIXBY_VOICE= "com.leo.action.bixby.voice";
    public  static  String  LEO_ACTION_BIXBY_HOME= "com.leo.action.bixbyhome";
    public  static  String  LEO_ACTION_HOME= "com.leo.action.home";
    public  static  String  LEO_ACTION_BACK= "com.leo.action.back";
    public  static  String  LEO_ACTION_SOUND_A= "com.leo.action.sound.a";
    public  static  String  LEO_ACTION_SOUND_B= "com.leo.action.sound.b";
    public  static  String  LEO_ACTION_MEUN= "com.leo.action.part.screenshot";
    public  static  String  LEO_ACTION_SFINDER= "com.leo.action.sfinder";
    public  static  String  LEO_ACTION_WIFI_CODE= "com.leo.action.wifi.code";
    public  static  String  LEO_ACTION_CAMERA= "com.leo.action.camera";
    public  static  String  LEO_ACTION_LEOAPP= "com.leo.action.leoapp";
    public  static  String  LEO_ACTION_SCREENRECORD= "com.leo.action.screenrecord";
    public  static  String  LEO_ACTION_MWDIA_UP= "com.leo.action.media.up";
    public  static  String  LEO_ACTION_MWDIA_DOWN= "com.leo.action.media.down";
    public  static  String  LEO_ACTION_MADIA_PLAY= "com.leo.action.media.play";
    public  static  String  LEO_ACTION_WAKEUP= "com.leo.action.wake.up";
    public  static  String  LEO_ACTION_OUTDOOLMODE= "com.leo.action.outdoor.mode";
    public  static  String  LEO_ACTION_MIPOP= "com.leo.action.mipop";
    public  static  String  LEO_ACTION_SERVICE= "com.os.leo.action.Service";
    public  static  String  LEO_ACTION_RECOBERY= "com.leo.action.recovery";
    public  static  String  LEO_ACTION_DOWNLOAD= "com.leo.action.download";
    public  static  String  LEO_ACTION_GLOBAL= "ACTION";
    public  static  String  LEO_ACTION_WEATHER= "com.leo.weather";
    public  static  String  LEO_ACTION_WEATHER_AQI= "com.leo.weather.aqi";
    public  static  String  LEO_ACTION_WEATHER_TEMP= "com.leo.weather.tmep";
    public  static  String  LEO_ACTION_WEATHER_LOCATION= "com.leo.weather.location";
    public  static  String  LEO_ACTION_WEATHER_TEMP_SINGLE= "com.leo.weather.tmep.single";
    public static void LeoAction( Context context,int defStyle, String appkey) {
        Intent intent = new Intent();
        intent.setAction(LEO_ACTION_SERVICE);
        switch (defStyle) {
            case 100:

                intent.putExtra(LEO_ACTION_GLOBAL, LEO_ACTION_SCREENOFF);
                context.sendBroadcast(intent);
                break;
            case 101:
                // HOME
                intent.putExtra(LEO_ACTION_GLOBAL, LEO_ACTION_HOME);
                context.sendBroadcast(intent);
                break;
            case 102:
                // 返回
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_BACK);
                context.sendBroadcast(intent);
                break;
            case 103:
                // 音量+
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_SOUND_A);
                context.sendBroadcast(intent);
                break;
            case 104:
                // 音量_
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_SOUND_B);
                context.sendBroadcast(intent);
                break;
            case 105:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_MOBILEDATA);
                context.sendBroadcast(intent);
                break;
            case 106:
                // 菜单
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_MEUN);
                context.sendBroadcast(intent);
                break;
            case 107:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_SFINDER);
                context.sendBroadcast(intent);
                break;
            case 108:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_WIFI_CODE);
                context.sendBroadcast(intent);
                break;
            case 109:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_RECENT_TASK);
                context.sendBroadcast(intent);
                break;
            case 110:
                // 本地连接WIFI密码
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_CAMERA);
                context.sendBroadcast(intent);
                break;
            case 111:
                // 本地连接WIFI密码
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_NOTIFICATION);
                context.sendBroadcast(intent);
                break;
            case 112:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_SCREENSHOT);
                context.sendBroadcast(intent);
                break;
            case 113:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_APP_CLEARMEMORY);
                context.sendBroadcast(intent);
                break;
            case 114:
                StartAppLication(context,appkey);
                break;
            case 115:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_APP_KILL);
                context.sendBroadcast(intent);
                break;
            case 116:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_TORCH);
                context.sendBroadcast(intent);
                break;
            case 117:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_LEOAPP);
                context.sendBroadcast(intent);
                break;
            case 118:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_SCREENRECORD);
                context.sendBroadcast(intent);
                break;
            case 119:
                //下一曲
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_MWDIA_DOWN);
                context.sendBroadcast(intent);
                break;
            case 120:
                //上一曲
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_MWDIA_UP);
                context.sendBroadcast(intent);
                break;
            case 121:
                //播放暂停
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_MADIA_PLAY);
                context.sendBroadcast(intent);
                break;
            case 122:
                //声音模式
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_VIBRATE);
                context.sendBroadcast(intent);
                break;
            case 123:
                //WIFi状态
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_WIFI);
                context.sendBroadcast(intent);
                break;
            case 124:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_SPlLITSCREEN);
                context.sendBroadcast(intent);
                break;
            case 125:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_APP_GLOBALACTIONS);
                context.sendBroadcast(intent);
                break;
            case 126:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_AIRPLANE);
                context.sendBroadcast(intent);
                break;
            case 127:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_BIXBY_HOME);
                context.sendBroadcast(intent);
                break;
            case 128:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_BIXBY_VOICE);
                context.sendBroadcast(intent);
                break;
            case 129:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_LAST_APP);
                context.sendBroadcast(intent);
            case 130:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_WAKEUP);
                context.sendBroadcast(intent);
                break;
            case 131:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_OUTDOOLMODE);
                context.sendBroadcast(intent);
                break;
            case 132:
                intent.putExtra(LEO_ACTION_GLOBAL,LEO_ACTION_MIPOP);
                context.sendBroadcast(intent);
                break;


        }
    }

    public static String getLeoDateStyle(int LOG,int Symbol,int week,boolean Week,String date)  {
        String leoDate = "";
        String DateFormat = "";
        Date now = new Date();
        String clockDateFormat = date;
        if (mS .equals(ryid())) {
            if (clockDateFormat == null || clockDateFormat.isEmpty()) {
                String str;
                if (isLunarSetting()==true) {
                    str="MMMd日";
                }else {
                    str="MMMM dd";
                }
                leoDate = DateFormat.format((LOG ==0) ? str+getSymbol(Symbol,Week)+getLeoDateWeek(week,Week) : getLeoDateWeek(week,Week)+ getSymbol(Symbol,Week)+str, now);
            } else {
                leoDate=DateFormat.format( (LOG ==0) ? clockDateFormat+getSymbol(Symbol,Week)+getLeoDateWeek(week,Week) : getLeoDateWeek(week,Week)+getSymbol(Symbol,Week)+clockDateFormat , now);
            }
        }
        return leoDate;
    }

    public static String getLeoWeatherDateStyle(boolean br ,int LOG,int Symbol,int week,boolean Week,String date,int style ,int orientation ,boolean details ,boolean lation)  {
        String leoDate;
            if (br) {
                leoDate = getLeoDateStyle( LOG,Symbol,week, Week,date)+getSymbol(Symbol,br)+ getLeoRomLunarStyle( style ,orientation , Symbol ,details ,lation,null,false);
            } else {
                leoDate = getLeoDateStyle( LOG,Symbol,week, Week,date)+mNewline+getLeoRomLunarStyle( style ,orientation , Symbol ,details ,lation,null,false) ;
            }
        return leoDate;
    }
    public static String getLeoRomLunarStyle(int style ,int orientation ,int Symbol ,boolean details ,boolean lation ,String str ,boolean M) {

        Calendar instance = android.icu.util.Calendar.getInstance();
           String LeoLunarStyle="";
           String Lunar="";
           String  Constellation="";
        if (mS .equals(ryid())) {
        if (isLunarSetting()==true) {
            if (details){
                if (style == 0) {
                    //时辰年月日
                    Lunar= (new Lunar(instance).toLunarChineseSrting());
                } else if (style == 1) {
                    //时辰年月日
                    Lunar= (new Lunar(instance).toLunarChineseTimeSrting());
                } else if (style== 2) {
                    // 属相年月日
                    Lunar=(new Lunar(instance).toLunarChineseZodiacSrting());
                }else if (style== 3) {
                    // 时辰属相年月
                    if (M) {
                        Lunar=(new Lunar(instance).toLunarChineseZodiacTimeMultiSrting());
                    }else {
                        Lunar=(new Lunar(instance).toLunarChineseZodiacTimeSrting());
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
        }
        return LeoLunarStyle;

    }
    public static String getClockDetails(int detailstyle ,boolean details ) {
        android.icu.util.Calendar instance = android.icu.util.Calendar.getInstance();
        ;
        String clockDetailsString="";
        if (mS .equals(ryid())) {
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
                    // 农历
                    clockDetailsString=(new Lunar(instance).toLunarChineseSrting());
                }else if (detailstyle== 4) {
                    // 农历
                    clockDetailsString=getSeason();
                }

            }
        }
        }
        return clockDetailsString;
    }




    public static String getLeoDateWeek( int DateWeekDisplay,boolean Week )
    {
        String DateWeekString="";
        //星期风格选择
        if (Week) {
            if (isLunarSetting()==true) {
                if (DateWeekDisplay == 0) {
                    DateWeekString=getWeekA();
                } else if (DateWeekDisplay == 1) {
                    DateWeekString= getWeek();
                } else if (DateWeekDisplay== 2) {
                    DateWeekString= getWeekTwo();
                }
            }else {
                DateWeekString="EEE";
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
            str=(TextUtils.isEmpty(str)? DEFAULT : str);
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
}