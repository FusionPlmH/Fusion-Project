package com.leo.script

import android.app.AlertDialog
import android.content.Context


class DialogHelper {
    companion object {
        fun animDialog(dialog: AlertDialog?): AlertDialog? {
            if (dialog != null && !dialog.isShowing) {

                dialog.show()
            }
            return dialog
        }

        fun animDialog(builder: AlertDialog.Builder): AlertDialog? {
            val dialog = builder.create()
            animDialog(dialog)
            return dialog
        }

        fun helpInfo(context: Context, title:String, message: String): AlertDialog? {
            val dialog = AlertDialog.Builder(context)
                    .setTitle(title)
                    .setMessage(message)
                    .setPositiveButton(R.string.btn_confirm) { _, _ ->
                    }
            return animDialog(dialog)
        }

        fun helpInfo(context: Context, title:Int, message: Int): AlertDialog? {
            return animDialog(
                    AlertDialog.Builder(context)
                            .setTitle(title)
                            .setMessage(message)
                            .setPositiveButton(R.string.btn_confirm) { _, _ ->
                            })
        }
    }
}
