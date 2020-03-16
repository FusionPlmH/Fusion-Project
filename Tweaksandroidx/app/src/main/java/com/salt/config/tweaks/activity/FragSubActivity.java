package com.salt.config.tweaks.activity;





import android.os.Bundle;

import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentTransaction;

import com.salt.base.SaltActivity;
import com.salt.module.ContactMeFragment;
import com.salt.module.ExtraInfoFragment;
import com.salt.module.MirrorFragment;
import com.salt.module.autostarts.ManageAutoStarts;
import com.salt.config.R;
import com.salt.config.tweaks.fragment.AppsSetting;
import com.salt.config.tweaks.fragment.BixbyFragment;
import com.salt.config.tweaks.fragment.EdgeFragment;
import com.salt.config.tweaks.fragment.FingerprintFragment;
import com.salt.config.tweaks.fragment.FloatBallFragment;
import com.salt.config.tweaks.fragment.GlobalGesturesFragment;
import com.salt.config.tweaks.fragment.HwKyesFragment;
import com.salt.config.tweaks.fragment.KeyguardActionFragment;
import com.salt.config.tweaks.fragment.KeyguardAlarmFragment;
import com.salt.config.tweaks.fragment.KeyguardDetailFragment;
import com.salt.config.tweaks.fragment.KeyguardLunarFragment;
import com.salt.config.tweaks.fragment.KeyguardWeatherFragment;
import com.salt.config.tweaks.fragment.LogThatShitFragment;
import com.salt.config.tweaks.fragment.MiniPOPFragment;
import com.salt.config.tweaks.fragment.NavigationBarFragment;
import com.salt.config.tweaks.fragment.PowerFragment;
import com.salt.config.tweaks.fragment.PowerMenuFragment;
import com.salt.config.tweaks.fragment.PulldownDataUsageBarFragment;
import com.salt.config.tweaks.fragment.PulldownDeviceInfoFragment;
import com.salt.config.tweaks.fragment.PulldownNotificationFuzzy;
import com.salt.config.tweaks.fragment.StatusBarActionFragment;
import com.salt.config.tweaks.fragment.StatusBarActivityBlacklist;
import com.salt.config.tweaks.fragment.StatusBarIconFragment;
import com.salt.config.tweaks.fragment.StatusBarNetworkTrafficFragment;
import com.salt.config.tweaks.fragment.StatusBarTempFragment;
import com.salt.config.tweaks.fragment.SystemLauncherFragment;
import com.salt.config.tweaks.fragment.SystemSoundFragment;
import com.salt.config.tweaks.fragment.TaskStorageFragment;
import com.salt.config.tweaks.fragment.VolumeFragment;
import com.salt.config.ui.SystemTabLayoutFragment;

import java.io.Serializable;

import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.utils.KEY_TYPE;

public class FragSubActivity extends SaltActivity {
    FragmentType type;

    @Override
    protected int initLayout() {
        return R.layout.activity_container;
    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }

    @Override
    protected String initAppName() {
        type = (FragmentType) getIntent().getSerializableExtra(KEY_TYPE);
        return type.mResTitle;
    }

    @Override
    protected void initData() {

        if(type!=null){
            setupToolBar(true);
            addContent(getFragmentByType(type));
        }
    }


    private void addContent(Fragment fragment){
        FragmentTransaction fragmentTransaction =getSupportFragmentManager().beginTransaction();
        fragmentTransaction.replace(R.id.container_fragment,fragment);
        fragmentTransaction.commit();
    }


