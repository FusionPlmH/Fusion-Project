package com.leo.salt.tweaks;


import android.app.Fragment;
import android.app.FragmentTransaction;
import android.os.Bundle;


import com.leo.salt.deviceinfo.ExtraInfoFragment;
import com.leo.salt.fragment.BixbyFragment;
import com.leo.salt.fragment.BlacklistFragment;
import com.leo.salt.fragment.ContactMeFragment;

import com.leo.salt.fragment.EdgeFragment;
import com.leo.salt.fragment.FingerprintFragment;
import com.leo.salt.fragment.HomeFragment;
import com.leo.salt.fragment.KeyguardActionFragment;
import com.leo.salt.fragment.KeyguardAlarmFragment;
import com.leo.salt.fragment.KeyguardCarrierFragment;
import com.leo.salt.fragment.KeyguardDetailFragment;
import com.leo.salt.fragment.KeyguardLunarFragment;
import com.leo.salt.fragment.KeyguardWeatherFragment;
import com.leo.salt.fragment.LogThatShitFragment;
import com.leo.salt.fragment.MiniPOPFragment;
import com.leo.salt.fragment.NavigationBarActionFragment;
import com.leo.salt.fragment.NavigationBarFragment;
import com.leo.salt.fragment.PowerFragment;
import com.leo.salt.fragment.PulldownAnalogClockFragment;
import com.leo.salt.fragment.PulldownCarrierFragment;
import com.leo.salt.fragment.PulldownDataUsageBarFragment;
import com.leo.salt.fragment.PulldownNotificationFuzzy;
import com.leo.salt.fragment.SettingsFragment;
import com.leo.salt.fragment.StatusBarActionFragment;
import com.leo.salt.fragment.StatusBarClockFragment;
import com.leo.salt.fragment.StatusBarIconFragment;
import com.leo.salt.fragment.SystemFragment;
import com.leo.salt.fragment.SystemSoundFragment;

import com.leo.salt.fragment.VolumeFragment;
import com.leo.salt.gridView.QSbuttonTabLayoutFragment;
import com.leo.salt.tools.apps.FragmentApps;
import com.leo.salt.tools.apps.ImgFragment;
import com.leo.salt.tools.autostarts.ManageAutoStarts;

import com.leo.salt.tweaks.base.BaseSubActivity;


import java.io.Serializable;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.PrefUtils.DayNight;

public class FragSubActivity extends BaseSubActivity {


    @Override
    protected int initLayout() {
        return R.layout.activity_fragment;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        setLeoTheme();
        super.onCreate(savedInstanceState);
        FragmentType type = (FragmentType) getIntent().getSerializableExtra(KEY_TYPE);
        if(type!=null){
            setupToolBar(type.mResTitle, true);
            addContent(getFragmentByType(type));
        }
    }
    public void setLeoTheme(){
        String string="AppTheme.Main.Dark";
        if (string.equals("AppTheme.Main.Dark")) {
            string = ((getResources().getConfiguration().uiMode & 48) == 32 ? 1 : null) != null ? "AppTheme.Main.Dark" : "AppTheme.Main";
        }
        int identifier = getResources().getIdentifier(string, "style", getApplicationContext().getPackageName());
        if (identifier != 0) {
            setTheme(identifier);
        }
    }
    private void addContent(Fragment fragment){
        FragmentTransaction fragmentTransaction = getFragmentManager().beginTransaction();
        fragmentTransaction.replace(R.id.fragment_container,fragment);
        fragmentTransaction.commit();
    }


    private Fragment getFragmentByType(FragmentType type){
        Fragment fragment = null;
        switch (type){
            case HardwareInfo:
                fragment = new ExtraInfoFragment();
                break;
            case Mail:
                fragment = new ContactMeFragment();
                break;
            case AutoStarts:
                fragment = new ManageAutoStarts();
                break;
            case Img:
                fragment = new ImgFragment();
                break;


            case SoundSetting:
                fragment = new SystemSoundFragment();
                break;
            case Log:
                fragment = new LogThatShitFragment();
                break;

            case Bixby:
                fragment = new BixbyFragment();
                break;

            case Power:
                fragment = new PowerFragment();
                break;
            case Fingerprint:
                fragment = new FingerprintFragment();
                break;

            case  wallpaper:
                fragment = new HomeFragment();
                break;
            case  analogclock:
                fragment = new PulldownAnalogClockFragment();
                break;
            case  PulldownCarrier:
                fragment = new PulldownCarrierFragment();
                break;
            case  weatherwidget:
                fragment = new KeyguardWeatherFragment();
                break;
            case  alarm:
                fragment = new KeyguardAlarmFragment();
                break;
            case  KeyguardAction:
                fragment = new KeyguardActionFragment();
                break;

            case  SIM:
                fragment = new PulldownDataUsageBarFragment();
                break;

            case Edge:
                fragment = new EdgeFragment();
                break;
            case QSbg:
                fragment = new PulldownNotificationFuzzy();
                break;

            case NAVAction:
                fragment = new NavigationBarActionFragment();
                break;
            case LockVolumeAction:
                fragment = new VolumeFragment();
                break;
            case LockDetail:
                fragment = new KeyguardDetailFragment();
                break;
            case Locklunar:
                fragment = new KeyguardLunarFragment();
                break;
            case  StatusBarAction:
                fragment = new StatusBarActionFragment();
                break;

        }
        return fragment;
    }

    public enum FragmentType implements Serializable {
        StatusBarAction("grid_other_statusbar_title"),
        Locklunar("lock_lunar"),
        LockDetail("lock_detail"),
        LockVolumeAction("lock_music"),
        HardwareInfo("device_info"),
        Edge("grid_edge"),
        QSbg("qs_bg_fuzzy"),
        NAVAction("nav_action"),
        AutoStarts("autostarts_name"),
        alarm("grid_keyguard_alarm"),
        KeyguardAction("grid_keyguard_gesture"),
        weatherwidget("widget_name"),
        Img("img_name"),

        analogclock("grid_analogclock_title"),
        PulldownCarrier("grid_carrier_title"),
        Mail("about_service"),
       SIM("grid_datausage_more"),
        Log("grid_log"),
        wallpaper("grid_system_launcher_home_title"),
        SoundSetting("grid_sound"),

        Bixby("keypress_bixby_title"),
        Power("keypress_power_title"),

        Fingerprint("keypress_fingerprint_title");
        String mResTitle;
        FragmentType(String resTitle){
            mResTitle = resTitle;
        }

    }


}
