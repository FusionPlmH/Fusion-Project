package com.omarea.permissions

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.provider.Settings
import android.support.v4.content.PermissionChecker
import android.widget.Toast
import com.omarea.common.shell.KeepShellPublic


/**
 * Created by SYSTEM on 2018/07/21.
 */

class WriteSettings {
    private fun checkPermission(context: Context, permission: String): Boolean = PermissionChecker.checkSelfPermission(context, permission) == PermissionChecker.PERMISSION_GRANTED
    fun getPermission(context: Context): Boolean {
        try {
            if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                return Settings.System.canWrite(context)
            } else {
                // TODO("VERSION.SDK_INT < M")
                return true
            }
        } catch (ex: Exception) {
            return false;
        }
    }

    fun setPermission(context: Context) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
            // val selfPackageUri = Uri.parse("package:" + context.packageName)
            // val intent = Intent(Settings.ACTION_MANAGE_WRITE_SETTINGS, selfPackageUri)
            // intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK)
            // context.startActivity(intent)
            try {
                Toast.makeText(context, "请为Scene授予“修改系统设置”权限！", Toast.LENGTH_SHORT).show()
                val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
                val uri = Uri.fromParts("package", context.getPackageName(), null)
                intent.setData(uri)
                context.startActivity(intent)
            } catch (ex: Exception) {

            }
        } else {
            KeepShellPublic.doCmdSync("pm grant ${context.packageName} android.permission.WRITE_SETTINGS")
        }
    }
}