    private Fragment getFragmentByType(FragmentType type){
        Fragment fragment = null;
        switch (type){
            case Mail:
                fragment = new ContactMeFragment();
                break;
            case HardwareInfo:
                fragment = new ExtraInfoFragment();
                break;
            case Img:
                fragment = new MirrorFragment();
                break;
            case autostart:
                fragment = new ManageAutoStarts();
                break;
            case log:
                fragment = new LogThatShitFragment();
                break;
            case Apps:
                fragment = new AppsSetting();
                break;
            case StatusBarTemp:
                fragment = new StatusBarTempFragment();
                break;
            case StatusBarBlacklist:
                fragment = new StatusBarActivityBlacklist();
                break;
            case StatusBarNetworkTraffic:
                fragment = new StatusBarNetworkTrafficFragment();
                break;
            case PulldownDeviceInfo:
                fragment = new PulldownDeviceInfoFragment();
                break;
            case KeyguardLunar:
                fragment = new KeyguardLunarFragment();
                break;

            case NotificationFuzzy:
                fragment = new PulldownNotificationFuzzy();
                break;
            case KeyguardWeather:
                fragment = new KeyguardWeatherFragment();
                break;
            case KeyguardAlarm:
                fragment = new KeyguardAlarmFragment();
                break;
            case KeyguardDetail:
                fragment = new KeyguardDetailFragment();
                break;
            case StatusBarAction:
                fragment = new StatusBarActionFragment();
                break;
            case PowerMenu:
                fragment = new PowerMenuFragment();
                break;
            case Bixby:
                fragment = new BixbyFragment();
                break;
            case HwKyes:
                fragment = new HwKyesFragment();
                break;
            case Power:
                fragment = new PowerFragment();
                break;
            case GlobalGestures:
                fragment = new GlobalGesturesFragment();
                break;
            case KeyguardAction:
                fragment = new KeyguardActionFragment();
                break;
            case SystemLauncher:
                fragment = new SystemLauncherFragment();
                break;
            case TaskStorage:
                fragment = new TaskStorageFragment();
                break;
            case FloatBall:
                fragment = new FloatBallFragment();
                break;
            case MiniPOP:
                fragment = new MiniPOPFragment();
                break;
            case NavigationBarHOME:
                fragment = new NavigationBarFragment();
                break;
            case Fingerprint:
                fragment = new FingerprintFragment();
                break;
            case Volume:
                fragment = new VolumeFragment();
                break;
            case EdgeBar:
                fragment = new EdgeFragment();
                break;
        }
        return fragment;
    }

    public enum FragmentType implements Serializable {
        EdgeBar(  getApksStringInt("grid_edge")),
        Volume(getApksStringInt(R.string.skip_tracks_category)),
        Fingerprint(getApksStringInt("keypress_fingerprint_title")),
        NavigationBarHOME(getApksStringInt("grid_navigation_bar_title")),
        MiniPOP(getApksStringInt("grid_minipop")),
        FloatBall(getApksStringInt("grid_floatball")),
        TaskStorage(getApksStringInt("storage_name")),
        SystemLauncher(getApksStringInt("grid_screen_home_title")),
        KeyguardAction(getApksStringInt("grid_keyguard_gesture")),
        GlobalGestures(getApksStringInt("grid_screen_three_title")),
        Power(getApksStringInt("keypress_power_title")),
        Bixby(getApksStringInt("keypress_bixby_title")),
        HwKyes(getApksStringInt("keypress_navigation_title")),
        PowerMenu(getApksStringInt("grid_powermenu_title")),
        StatusBarAction(getApksStringInt("grid_other_statusbar_title")),
        KeyguardDetail(getApksStringInt("lock_detail")),
        KeyguardAlarm(getApksStringInt("grid_keyguard_alarm")),
        KeyguardWeather(getApksStringInt("widget_name")),
        NotificationFuzzy(getApksStringInt("grid_status_bar_background")),
        KeyguardLunar(getApksStringInt("lock_lunar")),
        PulldownDeviceInfo(getApksStringInt("grid_info_title")),
        HardwareInfo(getApksStringInt("device_info")),
        Img(getApksStringInt("img_name")),
        autostart(getApksStringInt("autostarts_name")),
        Mail(getApksStringInt("about_service")),
        log(getApksStringInt("grid_log")),
        StatusBarTemp(getApksStringInt("grid_temp")),
        StatusBarBlacklist(getApksStringInt(R.string.hide_nav_whitelist)),
        StatusBarNetworkTraffic(getApksStringInt("grid_network_speed")),
        Apps(getApksStringInt(R.string.settings));
        String mResTitle;
        FragmentType(String resTitle){
            mResTitle = resTitle;
        }
    }
}

