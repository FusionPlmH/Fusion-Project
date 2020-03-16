

package com.tweaks.leo.activity;


;
import android.app.Fragment;
import android.app.FragmentManager;
import android.app.FragmentTransaction;
import android.content.Intent;
import android.os.Bundle;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;

import java.io.Serializable;


import com.tweaks.leo.R;

import com.tweaks.leo.autostarts.ManageAutostarts;
import com.tweaks.leo.base.BaseSubActivity;

import com.tweaks.leo.fragment.*;


import com.tweaks.leo.kt.FragmentApplistions;
import com.tweaks.leo.kt.FragmentPerformance;
import com.tweaks.leo.kt.ImgFragment;
import com.tweaks.leo.ui.NavigationBarTabLayoutFragment;
import com.tweaks.leo.ui.StatusBarBatteryTabLayoutFragment;
import com.tweaks.leo.ui.StatusBarIconTabLayoutFragment;
import com.tweaks.leo.ui.StatusBarKyesActionTabLayoutFragment;
import com.tweaks.leo.ui.StatusBarLauncherTabLayoutFragment;
import com.tweaks.leo.update.UpdateFragment;

import com.tweaks.leo.utils.AlertDialogFragment;
import com.tweaks.leo.utils.Constants;
import com.tweaks.leo.utils.root.BackupRestoreIntentService;
import com.tweaks.leo.wallpaper.CallWallpaperPicker;
import com.tweaks.leo.wallpaper.DrawWallpaperPicker;
import com.tweaks.leo.wallpaper.LauncherWallpaperPicker;
import com.tweaks.leo.wallpaper.NavBarWallpaperPicker;
import com.tweaks.leo.wallpaper.NotificationWallpaperPicker;
import com.tweaks.leo.wallpaper.PowerMenuWallpaperPicker;
import com.tweaks.leo.wallpaper.QSWallpaperPicker;
import com.tweaks.leo.wallpaper.RecentsWallpaperPicker;
import com.tweaks.leo.wallpaper.StatusBarWallpaperPicker;


public class SubActivity extends BaseSubActivity  {
    public static final String KEY_TYPE = "FRAGMENT_TYPE";


