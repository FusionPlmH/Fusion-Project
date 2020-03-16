package com.tweaks.leo.utils.ktshell

import android.app.AlertDialog
import android.content.Context
import android.os.Handler
import android.widget.Toast
import com.tweaks.leo.kt.ProgressBarDialog
import com.tweaks.leo.utils.AndroidUtils
import com.tweaks.leo.utils.ktshell.Consts.MountSystemRW

import java.io.IOException

/**
 * Created by Hello on 2017/11/01.
 */

class BackupRestoreUnit(var context: Context) {
    val dialog: ProgressBarDialog
    internal var myHandler: Handler = Handler()

    init {
        dialog = ProgressBarDialog(context)
    }

    //显示进度条
    fun ShowProgressBar() {
        myHandler.post {
            dialog.showDialog("正在执行操作...")
        }
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
        ShowDialogMsg("请检查ROOT权限", "请检查是否已ROOT手机，并允许本应用访问ROOT权限！")
    }

    internal inner class FlashBootThread(var path: String) : Thread() {

        override fun run() {
            ShowMsg("即将刷入\n$path\n请勿操作手机！", true)
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
    fun FlashBootUrl(path: String) {

        if (AndroidUtils.getPlatformVersion().equals("exynos5")) {
            if (KeepShellSync.doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/boot") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
        } else {
            if (KeepShellSync.doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/boot") != "error") {
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
            ShowMsg("即将刷入\n$path\n请勿操作手机！", true)
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

        if (AndroidUtils.getPlatformVersion().equals("exynos5")) {
            if (KeepShellSync.doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/recovery") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
        } else {
            if (KeepShellSync.doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/recovery") != "error") {
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
                ShowMsg("Boot导出失败！", true)
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
            ShowMsg("即将刷入\n$path\n请勿操作手机！", true)
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

        if (AndroidUtils.getPlatformVersion().equals("exynos5")) {
            if (KeepShellSync.doCmdSync("dd if=$path of=/dev/block/platform/11120000.ufs/by-name/efs") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }
        } else {
            if (KeepShellSync.doCmdSync("dd if=$path of=/dev/block/bootdevice/by-name/efs") != "error") {
                ShowMsg(IMGWriteOK, true)
            } else {
                ShowMsg(IMGWriteOFF, true)
            }

        }

    }
    val IMGWriteOK= "操作成功";
    val IMGWriteOFF= "镜像刷入失败";
    val EFS= "EFS";
    val BOOT= "Boot";
    val RECOVERY= "Recovery";
    val ExportOK= "导出成功,已保存为";
    val ExportOFF= "导出失败";
    fun SaveRecoveryUrl() {

        if (AndroidUtils.getPlatformVersion().equals("exynos5")) {
            if (KeepShellSync.doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/RECOVERY of=${Consts.SDCardDirImg}/recovery.img\n") != "error") {
                ShowMsg(RECOVERY+ExportOK+"${Consts.SDCardDirImg}/recovery.img ！", true)
            } else {
                ShowMsg(RECOVERY+ExportOFF, true)
            }
        } else {
            if (KeepShellSync.doCmdSync("dd if=/dev/block/bootdevice/by-name/recovery of=${Consts.SDCardDirImg}/recovery.img\n") != "error") {
                ShowMsg(RECOVERY+ExportOK+"${Consts.SDCardDirImg}/recovery.img ！", true)
            } else {
                ShowMsg(RECOVERY+ExportOFF, true)
            }

        }

    }

    fun SaveBootUrl() {

        if (AndroidUtils.getPlatformVersion().equals("exynos5")) {
            if (KeepShellSync.doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/BOOT of=${Consts.SDCardDirImg}/boot.img\n") != "error") {
                ShowMsg(BOOT+ExportOK+"${Consts.SDCardDirImg}/boot.img ！", true)
            } else {
                ShowMsg(BOOT+ExportOFF, true)
            }
        } else {
            if (KeepShellSync.doCmdSync("dd if=/dev/block/bootdevice/by-name/boot of=${Consts.SDCardDirImg}/boot.img;\n") != "error") {
                ShowMsg(BOOT+ExportOK+"${Consts.SDCardDirImg}/boot.img ！", true)
            } else {
                ShowMsg(BOOT+ExportOFF, true)
            }

        }

    }

    fun SaveEFSUrl() {

        if (AndroidUtils.getPlatformVersion().equals("exynos5")) {
            if (KeepShellSync.doCmdSync("dd if=/dev/block/platform/11120000.ufs/by-name/EFS of=${Consts.SDCardDirImg}/efs.img\n") != "error") {
                ShowMsg(EFS+ExportOK+"${Consts.SDCardDirImg}/efs.img ！", true)
            } else {
                ShowMsg(EFS+ExportOFF, true)
            }
        } else {
            if (KeepShellSync.doCmdSync("dd if=/dev/block/bootdevice/by-name/efs of=${Consts.SDCardDirImg}/efs.img\n") != "error") {
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
                KeepShellSync.doCmdSync(MountSystemRW)
                KeepShellSync.doCmdSync( "mkdir /cache/recovery")
                KeepShellSync.doCmdSync("cp  $path /cache/recovery/leoupdate.zip")
                KeepShellSync.doCmdSync( "cp  /system/leo/update/command /cache/recovery/command")
                KeepShellSync.doCmdSync("sleep 5")
                KeepShellSync.doCmdSync(URL)
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
    //刷入Recovery
    fun FlashOTA() {
        FlashOTAThread().start()
    }

    internal inner class FlashOTAThread(): Thread() {
        override fun run() {
            try {
                ShowProgressBar()
                KeepShellSync.doCmdSync(MountSystemRW)
                KeepShellSync.doCmdSync( "mkdir /cache/recovery")
                KeepShellSync.doCmdSync("cp  /sdcard/LeoTweaks/ota/ota.zip /cache/recovery/leoupdate.zip")
                KeepShellSync.doCmdSync( "cp  /system/leo/update/command /cache/recovery/command")
                KeepShellSync.doCmdSync("sleep 5")
                KeepShellSync.doCmdSync(URL)
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
}
