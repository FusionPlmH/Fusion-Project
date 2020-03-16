package com.topjohnwu.magisk.view.dialogs

import android.app.Activity
import android.content.Intent
import android.net.Uri
import android.widget.Toast
import android.app.AlertDialog
import com.topjohnwu.magisk.Const
import com.topjohnwu.magisk.R
import com.topjohnwu.magisk.base.BaseActivity
import com.topjohnwu.magisk.model.download.DownloadService
import com.topjohnwu.magisk.model.entity.internal.Configuration
import com.topjohnwu.magisk.model.entity.internal.DownloadSubject
import com.topjohnwu.magisk.utils.Utils

internal class InstallMethodDialog(activity: BaseActivity<*, *>, options: List<String>) :
    AlertDialog.Builder(activity) {

    init {
        setTitle(R.string.select_method)
        setItems(options.toTypedArray()) { _, idx ->
            when (idx) {
                0 -> downloadOnly(activity)
                1 -> patchBoot(activity)
                2 -> flash(activity)
                3 -> installInactiveSlot(activity)
            }
        }
    }

    private fun flash(activity: BaseActivity<*, *>) = DownloadService(activity) {
        subject = DownloadSubject.Magisk(Configuration.Flash.Primary)
    }

    private fun patchBoot(activity: BaseActivity<*, *>) = activity.withExternalRW {
        onSuccess {
            Utils.toast(R.string.patch_file_msg, Toast.LENGTH_LONG)
            val intent = Intent(Intent.ACTION_GET_CONTENT)
                .setType("*/*")
                .addCategory(Intent.CATEGORY_OPENABLE)
            activity.startActivityForResult(intent, Const.ID.SELECT_BOOT) { resultCode, data ->
                if (resultCode == Activity.RESULT_OK && data != null) {
                    DownloadService(activity) {
                        val safeData = data.data ?: Uri.EMPTY
                        subject = DownloadSubject.Magisk(Configuration.Patch(safeData))
                    }
                }
            }
        }
    }

    private fun downloadOnly(activity: BaseActivity<*, *>) = activity.withExternalRW {
        onSuccess {
            DownloadService(activity) {
                subject = DownloadSubject.Magisk(Configuration.Download)
            }
        }
    }

    private fun installInactiveSlot(activity: BaseActivity<*, *>) {
        CustomAlertDialog(activity)
            .setTitle(R.string.warning)
            .setMessage(R.string.install_inactive_slot_msg)
            .setCancelable(true)
            .setPositiveButton(android.R.string.yes) { _, _ ->
                DownloadService(activity) {
                    subject = DownloadSubject.Magisk(Configuration.Flash.Secondary)
                }
            }
            .setNegativeButton(android.R.string.no, null)
            .show()
    }
}
