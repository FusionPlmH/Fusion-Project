package com.fusionleo.salt.activity
import android.app.Fragment
import android.os.Bundle
import java.io.Serializable
import com.fusionleo.salt.R
import com.fusionleo.salt.autostarts.ManageAutostarts
import com.fusionleo.salt.base.BaseSubActivity
import com.fusionleo.salt.fragment.*
import com.fusionleo.salt.kt.FragmentApplistions
import com.fusionleo.salt.kt.FragmentPerformance
import com.fusionleo.salt.kt.ImgFragment
import com.fusionleo.salt.ui.*
import com.fusionleo.salt.wallpaper.*

class SubActivity : BaseSubActivity() {
    override fun initStatusBarColor(): Boolean {
        return true
    }

    override fun initLayout(): Int {
        return R.layout.activity_simple_container
    }
    override fun onCreate(savedInstanceState: Bundle?) {

        super.onCreate(savedInstanceState)
        val type = intent.getSerializableExtra(KEY_TYPE) as FragmentType
        if (type != null) {
            setupToolBar(type.mResTitle, true)
            addContent(getFragmentByType(type))
        }
    }

    private fun addContent(fragment: Fragment) {
        val fragmentTransaction = fragmentManager.beginTransaction()
        fragmentTransaction.replace(R.id.fragment_container, fragment)
        fragmentTransaction.commit()
    }

    private fun getFragmentByType(type: FragmentType): Fragment {
        var fragment: Fragment? = null
        when (type) {
            SubActivity.FragmentType.StatusBarTime -> fragment = StatusBarClockFragment()
            SubActivity.FragmentType.StatusBarIcon -> fragment = StatusBarIconTabLayoutFragment()
            SubActivity.FragmentType.StatusBarLabel -> fragment = StatusBarOperatorFragment()
            SubActivity.FragmentType.StatusBarTemperature -> fragment = StatusBarCarrierFragment()
            SubActivity.FragmentType.StatusBarNetworkspeed -> fragment = StatusBarNetworkTrafficFragment()
            SubActivity.FragmentType.StatusBarBattery -> fragment = StatusBarBatteryTabLayoutFragment()
            SubActivity.FragmentType.StatusBarBackground -> fragment = StatusBarBackgroundWallpaperFragment()
            SubActivity.FragmentType.StatusBarWallpaperPicker -> fragment = StatusBarWallpaperPicker()
            SubActivity.FragmentType.NotificationPanelTime -> fragment = QSClockTabLayoutFragment()
            SubActivity.FragmentType.NotificationPanelButton -> fragment = PulldownButtonFragment()
            SubActivity.FragmentType.NotificationPanelItems -> fragment = PulldownNotificationFragment()
            SubActivity.FragmentType.NotificationPanelCarrier -> fragment = PulldownNotificationCarrierFragment()
            SubActivity.FragmentType.NotificationPanelOther -> fragment = PulldownNotificationOthersFragment()
            SubActivity.FragmentType.StatusBarWeather -> fragment = StatusBarWeatherFragment()
            SubActivity.FragmentType.NotificationPanelBackground -> fragment = NotificationPanelBGTabLayoutFragment()
            SubActivity.FragmentType.NotificationPanelItemsWallpaperPicker -> fragment = NotificationWallpaperPicker()
            SubActivity.FragmentType.NotificationPanelWallpaperPicker -> fragment = QSWallpaperPicker()
            SubActivity.FragmentType.TaskBackground -> fragment = TaskBackgroundWallpaperFragment()
            SubActivity.FragmentType.TaskApps -> fragment = TaskAppsFragment()
            SubActivity.FragmentType.TaskOthers -> fragment = TaskOthersFragment()
            SubActivity.FragmentType.TaskWallpaperPicker -> fragment = RecentsWallpaperPicker()
            SubActivity.FragmentType.KeyguardTime -> fragment = LockScreenTextClockFragment()
            SubActivity.FragmentType.KeyguardWeather -> fragment = LockScreenWeatherFragment()
            SubActivity.FragmentType.KeyguardCarrier -> fragment = LockScreenCarrierFragment()
            SubActivity.FragmentType.KeyguardMore -> fragment = LockScreenOthersFragment()
            SubActivity.FragmentType.PowerWallpaperPicker -> fragment = PowerMenuWallpaperPicker()
            SubActivity.FragmentType.LauncherWallpaperPicker -> fragment = LauncherWallpaperPicker()
            SubActivity.FragmentType.LauncherBackground -> fragment = LauncherBackgroundWallpaperFragment()
            SubActivity.FragmentType.Launcher -> fragment = StatusBarLauncherTabLayoutFragment()
            SubActivity.FragmentType.CallLocation -> fragment = CityPositionFragment()
            SubActivity.FragmentType.CallBackground -> fragment = CallBackgroundFragment()
            SubActivity.FragmentType.CallWallpaperPicker -> fragment = CallWallpaperPicker()
            SubActivity.FragmentType.GestureStatusBar -> fragment = StatusBarActionFragment()
            SubActivity.FragmentType.GestureKeys -> fragment = StatusBarKyesActionTabLayoutFragment()
            SubActivity.FragmentType.GestureAwake -> fragment = ScreenWakeFragment()
            SubActivity.FragmentType.GestureFinger -> fragment = MultiTouchFragment()
            SubActivity.FragmentType.Autostart -> fragment = ManageAutostarts()
            SubActivity.FragmentType.DrawerWallpaperPicker -> fragment = DrawWallpaperPicker()
            SubActivity.FragmentType.Power -> fragment = PowerMeunFragment()
            SubActivity.FragmentType.Animation -> fragment = SystemAnimationFragment()
            SubActivity.FragmentType.NavBar -> fragment = NavigationBarTabLayoutFragment()
            SubActivity.FragmentType.NavBarWallpaperPicker -> fragment = NavBarWallpaperPicker()
            SubActivity.FragmentType.POP -> fragment = POPFragment()
            SubActivity.FragmentType.powerBG -> fragment = PowerMeunbgFragment()
            SubActivity.FragmentType.poweritems -> fragment = PowerMeunItemsFragment()
            SubActivity.FragmentType.Tools -> fragment = SettingsFragment()
            SubActivity.FragmentType.Log -> fragment = LogThatShitFragment()
            SubActivity.FragmentType.IMG -> fragment = ImgFragment()
            SubActivity.FragmentType.Property -> fragment = FragmentPerformance()
            SubActivity.FragmentType.Apps -> fragment = FragmentApplistions()
            SubActivity.FragmentType.Floating -> fragment = FloatingFragment()

            SubActivity.FragmentType. Sound -> fragment = SystemSoundFragment()
        }
        return fragment
    }

    enum class FragmentType constructor(internal var mResTitle: Int) : Serializable {

        Sound(R.string.list_grid_sound),

        Floating(R.string.list_grid_floating),
        IMG(R.string.assist_grid_img),
        Property(R.string.assist_grid_property),
        Apps(R.string.assist_grid_apps),
        Log(R.string.assist_grid_log),
        Tools(R.string.leotoos),
        poweritems(R.string.grid_task_brightness),
        powerBG(R.string.list_grid_background),
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
        StatusBarBattery(R.string.list_grid_battery),
        StatusBarTime(R.string.list_grid_clock),
        StatusBarIcon(R.string.list_grid_icon),
        StatusBarLabel(R.string.list_grid_label),
        StatusBarTemperature(R.string.list_grid_temperature),
        StatusBarNetworkspeed(R.string.list_grid_networkspeed)
    }

    companion object {
        val KEY_TYPE = "FRAGMENT_TYPE"
    }


}

