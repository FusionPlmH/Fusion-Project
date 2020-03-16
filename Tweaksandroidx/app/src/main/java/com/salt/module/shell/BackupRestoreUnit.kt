package com.salt.module.shell;


import android.content.Context
import android.os.Handler
import android.os.Looper
import android.os.Looper.loop
import android.util.Log
import android.widget.Toast
import androidx.appcompat.app.AlertDialog
import com.salt.frame.LeadFrame.getStringIdentifier
import com.salt.globalactions.Utils.S10reboot
import com.salt.globalactions.Utils.setLeoNavKeypressAction

import com.salt.config.R
import com.salt.config.tweaks.activity.FotaUpdateActivity
import com.salt.config.tweaks.activity.FotaUpdateActivity.unzipFotaPath
import com.salt.config.tweaks.download.EdXposed.unzipEdXposedPath
import com.salt.config.tweaks.download.Fingerprint.unzipFingerprintPath
import com.salt.config.tweaks.download.Magisk.unzipMagiskPath
import com.salt.script.Consts
import com.salt.script.Consts.Mkdir
import com.salt.script.Consts.MountSystemRW
import com.salt.script.Consts.SDcommandUrl
import com.salt.script.Consts.UNLOCKDIR
import com.salt.script.Consts.UrlCacheOTA
import com.salt.script.DialogHelper
import com.salt.script.KeepShellPublic.doCmdSync
import com.salt.utils.SaltProper.SystemUrl.*
import com.salt.utils.SaltProper.getApksStringInt
import com.salt.utils.utils.OTACode
import com.salt.widget.ProgressBarDialog
import java.io.IOException


class BackupRestoreUnit(var context: Context) {


    val dialog: ProgressBarDialog
    internal var myHandler: Handler = Handler()

    init {
        dialog = ProgressBarDialog(context)
    }

    //显示进度条
    fun ShowProgressBar() {
        myHandler.post {
            dialog.showDialog(setTextView("execute_wait"))
        }
    }
    fun ShowUnlockProgressBar(STR: String) {
        myHandler.post {
            dialog.showDialog(STR)
        }
    }
    fun setTextView(STR: String): String {

        return getStringIdentifier(context, STR)
    }

    //隐藏进度条
    fun HideProgressBar() {
        myHandler.post {
            dialog.hideDialog()
        }
    }

    //显示文本消息
    fun ShowMsg(msg: String, longMsg: Boolean) {
        myHandler.post { Toast.makeText(context, msg, if (longMsg) Toast.LENGTH_LONG else Toast.LENGTH_SHORT).show() }
    }

    //刷入Boot
    fun FlashBoot(path: String) {
        FlashBootThread(path).start()
    }

    //显示弹窗提示
    fun ShowDialogMsg(title: String, msg: String) {
        myHandler.post {
            val builder = AlertDialog.Builder(context)
            builder.setTitle(title)
            builder.setPositiveButton(android.R.string.yes, null)
            builder.setMessage(msg + "\n")
            builder.create().show()
        }
    }

    internal fun NoRoot() {
        ShowDialogMsg(setTextView("check_root"), setTextView("no_su_dialog_title"))
    }

    internal inner class FlashBootThread(var path: String) : Thread() {

        override fun run() {
            ShowMsg(setTextView("bo_flash")+"\n$path\n"+setTextView("bo_flash_summary"), true)
            ShowProgressBar()
            try {
                ShowProgressBar()
                FlashBootUrl(path)
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
                android.os.Process.killProcess(android.os.Process.myPid())
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
            }
        }
    }


    fun FlashBootUrl(path: String) {// dd  boot
        if (doCmdSync("dd if=$path of="+bootCode()) != "error") {
            ShowMsg(IMGWriteOK, true)
        } else {
            ShowMsg(IMGWriteOFF, true)
        }
    }
    //刷入Recovery
    fun FlashRecovery(path: String) {
        FlashRecoveryThread(path).start()
    }

