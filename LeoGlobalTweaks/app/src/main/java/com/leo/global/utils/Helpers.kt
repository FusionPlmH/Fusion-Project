package com.leo.global.utils


import android.app.AlertDialog
import android.app.ProgressDialog
import android.content.Context
import android.content.DialogInterface
import android.content.pm.PackageManager
import android.provider.Settings
import android.widget.Toast
import com.leo.global.tweaks.LeoAmberApplication.getContext

import com.leo.global.utils.kotlin.KeepShellSync
import java.util.*


class Helpers {



    companion object {


        fun showKillPackageDialog(packageName: String, context: Context) {
            try {
                val applicationInfo = getContext().getPackageManager().getApplicationInfo(packageName, 0)
                val appLabel = applicationInfo.loadLabel(getContext().getPackageManager()).toString()
                val appIcon = applicationInfo.loadIcon(getContext().getPackageManager())
                AlertDialog.Builder(context)
                        //.setTitle(R.string.reboot_required_dialog_title)
                      //  .setMessage(String.format(Locale.getDefault(), getContext().getString(R.string.app_reboot_required_dialog_message), appLabel))
                        .setIcon(appIcon)
                        .setNegativeButton(android.R.string.cancel, null)
                        .setPositiveButton(android.R.string.ok, DialogInterface.OnClickListener { dialog, which -> killPackage(packageName) })
                        .create().show()
            } catch (e: PackageManager.NameNotFoundException) {
                //Toast.makeText(getContext(), R.string.no_activity, Toast.LENGTH_SHORT).show()
            }

        }

        fun killPackage(packageNameToKill: String) {
            //      RootUtils.runCommand("pkill -f " + packageNameToKill);
           KillPackage("pkill -f $packageNameToKill")
        }
    fun KillPackage(packageNameToKill: String) {
        //RootUtils.runCommand("pkill -f $packageNameToKill")
        KeepShellSync.doCmdSync(packageNameToKill)
    }

    }
}
