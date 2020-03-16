
package com.leo.salt.fragment;

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


import com.leo.salt.LauncherActivity;
import com.leo.salt.R;
import com.leo.salt.activity.SubActivity;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.MyListPreference;
import com.leo.salt.preference.MyPreference;
import com.leo.salt.preference.MySwitchPreference;
import com.leo.salt.theme.ColorChooseDialog;
import com.leo.salt.theme.ThemeControl;

import com.leo.salt.utils.Utils;
import com.leo.salt.widget.MyShortcutManager;

import java.util.HashMap;
import java.util.Map;





    public class SettingsFragment extends PreferenceFragment implements Preference.OnPreferenceClickListener, ColorChooseDialog.IClickColorSelectCallback, Preference.OnPreferenceChangeListener {


        public SettingsFragment() {
        }

        private static final String THEME ="leo_tweaks_app_theme";

        private static final String clear ="leo_tweaks_app_clear";

        private MyPreference createShortCut;
        private static final String PREF_LEO_LAUNCHER = "leo_tweaks_app_launcher_enabled";
        @RequiresApi(api = Build.VERSION_CODES.O_MR1)
        @Override
        public void onCreate(Bundle savedInstanceState) {
            super.onCreate(savedInstanceState);
            mCcc= (BaseActivity) getActivity();
            final ContentResolver resolver = getActivity().getContentResolver();
            addPreferencesFromResource(R.xml.prefs_setting);
           // BasePreferenceFragment( mCcc , this, "prefs_setting");
            //设置点击监听
            findPreference(THEME).setOnPreferenceClickListener(this);

            createShortCut = (MyPreference) findPreference(clear);
            createShortCut.setOnPreferenceClickListener(this);
        PackageManager pm = getContext().getPackageManager();
            mLeoLauncherComponent = new ComponentName(mCcc,
                    LauncherActivity.class);

            mLauncher = (MySwitchPreference) findPreference(PREF_LEO_LAUNCHER);
            mLauncher.setChecked(pm.getComponentEnabledSetting(mLeoLauncherComponent) !=
                    PackageManager.COMPONENT_ENABLED_STATE_DISABLED);
            mLauncher.setOnPreferenceChangeListener(this);

        }
        private BaseActivity mCcc;
        @Override
        public boolean onPreferenceClick(android.preference.Preference preference) {
            String key = preference.getKey();
            if (clear.equals(preference.getKey())) {
                if (android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    MyShortcutManager.addShortCut(mCcc);
                }else if(android.os.Build.VERSION.SDK_INT >= Build.VERSION_CODES.N){
                    Toast.makeText(mCcc, "不支持当前安卓系统版本",
                            Toast.LENGTH_SHORT).show();
                }
            } else if (key.equals(THEME)) {
                ColorChooseDialog dialog = new ColorChooseDialog();
                dialog.setColorSelectCallback(this);
                dialog.show(mCcc, mCcc.getThemeUtils().getThemePosition());

            }

            return false;
        }

        @Override
        public void onClickSelectCallback(int position, int color) {
            //设置主题 并且让主题立即生效（通过方法 mContext.reload()）
            mCcc.getThemeUtils().setTheme(ThemeControl.themeArr()[position]);
            mCcc.getThemeUtils().setThemePosition(position);
            mCcc.reload();

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
            PackageManager pm = mCcc.getPackageManager();
            pm.setComponentEnabledSetting(mLeoLauncherComponent, enabled
                    ? PackageManager.COMPONENT_ENABLED_STATE_ENABLED
                    : PackageManager.COMPONENT_ENABLED_STATE_DISABLED, PackageManager.DONT_KILL_APP);
            Toast.makeText(mCcc, R.string.launcher_enabled_update, Toast.LENGTH_LONG)
                    .show();
        }
        private ComponentName mLeoLauncherComponent;


}