    internal inner class FlashRecoveryThread(var path: String) : Thread() {

        override fun run() {
            ShowMsg(setTextView("bo_flash")+"\n$path\n"+setTextView("bo_flash_summary"), true)
            ShowProgressBar()
            try {
                ShowProgressBar()
                FlashRecoveryUrl(path)
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
                android.os.Process.killProcess(android.os.Process.myPid())
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
            }
        }
    }
    fun FlashRecoveryUrl(path: String) {

            if (doCmdSync("dd if=$path of="+RecoveryCode()) != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }


    }


    fun SaveBoot() {
        SaveBootThread().start()
    }

    internal inner class SaveBootThread : Thread() {
        override fun run() {
            try {
                ShowProgressBar()
                SaveBootUrl()
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                ShowMsg("Boot"+ExportOFF, true)
                e.printStackTrace()
            } finally {
                HideProgressBar()
            }
        }
    }


    fun SaveRecovery() {
        SaveRecoveryThread().start()
    }

    internal inner class SaveRecoveryThread : Thread() {
        override fun run() {
            ShowProgressBar()
            SaveRecoveryUrl()
            HideProgressBar()
        }
    }

    fun SaveEFS() {
        SaveEFSThread().start()
    }

    internal inner class SaveEFSThread : Thread() {
        override fun run() {
            ShowProgressBar()
            SaveEFSUrl()
            HideProgressBar()
        }
    }
    //刷入Recovery
    fun FlashEFS(path: String) {
        FlashEFSThread(path).start()
    }

    internal inner class FlashEFSThread(var path: String) : Thread() {

        override fun run() {
            ShowMsg(setTextView("bo_flash")+"\n$path\n"+setTextView("bo_flash_summary"), true)
            ShowProgressBar()
            try {
                ShowProgressBar()
                FlashEFSUrl(path)
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
                android.os.Process.killProcess(android.os.Process.myPid())
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
            }
        }
    }
    fun FlashEFSUrl(path: String) {


            if (doCmdSync("dd if=$path of="+EFSCode()) != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }


    }

    val IMGWriteOK= setTextView("operation_ok");
    val IMGWriteOFF= setTextView("img_flash_failure");
    val EFS= "EFS";
    val BOOT= "Boot";
    val RECOVERY= "Recovery";
    val ExportOK= setTextView("export_ok");
    val ExportOFF=setTextView("export_failure") ;
    fun SaveRecoveryUrl() {

            if (doCmdSync("dd if="+RecoveryCode()+" of=${Consts.SDCardDirImg}/recovery.img\n") != "error") {
                ShowMsg(RECOVERY+ExportOK+"${Consts.SDCardDirImg}/recovery.img ！", true)
            } else {
                ShowMsg(RECOVERY+ExportOFF, true)
            }



    }

    fun SaveBootUrl() {
            if (doCmdSync("dd if="+bootCode()+" of=${Consts.SDCardDirImg}/boot.img;\n") != "error") {
                ShowMsg(BOOT+ExportOK+"${Consts.SDCardDirImg}/boot.img ！", true)
            } else {
                ShowMsg(BOOT+ExportOFF, true)
            }


    }
    fun RecoveryCode(): String {
        var nme = ""
        if (OTACode == "GN95E") {
            nme = "/dev/block/platform/11120000.ufs/by-name/RECOVERY"
        } else if (OTACode == "GN96E") {
            nme = "/dev/block/platform/11120000.ufs/by-name/RECOVERY"
        } else if (OTACode == "G97EX") {
            nme = "/dev/block/platform/13d60000.ufs/by-name/recovery"
        }else if (OTACode == "GN96Q") {
            nme = "/dev/block/platform/soc/1d84000.ufshc/by-name/recovery"
        } else if (OTACode == "GN95Q") {
            nme = "/dev/block/bootdevice/by-name/recovery"
        }
        return nme
    }

