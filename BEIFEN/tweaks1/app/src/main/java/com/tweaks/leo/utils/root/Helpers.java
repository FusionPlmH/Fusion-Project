package com.tweaks.leo.utils.root;


import android.app.ProgressDialog;
import android.content.Context;
import android.content.res.Resources;
import android.provider.Settings;
import android.util.Log;


import com.tweaks.leo.R;
import com.tweaks.leo.utils.ktshell.KeepShellSync;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;

import static com.tweaks.leo.utils.NotificationUtils.showRebootNotification;


public class Helpers {

    public Helpers() {
        // dummy constructor
    }


    public static String CODE="JXU3NzFGJTBB";


    public  static void Mount(int mount) {

        switch (mount) {
            case 0:
                // 挂载data

                RootUtils.runCommand(  "mount -o rw,remount /data");
                break;
            case 1:
                // 挂载system
                RootUtils.runCommand(  "mount -o rw,remount /system");
            case 2:
                // 挂载system
                RootUtils.runCommand(  "mount -o rw,remount /cache");
            case 3:
                // 挂载system
                RootUtils.runCommand(  "mkdir /cache/recovery");
            case 4:
                // 挂载system
                RootUtils.runCommand(  "cp  /system/leo/dolby/command /cache/recovery/command");
            case 5:
                // 挂载system
                RootUtils.runCommand(  "cp  /system/leo/root/command /cache/recovery/command");
            case 6:
                // 挂载system
                RootUtils.runCommand(  "cp  /system/leo/update/command /cache/recovery/command");
                break;
        }
    }

    public  static void WifiCode(int wifi) {
        switch (wifi) {
            case 0:
                // 单行信
                Mount(1);
                RootUtils.runCommand(  "mkdir -p /sdcard/LeoTweaks/Backups/WiFiBackups");
                RootUtils.runCommand(  "cp -rf /data/misc/wifi/wpa_supplicant.conf /sdcard/LeoTweaks/Backups/WiFiBackups");
                break;
            case 1:
                // 双行信号
                Mount(1);
                RootUtils.runCommand(  "cp -rf /sdcard/LeoTweaks/Backups/WiFiBackups/wpa_supplicant.conf /data/misc/wifi/");
                break;
            case 2:
                // 双行信号
                Mount(0);
                RootUtils.runCommand(  "rm -r /sdcard/LeoTweaks/Backups/WiFiBackups/wpa_supplicant.conf");
                break;
        }
    }


