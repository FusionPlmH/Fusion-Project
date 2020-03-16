package com.tweaks.leo.fragment


import android.content.ComponentName
import android.content.Context
import android.content.DialogInterface
import android.content.Intent
import android.content.SharedPreferences
import android.content.pm.PackageInfo
import android.content.res.AssetManager
import android.graphics.Color
import android.net.Uri
import android.os.Build
import android.os.Bundle

import com.tweaks.leo.R

import com.tweaks.leo.base.BasePreferenceFragment

import com.tweaks.leo.preference.MyPreferenceAlerts
import com.tweaks.leo.preference.MySwitchPreference

import android.preference.Preference

import android.preference.PreferenceManager
import android.preference.PreferenceScreen
import android.provider.Settings

import com.tweaks.leo.utils.Utils.killPackage
import com.tweaks.leo.widget.DialogUtil.BatteryTips


class StatusBarIconFragment : BasePreferenceFragment() {
    internal lateinit var mMods2: MyPreferenceAlerts
    internal lateinit var mMods: MyPreferenceAlerts
    internal lateinit var mDoubleSIM: MySwitchPreference
    var BatterName = "*热更新"
    var Batteryurl = "file:///android_asset/system_mods.html"
    var BatterName2 = "通话卡图标自定义"
    var Batteryurl2 = "file:///android_asset/signal.html"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        addPreferencesFromResource(R.xml.statusbar_icon_prefs)
        setHasOptionsMenu(true)

        mMods = findPreference("leo_tweaks_update_mods") as MyPreferenceAlerts

        mMods2 = findPreference("leo_tweaks_update_mods2") as MyPreferenceAlerts
        mDoubleSIM = findPreference("leo_tweakssim") as MySwitchPreference
        BatteryTips(activity, DB_MAIN_BATTERY, BatterName, Batteryurl)
        setDoubleSIM()
    }

    private fun setDoubleSIM() {
        val sp = PreferenceManager.getDefaultSharedPreferences(mContext)
        val isFirstBoot = sp.getBoolean("leo_tweakssim", true)
        mDoubleSIM.isChecked = isFirstBoot

    }

    override fun ResetColor() {
        Settings.System.putInt(activity.contentResolver,
                "leo_tweaks_statusbar_wifi_color", -1)
        Settings.System.putInt(activity.contentResolver,
                "leo_tweaks_statusbar_signal_color", -1)
        Settings.System.putInt(activity.contentResolver,
                "leo_tweaks_statusbar_signal_focus_color", -1)
        Settings.System.putInt(activity.contentResolver,
                "leo_tweaks_statusbar_data_color", -1)
        Settings.System.putInt(activity.contentResolver,
                "leo_tweaks_statusbar_simicon_color", -1)
        Settings.System.putInt(activity.contentResolver,
                "leo_tweaks_statusbar_airplane_color", -1)
        Settings.System.putInt(activity.contentResolver,
                "leo_tweaks_status_bar_logo_color", Color.parseColor("#AEFFFFFF"))
    }

    override fun onResume() {
        super.onResume()
        setDoubleSIM()
    }

    override fun onPause() {
        super.onPause()

    }

    override fun onPreferenceTreeClick(preferenceScreen: PreferenceScreen, preference: Preference): Boolean {
        //  Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference === mMods) {
            killPackage("com.android.systemui")

        } else if (preference === mMods2) {
            killPackage("com.android.systemui")


        }else if (preference === mDoubleSIM) {
            if (mDoubleSIM.isChecked) {
                Settings.System.putInt(activity.contentResolver,
                        "leo_tweaks_statusbar_signal_call_icon", 0)
                BatteryTips(activity, DB_MAIN_BATTERY2, BatterName2, Batteryurl2)
            } else {
                Settings.System.putInt(activity.contentResolver,
                        "leo_tweaks_statusbar_signal_call_icon", 1)
                BatteryTips(activity, DB_MAIN_BATTERY2, BatterName2, Batteryurl2)
            }
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference)
    }


    companion object {
        val DB_MAIN_BATTERY = "leo_mods_help"
        val DB_MAIN_BATTERY2 = "leo_call_help"
    }


}