    fun EFSCode(): String {
        var nme = ""
        if (OTACode == "GN95E") {
            nme = "/dev/block/platform/11120000.ufs/by-name/EFS"
        } else if (OTACode == "GN96E") {
            nme = "/dev/block/platform/11120000.ufs/by-name/EFS"
        }  else if (OTACode == "G97EX") {
            nme = "/dev/block/platform/13d60000.ufs/by-name/efs"
        } else if (OTACode == "GN96Q") {
            nme = "/dev/block/platform/soc/1d84000.ufshc/by-name/efs"
        } else if (OTACode == "GN95Q") {
            nme = "/dev/block/bootdevice/by-name/efs"
        }
        return nme
    }
    fun bootCode(): String {
        var nme = ""
        if (OTACode == "GN95E") {
            nme = "/dev/block/platform/11120000.ufs/by-name/BOOT"
        } else if (OTACode == "GN96E") {
            nme = "/dev/block/platform/11120000.ufs/by-name/BOOT"
        } else if (OTACode == "G97EX") {
            nme = "/dev/block/platform/13d60000.ufs/by-name/boot"
        } else if (OTACode == "GN96Q") {
            nme = "/dev/block/platform/soc/1d84000.ufshc/by-name/boot"
        } else if (OTACode == "GN95Q") {
            nme = "/dev/block/bootdevice/by-name/boot"
        }
        return nme
    }
    fun SaveEFSUrl() {

            if (doCmdSync("dd if="+EFSCode()+" of=${Consts.SDCardDirImg}/efs.img\n") != "error") {
                ShowMsg(EFS+ExportOK+"${Consts.SDCardDirImg}/efs.img ！", true)
            }else {
                ShowMsg(EFS+ExportOFF, true)
            }



    }


    //刷入Recovery
    fun FlashZIP(path: String) {
        FlashZIPThread(path).start()
    }
    val  URL="reboot recovery"
    internal inner class FlashZIPThread(var path: String): Thread() {
        override fun run() {
            try {
                ShowProgressBar()
                doCmdSync(MountSystemRW)
                doCmdSync(Mkdir)
                doCmdSync("cp  $path /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/${UrlCacheOTA}")
                doCmdSync("sleep 1s")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                object : Thread() {
                    override fun run() {
                        Log.i("log", "run")
                        Looper.prepare()
                        if (Phonebootloader(3) == "G97") {
                            RestartTwrpDialog("GoogleServices");
                        } else {
                            doCmdSync("reboot recovery")
                        }
                        loop()// 进入loop中的循环，查看消息队列
                    }
                }.start()
            }
        }
    }
    fun FlashBootAnimation(path: String,style:Int) {
        if(style==0){
            FlashBootAnimationThread(path).start()
        } else if(style==1){
            FlashBOOTZIPThread(path).start()
        }
    }

    internal inner class FlashBootAnimationThread(var path: String): Thread() {
        override fun run() {
            try {
                ShowProgressBar()
                doCmdSync(MountSystemRW)//挂载系统

                doCmdSync("cp -p -a -R /$path ${SystemABUrl()}media")
                doCmdSync("chmod -R 0644 ${SystemABUrl()}media/bootsamsung.qmg")//修改权限
                doCmdSync("chmod -R 0644 ${SystemABUrl()}media/bootsamsungloop.qmg")//修改权限
                doCmdSync("chmod -R 0644 ${SystemABUrl()}media/shutdown.qmg")//修改权限
                ShowMsg("［ $path ］"+"覆盖到系统路径下", true)
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
            }

        }

    }
    fun backupBootAnima() {
        backupBootAnimaThread().start()
    }
    val animOK= context.getString(R.string.boot_animation_backups);
    internal inner class backupBootAnimaThread(): Thread() {
        override fun run() {
            try {
                ShowProgressBar()
                doCmdSync(MountSystemRW)

                doCmdSync("mkdir -p /sdcard/LeoTweaks/backups/anim")
                doCmdSync("cp  ${SystemABUrl()}media/bootsamsung.qmg  /sdcard/LeoTweaks/backups/anim/bootsamsung.qmg")
                doCmdSync("cp  ${SystemABUrl()}media/bootsamsungloop.qmg /sdcard/LeoTweaks/backups/anim/bootsamsungloop.qmg")
                doCmdSync("cp  ${SystemABUrl()}media/shutdown.qmg /sdcard/LeoTweaks/backups/anim/shutdown.qmg")
                ShowMsg(animOK+"［ /sdcard/LeoTweaks/backups/anim ］", true)
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
            }
        }
    }

