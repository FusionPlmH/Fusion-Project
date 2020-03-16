package com.leo.salt.activity
import android.app.Fragment
import android.os.Bundle
import java.io.Serializable
import com.leo.salt.R
import com.leo.salt.autostarts.ManageAutostarts
import com.leo.salt.base.BaseSubActivity
import com.leo.salt.fragment.*
import com.leo.salt.kt.FragmentApplistions
import com.leo.salt.kt.FragmentPerformance
import com.leo.salt.kt.ImgFragment
import com.leo.salt.ui.*
import com.leo.salt.wallpaper.*

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
            SubActivity.FragmentType.NotificationPanelCarrier -> fragment = PulldownNotificationCarrierFragment()
            SubActivity.FragmentType.NotificationPanelOther -> fragment = PulldownNotificationOthersFragment()
            SubActivity.FragmentType.NotificationPanelBackground -> fragment = NotificationPanelBGTabLayoutFragment()
            SubActivity.FragmentType.NotificationPanelWallpaperPicker -> fragment = QSWallpaperPicker()
            SubActivity.FragmentType.TaskBackground -> fragment = TaskBackgroundWallpaperFragment()

            SubActivity.FragmentType.TaskWallpaperPicker -> fragment = RecentsWallpaperPicker()
            SubActivity.FragmentType.KeyguardCarrier -> fragment = LockScreenCarrierFragment()
            SubActivity.FragmentType.KeyguardMore -> fragment = LockScreenOthersFragment()
            SubActivity.FragmentType.AnalogClock -> fragment = PulldownAnalogClockFragment()
            SubActivity.FragmentType.GestureFinger -> fragment = MultiTouchFragment()
            SubActivity.FragmentType.Autostart -> fragment = ManageAutostarts()
            SubActivity.FragmentType.Animation -> fragment = SystemAnimationFragment()
            SubActivity.FragmentType.PowerWallpaperPicker -> fragment = PowerMenuWallpaperPicker()
            SubActivity.FragmentType.POP -> fragment = POPFragment()
            SubActivity.FragmentType.GestureKeys -> fragment = GlobalKyesActionTabLayoutFragment()
            SubActivity.FragmentType.Tools -> fragment = SettingsFragment()
            SubActivity.FragmentType.Log -> fragment = LogThatShitFragment()
            SubActivity.FragmentType.IMG -> fragment = ImgFragment()
            SubActivity.FragmentType.Property -> fragment = FragmentPerformance()
            SubActivity.FragmentType.Apps -> fragment = FragmentApplistions()
            SubActivity.FragmentType. NotificationPanelDeviceInfo -> fragment =PulldownDeviceInfoFragment()
            SubActivity.FragmentType.  PowerMeun -> fragment = PowerMeunTabLayoutFragment()
            SubActivity.FragmentType. Sound -> fragment = SystemSoundFragment()
            SubActivity.FragmentType.  GestureHome-> fragment = HomeTouchFragment()
            SubActivity.FragmentType.Floating -> fragment = FloatingFragment()
            SubActivity.FragmentType.GestureStatusBar -> fragment = StatusBarActionFragment()
            SubActivity.FragmentType. Voltage -> fragment = StatusBarVoltageFragment()
            SubActivity.FragmentType. stockpowerBG -> fragment = PowerMeunbgFragment()
            SubActivity.FragmentType. Edge -> fragment = EdgeScreen()
            SubActivity.FragmentType.  Recents -> fragment =RecentsTabLayoutFragment()
            SubActivity.FragmentType.LauncherWallpaperPicker -> fragment = LauncherWallpaperPicker()
            SubActivity.FragmentType.Launcher -> fragment = LauncherBackgroundWallpaperFragment()
            SubActivity.FragmentType.Alarm -> fragment = LockScreenAlarmFragment()
            SubActivity.FragmentType.Weather -> fragment = LockScreenWeatherFragment()
            SubActivity.FragmentType.City -> fragment = CityLocationFragment()
        }
        return fragment
    }

    enum class FragmentType constructor(internal var mResTitle: Int) : Serializable {
        City(R.string.list_grid_city_location),
        Weather(R.string.list_grid_weather),
        Alarm(R.string.list_grid_alarm),
        Launcher(R.string.list_grid_launcher),
        LauncherWallpaperPicker(R.string.select_wallpaper),
        Recents(R.string.list_grid_recents),
        Edge(R.string.edge_single_plus_name),
        Sound(R.string.list_grid_sound),
        IMG(R.string.assist_grid_img),
        Property(R.string.assist_grid_property),
        Apps(R.string.assist_grid_apps),
        Log(R.string.assist_grid_log),
        Tools(R.string.leotoos),
        Animation(R.string.list_grid_system),
        Voltage(R.string.list_grid_voltage),
        POP(R.string.list_grid_pop),
        stockpowerBG(R.string.list_grid_background),
        // stock(R.string.list_grid_system),
        Floating(R.string.list_grid_floating),
        Autostart(R.string.gv_name_autostart),
        GestureKeys(R.string.grid_hardware),
        GestureFinger(R.string. grid_gesture),
        GestureStatusBar(R.string.list_grid_action),
        GestureHome(R.string.grid_gesture_desktop),
        KeyguardCarrier(R.string.list_grid_carrier),
        KeyguardMore(R.string.list_grid_unlock),
        AnalogClock(R.string.list_grid_analog_clock),
        TaskWallpaperPicker(R.string.select_wallpaper),
        //TaskOthers(R.string.list_grid_ram),
        TaskBackground(R.string.list_grid_background),
        PowerWallpaperPicker(R.string.select_wallpaper),
        NotificationPanelWallpaperPicker(R.string.select_wallpaper),
        NotificationPanelBackground(R.string.list_grid_background),
        NotificationPanelOther(R.string.list_grid_other),
        PowerMeun(R.string.gv_name_power),
        NotificationPanelCarrier(R.string.list_grid_carrier),
        NotificationPanelDeviceInfo(R.string.grid_task_apps),
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

