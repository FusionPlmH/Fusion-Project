package com.android.leo.global;


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

import static com.android.leo.global.LeoGlobalValues.SSSSOSSSS;


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
    public  static  String  HITOMILEO_ACTION_SYSTEMUI= "com.hitomileo.action.systemui";
    public static String getLeoString(Context cxt,String key) {

        return Settings.System.getString(cxt.getContentResolver(), key);
    }
    public static Uri getLeoUri(String key) {
        return Settings.System.getUriFor( key);
    }
    public static int getLeoInt(Context cxt, String key, int defaultValue) {

        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
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

}