    internal inner class FlashBOOTZIPThread(var path: String): Thread() {
        override fun run() {
            try {
                ShowProgressBar()
                doCmdSync(MountSystemRW)
                doCmdSync(Mkdir)
                doCmdSync("cp  $path /cache/recovery/update.zip")
                doCmdSync(SDcommandUrl)
                doCmdSync("sleep 5")
                doCmdSync(URL)
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
            }
        }
    }




    fun SystemUrl(): String {
        val SystemABUrl: String
        if (Phonebootloader(3) == "G97") {
            SystemABUrl = RootSystemABUrl
        } else {
            SystemABUrl = SystemUrl
        }
        return SystemABUrl
    }

    fun SystemReboot():String {
        val SystemABUrl: String
        if (Phonebootloader(3) == "G97") {
            SystemABUrl = "reboot recovery"
        } else {
            SystemABUrl = "reboot"
        }
        return SystemABUrl
    }

    fun RestartTwrpDialog( Title: String) {
        DialogHelper.animDialog(AlertDialog.Builder(context).setTitle(FloatingFature("SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME") + getApksStringInt(R.string.twrp_info))
                .setMessage(Title + getApksStringInt(R.string.twrp_s10_info))
                .setPositiveButton(android.R.string.ok) { _, _ ->
                    doCmdSync(SystemReboot())
                }
                .setCancelable(false)
        )
    }

    fun EdXposedServicesInstall() {
        EdXposedServices().start()
    }

