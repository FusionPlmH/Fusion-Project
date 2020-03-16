package com.leo.salt.tweaks;


import android.app.Fragment;
import android.app.FragmentTransaction;
import android.os.Bundle;


import com.leo.salt.deviceinfo.ExtraInfoFragment;
import com.leo.salt.fragment.BatterybarFragment;
import com.leo.salt.fragment.BixbyFragment;
import com.leo.salt.fragment.BlacklistFragment;
import com.leo.salt.fragment.ContactMeFragment;

import com.leo.salt.fragment.EdgeFragment;
import com.leo.salt.fragment.FingerprintFragment;
import com.leo.salt.fragment.HomeFragment;
import com.leo.salt.fragment.KeyguardLunarFragment;
import com.leo.salt.fragment.LogThatShitFragment;
import com.leo.salt.fragment.NavigationBarBackgroundFragment;
import com.leo.salt.fragment.NavigationBarFragment;
import com.leo.salt.fragment.PowerFragment;
import com.leo.salt.fragment.SettingsFragment;
import com.leo.salt.fragment.StatusBarCarrierFragment;
import com.leo.salt.fragment.StatusBarClockFragment;
import com.leo.salt.fragment.StatusBarIconFragment;
import com.leo.salt.fragment.StatusBarLogoFragment;
import com.leo.salt.fragment.StatusBarNetworkTrafficFragment;
import com.leo.salt.fragment.StatusBarTempFragment;
import com.leo.salt.fragment.SystemFragment;
import com.leo.salt.fragment.SystemSoundFragment;

import com.leo.salt.tools.apps.FragmentApps;
import com.leo.salt.tools.apps.ImgFragment;
import com.leo.salt.tools.autostarts.ManageAutoStarts;

import com.leo.salt.tweaks.base.BaseSettingActivity;
import com.leo.salt.tweaks.base.BaseSettingUIActivity;
import com.leo.salt.tweaks.base.BaseSubActivity;


import java.io.Serializable;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.PrefUtils.DayNight;

public class FragUIActivity extends  BaseSettingActivity{


    @Override
    protected int initLayout() {
        return R.layout.activity_ui;
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
            string = ((getResources().getConfiguration().uiMode & 48) == 32 ? 1 : null) != null ? "AppTheme.Main.Dark" : "AppTheme.Main.UI";
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
            case CLOCK:
                fragment = new StatusBarClockFragment();
                break;
            case Logo:
                fragment = new StatusBarLogoFragment();
                break;
            case NetworkTraffic:
                fragment = new StatusBarNetworkTrafficFragment();
                break;
            case StatusbarCarrier:
                fragment = new StatusBarCarrierFragment();
                break;
            case BatteryBar:
                fragment = new BatterybarFragment();
                break;
            case Temp:
                fragment = new StatusBarTempFragment();
                break;
            case Navbg:
                fragment = new NavigationBarBackgroundFragment();
                break;

        }
        return fragment;
    }

    public enum FragmentType implements Serializable {
        CLOCK("grid_clock"),

        Logo("grid_logo"),
        BatteryBar("grid_battery_bar"),
        Temp("grid_temp"),
        Navbg("grid_navigation_bar_bg_title"),
        StatusbarCarrier("grid_network_carrier"),
        NetworkTraffic("grid_network_speed");
        String mResTitle;
        FragmentType(String resTitle){
            mResTitle = resTitle;

        }
    }


}