    public static void OtaCode(String name,final Context context, final String chip) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage(name);
        mydialog.show();
        new Thread(new Runnable() {

            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Mount(1);
                Mount(2);
                RootUtils.runCommand(  "mkdir /cache/recovery");
                RootUtils.runCommand(  chip);
                RootUtils.runCommand(  "cp  /system/leo/update/command /cache/recovery/command");
                RootUtils.runCommand(  "sleep 5");
                RootUtils.runCommand(  "reboot recovery");
                mydialog.cancel();
            }
        }).start();
    }
    public static void RootCode(String name,final Context context,final String name2) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage(name);
        mydialog.show();
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Mount(1);
                Mount(2);
                RootUtils.runCommand(  "mkdir /cache/recovery");
                RootUtils.runCommand(  name2);
                RootUtils.runCommand(  "cp  /system/leo/root/command /cache/recovery/command");
                RootUtils.runCommand(  "sleep 5");
                RootUtils.runCommand(  "reboot recovery");
                mydialog.cancel();
            }
        }).start();
    }
    public static void locationCode(String name, final Context context,final String delete ,final String delete2 ,final String gaode,final String name3) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage(name);
        mydialog.show();
        new Thread(new Runnable() {

            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Mount(1);
                RootUtils.runCommand(  delete);
                RootUtils.runCommand(  delete2);
                RootUtils.runCommand(  gaode);
                RootUtils.runCommand(  "sleep 1");
                showRebootNotification(context,"你已将定位切换为"+"("+name3+")"+"需重启动手机");
                mydialog.cancel();
            }
        }).start();
    }


    public static void LeoRestartMeun(Context context, final int reboot) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage(context.getResources().getString(R.string.progress_dialog_tite));
        mydialog.show();
        new Thread(new Runnable() {

            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                if (reboot == 0) {
                    RootUtils.runCommand(  "pkill -f com.android.systemui");

                } else if ( reboot == 1) {
                    RootUtils.runCommand(  "reboot");
                }else if ( reboot == 2) {
                    RootUtils.runCommand(  "busybox killall system_server" );
                }else if ( reboot == 3) {
                    RootUtils.runCommand(  "reboot bootloader");
                }else if ( reboot == 4) {
                    RootUtils.runCommand(  "reboot recovery");
                } else if ( reboot == 5) {
                    RootUtils.runCommand(  "am broadcast android.intent.action.ACTION_SHUTDOWN");
                    RootUtils.runCommand(  "reboot -p");
                }
                mydialog.cancel();
            }
        }).start();
        }
    public static void WipeMeun(final Context context, final int reboot) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage(context.getResources().getString(R.string.progress_dialog_tite));
        mydialog.show();
        new Thread(new Runnable() {

            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                if (reboot == 0) {
                    RootUtils.runCommand("mount -o remount,rw /data");
                    RootUtils.runCommand("mount -o remount,ro /data");
                    RootUtils.runCommand("rm -r /data/data/com.android.settings");
                    RootUtils.runCommand(  "rm -r /data/data/com.android.providers.settings");
                    RootUtils.runCommand(  "reboot");
                } else if ( reboot == 1) {
                    RootUtils.runCommand(  "mount -o remount,rw /cache");
                    RootUtils.runCommand(  "mount -o remount,ro /cache");
                    RootUtils.runCommand(  "rm -r /cache");
                    RootUtils.runCommand(  "reboot");
                }else if ( reboot == 2) {
                    RootUtils.runCommand(  "mount -o remount,rw /data");
                    RootUtils.runCommand(  "mount -o remount,ro /data");
                    RootUtils.runCommand(  "rm -r /data/dalvik-cache");
                    RootUtils.runCommand(  "reboot");
                }else if ( reboot == 3) {
                    RootUtils.runCommand("mount -o remount,rw /data");
                    RootUtils.runCommand(  "mount -o remount,ro /data");
                    RootUtils.runCommand("rm -r /data/data");
                    RootUtils.runCommand(  "reboot");
                }
                mydialog.cancel();
            }
        }).start();
    }
    public static void WipeLOG(final Context context) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage("正在清理");
        mydialog.show();
        new Thread(new Runnable() {

            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Mount(0);
                RootUtils.runCommand("rm -r /sdcard/LeoTweaks/Log");
                RootUtils.runCommand( "mkdir  /sdcard/LeoTweaks/Log");
                mydialog.cancel();
            }
        }).start();
    }

    public static void GoogleDisabled(final Context context) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage("正在冻结谷歌服务");
        mydialog.show();
        new Thread(new Runnable() {

            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Mount(0);
                RootUtils.runCommand("pm disable com.google.android.gsf");
                RootUtils.runCommand("pm disable com.google.android.gsf.login");
                RootUtils.runCommand( "pm disable com.google.android.gms");
                RootUtils.runCommand("pm disable com.android.vending");
                RootUtils.runCommand( "pm disable com.google.android.syncadapters.contacts");
                RootUtils.runCommand( "pm disable com.google.android.syncadapters.calendar");
                mydialog.cancel();
            }
        }).start();
    }
    public static void GoogleEnabled(final Context context) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage("正在解冻谷歌服务");
        mydialog.show();
        new Thread(new Runnable() {

            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Mount(0);
                RootUtils.runCommand("pm enable com.google.android.gsf");
                RootUtils.runCommand("pm enable com.google.android.gsf.login");
                RootUtils.runCommand( "pm enable com.google.android.gms");
                RootUtils.runCommand("pm enable com.android.vending");
                RootUtils.runCommand("pm enable com.google.android.syncadapters.contacts");
                RootUtils.runCommand( "pm enable com.google.android.syncadapters.calendar");
                mydialog.cancel();
            }
        }).start();
    }

    public static void StatusInt(Context cxt,  int defaultValue) {
        getLeoInt(cxt,"leo_tweaks_statusbar_clock_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_statusbar_bg_show",defaultValue);
        getLeoInt(cxt,"leo_tweaks_battery_allow_standby_charge",defaultValue);
        getLeoInt(cxt,"leo_tweaks_statusbar_temperature_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_statusbar_logo_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_status_bar_start_color_custom",defaultValue);
        getLeoInt(cxt,"leo_tweaks_statusbar_network_traffic_custom_color",defaultValue);
        getLeoInt(cxt,"leo_tweaks_status_bar_carrier_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_status_bar_weather_color_enabled",defaultValue);
    }
    public static void PulldownInt(Context cxt,  int defaultValue) {
        getLeoInt(cxt,"leo_tweaks_qspanel_bg_show",defaultValue);
        getLeoInt(cxt,"leo_tweaks_pulldown_button_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_qs_button_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_pulldown_clock_color_custom",defaultValue);
        getLeoInt(cxt,"leo_tweaks_pulldown_date_color_custom",defaultValue);
        getLeoInt(cxt,"leo_tweaks_notification_carrier_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_unlock_notification_colors",defaultValue);
        getLeoInt(cxt,"leo_tweaks_data_usage_text_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_multisim_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_notice_button_text_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_multisim_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_pulldown_outdoor_color_enabled",defaultValue);
        getLeoInt(cxt,"leo_tweaks_enabled_brightness_color_custom",defaultValue);
        getLeoInt(cxt,"leo_tweaks_notification_item_bg_show",defaultValue);
    }
    public static boolean getLeoInt(Context cxt, String key, int defaultValue) {
        return Settings.System.putInt(cxt.getContentResolver(),
                key,defaultValue);
    }

    public static int navigation(Context cxt) {
        Resources resources = cxt.getResources();
        return resources.getDimensionPixelSize(resources.getIdentifier("navigation_bar_height", "dimen", "android"));
    }
    public static String executeCommandWithOutput(boolean root, String command) {
        DataOutputStream dos;
        InputStream is;
        try {
            Process process;
            process = root ? Runtime.getRuntime().exec("su") : Runtime.getRuntime().exec("sh");
            if (process == null) return "";
            dos = new DataOutputStream(process.getOutputStream());
            dos.write(command.getBytes("UTF-8"));
            dos.writeBytes("\nexit \n");
            dos.flush();
            dos.close();
            if (process.waitFor() == 0) {
                is = process.getInputStream();
                StringBuilder builder = new StringBuilder();
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String line;
                while ((line = br.readLine()) != null)
                    builder.append(line.trim()).append("\n");
                return builder.toString().trim();
            } else {
                is = process.getErrorStream();
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String line;
                while ((line = br.readLine()) != null) Log.d("error", line);
            }

        } catch (IOException | InterruptedException | IllegalArgumentException e) {
            e.printStackTrace();
        }
        return "";
    }

    public static void ZIPCode(String name,final Context context,final String name2) {
        final ProgressDialog mydialog = new ProgressDialog(context);
        mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER);// 设置进度条的形式为圆形转动的进度条
        mydialog.setCancelable(false);// 设置是否可以通过点击Back键取消
        mydialog.setCanceledOnTouchOutside(false);// 设置在点击Dialog外是否取消Dialog进度条
        mydialog.setMessage(name);
        mydialog.show();
        new Thread(new Runnable() {
            @Override
            public void run() {
                try {
                    Thread.sleep(1000);
                } catch (InterruptedException e) {
                    e.printStackTrace();
                }
                Mount(1);
                Mount(2);
                RootUtils.runCommand(  "mkdir /cache/recovery");
                RootUtils.runCommand(  name2);
                RootUtils.runCommand(  "cp  /system/leo/root/command /cache/recovery/command");
                RootUtils.runCommand(  "sleep 5");
                RootUtils.runCommand(  "reboot recovery");
                mydialog.cancel();
            }
        }).start();
    }
}
