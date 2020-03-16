package com.topjohnwu.magisk.view.dialogs

import android.app.Activity
import android.app.AlertDialog
import android.content.Context
import com.topjohnwu.magisk.Info
import com.topjohnwu.magisk.R
import com.topjohnwu.magisk.model.download.DownloadService
import com.topjohnwu.magisk.model.entity.internal.Configuration
import com.topjohnwu.magisk.model.entity.internal.DownloadSubject
import com.topjohnwu.magisk.view.MarkDownWindow

class ManagerInstallDialog(a: Activity) : CustomAlertDialog(a) {

    init {
        val subject = DownloadSubject.Manager(Configuration.APK.Upgrade)
        setTitle(a.getString(R.string.repo_install_title, a.getString(R.string.app_name)))
        setMessage(a.getString(R.string.repo_install_msg, subject.title))
        setCancelable(true)
        setPositiveButton(R.string.install) { _, _ ->
            warningS10(a);

        }
        if (Info.remote.app.note.isNotEmpty()) {
            setNeutralButton(R.string.app_changelog) { _, _ ->
                MarkDownWindow.show(a, null, Info.remote.app.note) }
        }
    }

    fun getLeoBuild(srt: String): String {
        return getProperty(srt)
    }
    private val UNKNOWN = "unknown"
    fun getProperty(str: String): String {
        val str3 =UNKNOWN
        try {
            val cls = Class.forName("android.os.SystemProperties")
            return cls.getMethod("get", *arrayOf<Class<*>>(String::class.java, String::class.java)).invoke(cls, *arrayOf<Any>(str,UNKNOWN)) as String
        } catch (e: Exception) {
            e.printStackTrace()
            return str3
        } catch (th: Throwable) {
            return str3
        }

    }
    fun warningS10(cox: Context) {
        val builder = AlertDialog.Builder(cox)
        builder.setTitle(R.string.magisk_leo_warning)
        builder.setMessage(cox.getString(R.string.magisk_leo_warning_les) +cox.getString(R.string.magisk_leo)+"\n"+cox.getString(R.string.magisk_leo_warning_leo))

        builder.setPositiveButton("OK") { dialogInterface, i -> }
        builder.show()
    }

}
