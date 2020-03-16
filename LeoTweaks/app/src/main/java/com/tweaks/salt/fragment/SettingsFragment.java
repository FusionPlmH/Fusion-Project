
package com.tweaks.salt.fragment;

import android.annotation.SuppressLint;
import android.app.LauncherActivity;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.os.Bundle;


import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.provider.Settings;
import android.support.annotation.RequiresApi;
import android.support.v4.app.Fragment;
import android.support.v7.app.AlertDialog;
import android.util.Log;
import android.view.View;
import android.widget.Toast;


import com.tweaks.salt.R;
import com.tweaks.salt.activity.SubActivity;
import com.tweaks.salt.base.BaseActivity;
import com.tweaks.salt.preference.MyListPreference;
import com.tweaks.salt.preference.MyPreference;
import com.tweaks.salt.preference.MySwitchPreference;
import com.tweaks.salt.theme.ColorChooseDialog;
import com.tweaks.salt.theme.ThemeControl;

import com.tweaks.salt.utils.Utils;
import com.tweaks.salt.widget.MyShortcutManager;

import java.util.HashMap;
import java.util.Map;





    public class SettingsFragment extends PreferenceFragment implements Preference.OnPreferenceClickListener, ColorChooseDialog.IClickColorSelectCallback, Preference.OnPreferenceChangeListener {


        public SettingsFragment() {
        }

        private BaseActivity mContext;
        private static final String THEME ="leo_tweaks_app_theme";

        private static final String clear ="leo_tweaks_app_clear";

        private MyPreference createShortCut;
        private static final String PREF_LEO_LAUNCHER = "leo_tweaks_app_launcher_enabled";
        @RequiresApi(api = Build.VERSION_CODES.P)
        @Override
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            mContext = (BaseActivity) getActivity();
            final ContentResolver resolver = getActivity().getContentResolver();
            addPreferencesFromResource(R.xml.prefs_setting);

            //设置点击监听
            findPreference(THEME).setOnPreferenceClickListener(this);

            createShortCut = (MyPreference) findPreference(clear);
            createShortCut.setOnPreferenceClickListener(this);
        PackageManager pm = getContext().getPackageManager();
            mLeoLauncherComponent = new ComponentName(mContext,
                    LauncherActivity.class);

            mLauncher = (MySwitchPreference) findPreference(PREF_LEO_LAUNCHER);
            mLauncher.setChecked(pm.getComponentEnabledSetting(mLeoLauncherComponent) !=
                    PackageManager.COMPONENT_ENABLED_STATE_DISABLED);
            mLauncher.setOnPreferenceChangeListener(this);

        }

        @Override
        public boolean onPreferenceClick(android.preference.Preference preference) {
            String key = preference.getKey();
            if (clear.equals(preference.getKey())) {
                if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    MyShortcutManager.addShortCut(mContext);
                }else if(android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.N){
                    Toast.makeText(mContext, "不支持当前安卓系统版本",
                            Toast.LENGTH_SHORT).show();
                }
            } else if (key.equals(THEME)) {
                ColorChooseDialog dialog = new ColorChooseDialog();
                dialog.setColorSelectCallback(this);
                dialog.show(mContext, mContext.getThemeUtils().getThemePosition());

            }

            return false;
        }

        @Override
        public void onClickSelectCallback(int position, int color) {
            //设置主题 并且让主题立即生效（通过方法 mContext.reload()）
            mContext.getThemeUtils().setTheme(ThemeControl.themeArr()[position]);
            mContext.getThemeUtils().setThemePosition(position);
            mContext.reload();

        }

        @Override
        public void onClick(View v) {

        }
        public  Intent intentFragment;
        String TAG="LeoROM";
        @Override
        public boolean onPreferenceChange(Preference preference,  Object newValue) {
            ContentResolver resolver = getActivity().getContentResolver();
            Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

           if (preference == mLauncher) {
                setLauncherEnabled((Boolean) newValue);
                return true;
            } else {
                return false;
            }

        }
        private MySwitchPreference mLauncher;
        private void setLauncherEnabled(boolean enabled) {
            PackageManager pm = mContext.getPackageManager();
            pm.setComponentEnabledSetting(mLeoLauncherComponent, enabled
                    ? PackageManager.COMPONENT_ENABLED_STATE_ENABLED
                    : PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
            Toast.makeText(mContext, R.string.launcher_enabled_update, Toast.LENGTH_LONG)
                    .show();
        }
        private ComponentName mLeoLauncherComponent;


}