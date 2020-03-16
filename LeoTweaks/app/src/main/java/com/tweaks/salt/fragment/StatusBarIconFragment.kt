package com.tweaks.salt.fragment



import android.os.Bundle

import com.tweaks.salt.R

import com.tweaks.salt.base.BasePreferenceFragment

import com.tweaks.salt.preference.MyPreferenceAlerts
import com.tweaks.salt.preference.MySwitchPreference

import android.preference.Preference

import android.preference.PreferenceManager
import android.preference.PreferenceScreen
import android.provider.Settings
import com.tweaks.salt.utils.Constants.PPPS

import com.tweaks.salt.utils.Utils.killPackage

import com.tweaks.salt.widget.WebDialog


class StatusBarIconFragment : BasePreferenceFragment() {


    internal lateinit var mMods2: MyPreferenceAlerts
    internal lateinit var mMods: MyPreferenceAlerts
    internal lateinit var mDoubleSIM: MySwitchPreference
    var BatterName = "*热更新"
    var Batteryurl = PPPS+"system_mods.html"
    var BatterName2 = "通话卡图标自定义"
    var Batteryurl2 = PPPS+"signal.html"

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        addPreferencesFromResource(R.xml.statusbar_icon_prefs)
        setHasOptionsMenu(true)

        mMods = findPreference("leo_tweaks_update_mods") as MyPreferenceAlerts

        mMods2 = findPreference("leo_tweaks_update_mods2") as MyPreferenceAlerts
        mDoubleSIM = findPreference("leo_tweakssim") as MySwitchPreference
       // BatteryTips(activity, DB_MAIN_BATTERY, BatterName, Batteryurl)
        WebDialog(mContext, BatterName, Batteryurl, DB_MAIN_BATTERY,false)
        setDoubleSIM()
    }

    private fun setDoubleSIM() {
        val sp = PreferenceManager.getDefaultSharedPreferences(mContext)
        val isFirstBoot = sp.getBoolean("leo_tweakssim", true)
        mDoubleSIM.isChecked = isFirstBoot

    }


    override fun onResume() {
        super.onResume()
        setDoubleSIM()
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
                //BatteryTips(activity, DB_MAIN_BATTERY2, BatterName2, Batteryurl2)
                WebDialog(mContext, BatterName2, Batteryurl2, DB_MAIN_BATTERY2,false)
            } else {
                Settings.System.putInt(activity.contentResolver,
                        "leo_tweaks_statusbar_signal_call_icon", 1)
                WebDialog(mContext, BatterName2, Batteryurl2, DB_MAIN_BATTERY2,false)
            }
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference)
    }


    companion object {
        val DB_MAIN_BATTERY = "leo_mods_help"
        val DB_MAIN_BATTERY2 = "leo_call_help"
    }


}
