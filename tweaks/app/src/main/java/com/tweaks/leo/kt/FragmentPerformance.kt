package com.tweaks.leo.kt

import android.annotation.SuppressLint
import android.app.ActivityManager
import android.app.AlertDialog
import android.content.Context
import android.content.Context.ACTIVITY_SERVICE
import android.content.DialogInterface
import android.content.SharedPreferences
import android.os.Bundle
import android.os.Environment
import android.os.Handler
import android.support.design.widget.Snackbar
import android.app.Fragment
import android.os.StatFs
import android.text.format.Formatter
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Toast

import com.tweaks.leo.R
import com.tweaks.leo.utils.Constants
import com.tweaks.leo.utils.Constants.GLOBAL_SPF
import com.tweaks.leo.utils.ktshell.*
import kotlinx.android.synthetic.main.performance_layout.*
import java.io.File

@SuppressLint("ApplySharedPref", "NewApi")
class FragmentPerformance : Fragment() {
    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?,
                              savedInstanceState: Bundle?): View? {
        return inflater.inflate(R.layout.performance_layout, container, false)
    }

    private var myHandler = Handler()
    private lateinit var globalSPF: SharedPreferences
    private fun showMsg(msg: String) {
        this.view?.let { Snackbar.make(it, msg, Snackbar.LENGTH_LONG).show() }
    }

    private lateinit var spf: SharedPreferences
    private var modeList = ModeList()

    override fun onActivityCreated(savedInstanceState: Bundle?) {
        super.onActivityCreated(savedInstanceState)

        globalSPF = context!!.getSharedPreferences(GLOBAL_SPF, Context.MODE_PRIVATE)

        if (Platform().dynamicSupport(context!!) || File(Consts.POWER_CFG_PATH).exists()) {
            powermode_toggles.visibility = View.VISIBLE
        } else {
            powermode_toggles.visibility = View.GONE
        }

        btn_powersave.setOnClickListener {
            installConfig(modeList.POWERSAVE, getString(R.string.power_change_powersave))
        }
        btn_defaultmode.setOnClickListener {
            installConfig(modeList.DEFAULT, getString(R.string.power_change_default))
        }
        btn_gamemode.setOnClickListener {
            installConfig(modeList.PERFORMANCE, getString(R.string.power_change_game))
        }
        btn_fastmode.setOnClickListener {
            installConfig(modeList.FAST, getString(R.string.power_chagne_fast))
        }

        spf = context!!.getSharedPreferences(GLOBAL_SPF, Context.MODE_PRIVATE)

         clear_ram.setOnClickListener {
            raminfo_text.text = "正在清理"
            Thread(Runnable {
                KeepShellSync.doCmdSync("sync\n" +
                        "echo 3 > /proc/sys/vm/drop_caches")
                myHandler.postDelayed({
                    val activityManager = context!!.getSystemService(ACTIVITY_SERVICE) as ActivityManager
                    val info = ActivityManager.MemoryInfo()
                    activityManager.getMemoryInfo(info)
                    val totalMem = (info.totalMem / 1024 / 1024f).toInt()
                   raminfo.setData(totalMem.toFloat(), 0f)
                    val availMem = (info.availMem / 1024 / 1024f).toInt()
                    Toast.makeText(context, "缓存已清理", Toast.LENGTH_SHORT).show()
                     raminfo_text.text = "${availMem}MB / ${totalMem}MB"
                    raminfo.setData(totalMem.toFloat(), availMem.toFloat())

                }, 1000)
            }).start()
        }
    }

    override fun onResume() {
        super.onResume()
        setModeState()
        updateInfo()
        TemperatureControl ();
    }

    override fun onDestroy() {
        super.onDestroy()
    }

    private fun ObtainFSPartSize(PartitionPath: String): String {
        val extraStat = StatFs(File(PartitionPath).path)
        val eBlockSize = extraStat.blockSize.toLong()
        val eTotalBlocks = extraStat.blockCount.toLong()
        return Formatter.formatFileSize(context, eTotalBlocks * eBlockSize - extraStat.availableBlocks.toLong() * eBlockSize) + "  " + "/" + "  " + Formatter.formatFileSize(context, eTotalBlocks * eBlockSize)
    }
    private fun updateInfo() {
        system.text = "系统分区"+"\n"+   ObtainFSPartSize("/system")
        cache.text = "Cache分区" +"\n"+  ObtainFSPartSize("/cache")
        sdfree.text = "内置存储"+"\n"+   ObtainFSPartSize("/sdcard")
        datafree.text = "Data" +"\n"+  ObtainFSPartSize("/data")
        val activityManager = context!!.getSystemService(ACTIVITY_SERVICE) as ActivityManager
        val info = ActivityManager.MemoryInfo()
        activityManager.getMemoryInfo(info)

        val totalMem = (info.totalMem / 1024 / 1024f).toInt()
        val availMem = (info.availMem / 1024 / 1024f).toInt()

        raminfo_text.text = "${availMem}MB / ${totalMem}MB"
        raminfo.setData(totalMem.toFloat(), availMem.toFloat())
    }
    private fun TemperatureControl () {
        temcontrol.text = getString(R.string.thermal_default)+"\n"+ getString(R.string.thermal_default_summary)
        temcontrol.setOnClickListener {
            ThermalAddin(context!!).showOption()
        }
    }
    private fun setModeState() {
        btn_powersave.text = "省电"
        btn_defaultmode.text = "均衡"
        btn_gamemode.text = "性能"
        btn_fastmode.text = "极速"
        val cfg = Platform.Props.getProp("leo.powercfg")
        when (cfg) {
            modeList.BALANCE -> btn_defaultmode.text = "均衡 √"
            modeList.PERFORMANCE -> btn_gamemode.text = "性能 √"
            modeList.POWERSAVE -> btn_powersave!!.text = "省电 √"
            modeList.FAST -> btn_fastmode!!.text = "极速 √"
        }
    }

    private fun installConfig(action: String, message: String) {
        if (File(Consts.POWER_CFG_PATH).exists()) {
            modeList.executePowercfgModeOnce(action, context!!.packageName)
        } else {
            val stringBuilder = StringBuilder()
            stringBuilder.append(String.format(Consts.ToggleMode, action))
            ConfigInstaller().installPowerConfig(context!!, stringBuilder.toString());
        }
        setModeState()
        showMsg(message)
    }
}