    @Override
    protected int initLayout() {
        return R.layout.activity_simple_container;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {

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

    private Fragment getFragmentByType(FragmentType type){
        Fragment fragment = null;
        switch (type){


            case  StatusBarTime:
                fragment = new StatusBarClockFragment();
                break;
            case  StatusBarIcon:
                fragment = new StatusBarIconTabLayoutFragment();
                break;
            case  StatusBarLabel:
                fragment = new StatusBarOperatorFragment();
                break;
            case  StatusBarTemperature:
                fragment = new StatusBarCarrierFragment();
                break;
            case  StatusBarNetworkspeed:
                fragment = new StatusBarNetworkTrafficFragment();
                break;
            case  StatusBarBattery:
                fragment = new StatusBarBatteryTabLayoutFragment();
                break;

            case  StatusBarChangeColor:
                fragment = new StatusBarChangeColorFragment();
                break;
            case  StatusBarBackground:
                fragment = new StatusBarBackgroundWallpaperFragment();
                break;
            case  StatusBarWallpaperPicker:
                fragment = new StatusBarWallpaperPicker();
                break;
            case   NotificationPanelTime:
                fragment = new PulldownDateFragment();
                break;
            case    NotificationPanelButton:
                fragment = new PulldownButtonFragment();
                break;
            case    NotificationPanelItems:
                fragment = new PulldownNotificationFragment();
                break;

            case    NotificationPanelCarrier:
                fragment = new PulldownNotificationCarrierFragment();
                break;
            case  NotificationPanelOther:
                fragment = new PulldownNotificationOthersFragment();
                break;
            case  StatusBarWeather:
                fragment = new StatusBarWeatherFragment();
                break;
            case  NotificationPanelBackground:
                fragment = new PulldownBackgroundWallpaperFragment();
                break;
            case  NotificationPanelItemsWallpaperPicker:
                fragment = new NotificationWallpaperPicker();
                break;
            case  NotificationPanelWallpaperPicker:
                fragment = new QSWallpaperPicker();
                break;
            case  TaskBackground:
                fragment = new TaskBackgroundWallpaperFragment();
                break;
            case  TaskApps:
                fragment = new TaskAppsFragment();
                break;
            case  TaskOthers:
                fragment = new TaskOthersFragment();
                break;
            case TaskWallpaperPicker:
                fragment = new RecentsWallpaperPicker();
                break;
            case KeyguardTime:
                fragment = new LockScreenTextClockFragment();
                break;


            case KeyguardWeather:
                fragment = new LockScreenWeatherFragment();
                break;
            case KeyguardCarrier:
                fragment = new LockScreenCarrierFragment();
                break;
            case KeyguardMore:
                fragment = new LockScreenOthersFragment();
                break;
            case PowerWallpaperPicker:
                fragment = new PowerMenuWallpaperPicker();
                break;
            case LauncherWallpaperPicker:
                fragment = new LauncherWallpaperPicker();
                break;
            case LauncherBackground:
                fragment = new LauncherBackgroundWallpaperFragment();
                break;
            case Launcher:
                fragment = new StatusBarLauncherTabLayoutFragment();
                break;
            case CallLocation:
                fragment = new CityPositionFragment();
                break;
            case CallBackground:
                fragment = new CallBackgroundFragment();
                break;
            case CallWallpaperPicker:
                fragment = new CallWallpaperPicker();
                break;
            case GestureStatusBar:
                fragment = new StatusBarActionFragment();
                break;
            case GestureKeys:
                fragment = new StatusBarKyesActionTabLayoutFragment();
                break;
            case GestureAwake:
                fragment = new ScreenWakeFragment();
                break;
            case GestureFinger:
                fragment = new MultiTouchFragment();
                break;


            case Autostart:
                fragment = new ManageAutostarts();
                break;
            case DrawerWallpaperPicker:
                fragment = new DrawWallpaperPicker();
                break;
            case Power:
                fragment = new PowerMeunFragment();
                break;

            case Animation:
                fragment = new SystemAnimationFragment();
                break;
            case NavBar:
                fragment = new NavigationBarTabLayoutFragment();
                break;
            case NavBarWallpaperPicker:
                fragment = new NavBarWallpaperPicker();
                break;
            case update:
                fragment = new UpdateFragment();
                break;
            case POP:
                fragment = new POPFragment();
                break;
            case powerBG:
                fragment = new PowerMeunbgFragment();
                break;
            case  poweritems:
                fragment = new PowerMeunItemsFragment();
                break;
            case  Tools:
                fragment = new SettingsFragment();
                break;
            case  Log:
                fragment = new LogThatShitFragment();
                break;
            case  IMG:
                fragment = new ImgFragment();
                break;
            case  Property:
                fragment = new FragmentPerformance();
                break;
            case  Apps:
                fragment = new FragmentApplistions();
                break;
        }
        return fragment;
    }

    public enum FragmentType implements Serializable {
        IMG(R.string.assist_grid_img),
        Property(R.string.assist_grid_property),
        Apps(R.string.assist_grid_apps),
        Log(R.string.assist_grid_log),
        Tools(R.string.leo_tools_set),
        poweritems(R.string.grid_task_brightness),
        powerBG(R.string.list_grid_background),
        update(R.string.update),
        NavBar(R.string.list_grid_navigationbar),
        NavBarWallpaperPicker(R.string.select_wallpaper),
        Animation(R.string.list_grid_system),
        POP(R.string.list_grid_pop),
        Power(R.string.gv_name_power),
        DrawerWallpaperPicker(R.string.select_wallpaper),
        Autostart(R.string.gv_name_autostart),
        GestureFinger(R.string.grid_gesture),
        GestureAwake(R.string.grid_screenwake),
        GestureKeys(R.string.grid_hardware),
        GestureStatusBar(R.string.list_grid_action),
        CallWallpaperPicker(R.string.select_wallpaper),
        CallBackground(R.string.list_grid_call_background),
        CallLocation(R.string.list_grid_call_location),
        Launcher(R.string.list_grid_launcher),
        LauncherBackground(R.string.list_grid_launcher_background),
        LauncherWallpaperPicker(R.string.select_wallpaper),
        PowerWallpaperPicker(R.string.select_wallpaper),
        KeyguardMore(R.string.list_grid_more),
        KeyguardCarrier(R.string.list_grid_carrier),
        KeyguardWeather(R.string.grid_weather),
        KeyguardTime(R.string.list_grid_clock),
        TaskWallpaperPicker(R.string.select_wallpaper),
        TaskOthers(R.string.list_grid_ram),
        TaskApps(R.string.grid_task_apps),
        TaskBackground(R.string.list_grid_background),
        NotificationPanelWallpaperPicker(R.string.select_wallpaper),
        NotificationPanelItemsWallpaperPicker(R.string.select_wallpaper),
        NotificationPanelBackground(R.string.list_grid_background),
        StatusBarWeather(R.string.grid_status_weather),
        NotificationPanelOther(R.string.list_grid_other),
        NotificationPanelCarrier(R.string.list_grid_carrier),
        NotificationPanelItems(R.string.list_grid_notification),
        NotificationPanelButton(R.string.list_grid_button),
        NotificationPanelTime(R.string.list_grid_clock),
        StatusBarWallpaperPicker(R.string.select_wallpaper),
        StatusBarBackground(R.string.list_grid_background),
        StatusBarChangeColor(R.string.grid_statusbar_change),
        StatusBarBattery(R.string.list_grid_battery),
        StatusBarTime(R.string.list_grid_clock),
        StatusBarIcon(R.string.list_grid_icon),
        StatusBarLabel(R.string.list_grid_label),
        StatusBarTemperature(R.string.list_grid_temperature),
        StatusBarNetworkspeed(R.string.list_grid_networkspeed);
        int mResTitle;
        FragmentType(int resTitle){
            mResTitle = resTitle;
        }
    }



}

