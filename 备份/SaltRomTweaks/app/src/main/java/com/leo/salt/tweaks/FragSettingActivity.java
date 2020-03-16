package com.leo.salt.tweaks;

import android.app.Fragment;
import android.app.FragmentTransaction;
import android.os.Bundle;

import com.leo.salt.deviceinfo.ExtraInfoFragment;
import com.leo.salt.fragment.AppProcessBlacklist;
import com.leo.salt.fragment.BixbyFragment;
import com.leo.salt.fragment.BlacklistFragment;
import com.leo.salt.fragment.ContactMeFragment;
import com.leo.salt.fragment.FloatBallFragment;
import com.leo.salt.fragment.GlobalGesturesFragment;
import com.leo.salt.fragment.HomeFragment;
import com.leo.salt.fragment.HwKyesFragment;
import com.leo.salt.fragment.ImmersiveNavigationBlacklistFragment;

import com.leo.salt.fragment.KeyguardCarrierFragment;
import com.leo.salt.fragment.LogThatShitFragment;
import com.leo.salt.fragment.MiniPOPFragment;
import com.leo.salt.fragment.NavigationBarFragment;
import com.leo.salt.fragment.PowerMenuFragment;
import com.leo.salt.fragment.PulldownDateFragment;
import com.leo.salt.fragment.PulldownDeviceInfoFragment;
import com.leo.salt.fragment.SettingsFragment;
import com.leo.salt.fragment.StatusBarActionFragment;
import com.leo.salt.fragment.StatusBarBackgroundFragment;
import com.leo.salt.fragment.StatusBarBatteryFragment;
import com.leo.salt.fragment.StatusBarClockFragment;
import com.leo.salt.fragment.StatusBarIconFragment;
import com.leo.salt.fragment.SystemFragment;
import com.leo.salt.fragment.SystemLauncherFragment;
import com.leo.salt.fragment.SystemSoundFragment;
import com.leo.salt.fragment.TaskBackgroundFragment;
import com.leo.salt.fragment.TaskStorageFragment;
import com.leo.salt.gridView.QSClockTabLayoutFragment;
import com.leo.salt.tools.apps.ImgFragment;
import com.leo.salt.tools.autostarts.ManageAutoStarts;
import com.leo.salt.tweaks.base.BaseSettingActivity;
import com.leo.salt.tweaks.base.BaseSubActivity;

import java.io.Serializable;

import static com.leo.salt.utils.PrefUtils.DayNight;

public class FragSettingActivity extends BaseSettingActivity {


    @Override
    protected int initLayout() {
        return R.layout.activity_setting;
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

    private void addContent(Fragment fragment){
        FragmentTransaction fragmentTransaction = getFragmentManager().beginTransaction();
        fragmentTransaction.replace(R.id.fragment_container,fragment);
        fragmentTransaction.commit();
    }
    public void setLeoTheme(){
        if(DayNight(getApplicationContext())){
            setTheme(R.style.AppTheme_Main_Dark);
            // reload();
        } else {
            setTheme(R.style.AppTheme_Main);
            //  reload();
        }
    }

    private Fragment getFragmentByType(FragmentType type){
        Fragment fragment = null;
        switch (type){


            case Icon:
                fragment = new StatusBarIconFragment();
                break;
            case HWKWYS:
                fragment = new HwKyesFragment();
                break;
            case Blacklist:
                fragment = new BlacklistFragment();
                break;
            case PowerMenu:
                fragment = new PowerMenuFragment();
                break;
            case GlobalGestures:
                fragment = new GlobalGesturesFragment();
                break;
            case AppSetting:
                fragment = new SettingsFragment();
                break;
            case System:
                fragment = new SystemFragment();
                break;
            case GesturesLauncher:
                fragment = new SystemLauncherFragment();
                break;
            case  Storage:
                fragment = new TaskStorageFragment();
                break;
            case  TaskBG:
                fragment = new TaskBackgroundFragment();
                break;

            case  NavBlacklist:
                fragment = new ImmersiveNavigationBlacklistFragment();
                break;
            case  Battery:
                fragment = new StatusBarBatteryFragment();
                break;
            case  StatusBarAction:
                fragment = new StatusBarActionFragment();
                break;
            case  StatusBarBG:
                fragment = new StatusBarBackgroundFragment();
                break;
            case  KeyguardCarrier:
                fragment = new KeyguardCarrierFragment();
                break;
            case  AppProcess:
                fragment = new AppProcessBlacklist();
                break;
            case NavigationBar:
                fragment = new NavigationBarFragment();
                break;
            case QSDATE:
                fragment = new QSClockTabLayoutFragment();
                break;
            case FloatBall:
                fragment = new FloatBallFragment();
                break;
            case  MiniPOP:
                fragment = new MiniPOPFragment();
                break;
            case  PulldownDeviceInfo:
                fragment = new PulldownDeviceInfoFragment();
                break;
        }
        return fragment;
    }

    public enum FragmentType implements Serializable {
        QSDATE("grid_clockdate_title"),
        NavigationBar("grid_navigation_bar_title"),
        FloatBall("grid_floatball"),
        NavBlacklist("navbar_blacklist_title"),
        System("grid_system"),
        StatusBarAction("grid_other_statusbar_title"),
        StatusBarBG("grid_status_bar_background"),
        AppSetting("leo_slide_meun_settings"),
        AppProcess("grid_AppProcess"),
        HWKWYS("keypress_navigation_title"),
        Battery("grid_battery"),
        Blacklist("blacklist_title"),
        PowerMenu("grid_powermenu_title"),
        GlobalGestures("grid_screen_three_title"),
        GesturesLauncher("grid_screen_home_title"),
        TaskBG("grid_system_task_bg_title"),
        KeyguardCarrier("grid_keyguard_carrier"),
        Storage("storage_name"),
        MiniPOP("grid_minipop"),
        PulldownDeviceInfo("grid_info_title"),
        Icon("grid_signal_logo");
        String mResTitle;
        FragmentType(String resTitle){
            mResTitle = resTitle;

        }

    }


}



