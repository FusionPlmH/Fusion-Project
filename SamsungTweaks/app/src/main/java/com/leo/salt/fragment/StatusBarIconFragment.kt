package com.fusionleo.salt.fragment



import android.os.Bundle

import com.fusionleo.salt.R

import com.fusionleo.salt.base.BasePreferenceFragment

import com.fusionleo.salt.preference.MyPreferenceAlerts
import com.fusionleo.salt.preference.MySwitchPreference

import android.preference.Preference

import android.preference.PreferenceManager
import android.preference.PreferenceScreen
import android.provider.Settings
import com.fusionleo.salt.utils.Constants.PPPS
import com.fusionleo.salt.utils.Utils.isLunarSetting

import com.fusionleo.salt.utils.Utils.killPackage

import com.fusionleo.salt.widget.WebDialog


class StatusBarIconFragment : BasePreferenceFragment() {


    internal lateinit var mMods2: MyPreferenceAlerts
    internal lateinit var mMods: MyPreferenceAlerts
    internal lateinit var mDoubleSIM: MySwitchPreference
    var BatterName = "*热更新"
    var Batteryurl = PPPS+"system_mods.html"
    var BatterName2 = "通话卡图标自定义"
    var Batteryurl2 = PPPS+"signal.html"
    var BatterName2en = "Call card icon custom"
    var Batteryurl2en = PPPS+"signal_en.html"
    var BatterNameen = "*warm restart"
    var Batteryurlen = PPPS+"system_mods_en.html"
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

     BasePreferenceFragment(mContext, this, "statusbar_icon_prefs")
        setHasOptionsMenu(true)

        mMods = findPreference("leo_tweaks_update_mods") as MyPreferenceAlerts

        mMods2 = findPreference("leo_tweaks_update_mods2") as MyPreferenceAlerts
        mDoubleSIM = findPreference("leo_tweakssim") as MySwitchPreference
       // BatteryTips(activity, DB_MAIN_BATTERY, BatterName, Batteryurl)
        val name: String
        val url: String
        if (isLunarSetting() == true) {
            name = BatterName
            url = Batteryurl
        } else {
            name = BatterNameen
            url = Batteryurlen
        }
        WebDialog(mContext, name, url, DB_MAIN_BATTERY,false)
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
            } else {
                Settings.System.putInt(activity.contentResolver,
                        "leo_tweaks_statusbar_signal_call_icon", 1)
                val name: String
                val url: String
                if (isLunarSetting() == true) {
                    name = BatterName2
                    url = Batteryurl2
                } else {
                    name = BatterName2en
                    url = Batteryurl2en
                }
                WebDialog(mContext, name, url, DB_MAIN_BATTERY2,false)
            }
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference)
    }


    companion object {
        val DB_MAIN_BATTERY = "leo_mods_help"
        val DB_MAIN_BATTERY2 = "leo_call_help"
    }


}
