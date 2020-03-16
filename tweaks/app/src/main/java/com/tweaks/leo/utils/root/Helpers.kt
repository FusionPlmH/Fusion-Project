package com.tweaks.leo.utils.root


import android.app.ProgressDialog
import android.content.Context
import android.provider.Settings


import com.tweaks.leo.R
import com.tweaks.leo.utils.Constants.*
import com.tweaks.leo.utils.ktshell.KeepShellSync

import com.tweaks.leo.utils.NotificationUtils.showRebootNotification


class Helpers {
    companion object {


        var CODE = safety

        fun KillPackage(packageNameToKill: String) {
            //RootUtils.runCommand("pkill -f $packageNameToKill")
            KeepShellSync.doCmdSync(packageNameToKill)
        }


        fun RootCode(name: String, context: Context, name2: String) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage(name)
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }

                KeepShellSync.doCmdSync("mount -o rw,remount /data")
                KeepShellSync.doCmdSync( "mount -o rw,remount /system")
                KeepShellSync.doCmdSync("mkdir /cache/recovery")
                KeepShellSync.doCmdSync(name2)
                KeepShellSync.doCmdSync("cp  /system/leo/root/command /cache/recovery/command")
                KeepShellSync.doCmdSync("sleep 5")
                KeepShellSync.doCmdSync("reboot recovery")
                mydialog.cancel()
            }).start()
        }

        fun locationCode(name: String, context: Context, delete: String, delete2: String, gaode: String, name3: String) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage(name)
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }

                KeepShellSync.doCmdSync( "mount -o rw,remount /system")
                KeepShellSync.doCmdSync(delete)
                KeepShellSync.doCmdSync(delete2)
                KeepShellSync.doCmdSync(gaode)
                KeepShellSync.doCmdSync("sleep 1")
                showRebootNotification(context, "你已将定位切换为($name3)需重启动手机")
                mydialog.cancel()
            }).start()
        }

        fun LeoRestartMeun( context: Context,reboot: Int) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage(context.getString(R.string.execute_wait))
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }
                if (reboot == 0) {
                    KeepShellSync.doCmdSync("pkill -f com.android.systemui")

                } else if (reboot == 1) {
                    KeepShellSync.doCmdSync("reboot")
                } else if (reboot == 2) {
                    KeepShellSync.doCmdSync("busybox killall system_server")
                } else if (reboot == 3) {
                    KeepShellSync.doCmdSync("reboot bootloader")
                } else if (reboot == 4) {
                    KeepShellSync.doCmdSync("reboot recovery")
                } else if (reboot == 5) {
                    KeepShellSync.doCmdSync("am broadcast android.intent.action.ACTION_SHUTDOWN")
                    KeepShellSync.doCmdSync("reboot -p")
                }
                mydialog.cancel()
            }).start()
        }

        fun WipeMeun(context: Context, reboot: Int) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage(context.resources.getString(R.string.progress_dialog_tite))
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }

                if (reboot == 0) {
                    KeepShellSync.doCmdSync("mount -o remount,rw /data")
                    KeepShellSync.doCmdSync("mount -o remount,ro /data")
                    KeepShellSync.doCmdSync("rm -r /data/data/com.android.settings")
                    KeepShellSync.doCmdSync("rm -r /data/data/com.android.providers.settings")
                    KeepShellSync.doCmdSync("reboot")
                } else if (reboot == 1) {
                    KeepShellSync.doCmdSync("mount -o remount,rw /cache")
                    KeepShellSync.doCmdSync("mount -o remount,ro /cache")
                    KeepShellSync.doCmdSync("rm -r /cache")
                    KeepShellSync.doCmdSync("reboot")
                } else if (reboot == 2) {
                    KeepShellSync.doCmdSync("mount -o remount,rw /data")
                    KeepShellSync.doCmdSync("mount -o remount,ro /data")
                    KeepShellSync.doCmdSync("rm -r /data/dalvik-cache")
                    KeepShellSync.doCmdSync("reboot")
                } else if (reboot == 3) {
                    KeepShellSync.doCmdSync("mount -o remount,rw /data")
                    KeepShellSync.doCmdSync("mount -o remount,ro /data")
                    KeepShellSync.doCmdSync("rm -r /data/data")
                    KeepShellSync.doCmdSync("reboot")
                }
                mydialog.cancel()
            }).start()
        }

        fun WipeLOG(context: Context) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage("正在清理")
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }
                KeepShellSync.doCmdSync("mount -o rw,remount /data")

                KeepShellSync.doCmdSync("rm -r /sdcard/LeoTweaks/Log")
                KeepShellSync.doCmdSync("mkdir  /sdcard/LeoTweaks/Log")
                mydialog.cancel()
            }).start()
        }

        fun GoogleDisabled(context: Context) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage("正在冻结谷歌服务")
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }

                KeepShellSync.doCmdSync("mount -o rw,remount /data")
                KeepShellSync.doCmdSync("pm disable com.google.android.gsf")
                KeepShellSync.doCmdSync("pm disable com.google.android.gsf.login")
                KeepShellSync.doCmdSync("pm disable com.google.android.gms")
                KeepShellSync.doCmdSync("pm disable com.android.vending")
                KeepShellSync.doCmdSync("pm disable com.google.android.syncadapters.contacts")
                KeepShellSync.doCmdSync("pm disable com.google.android.syncadapters.calendar")
                mydialog.cancel()
            }).start()
        }

        fun GoogleEnabled(context: Context) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage("正在解冻谷歌服务")
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }
                KeepShellSync.doCmdSync("mount -o rw,remount /data")
                KeepShellSync.doCmdSync("pm enable com.google.android.gsf")
                KeepShellSync.doCmdSync("pm enable com.google.android.gsf.login")
                KeepShellSync.doCmdSync("pm enable com.google.android.gms")
                KeepShellSync.doCmdSync("pm enable com.android.vending")
                KeepShellSync.doCmdSync("pm enable com.google.android.syncadapters.contacts")
                KeepShellSync.doCmdSync("pm enable com.google.android.syncadapters.calendar")
                mydialog.cancel()
            }).start()
        }

        fun StatusInt(cxt: Context, defaultValue: Int) {
            getLeoInt(cxt, "leo_tweaks_statusbar_clock_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_statusbar_bg_show", defaultValue)
            getLeoInt(cxt, "leo_tweaks_battery_allow_standby_charge", defaultValue)
            getLeoInt(cxt, "leo_tweaks_statusbar_temperature_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_statusbar_logo_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_status_bar_start_color_custom", defaultValue)
            getLeoInt(cxt, "leo_tweaks_statusbar_network_traffic_custom_color", defaultValue)
            getLeoInt(cxt, "leo_tweaks_status_bar_carrier_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_status_bar_weather_color_enabled", defaultValue)
        }

        fun PulldownInt(cxt: Context, defaultValue: Int) {
            getLeoInt(cxt, "leo_tweaks_qspanel_bg_show", defaultValue)
            getLeoInt(cxt, "leo_tweaks_pulldown_button_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_qs_button_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_pulldown_clock_color_custom", defaultValue)
            getLeoInt(cxt, "leo_tweaks_pulldown_date_color_custom", defaultValue)
            getLeoInt(cxt, "leo_tweaks_notification_carrier_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_unlock_notification_colors", defaultValue)
            getLeoInt(cxt, "leo_tweaks_data_usage_text_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_multisim_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_notice_button_text_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_multisim_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_pulldown_outdoor_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_enabled_brightness_color_custom", defaultValue)
            getLeoInt(cxt, "leo_tweaks_notification_item_bg_show", defaultValue)
        }


        fun ClockInt(cxt: Context, defaultValue: Int) {
            getLeoInt(cxt, "leo_tweaks_keyguard_aod_clock", defaultValue)
        }
        fun LockInt(cxt: Context, defaultValue: Int) {
            getLeoInt(cxt, "leo_tweaks_keyguard_clock_color_custom", defaultValue)
            getLeoInt(cxt, "leo_tweaks_keyguard_weather_color_enabled", defaultValue)
            getLeoInt(cxt, "leo_tweaks_keyguard_carrier_color_enabled", defaultValue)
        }

        fun getLeoInt(cxt: Context, key: String, defaultValue: Int): Boolean {
            return Settings.System.putInt(cxt.contentResolver,
                    key, defaultValue)
        }

        fun navigation(cxt: Context): Int {
            val resources = cxt.resources
            return resources.getDimensionPixelSize(resources.getIdentifier("status_bar_height", "dimen", "android"))
        }

        fun ClearOTA() {
            KeepShellSync.doCmdSync("rm -r "+OTA)
        }


        fun OtaCode() {
                KeepShellSync.doCmdSync("mount -o rw,remount /data")
                KeepShellSync.doCmdSync( "mount -o rw,remount /system")
                KeepShellSync.doCmdSync( "mkdir /cache/recovery")
                KeepShellSync.doCmdSync("cp  /sdcard/LeoTweaks/ota/ota.zip /cache/recovery/leoupdate.zip")
                KeepShellSync.doCmdSync("cp  /system/leo/update/command /cache/recovery/command")
                KeepShellSync.doCmdSync("sleep 5")
                KeepShellSync.doCmdSync("reboot recovery")
        }

    }

}
