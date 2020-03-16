package com.leo.salt.tools

import android.annotation.SuppressLint
import android.content.Context
import android.graphics.Point
import android.os.Build
import android.app.AlertDialog
import android.util.DisplayMetrics
import android.view.Display
import android.view.LayoutInflater
import android.widget.*

import com.leo.salt.tweaks.R
import com.leo.salt.tweaks.resource.Resource
import com.leo.salt.tweaks.view.widget.DialogView.ToastALL

import com.leo.salt.utils.Consts
import com.leo.salt.utils.PrefUtils.GLOBAL_SPF
import com.leo.script.KeepShellPublic


/**
 * Created by Hello on 2017/12/03.
 */

class DialogDPI(var context: Context) {
    private val BACKUP_SCREEN_DPI:String = "screen_dpi"
    private val BACKUP_SCREEN_RATIO:String = "screen_ratio"
    private val BACKUP_SCREEN_WIDTH:String = "screen_width"
    private val DEFAULT_RATIO:Float = 16 / 9f
    private val DEFAULT_DPI:Int = 320
    private val DEFAULT_WIDTH:Int = 720

    @SuppressLint("ApplySharedPref")
    private fun backupDisplay(point: Point, dm: DisplayMetrics, context: Context) {
        val spf = context.getSharedPreferences(GLOBAL_SPF, Context.MODE_PRIVATE);
        if (!spf.contains(BACKUP_SCREEN_RATIO)) {
            spf.edit().putFloat(BACKUP_SCREEN_RATIO, point.y /  point.x.toFloat()).commit()
        }
        if (!spf.contains(BACKUP_SCREEN_DPI) || !spf.contains(BACKUP_SCREEN_WIDTH)) {
            spf.edit().putInt(BACKUP_SCREEN_DPI, dm.densityDpi).commit()
            spf.edit().putInt(BACKUP_SCREEN_WIDTH, point.x).commit()
        }
    }

    private fun getHeightScaleValue(width: Int): Int {
        val spf = context.getSharedPreferences(GLOBAL_SPF, Context.MODE_PRIVATE);
        return (width * spf.getFloat(BACKUP_SCREEN_RATIO, DEFAULT_RATIO)).toInt()
    }

    private fun getDpiScaleValue(width: Int): Int {
        val spf = context.getSharedPreferences(GLOBAL_SPF, Context.MODE_PRIVATE);
        return (spf.getInt(BACKUP_SCREEN_DPI, DEFAULT_DPI) * width / spf.getInt(BACKUP_SCREEN_WIDTH, DEFAULT_WIDTH))
    }

    fun modifyDPI(display: Display, context: Context) {
        val layoutInflater = LayoutInflater.from(context)
        val dialog = layoutInflater.inflate(R.layout.dialog_dpi, null)
        val dpiInput = dialog.findViewById(R.id.dialog_addin_dpi_dpiinput) as EditText
        val widthInput = dialog.findViewById(R.id.dialog_addin_dpi_width) as EditText
        val heightInput = dialog.findViewById(R.id.dialog_addin_dpi_height) as EditText
        val quickChange = dialog.findViewById(R.id.dialog_addin_dpi_quickchange) as CheckBox

        val dm = DisplayMetrics()
        display.getMetrics(dm)
        val point = Point()
        display.getRealSize(point)

        backupDisplay(point, dm, context);

        dpiInput.setText(dm.densityDpi.toString())
        widthInput.setText(point.x.toString())
        heightInput.setText(point.y.toString())
        if (Build.VERSION.SDK_INT >= 24) {
            quickChange.isChecked = true
        }

        val rate = dm.heightPixels / 1.0 / dm.widthPixels
        dialog.findViewById<TextView>(R.id.dialog_dpi_720).setOnClickListener({
            val width = 720
            widthInput.setText(width.toString())
            val height = getHeightScaleValue(width)
            heightInput.setText(height.toString())
            dpiInput.setText((dm.densityDpi.toFloat() * width / point.x).toInt().toString())
            ToastALL("HD+(1480×720)");
        })
        dialog.findViewById<TextView>(R.id.dialog_dpi_1080).setOnClickListener({
            val width = 1080
            widthInput.setText(width.toString())
            heightInput.setText(getHeightScaleValue(width).toString())
            dpiInput.setText(getDpiScaleValue(width).toString())
            ToastALL("FHD+(2220×1080)");

        })
        dialog.findViewById<TextView>(R.id.dialog_dpi_2k).setOnClickListener({
            val width = 1440
            widthInput.setText(width.toString())
            heightInput.setText(getHeightScaleValue(width).toString())
            dpiInput.setText(getDpiScaleValue(width).toString())
            ToastALL("WQHD+(2960×1440)");
        })



        val dialogInstance = AlertDialog.Builder(context).setTitle(Resource.getStringIdentifier(context, "grid_dpi")).setView(dialog).setNegativeButton(android.R.string.cancel,{ dialog, _ -> dialog.dismiss()  }).setPositiveButton(android.R.string.yes, { _, _  ->
            val dpi = if (dpiInput.text.isNotEmpty()) (dpiInput.text.toString().toInt()) else (0)
            val width = if (widthInput.text.isNotEmpty()) (widthInput.text.toString().toInt()) else (0)
            val height = if (heightInput.text.isNotEmpty()) (heightInput.text.toString().toInt()) else (0)
            val qc = quickChange.isChecked

            val cmd = StringBuilder()
            if (width >= 320 && height >= 480) {
                cmd.append("wm size ${width}x$height")
                cmd.append("\n")
            }
            if (dpi >= 96) {
                cmd.append("wm density $dpi")
                cmd.append("\n")
            }
            if (!qc && dpi >= 96) {

                    cmd.append(Consts.MountSystemRW)
                    cmd.append("wm density reset\n")
                    cmd.append("sed '/ro.sf.lcd_density=/'d /system/build.prop > /data/build.prop\n")
                    cmd.append("sed '\$aro.sf.lcd_density=$dpi' /data/build.prop > /data/build2.prop\n")
                    cmd.append("cp /system/build.prop /system/build.prop.dpi_bak\n")
                    cmd.append("cp /data/build2.prop /system/build.prop\n")
                    cmd.append("rm /data/build.prop\n")
                    cmd.append("rm /data/build2.prop\n")
                    cmd.append("chmod 0755 /system/build.prop\n")
                    cmd.append("sync\n")
                    cmd.append("reboot\n")

            }
            if (cmd.isNotEmpty())
                KeepShellPublic.doCmdSync(cmd.toString())
        }).create()
        dialogInstance.show()
    }
}
