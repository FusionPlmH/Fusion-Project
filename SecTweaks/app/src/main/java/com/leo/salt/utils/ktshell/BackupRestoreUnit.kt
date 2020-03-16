package com.leo.salt.utils.ktshell

import android.app.AlertDialog
import android.content.Context
import android.os.Handler
import android.widget.Toast
import com.leo.salt.R
import com.leo.salt.kt.ProgressBarDialog
import com.leo.salt.utils.AndroidUtils
import com.leo.salt.utils.ktshell.Consts.MountSystemRW

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
            dialog.showDialog(context.getResources().getString(R.string.execute_wait))
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
        ShowDialogMsg(context.getResources().getString(R.string.please_check_root), context.getResources().getString(R.string.please_check_root_summary))
    }

    internal inner class FlashBootThread(var path: String) : Thread() {

        override fun run() {
            ShowMsg(context.getResources().getString(R.string.bo_flash)+"\n$path\n"+context.getResources().getString(R.string.bo_flash_summary), true)
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
            ShowMsg(context.getResources().getString(R.string.bo_flash)+"\n$path\n"+context.getResources().getString(R.string.bo_flash_summary), true)
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
            ShowMsg(context.getResources().getString(R.string.bo_flash)+"\n$path\n"+context.getResources().getString(R.string.bo_flash_summary), true)
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

    val IMGWriteOK= context.getResources().getString(R.string.operation_ok);
    val IMGWriteOFF= context.getResources().getString(R.string.img_flash_failure);
    val EFS= "EFS";
    val BOOT= "Boot";
    val RECOVERY= "Recovery";
    val ExportOK= context.getResources().getString(R.string.export_ok);
    val ExportOFF= context.getResources().getString(R.string.export_failure);
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
    fun FlashBootAnimation(path: String) {
        FlashBootAnimationThread(path).start()
    }

    internal inner class FlashBootAnimationThread(var path: String): Thread() {
        override fun run() {
            try {
                ShowProgressBar()
                KeepShellSync.doCmdSync(MountSystemRW)//挂载系统
                KeepShellSync.doCmdSync( "cp /system/media/logo/logo.img /sdcard/leo/logobackup")//备份
                KeepShellSync.doCmdSync("cp  $path /system/media")//通过文件选择器复制
                KeepShellSync.doCmdSync( "chmod -R 0644 /system/media/logo.img")//修改权限
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
