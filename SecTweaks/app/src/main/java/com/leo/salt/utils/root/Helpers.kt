package com.leo.salt.utils.root


import android.app.ProgressDialog
import android.content.Context
import android.provider.Settings


import com.leo.salt.R
import com.leo.salt.utils.Constants.*
import com.leo.salt.utils.ktshell.KeepShellSync


class Helpers {
    companion object {




        fun KillPackage(packageNameToKill: String) {
            //RootUtils.runCommand("pkill -f $packageNameToKill")
            KeepShellSync.doCmdSync(packageNameToKill)
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
              //  showRebootNotification(context, "你已将定位切换为($name3)需重启动手机")
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
            mydialog.setMessage(context.getString(R.string.execute_wait))
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
            mydialog.setMessage(context.resources.getString(R.string.google_services_frost))
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
                KeepShellSync.doCmdSync("pm disable com.google.android.apps.turbo")
                mydialog.cancel()
            }).start()
        }

        fun GoogleEnabled(context: Context) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage(context.resources.getString(R.string.google_services_thawing))
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
                KeepShellSync.doCmdSync("pm enable com.google.android.apps.turbo")
                mydialog.cancel()
            }).start()
        }

        fun GoogleEnabledrecover(context: Context) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage(context.resources.getString(R.string.google_services_recover))
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }
                KeepShellSync.doCmdSync("mount -o rw,remount /data")
                KeepShellSync.doCmdSync("mount -o rw,remount /system")
                KeepShellSync.doCmdSync("mv /system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk.bak /system/app/GoogleContactsSyncAdapter/GoogleContactsSyncAdapter.apk")
                KeepShellSync.doCmdSync("mv /system/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk.bak /system/app/GoogleCalendarSyncAdapter/GoogleCalendarSyncAdapter.apk")
                KeepShellSync.doCmdSync("mv /system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk.bak /system/app/GooglePrintRecommendationService/GooglePrintRecommendationService.apk")
                KeepShellSync.doCmdSync("mv /system/priv-app/CallLogBackup/CallLogBackup.apk.bak  /system/priv-app/CallLogBackup/CallLogBackup.apk")
                KeepShellSync.doCmdSync("mv /system/priv-app/ConfigUpdater/ConfigUpdater.apk.bak /system/priv-app/ConfigUpdater/ConfigUpdater.apk")
                KeepShellSync.doCmdSync("mv /system/priv-app/GmsCore/GmsCore.apk.bak /system/priv-app/GmsCore/GmsCore.apk ")
                KeepShellSync.doCmdSync("mv /system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk.bak /system/priv-app/GoogleBackupTransport/GoogleBackupTransport.apk")
                KeepShellSync.doCmdSync("mv /system/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk.bak /system/priv-app/GoogleOneTimeInitializer/GoogleOneTimeInitializer.apk ")
                KeepShellSync.doCmdSync("mv /system/priv-app/GoogleLoginService/GoogleLoginService.apk.bak /system/priv-app/GoogleLoginService/GoogleLoginService.apk")
                KeepShellSync.doCmdSync("mv /system/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk.bak /system/priv-app/GooglePartnerSetup/GooglePartnerSetup.apk")
                KeepShellSync.doCmdSync("mv /system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk.bak /system/priv-app/GoogleServicesFramework/GoogleServicesFramework.apk ")
                KeepShellSync.doCmdSync("mv /system/priv-app/GooglePlayServicesUpdater/GooglePlayServicesUpdater.apk.bak /system/priv-app/GooglePlayServicesUpdater/GooglePlayServicesUpdater.apk")
                KeepShellSync.doCmdSync("mv /system/priv-app/Phonesky/Phonesky.apk.bak /system/priv-app/Phonesky/Phonesky.apk  ")
                KeepShellSync.doCmdSync("mv /data/app/com.android.vending/base.apk.bak /data/app/com.google.android.gms/base.apk")
                KeepShellSync.doCmdSync("mv /data/app/com.google.android.gms/base.apk.bak /data/app/com.android.vending/base.apk")
                KeepShellSync.doCmdSync("sleep 5")
                KeepShellSync.doCmdSync("reboot")
                mydialog.cancel()
            }).start()
        }


        fun ClearOTA() {
            KeepShellSync.doCmdSync("rm -r "+ClearOTA)
        }
        fun OtaCode() {
                KeepShellSync.doCmdSync("mount -o rw,remount /data")
                KeepShellSync.doCmdSync( "mount -o rw,remount /system")
                KeepShellSync.doCmdSync( "mkdir /cache/recovery")
                KeepShellSync.doCmdSync("cp  /sdcard/Android/ota/ota.zip /cache/recovery/leoupdate.zip")
                KeepShellSync.doCmdSync("cp  /system/leo/update/command /cache/recovery/command")
                KeepShellSync.doCmdSync("sleep 5")
                KeepShellSync.doCmdSync("reboot recovery")
        }

        fun SignalCode(style: Int,context: Context) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage(context.resources.getString(R.string.execute_wait))
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }
            KeepShellSync.doCmdSync( "mount -o rw,remount /system")
            if(style==0){//启用自定义信号图标
                KeepShellSync.doCmdSync( "sed -i '/<CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon>/s/CHC/LEO/' /system/omc/CHC/cscfeature.xml")
            }else if (style == 1) {
                KeepShellSync.doCmdSync( "sed -i '/<CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon>/s/LEO/CHC/' /system/omc/CHC/cscfeature.xml")
            }else if (style == 2) {//大陆
                KeepShellSync.doCmdSync( "sed -i '/<CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon>/s/CHC/LEO/' /system/csc/cscfeature.xml")
            }else if (style == 3) {
                KeepShellSync.doCmdSync( "sed -i '/<CscFeature_SystemUI_ConfigOpBrandingForIndicatorIcon>/s/LEO/CHC/' /system/csc/cscfeature.xml")
            }
            KeepShellSync.doCmdSync("sleep 5")
            KeepShellSync.doCmdSync("reboot")
                mydialog.cancel()
            }).start()
        }

        fun APPS(context: Context) {
            val mydialog = ProgressDialog(context)
            mydialog.setProgressStyle(ProgressDialog.STYLE_SPINNER)// 设置进度条的形式为圆形转动的进度条
            mydialog.setCancelable(false)// 设置是否可以通过点击Back键取消
            mydialog.setCanceledOnTouchOutside(false)// 设置在点击Dialog外是否取消Dialog进度条
            mydialog.setMessage(context.resources.getString(R.string.execute_wait))
            mydialog.show()
            Thread(Runnable {
                try {
                    Thread.sleep(1000)
                } catch (e: InterruptedException) {
                    e.printStackTrace()
                }
                KeepShellSync.doCmdSync( "mount -o rw,remount /system")
                KeepShellSync.doCmdSync( "/data/data/com.leo.salt/files/scripts/apps.sh")
                KeepShellSync.doCmdSync("sleep 5")
                KeepShellSync.doCmdSync("reboot")
                mydialog.cancel()
            }).start()
        }
    }

}