    internal inner class EdXposedServices(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.edx_1))
                doCmdSync( MountSystemRW)
                doCmdSync(Mkdir)
                doCmdSync("sleep 1s")
                doCmdSync("pm install ${unzipEdXposedPath}/EdXposed_Installer.apk")
                doCmdSync("sleep 1s")
                doCmdSync("cp  ${unzipEdXposedPath}/Riru_-_Core-v19.5.zip /cache/recovery/Riru_-_Core-v19.5.zip")
                doCmdSync("sleep 1s")
                doCmdSync("cp  ${unzipEdXposedPath}/Riru_-_EdXposed-v0.4.5.1_YAHFA.zip /cache/recovery/Riru_-_EdXposed-v0.4.5.1_YAHFA.zip")
                if (Phonebootloader(3) == "G97") {
                    doCmdSync("sleep 1s")
                    doCmdSync("cp  ${unzipEdXposedPath}/reboot.zip /cache/recovery/reboot.zip")
                }
                doCmdSync("sleep 2s")
                doCmdSync("cp  ${unzipEdXposedPath}/openrecoveryscript /cache/recovery/openrecoveryscript")
                doCmdSync("sleep 1s")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                object : Thread() {
                    override fun run() {
                        Log.i("log", "run")
                        Looper.prepare()
                        if (Phonebootloader(3) == "G97") {
                            RestartTwrpDialog(getApksStringInt(R.string.edx_3));
                        } else {
                            doCmdSync("reboot recovery")
                        }
                        loop()// 进入loop中的循环，查看消息队列
                    }
                }.start()
            }
        }
    }
    fun EdXposedServicesPatchInstall() {
        EdXposedServicesPatch() .start()
    }
    internal inner class EdXposedServicesPatch(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.edx_3))
                doCmdSync( MountSystemRW)
                doCmdSync(Mkdir)
                doCmdSync("cp  /sdcard/LeoTweaks/download/.UnZip/.edXposedzip/magisk-EdXposed-v0317.zip /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/${UrlCacheOTA}")
                doCmdSync("sleep 1s")

            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                object : Thread() {
                    override fun run() {
                        Log.i("log", "run")
                        Looper.prepare()
                        if (Phonebootloader(3) == "G97") {
                            RestartTwrpDialog(getApksStringInt(R.string.edx_3));
                        } else {
                            doCmdSync("reboot recovery")
                        }
                        loop()// 进入loop中的循环，查看消息队列
                    }
                }.start()
            }
        }
    }
    fun EdXposedUninstallerInstall() {
        EdXposedUninstaller() .start()

    }
    internal inner class EdXposedUninstaller(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.edx_5))
                doCmdSync(MountSystemRW)
                doCmdSync(Mkdir)
                doCmdSync("pm uninstall "+"org.meowcat.edxposed.manager")
                doCmdSync("sleep 1s")
                doCmdSync("cp  /sdcard/LeoTweaks/download/.UnZip/.edXposedzip/EdXposedUninstaller.zip /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/${UrlCacheOTA}")
                doCmdSync("sleep 1s")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                object : Thread() {
                    override fun run() {
                        Log.i("log", "run")
                        Looper.prepare()
                        if (Phonebootloader(3) == "G97") {
                            RestartTwrpDialog(getApksStringInt(R.string.edx_5));
                        } else {
                            doCmdSync("reboot recovery")
                        }
                        loop()// 进入loop中的循环，查看消息队列
                    }
                }.start()
            }
        }
    }
    fun FingerprintInstall() {
        FingerprintServices().start()
    }

    internal inner class FingerprintServices(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.fingerprint_mod))
                doCmdSync( MountSystemRW)
                doCmdSync("sleep 1s")
                doCmdSync("cp  ${unzipFingerprintPath}/Riru_-_Core-v19.5.zip /cache/recovery/Riru_-_Core-v19.5.zip")
                doCmdSync("sleep 1s")
                doCmdSync("cp  ${unzipFingerprintPath}/alipay.zip /cache/recovery/alipay.zip")
                doCmdSync("sleep 1s")
                doCmdSync("cp  ${unzipFingerprintPath}/qq.zip /cache/recovery/qq.zip")
                doCmdSync("sleep 1s")
                doCmdSync("cp  ${unzipFingerprintPath}/taobao.zip /cache/recovery/taobao.zip")
                doCmdSync("sleep 1s")
                doCmdSync("cp  ${unzipFingerprintPath}/wechat.zip /cache/recovery/wechat.zip")

                if (Phonebootloader(3) == "G97") {
                    doCmdSync("sleep 1s")
                    doCmdSync("cp  ${unzipFingerprintPath}/reboot.zip /cache/recovery/reboot.zip")
                }
                doCmdSync("sleep 2s")
                doCmdSync("cp  ${unzipFingerprintPath}/openrecoveryscript /cache/recovery/openrecoveryscript")
                doCmdSync("sleep 1s")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                object : Thread() {
                    override fun run() {
                        Log.i("log", "run")
                        Looper.prepare()
                        if (Phonebootloader(3) == "G97") {
                            RestartTwrpDialog(getApksStringInt(R.string.fingerprint_mod));
                        } else {
                            doCmdSync("reboot recovery")
                        }
                        loop()// 进入loop中的循环，查看消息队列
                    }
                }.start()
            }
        }
    }
    fun GoogleServicesInstall() {
        GoogleServices().start()
    }
    internal inner class GoogleServices(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.su_progress_sumarry))
                doCmdSync(MountSystemRW)
                doCmdSync(Mkdir)
                doCmdSync("cp  /sdcard/LeoTweaks/download/.google/Google.zip /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/${UrlCacheOTA}")
                doCmdSync("sleep 1s")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                object : Thread() {
                    override fun run() {
                        Log.i("log", "run")
                        Looper.prepare()
                        if (Phonebootloader(3) == "G97") {
                            RestartTwrpDialog("GoogleServices");
                        } else {
                            doCmdSync("reboot recovery")
                        }
                        loop()// 进入loop中的循环，查看消息队列
                    }
                }.start()

            }
        }
    }
    fun GoogleServicesOneui2Install() {
        GoogleServicesOneui2().start()
    }
    internal inner class GoogleServicesOneui2(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.su_progress_sumarry))
                doCmdSync(MountSystemRW)
                doCmdSync(Mkdir)
                doCmdSync("cp -p -a -R ${SystemUrl()}/etc/salt/google/app/* ${SystemUrl()}/app")
                doCmdSync("sleep 1s")
                doCmdSync("cp -p -a -R ${SystemUrl()}/etc/salt/google/priv-app/* ${SystemUrl()}/priv-app")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                doCmdSync("sleep 1s")
                setLeoNavKeypressAction(context,S10reboot());
            }
        }
    }
    fun MagiskPatch() {
        LeoMagiskPatch().start()
    }
    internal inner class LeoMagiskPatch(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.magisk_patch_install))
                doCmdSync(MountSystemRW)
                doCmdSync("cp -p -a -R ${unzipMagiskPath}/* /data")
                doCmdSync("chmod -R 0755 /data/adb/magisk")
                doCmdSync("chmod 0755 /data/adb/modules")
                doCmdSync("chmod 0755 /data/adb/post-fs-data.d")
                doCmdSync("chmod 0755 /data/adb/service.d")
                doCmdSync("chmod 0600 /data/adb/magisk.db")
                doCmdSync("sleep 1s")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                object : Thread() {
                    override fun run() {
                        super.run()
                        Looper.prepare()
                        sleep(800)//休眠0.8秒
                        setLeoNavKeypressAction(context,S10reboot());
                    }
                }.start()

            }
        }
    }

    fun InstalFotaZIP() {
        FlashFotaZIP().start()
    }
    internal inner class FlashFotaZIP(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.fota_load))
                doCmdSync( MountSystemRW)
                doCmdSync(Mkdir)
                doCmdSync("cp  ${unzipFotaPath} /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/${UrlCacheOTA}")
                doCmdSync("sleep 1s")
                doCmdSync("rm -rf ${unzipFotaPath}")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                object : Thread() {
                    override fun run() {
                        Log.i("log", "run")
                        Looper.prepare()
                        if (Phonebootloader(3) == "G97") {
                            RestartTwrpDialog("Leo Fota");
                        } else {
                            doCmdSync("reboot recovery")
                        }
                        loop()// 进入loop中的循环，查看消息队列
                    }
                }.start()
            }
        }
    }

    fun UnlockProLeo() {
        LeoUnlockPro().start()
    }

    internal inner class LeoUnlockPro(): Thread() {
        override fun run() {
            try {
                ShowUnlockProgressBar(getApksStringInt(R.string.unlockpro))
                doCmdSync("sleep 1s")
                doCmdSync("cp  /sdcard/LeoTweaks/download/.UnZip/.UnlockPro/9XUnlockPro.sh  /${UNLOCKDIR}/9XUnlockPro.sh")
                doCmdSync("cp  /sdcard/LeoTweaks/download/.UnZip/.UnlockPro/10XUnlockPro.sh  /${UNLOCKDIR}/10XUnlockPro.sh")
                doCmdSync("sleep 2s")
                doCmdSync("chmod -R 0755 /${UNLOCKDIR}/9XUnlockPro.sh")
                doCmdSync("chmod -R 0755 /${UNLOCKDIR}/10XUnlockPro.sh")
                doCmdSync(SystemUnlock())
                doCmdSync("sleep 2s")
               // doCmdSync("rm -rf /${UNLOCKDIR}/UnlockPro.sh")
             //   doCmdSync("rm -rf /sdcard/LeoTweaks/download/.UnZip/.UnlockPro/10XUnlockPro.sh")
               // doCmdSync("rm -rf /sdcard/LeoTweaks/download/.UnZip/.UnlockPro/9XUnlockPro.sh")
               // doCmdSync("rm -rf /sdcard/LeoTweaks/download/.UnZip/.UnlockPro")
               // doCmdSync("rm -rf /${UNLOCKDIR}/10XUnlockPro.sh")
               // doCmdSync("rm -rf /${UNLOCKDIR}/9XUnlockPro.sh")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
                HideProgressBar()
                doCmdSync("sleep 1s")
                setLeoNavKeypressAction(context,S10reboot());
            }
        }
    }
    fun SystemScripts(Url: String): String {
        return UNLOCKDIR+"/"+Url
    }
    fun SystemUnlock(): String {
        val SystemABUrl: String
        if (Phonebootloader(3) == "G97") {
            SystemABUrl = "10XUnlockPro.sh"
        } else {
            SystemABUrl = "9XUnlockPro.sh"
        }
        return SystemScripts(SystemABUrl)
    }
}
