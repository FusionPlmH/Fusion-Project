package com.leo.salt.tools.constants

import android.app.AlertDialog
import android.content.Context
import android.os.Environment
import android.os.Handler
import android.util.Log
import android.widget.Toast
import com.leo.salt.tools.constants.KeepShellPublic.doCmdSync
import com.leo.salt.tweaks.LeoAmberApplication.getContext
import com.leo.salt.tweaks.LeoAmberApplication.mContext
import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.amber.PermissionUnlock.UnlockName

import com.leo.salt.tweaks.resource.Resource
import com.leo.salt.tweaks.resource.Resource.ActionToastSring
import com.leo.salt.tweaks.resource.Resource.getLeoBuild
import com.leo.salt.tweaks.view.widget.ProgressBarDialog
import com.leo.salt.utils.Consts
import com.leo.salt.utils.Consts.CP
import com.leo.salt.utils.Consts.MountSystemRW
import com.leo.salt.utils.Consts.SDcommandUrl



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
    fun setTextView(STR: String): String {

        return Resource.getStringIdentifier(context, STR)
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
        if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S8_N8")) { //猎户S8
            if (doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/BOOT") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
        }else  if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S8_N8")) { //高通S8
            if (doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/boot") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
        }else  if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S9")) { //高通S9
            if (doCmdSync("dd if=$path of=/dev/block/platform/soc/1d84000.ufshc/by-name/boot") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        }else  if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S9")) { //猎户S9
            if (doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/BOOT") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        }else{//鬼子S8
            if (doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/boot") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
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

        if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S8_N8")) {
            if (doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/RECOVERY") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
        } else  if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S8_N8")){
            if (doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/recovery") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        }else  if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S9")){
            if (doCmdSync("dd if=$path of=/dev/block/platform/soc/1d84000.ufshc/by-name/recovery") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        }else  if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S9")){
            if (doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/RECOVERY") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        }else{
            if (doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/recovery") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
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

        if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S8_N8")) {
            if (doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/EFS") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
        } else if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S8_N8")){
            if (doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/efs") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        } else if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S9")){
            if (doCmdSync("dd if=$path of=/dev/block/platform/soc/1d84000.ufshc/by-name/efs") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        }else if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S9")){
            if (doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/EFS") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        }else {
            if (doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/efs") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
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

        if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S8_N8")) {
            if (doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/RECOVERY of=${Consts.SDCardDirImg}/recovery.img\n") != "error") {
                ShowMsg(RECOVERY+ExportOK+"${Consts.SDCardDirImg}/recovery.img ！", true)
            } else {
                ShowMsg(RECOVERY+ExportOFF, true)
            }
        } else if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S8_N8")) {
            if (doCmdSync("dd if=/dev/block/bootdevice/by-name/recovery of=${Consts.SDCardDirImg}/recovery.img\n") != "error") {
                ShowMsg(RECOVERY+ExportOK+"${Consts.SDCardDirImg}/recovery.img ！", true)
            } else {
                ShowMsg(RECOVERY+ExportOFF, true)
            }

        }else if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S9")) {
            if (doCmdSync("dd if=/dev/block/platform/soc/1d84000.ufshc/by-name/recovery of=${Consts.SDCardDirImg}/recovery.img\n") != "error") {
                ShowMsg(RECOVERY+ExportOK+"${Consts.SDCardDirImg}/recovery.img ！", true)
            } else {
                ShowMsg(RECOVERY+ExportOFF, true)
            }

        }else if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S9")) {
            if (doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/RECOVERY of=${Consts.SDCardDirImg}/recovery.img\n") != "error") {
                ShowMsg(RECOVERY+ExportOK+"${Consts.SDCardDirImg}/recovery.img ！", true)
            } else {
                ShowMsg(RECOVERY+ExportOFF, true)
            }

        }else {
            if (doCmdSync("dd if=/dev/block/bootdevice/by-name/recovery of=${Consts.SDCardDirImg}/recovery.img\n") != "error") {
                ShowMsg(RECOVERY+ExportOK+"${Consts.SDCardDirImg}/recovery.img ！", true)
            } else {
                ShowMsg(RECOVERY+ExportOFF, true)
            }

        }

    }

    fun SaveBootUrl() {

        if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S8_N8")) {
            if (doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/BOOT of=${Consts.SDCardDirImg}/boot.img\n") != "error") {
                ShowMsg(BOOT+ExportOK+"${Consts.SDCardDirImg}/boot.img ！", true)
            } else {
                ShowMsg(BOOT+ExportOFF, true)
            }
        } else if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S8_N8")) {
            if (doCmdSync("dd if=/dev/block/bootdevice/by-name/boot of=${Consts.SDCardDirImg}/boot.img;\n") != "error") {
                ShowMsg(BOOT+ExportOK+"${Consts.SDCardDirImg}/boot.img ！", true)
            } else {
                ShowMsg(BOOT+ExportOFF, true)
            }

        }else if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S9")) {
            if (doCmdSync("dd if=/dev/block/platform/soc/1d84000.ufshc/by-name/boot of=${Consts.SDCardDirImg}/boot.img;\n") != "error") {
                ShowMsg(BOOT+ExportOK+"${Consts.SDCardDirImg}/boot.img ！", true)
            } else {
                ShowMsg(BOOT+ExportOFF, true)
            }

        }else if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S9")) {
            if (doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/BOOT of=${Consts.SDCardDirImg}/boot.img;\n") != "error") {
                ShowMsg(BOOT+ExportOK+"${Consts.SDCardDirImg}/boot.img ！", true)
            } else {
                ShowMsg(BOOT+ExportOFF, true)
            }

        }else{
            if (doCmdSync("dd if=/dev/block/bootdevice/by-name/boot of=${Consts.SDCardDirImg}/boot.img;\n") != "error") {
                ShowMsg(BOOT+ExportOK+"${Consts.SDCardDirImg}/boot.img ！", true)
            } else {
                ShowMsg(BOOT+ExportOFF, true)
            }
        }

    }

    fun SaveEFSUrl() {

        if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S8_N8")) {
            if (doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/EFS of=${Consts.SDCardDirImg}/EFS.img\n") != "error") {
                ShowMsg(EFS+ExportOK+"${Consts.SDCardDirImg}/efs.img ！", true)
            } else {
                ShowMsg(EFS+ExportOFF, true)
            }
        } else  if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S8_N8")) {
            if (doCmdSync("dd if=/dev/block/bootdevice/by-name/efs of=${Consts.SDCardDirImg}/efs.img\n") != "error") {
                ShowMsg(EFS+ExportOK+"${Consts.SDCardDirImg}/efs.img ！", true)
            } else {
                ShowMsg(EFS+ExportOFF, true)
            }

        } else  if (getLeoBuild("ro.leo.ota.code").equals("Qualcomm_S9")) {
            if (doCmdSync("dd if=/dev/block/platform/soc/1d84000.ufshc/by-name/efs of=${Consts.SDCardDirImg}/efs.img\n") != "error") {
                ShowMsg(EFS+ExportOK+"${Consts.SDCardDirImg}/efs.img ！", true)
            } else {
                ShowMsg(EFS+ExportOFF, true)
            }

        } else  if (getLeoBuild("ro.leo.ota.code").equals("Exynos_S9")) {
            if (doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/EFS of=${Consts.SDCardDirImg}/EFS.img\n") != "error") {
                ShowMsg(EFS+ExportOK+"${Consts.SDCardDirImg}/efs.img ！", true)
            } else {
                ShowMsg(EFS+ExportOFF, true)
            }

        } else   {
            if (doCmdSync("dd if=/dev/block/bootdevice/by-name/efs of=${Consts.SDCardDirImg}/efs.img\n") != "error") {
                ShowMsg(EFS+ExportOK+"${Consts.SDCardDirImg}/efs.img ！", true)
            } else {
                ShowMsg(EFS+ExportOFF, true)
            }

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
                doCmdSync("cp  $path /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command")
                doCmdSync("sleep 1s")
                doCmdSync("reboot recovery")
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

                doCmdSync("cp -p -a -R /$path /system/media")
                doCmdSync("chmod -R 0644 /system/media/bootsamsung.qmg")//修改权限
                doCmdSync("chmod -R 0644 /system/media/bootsamsungloop.qmg")//修改权限
                doCmdSync("chmod -R 0644 /system/media/shutdown.qmg")//修改权限
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
                doCmdSync("cp  /system/media/bootsamsung.qmg  /sdcard/LeoTweaks/backups/anim/bootsamsung.qmg")
                doCmdSync("cp  /system/media/bootsamsungloop.qmg /sdcard/LeoTweaks/backups/anim/bootsamsungloop.qmg")
                doCmdSync("cp  /system/media/shutdown.qmg /sdcard/LeoTweaks/backups/anim/shutdown.qmg")
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
    fun Scripts(path: String) {
        ScriptsThread(path).start()
    }
    internal inner class ScriptsThread(var path: String): Thread() {
        override fun run() {
            try {
                ShowProgressBar()
                doCmdSync(path)
                ShowMsg(path, true)
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

    fun InstalFlashZIP() {
        FlashZIP().start()
    }
    internal inner class FlashZIP(): Thread() {
        override fun run() {
            try {
                doCmdSync( MountSystemRW)
                doCmdSync("cp  /sdcard/LeoTweaks/update/ota.zip /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command")
                doCmdSync("sleep 1s")
                doCmdSync("rm -rf /sdcard/LeoTweaks/update/ota.zip")
                doCmdSync("reboot recovery")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
            }
        }
    }

    fun UnlockPermissions() {
        Permissions().start()
    }
    internal inner class Permissions(): Thread() {
        override fun run() {
            try {
                doCmdSync( MountSystemRW)
                doCmdSync("cp  /sdcard/LeoTweaks/update/Unlock.zip /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command")
                doCmdSync("sleep 1s")
                doCmdSync("rm -rf /sdcard/LeoTweaks/update/Unlock.zip")
                doCmdSync("reboot recovery")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
            }
        }
    }

    fun GoogleServicesInstall() {
        GoogleServices().start()
    }
    internal inner class GoogleServices(): Thread() {
        override fun run() {
            try {
                doCmdSync( MountSystemRW)
                doCmdSync("cp  /sdcard/LeoTweaks/update/Google.zip /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command")
                doCmdSync("sleep 1s")
                doCmdSync("rm -rf /sdcard/LeoTweaks/update/Google.zip")
                doCmdSync("reboot recovery")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
            }
        }
    }


    fun EdXposedServicesInstall() {
        EdXposedServices().start()
    }

    internal inner class EdXposedServices(): Thread() {
        override fun run() {
            try {
                doCmdSync( MountSystemRW)
                doCmdSync("sleep 1s")
                doCmdSync("pm install /sdcard/LeoTweaks/update/.EdXposed/EdXposed_Installer.apk")
                doCmdSync("sleep 1s")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.EdXposed/magisk-riru-core.zip /cache/recovery/magisk-riru-core.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.EdXposed/magisk-EdXposed.zip /cache/recovery/magisk-EdXposed.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.EdXposed/openrecoveryscript /cache/recovery/openrecoveryscript")
                doCmdSync("sleep 1s")
                doCmdSync("reboot recovery")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
            }
        }
    }
    fun EdXposedServicesPatchInstall() {
        EdXposedServicesPatch() .start()
    }
    internal inner class EdXposedServicesPatch(): Thread() {
        override fun run() {
            try {
                doCmdSync( MountSystemRW)
                doCmdSync("cp  /sdcard/LeoTweaks/update/.EdXposed/magisk-EdXposed-v0317.zip /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command")
                doCmdSync("sleep 1s")
                doCmdSync("reboot recovery")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
            }
        }
    }
    fun EdXposedUninstallerInstall() {
        EdXposedUninstaller() .start()

    }
    internal inner class EdXposedUninstaller(): Thread() {
        override fun run() {
            try {
                doCmdSync(MountSystemRW)
                doCmdSync("pm uninstall "+"org.meowcat.edxposed.manager")
                doCmdSync("sleep 1s")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.EdXposed/EdXposedUninstaller.zip /cache/recovery/update.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/ota/command /cache/recovery/command")
                doCmdSync("sleep 1s")
                doCmdSync("reboot recovery")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
            }
        }
    }



    fun FingerprintInstall() {
        FingerprintServices().start()
    }

    internal inner class FingerprintServices(): Thread() {
        override fun run() {
            try {
                doCmdSync( MountSystemRW)
                doCmdSync("cp  /sdcard/LeoTweaks/update/.Fingerprint/magisk-riru-core.zip /cache/recovery/magisk-riru-core.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.Fingerprint/alipay.zip /cache/recovery/alipay.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.Fingerprint/qq.zip /cache/recovery/qq.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.Fingerprint/taobao.zip /cache/recovery/taobao.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.Fingerprint/wechat.zip /cache/recovery/wechat.zip")
                doCmdSync("cp  /sdcard/LeoTweaks/update/.Fingerprint/openrecoveryscript /cache/recovery/openrecoveryscript")
                doCmdSync("sleep 1s")
                doCmdSync("reboot recovery")
            } catch (e: IOException) {
                e.printStackTrace()
                NoRoot()
            } catch (e: InterruptedException) {
                e.printStackTrace()
            } finally {
            }
        }
    }
}
