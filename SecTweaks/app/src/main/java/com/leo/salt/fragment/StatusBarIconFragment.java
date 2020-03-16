package com.leo.salt.fragment;



import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Color;
import android.os.Bundle;

import com.leo.salt.R;
import com.leo.salt.activity.SubActivity;
import com.leo.salt.base.BaseActivity;
import com.leo.salt.base.BasePreferenceFragment;
import com.leo.salt.preference.MyListPreference;
import com.leo.salt.preference.MyPreference;
import com.leo.salt.preference.MyPreferenceAlerts;
import com.leo.salt.preference.MySwitchPreference;
import com.leo.salt.utils.AndroidUtils;
import com.leo.salt.utils.root.Helpers;


import android.preference.Preference;
import android.preference.PreferenceFragment;
import android.preference.PreferenceManager;
import android.preference.PreferenceScreen;
import android.provider.Settings;
import android.util.Log;

import static com.leo.salt.utils.AndroidUtils.APPName;
import static com.leo.salt.utils.AndroidUtils.getCustomDateSystemVersion;
import static com.leo.salt.utils.AndroidUtils.getchipname;
import static com.leo.salt.utils.Constants.safety;
import static com.leo.salt.utils.Utils.isLunarSetting;
import static com.leo.salt.utils.Utils.killPackage;
import static com.leo.salt.widget.DialogUtil.cautionMessage;
import static com.leo.salt.widget.DialogUtil.showWipePrefs;


public class StatusBarIconFragment extends BasePreferenceFragment implements Preference.OnPreferenceChangeListener{
    private MyListPreference mSignal;
    public String SIGNAL="leo_tweaks_statusbar_signal_single_icon";
    public String mod="leo_tweaks_update_mods";
    private MyPreferenceAlerts mMods;
    @Override
    public void onCreate(Bundle savedInstanceState ) {
        super.onCreate(savedInstanceState);
        //addPreferencesFromResource(R.xml.statusbar_icon_prefs);
        BasePreferenceFragment(mContext, this, "statusbar_icon_prefs");
        final ContentResolver resolver = getActivity().getContentResolver();

        int statusbarbackgroundstyle = Settings.System.getInt(resolver,
                SIGNAL, 1);
        mSignal = (MyListPreference) findPreference(SIGNAL);
        mSignal.setValue(String.valueOf(statusbarbackgroundstyle));
        mSignal.setSummary( mSignal.getEntry());
        mSignal.setOnPreferenceChangeListener(this);

        mMods= (MyPreferenceAlerts) findPreference(mod);
        cautionMessage(mContext,ICON(0),ICON(1),"leo_icon_can");
        if(!isProKeyInstalled(getActivity().getApplicationContext())) disablePreferences();
    }
  private  String ICON(int i){
        String icon="";
      if (isLunarSetting()==true) {
          if( i==0){
              icon="图标设置提示";
          }else if( i==1){
              icon="<font color=\"#FF0000\">在自定义信号图标你需要注意:</font> <br />" +
                      "1.开启信号WIFI图标开关<br />" +
                      "2.选择喜欢的图标<br />" +
                      "3.点击<信号图标更新设置>,以让你的设置生效";
          }
      }else {
          if( i==0){
              icon="Icon setting prompt";
          }else if( i==1){
              icon="<font color=\"#FF0000\">In the custom signal icon you need to pay attention:</font> <br /><br />"
                      + "1. Turn on the signal WIFI icon switch<br />"
                      +"2. Choose the icon you like <br />"
                      +"3. Click <Signal Icon Update Settings> to make your settings take effect";

          }
      }
      return icon;
  }


    @Override
    public boolean onPreferenceTreeClick(PreferenceScreen preferenceScreen,
                                         Preference preference) {
        if (preference ==mMods) {
            killPackage("com.android.systemui");
            return true;
        } else {
            return super.onPreferenceTreeClick(preferenceScreen, preference);
        }
    }
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        ContentResolver resolver = getActivity().getContentResolver();
        Log.v(TAG, "onPreferenceChange----->"+String.valueOf(preference.getKey()));

        if(preference == mSignal){
            if(newValue.equals("0")){
                if (getchipname() .equals("MSM8998")) {
                    Helpers.Companion. SignalCode(2,mContext);
                }else{
                    Helpers.Companion. SignalCode(0,mContext);
                }
            }else if(newValue.equals("1")){
                if (getchipname() .equals("MSM8998")) {
                    Helpers.Companion. SignalCode(3,mContext);
                }else{
                    Helpers.Companion. SignalCode(1,mContext);
                }

            }
            int statusbarbackgroundstyle = Integer.valueOf((String) newValue);
            int index =  mSignal.findIndexOfValue((String) newValue);
            Settings.System.putInt(resolver,
                    SIGNAL, statusbarbackgroundstyle);
            mSignal.setSummary(
                    mSignal.getEntries()[index]);
        }
        return true;
    }

    @Override
    public void onResume() {
        super.onResume();
       
    }

    @Override
    public void onPause() {
        super.onPause();

    }
    public boolean isProKeyInstalled(Context context){
        boolean isInstalled;
        PackageManager packageManager = context.getPackageManager();
        try {
            PackageInfo pInfo1 = packageManager.getPackageInfo("", PackageManager.GET_SIGNATURES);
            PackageInfo pInfo2 = packageManager.getPackageInfo(context.getPackageName(), PackageManager.GET_SIGNATURES);

            isInstalled = pInfo1.signatures[0].toCharsString().equals(pInfo2.signatures[0].toCharsString());
        } catch (PackageManager.NameNotFoundException e) {
            isInstalled = false;
            e.printStackTrace();
        }
        return isInstalled;
    }
    public void disablePreferences(){
        if (AndroidUtils.getCustomOTA().equals(safety)) {
            getPreferenceManager().findPreference("leo_tweaks_update_mods").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_status_bar_sim_icon").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_status_bar_wifi_arrow").setEnabled(true);
            getPreferenceManager().findPreference("leo_tweaks_status_bar_wifi_icon").setEnabled(true);
        }else {
            getPreferenceManager().findPreference("leo_tweaks_update_mods").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_status_bar_sim_icon").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_status_bar_wifi_arrow").setEnabled(false);
            getPreferenceManager().findPreference("leo_tweaks_status_bar_wifi_icon").setEnabled(false);
        }

    }
}
