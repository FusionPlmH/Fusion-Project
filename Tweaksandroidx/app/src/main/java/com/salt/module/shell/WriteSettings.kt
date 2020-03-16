package com.salt.module.shell;

import android.content.Context
import android.content.Intent
import android.net.Uri
import android.os.Build
import android.provider.Settings

import android.widget.Toast
import androidx.core.content.PermissionChecker
import com.salt.script.KeepShellPublic



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
            try {
                Toast.makeText(context, "需要有系统设置权限方可正常运行请为【】授予系统设置权限", Toast.LENGTH_SHORT).show()
                val intent = Intent(Settings.ACTION_APPLICATION_DETAILS_SETTINGS)
                val uri = Uri.fromParts("package", context.packageName, null)
                intent.data = uri
                context.startActivity(intent)
            } catch (ex: Exception) {

            }
        } else {

            KeepShellPublic.doCmdSync("pm grant ${context.packageName} android.permission.WRITE_SETTINGS")
            KeepShellPublic.doCmdSync("pm grant ${context.packageName} android.permission.WRITE_SECURE_SETTINGS")
        }


    }
}
