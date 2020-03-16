package com.tweaks.leo.fragment;



import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.res.AssetManager;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;

import com.tweaks.leo.R;
import com.tweaks.leo.activity.SubActivity;
import com.tweaks.leo.base.BaseActivity;
import com.tweaks.leo.base.BasePreferenceFragment;
import com.tweaks.leo.preference.MyPreference;
import com.tweaks.leo.preference.MyPreferenceAlerts;
import com.tweaks.leo.preference.MySwitchPreference;
import com.tweaks.leo.utils.ktshell.KeepShellSync;
import com.tweaks.leo.utils.root.RootUtils;


import android.os.Environment;
import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.MenuItem;
import android.widget.Toast;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import static android.content.Context.MODE_PRIVATE;
import static android.support.constraint.Constraints.TAG;
import static com.tweaks.leo.base.BasePreferenceFragment.MENU_RESET;
import static com.tweaks.leo.utils.Constants.mNewline;
import static com.tweaks.leo.utils.NotificationUtils.showTestNotification;
import static com.tweaks.leo.utils.Utils.killPackage;
import static com.tweaks.leo.widget.DialogUtil.BatteryTips;


public class StatusBarIconFragment extends BasePreferenceFragment {
    MyPreferenceAlerts mMods2;
    MyPreference mMods3;
    MyPreferenceAlerts mMods;
    MySwitchPreference mDoubleSIM;
    public String BatterName="*热更新";
    public String Batteryurl="file:///android_asset/system_mods.html";
    public static final String DB_MAIN_BATTERY = "leo_mods_help";
    public String BatterName2="通话卡图标自定义";
    public String Batteryurl2="file:///android_asset/signal.html";
    public static final String DB_MAIN_BATTERY2 = "leo_call_help";
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        addPreferencesFromResource(R.xml.statusbar_icon_prefs);
        setHasOptionsMenu(true);

        mMods = ((MyPreferenceAlerts) findPreference("leo_tweaks_update_mods"));
        mMods3 = ((MyPreference) findPreference("leo_tweaks_updatestatusbar_icon"));
        mMods2 = ((MyPreferenceAlerts) findPreference("leo_tweaks_update_mods2"));
        mDoubleSIM = ((MySwitchPreference) findPreference("leo_tweakssim"));
        BatteryTips(getActivity(),DB_MAIN_BATTERY,BatterName,Batteryurl);
        setDoubleSIM();
    }

    private void setDoubleSIM() {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences( mContext);
        boolean isFirstBoot = sp.getBoolean("leo_tweakssim", true);
        mDoubleSIM.setChecked(isFirstBoot);

    }

    @Override
    public void ResetColor() {
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_wifi_color", -1);
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_signal_color", -1);
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_signal_focus_color", -1);
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_data_color", -1);
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_simicon_color", -1);
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_statusbar_airplane_color", -1);
        Settings.System.putInt(getActivity().getContentResolver(),
                "leo_tweaks_status_bar_logo_color", Color.parseColor("#AEFFFFFF"));
    }

    @Override
    public void onResume() {
        super.onResume();
        setDoubleSIM();
    }

    @Override
    public void onPause() {
        super.onPause();

    }
    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen, Preference preference) {
      //  Log.v(TAG, "onPreferenceTreeClick preference = " + preference.getKey());

        if (preference == mMods) {
           killPackage("com.android.systemui");

        } else if (preference == mMods2) {
            killPackage("com.android.systemui");


        }else if (preference == mMods3) {
      componetName(packageName,className);
        }else if (preference == mDoubleSIM) {
            if ( mDoubleSIM.isChecked()) {
                Settings.System.putInt(getActivity().getContentResolver(),
                        "leo_tweaks_statusbar_signal_call_icon", 0);
                BatteryTips(getActivity(),DB_MAIN_BATTERY2,BatterName2,Batteryurl2);
            } else {
                Settings.System.putInt(getActivity().getContentResolver(),
                        "leo_tweaks_statusbar_signal_call_icon", 1);
                BatteryTips(getActivity(),DB_MAIN_BATTERY2,BatterName2,Batteryurl2);
            };
        }
        return super.onPreferenceTreeClick(preferenceScreen, preference);
    }
    private  void  componetName(String name ,String str){
        ComponentName componetName = new ComponentName(
//这个是另外一个应用程序的包名
                name,
//这个参数是要启动的Activity
                str);

        try {
            Intent intent = new Intent();
            intent.setComponent(componetName);
            mContext.startActivity(intent);
        } catch (Exception e) {

 Toast.makeText(mContext, mContext.getString(R.string.no_activity), Toast.LENGTH_SHORT).show();
        }
    }

    private String packageName = "com.leo.samsung.qstuner";
    private String className = "com.leo.samsung.qstuner.ohio.slimindicator.SlimIndicatorActivity";



}
