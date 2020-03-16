#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGestureActionZoneWidth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_gestures_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherLocationEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_location_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherCurrentTempEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_currenttemp_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherLowTempEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_lowtemp_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherHighTempEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_hightemp_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherAQIEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_aqi_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherStateEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_state_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherSunriseEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_sunrise_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherSunsetEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_sunset_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherLocationFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_location_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherCurrentTempFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_currenttemp_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherLowTempFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_lowtemp_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherHighTempFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_hightemp_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherAQIFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_aqi_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherStateFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_state_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherSunriseFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_sunrise_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherSunsetFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_sunset_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherAllColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_all_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherAllColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherLocationColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_location_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherCurrentTempColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_currenttemp_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherLowTempColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_lowtemp_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherHighTempColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_hightemp_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherAQIColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_aqi_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherStateColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_state_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherSunriseColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_sunrise_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardWeatherSunsetColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_weather_sunset_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


///////////////////////////////////////////////////

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDisableStockBatteryIcon(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_disable_stock_battery_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingDownSlideDelete(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_disable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingVibrate(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_vibrate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingVibratelevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_vibrate_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingLeftStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_left_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingRightStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_right_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingDownStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_down_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingUPStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_up_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingClickStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_click_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingLeftString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_left_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingRightString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_right_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingDownString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_down_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingUPString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_up_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFloatingClickString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_ball_click_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFullscreenPowerMenu(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_hint_layout_disabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationEnabledBG(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_bg_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationTransparencyLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_transparency_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemEnabledCircular(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_circular_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemCircularLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_circular_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDisabledLockPulldown(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_disabled_lock_qs";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMavPortraitDisabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_portrait_disabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMavLandscapeDisabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_landscape_disabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMTextFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMDataColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_data_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMmMMSColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_mms_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMCallColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_call_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMALLColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMALLColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_all_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMultiSIMDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_multisim_displays";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBrightnessBGColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_brightness_seekbar_bg_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBrightnessActivityColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_brightness_seekbar_activity_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBrightnessControlColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_brightness_seekbar_control_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBrightnessMaxColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_brightness_seekbar_max_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuItem(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_menu_item";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuItemOrder(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_menu_item_order";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoEnabledBrightnessColorCustom(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_enabled_brightness_color_custom";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoEnabledBrightnessAllColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_enabled_brightness_color_all";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBrightnessAllColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_brightness_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBrightnessIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_brightness_icon_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBrightnessDtailIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_brightness_dtail_icon_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBrightnessRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_brightness_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoToggleLauncherTextColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_text_color_toggle";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherTextColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_text_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherTextRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_text_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherTextFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockTimeSecondDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_second_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getKeyguardSingleClockTimeSecondFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_second_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockTimeSecondSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_second_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockTimeSecondColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_second_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notice_button_text_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewAllColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notice_button_text_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewAllColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notice_button_text_all_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notice_button_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavIconRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemBgWallpaperBlurEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_blur_bg_wallpaper_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_gradient_bg_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientColorFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_gradient_bg_four_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientColorFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_gradient_bg_five_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientColorSix(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_gradient_bg_six_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemStrokeDashColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_bg_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemStrokeThickness(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_bg_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemStrokeDashWidth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_bg_stroke_dash_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemStrokeDashGap(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_bg_stroke_dash_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemStrokeEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_bg_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemBlurBgDegree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_blur_bg_wallpaper_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemBGStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_bg_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientBgStartColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_gradient_bg_one_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientBgCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_gradient_bg_two_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientBgEndColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_gradient_bg_three_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientEnableCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_gradient_three_bgcolor_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemBgGradientBgStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_gradient_bg_type";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientBgType(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_gradient_bg_model";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientBackGroundCornerRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_gradient_bg_corners_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemGradientBackGroundColorRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_gradient_bg_color_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemBgWallpaper(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_bg_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemWallpaperColorEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_bg_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_bg_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemBlurWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_item_blur_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorCloseEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_close_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownCarrierColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownCarrierRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSbuttonRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qs_icon_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_date_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_clock_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderSettingButtonRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_button_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDataUsageRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_data_usage_text_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSLabelRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qs_icon_label_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_clock_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarMainBatteryRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarTemperatureRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarTemperatureColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarCarrierRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarCarrierColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarWeatherRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarWeatherColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarSignalRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_signal_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarLogoRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_logo_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarLogoColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_logo_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarNetworkTrafficRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
    Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockRandomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_clock_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_clock_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarCustomSignalSlotFocusIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_slot_sim_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHideSlotFocusIcon(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_signal_call_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockHourVerticalSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_clock_hour_vertical_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockMinVerticalSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_clock_min_vertical_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockColorCustom(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_clock_color_custom";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockALLColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_all_clock_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockALLColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_all_clock_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockHourColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_hour_clock_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockMinColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_min_clock_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_clock_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockChinaTimeDetailColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_datail_clock_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockColonColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_colon_clock_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockLunarColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_lunar_clock_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockHourSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_hour_clock_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockMinSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_min_clock_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_clock_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockChinaTimeDetailSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_datail_clock_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockColonSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_colon_clock_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockLunarSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_lunar_clock_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockHourFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_hour_clock_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockMinFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_min_clock_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_clock_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockChinaTimeDetailFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_detail_clock_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockLunarFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_lunar_clock_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDetailsStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_clock_details_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateWeekOrientation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_data_week_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateWeekSymbol(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_week_symbol";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateWeekStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_week_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateWeekDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_week_disply";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateFormat(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_format";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateLunarStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_lunar_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateConstellationLocationStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_constellation_location";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateConstellationSymbolStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_constellation_symbol_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateConstellationDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_constellation_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateLunarString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_lunar_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_clock_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockLunarDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_lunar_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockDateDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_date_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardSingleClockTimeDetailDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_details_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

/////////////////////////////////////////////////////////////////////

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardAodClockWidget(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_aod_clock";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderSettingButtonColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_button_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDataUsageColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_data_usage_text_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficIconColor(
        JNIEnv *env,
        jobject /* this */) {
        std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_icon_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficIconALLColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficIconALLColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_all_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficIconCustomColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_custom_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoArray(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_array";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoCustomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoALLColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoColorAll(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_color_all_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_font_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoFontTwo(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_font_two";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoFontThree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_font_three";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoFontFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_font_four";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoFontFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_font_five";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoColorTwo(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color_two";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoColorThree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color_three";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoColorFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color_four";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoColorFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color_five";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfo(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoStyleTwo(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style_two";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoStyleThree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style_three";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoStyleFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style_four";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoStyleFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style_five";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDeviceInfoOrientation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarPolicyAlarm(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_alarm_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarPolicyBluetooth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_bluetooth_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarPolicySound(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_sound_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDualAppEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_dual_app_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDialingCityLocate(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_dialing_locate_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDialingCitySize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_dialing_locate_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDialingCityFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_dialing_locate_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDialingCityColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_dialing_locate_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDialingCityData(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_dialing_locate_data";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCityColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_locate_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}






extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBgWallpaperBlurEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_blur_bg_wallpaper_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_gradient_bg_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientColorFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_gradient_bg_four_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientColorFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_gradient_bg_five_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientColorSix(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_gradient_bg_six_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBgWallpaperBlurEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_blur_bg_wallpaper_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_gradient_bg_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientColorFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_gradient_bg_four_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientColorFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_gradient_bg_five_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientColorSix(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_gradient_bg_six_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsVibratorEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_click_vibrator";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsVibrationLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_click_vibrator_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBgWallpaperBlurEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_blur_bg_wallpaper_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_gradient_bg_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientColorFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_gradient_bg_four_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientColorFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_gradient_bg_five_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientColorSix(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_gradient_bg_six_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBgWallpaperBlurEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_blur_bg_wallpaper_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_gradient_bg_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientColorFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_gradient_bg_four_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientColorFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_gradient_bg_five_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientColorSix(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_gradient_bg_six_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBgWallpaperBlurEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_blur_bg_wallpaper_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_gradient_bg_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientColorFour(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_gradient_bg_four_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientColorFive(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_gradient_bg_five_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientColorSix(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_gradient_bg_six_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavBarThoroughDisabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_global_disabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextLunarColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextLunarFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextDateAllColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextDateColorALL(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_colorall";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextDateColorCustom(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_color_custom";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockColorAll(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_colorall";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockAllColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockSecondSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_second_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockSecondColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_second_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockDetailColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_detail_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockDetailSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_detail_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockDetailFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_detail_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockDetail(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_detail";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockSecond(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_second";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockDetailStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_detail_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderTextClockCustomColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_color_custom";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuClickState(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_menu_click_state";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoGoogleSmartQuickUnlock(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_goole_smart_quick_unlock";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuConfirmDialog(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_confirm_dialog";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}////
//
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSbuttonColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qs_button_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSbuttonONColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qs_icon_on_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSbuttonOFFColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qs_icon_off_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoClockOnClickEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_clock_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavIconAllColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavHomeColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_home_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavBackColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_back_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavTaskColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_task_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavImeColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_ime_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavPinColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_pin_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavAllColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_all_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_icon_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMipEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMipBackAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_back_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLeoMipBackActionString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_back_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}




//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMipTaskAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_task_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLeoMipTaskActionString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_task_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMipFlashlightAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_flashlight_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLeoMipFlashlightActionString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_flashlight_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMipActionVibrateLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_vibration_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFlashlightIconEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_flashlight_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLeoMipActionVibrate(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_vibrate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMipHomeAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_home_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMipHomeActionString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_minip_home_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}





//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPullDownCarrierString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_carrier_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPullDownCarrierStringA(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_notification_carrier_string_a";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoTogglePullDownCarrier(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_keys_action_toggle";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoTogglePower(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_action_toggle";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPullDownBlurEffect(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_blur";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPullDownBlurEffectStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_blur_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFlashlightLowBattery(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_low_battery_flashlight";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBiometricUnlock(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_biometric_unlock";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHideIrisView(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_lock_iris";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPinCode(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pin_code";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerImageView(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_imageview";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerImageViewSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_imageview_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerImageViewColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_imageview_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextHint(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_hint";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextHintColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_hint_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextHintFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_hint_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextHintSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_hint_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextHintLinkWhiteTheme(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_hint_color_link";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextLinkWhiteTheme(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_text_color_link";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_text_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_text_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerTextStatus(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_text";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoKeyguardStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_keyguard";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownCarrier(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownCarrierColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_label_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownCarrierSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_label_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownCarrierFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_label_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorActionApp(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_icon_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorVibrator(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_vibrator";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownOutdoorVibratorLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_outdoor_vibrator_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBGStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBgBasicColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_only_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientBgStartColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_one_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientBgCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_two_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientBgEndColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_three_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientEnableCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_three_bgcolor_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuShowBG(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_show";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBgGradientBgStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_type";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientBgType(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_model";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientBackGroundCornerRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_corners_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuGradientBackGroundColorRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_color_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBgWallpaper(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuWallpaperColorEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBlurBgDegree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_blur_bg_wallpaper_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBgWallpaperAlphaEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBgWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper_alpha";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuStrokeDashColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuStrokeThickness(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuStrokeDashWidth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_dash_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuStrokeDashGap(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_dash_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuStrokeEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBlurWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_blur_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerMenuBlurWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_power_blur_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoThreeGestureVibrationLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_three_finger_gesture_vibrator_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoThreeGestureVibration(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_three_finger_gesture_vibrator_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGestureVibrationLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_nav_gestures_vibrator_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGestureVibration(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_nav_gestures_vibrator_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGestureVibrationLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_gestures_vibrator_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherGesturalVibrationLevel(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_doubletap_vibrator_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherBlurView(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_blur_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherBlurViewString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_blur_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherBlurDegree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_blur_wallpaper_degree";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherBlurColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_blur_wallpaper_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherBlurAlphaEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_blur_wallpaper_alpha_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherBlurColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_blur_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherBlurColorAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_blur_wallpaper_alpha";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherDownEnabled( JNIEnv *env,
                                                                              jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_downtap";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherDownAction( JNIEnv *env,
                                                                             jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_downtap_action";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherDownApp( JNIEnv *env,
                                                                          jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_downtap_app";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherUPEnabled( JNIEnv *env,
                                                                                     jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_uptap";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherUPAction( JNIEnv *env,
                                                                                    jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_uptap_action";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherUPApp( JNIEnv *env,
                                                                                 jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_uptap_app";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherDoubleTapEnabled( JNIEnv *env,
                                                                     jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_doubletap";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherDoubleTapAction( JNIEnv *env,
                                                                    jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_doubletap_action";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherDoubleTapApp( JNIEnv *env,
                                                                 jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_doubletap_app";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherDoubleTapVibrator( JNIEnv *env,
                                                                      jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_doubletap_vibrator";return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLockScreenRotation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_rotate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoSoundMakeUP(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_volume_wake_screen";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBixbyLongPressLS(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_bixby_ls_long";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBixbyActionLS(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_bixby_ls_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerLongPressActionLS(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_power_ls_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerDoubleAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_power_double_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerDoubleActionAPP(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_power_double_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerDoubleActionLS(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_power_double_ls_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavbarHeightSwitch(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_height_switch";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoThreeGestureActionAPP(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_three_finger_gesture_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoThreeGestureAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_three_finger_gesture_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoThreeGesture(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_three_finger_gesture";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFpUPAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_fingerprint_up_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFpUPActionAPP(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_fingerprint_up_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFpDownAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_fingerprint_down_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoFpDownActionAPP(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_fingerprint_down_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerLongPress(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_power_button_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPowerLongPressAPP(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_power_button_long_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBixbyAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_bixby_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBixbyClick(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_bixby_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBixbyLongPress(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_bixby_long";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBixbyClickAPP(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_bixby_click_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBixbyLongPressAPP(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_bixby_long_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoClickRecentApp(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_task_click_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoClickRecent(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_task_click_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLongPressRecentApp(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_taskleft_long_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLongPressRecent(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_taskleft_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLongPressHomeApp(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_home_longpress_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLongPressHome(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_home_longpress_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLongPressBackApp(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_back_long_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLongPressBack(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hardware_back_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMClick(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMInfo(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMInfoRefresh(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_info_refresh";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMInfoBGColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_info_bgcolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMTextColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_info_textcolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMUsedColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_info_usedcolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMFreeColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_info_freecolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMTextSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_info_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMLanguage(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_info_language";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_info_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMStrokeEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMStrokeDashGap(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_stroke_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMStrokeDashWidth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_stroke_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMStrokeThickness(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMStrokeDashColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentTaskRAMStrokeDashCornerRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_recents_memory_stroke_corner_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBlurWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_blur_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBlurWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_blur_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarStrokeDashColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_bg_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarStrokeThickness(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_bg_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarStrokeDashWidth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_bg_stroke_dash_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarStrokeDashGap(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_bg_stroke_dash_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarStrokeEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_bg_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBlurBgDegree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_blur_bg_wallpaper_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBgWallpaperAlphaEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_bg_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBgWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_bg_wallpaper_alpha";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBGStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_bg_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBgBasicColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_bg_only_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientBgStartColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_gradient_bg_one_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientBgCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_gradient_bg_two_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientBgEndColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_gradient_bg_three_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientEnableCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_gradient_three_bgcolor_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarShowBG(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_bg_show";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBgGradientBgStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_gradient_bg_type";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientBgType(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_gradient_bg_model";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientBackGroundCornerRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_gradient_bg_corners_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarGradientBackGroundColorRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_gradient_bg_color_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBgWallpaper(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_bg_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarWallpaperColorEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_bg_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_bg_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
///////////////////////////////////////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarCustomWifiIcon(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_wifi_arrow";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarCustomSignalIcon(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_signal_single_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarCustomWifiIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_wifi_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarCustomSignalIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_sim_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
////////////////////////////////////////

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarAllIcon(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarAllIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_icon_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarHomeIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_home_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarBackIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_back_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarRecentIconStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_navbar_recent_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//************************//
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGestureRightSlide(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_gestures_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGestureRightSlideApp (
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_gestures_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarRightSlideAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_gestures_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGestureLeftSlide(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_gestures_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGestureLeftSlideApp (
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_gestures_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarLeftSlideAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_gestures_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGestureDouble(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_doubletap_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGestureDoubleApp (
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_doubletap_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarDoubleAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_doubletap_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarRightClickAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_click_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarRightClickApp (
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_click_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarRightLongClickAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_longclick_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarRightAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarRightLongClickApp(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_longclick_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarGesturesVibratorEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_gestures_vibrator_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarLeftClickAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_click_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarLeftClickApp (
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_click_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarLeftLongClickAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_longclick_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarLeftAction(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarLeftLongClickApp(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_longclick_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarIconPaddingEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_icon_padding_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarIconPadding(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_icon_padding";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarStrokeDashColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarStrokeThickness(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarStrokeDashWidth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_dash_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarStrokeDashGap(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_dash_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarStrokeEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBlurBgDegree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_blur_bg_wallpaper_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBgWallpaperAlphaEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBgWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper_alpha";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBGStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBgBasicColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_only_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientBgStartColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_one_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientBgCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_two_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientBgEndColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_three_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientEnableCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_three_bgcolor_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarShowBG(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_show";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBgGradientBgStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_type";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientBgType(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_model";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientBackGroundCornerRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_corners_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarGradientBackGroundColorRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_color_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBgWallpaper(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarWallpaperColorEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBlurWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_blur_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatsusBarBlurWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_blur_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemShowBG(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_bg_show";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNotificationItemBgBasicColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notification_item_bg_only_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBlurWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_blur_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBlurWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_blur_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelStrokeDashColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_bg_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelStrokeThickness(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_bg_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelStrokeDashWidth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_bg_stroke_dash_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelStrokeDashGap(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_bg_stroke_dash_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelStrokeEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_qspanel_bg_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBlurBgDegree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_blur_bg_wallpaper_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBgWallpaperAlphaEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_bg_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBgWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_bg_wallpaper_alpha";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBGStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_bg_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBgBasicColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_bg_only_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientBgStartColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_gradient_bg_one_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientBgCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_gradient_bg_two_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientBgEndColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_gradient_bg_three_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientEnableCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_gradient_three_bgcolor_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelShowBG(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_bg_show";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBgGradientBgStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_gradient_bg_type";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientBgType(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_gradient_bg_model";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientBackGroundCornerRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_gradient_bg_corners_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelGradientBackGroundColorRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_gradient_bg_color_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelBgWallpaper(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_bg_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelWallpaperColorEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_bg_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSPanelWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qspanel_bg_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguard(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardStringSingle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_string_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardStringMulti(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_string_multi";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardSingle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardSingleSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_single_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierKeyguardMultiSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_multi_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
/////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSMax(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qs_max";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNavigationBarHideMS(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_hide_navigationbar_ms";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBardp(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBarStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBarAnimate(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_animate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBarChargingColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_enable_charging_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBarBlendColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_blend_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBarBlendReversedColorEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_blend_color_reverse";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBarColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBarChargingColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_charging_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarBatteryBarLowColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_battery_low_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
/////////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherColorStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherFontStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherSingleTextSizeStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather_single_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherMultiTextSizeStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather_multi_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherSingleStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherOrientationStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_weather";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBar(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarOrientation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarStringSingle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_string_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarStringMulti(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_string_multi";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarSingle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarSingleSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_single_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCarrierStatusBarMultiSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_multi_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
/////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRoamingIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_roaming_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMobileArrowsIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_mobilearrows_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMbileTypeIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_mobiletype_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoSignalIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_signal_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoAirplaneIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_airplane_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWifiArrowsIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_wifi_arrows_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWifiIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_wifi_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoAllSignalIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_all_icon_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCustomAllSignalIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_start_all_icon_color_set";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCustomSignalIconColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_start_color_custom";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

/////////////////////////////////////////////////////////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBlurBgDegree(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_blur_bg_wallpaper_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBgWallpaperAlphaEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_bg_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBgWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_bg_wallpaper_alpha";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBGStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_bg_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBgBasicColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_bg_only_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientBgStartColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_gradient_bg_one_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientBgCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_gradient_bg_two_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientBgEndColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_gradient_bg_three_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientEnableCenterColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_gradient_three_bgcolor_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsShowBG(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_bg_show";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBgGradientBgStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_gradient_bg_type";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientBgType(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_gradient_bg_model";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientBackGroundCornerRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_gradient_bg_corners_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsGradientBackGroundColorRadius(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_gradient_bg_color_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBgWallpaper(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_bg_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsWallpaperColorEnable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_bg_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_task_bg_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsStrokeDashColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_bg_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsStrokeThickness(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_bg_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsStrokeDashWidth(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_bg_stroke_dash_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsStrokeDashGap(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_bg_stroke_dash_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsStrokeEnabled(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_bg_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBlurWallpaperColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_blur_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoRecentsBlurWallpaperAlpha(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_task_blur_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//////////////////////////////////////////////////////////////////////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewNotiSettingClearAllSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notice_noti_clear_button_text_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewNotiSettingColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notice_noti_setting_button_text_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewClearAllColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notice_clear_all_button_text_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewClearAllFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notice_clear_all_button_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoBottomBarViewNotiSettingFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_notice_noti_setting_button_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSDivider(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qs_label_divider_visible";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDataUsageGravity(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_data_usage_text_gravity";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDataUsageViewVisible ( JNIEnv *env,
                                                                  jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_data_usage_text";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDataUsageColor ( JNIEnv *env,
                                                            jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_data_usage_text_color";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDataUsageSize ( JNIEnv *env,
                                                           jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_data_usage_text_size";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoDataUsageFont ( JNIEnv *env,
                                                           jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_data_usage_text_font";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSLabelTextFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qs_icon_label_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSLabelTextColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qs_icon_label_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoQSDividerColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_qs_label_divider_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//////////////////////////////


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeadSettingButtonColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_button_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeadSettingButton(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_setting_button";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeadMultiuserButton(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_multiuser_button";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//////////////////////////////////////////////////////////////////////////////////////////////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeadClockDisable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeadClockSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeadClockColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeadClockFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_clock_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownLunarVisible(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_visible";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownLunarStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_style";return env->NewStringUTF(leo_tweaks_key.c_str());
}



//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownLunarSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_size";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownLunarColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_color";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownLunarFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_font";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownLunarConstellation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_constellation";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownLunarSymbol(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_symbol";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPulldownLunarOrientation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_orientation";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//////////////////////////////////////////////////////////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarTemperatureOrientation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarTemperatureSingle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarTemperatureSingleSzie(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_single_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarTemperatureMultiSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_multi_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarTemperature(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarTemperatureColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarTemperatureFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//////////////////////////////////////////////////////////////////////////////////////////////

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getD(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "0xb8a7aa3a310a53acfd685b143b5348309370f86d000000000000000000000000";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsCityPositionEnabled( JNIEnv *env,
                                                                   jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_position";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsCityPositionColor( JNIEnv *env,
                                                                 jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_position_color";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsCityPositionSize( JNIEnv *env,
                                                                jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_position_size";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsCityPositionFont( JNIEnv *env,
                                                                jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_position_font";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsDateColor( JNIEnv *env,
                                                         jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_date_color";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsDateSize( JNIEnv *env,
                                                        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_date_size";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsDateFont( JNIEnv *env,
                                                        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_date_font";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsContentColor( JNIEnv *env,
                                                                 jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_content_color";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsContentSize( JNIEnv *env,
                                                                jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_content_size";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsContentFont( JNIEnv *env,
                                                                jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_content_font";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsAvatarColor( JNIEnv *env,
                                                                       jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_avatar_color";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsAvatarSize( JNIEnv *env,
                                                                      jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_avatar_size";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoMmsAvatarFont( JNIEnv *env,
                                                                      jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_mms_avatar_font";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCallLogCityPositionEnabled( JNIEnv *env,
                                                                      jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_call_log_position";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCallLogCityPositionColor( JNIEnv *env,
                                                                    jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_call_log_position_color";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCallLogCityPositionSize( JNIEnv *env,
                                                                   jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_call_log_position_size";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCallLogCityPositionFont( JNIEnv *env,
                                                                   jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_call_log_position_font";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoCallLogCityPositionDataStyle( JNIEnv *env,
                                                                        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_call_log_position_data_style";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherIconView( JNIEnv *env,
                                                                                    jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_icon_sink";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLauncherEffect( JNIEnv *env,
                                                                        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_launcher_effect";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoToastAnimation( JNIEnv *env,
                                                                      jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_toast_animation";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoPortraitNavBarHeight( JNIEnv *env,
                                                                      jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_portrait_height";return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLandscapeNavBarHeight( JNIEnv *env,
                                                                      jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_navbar_landscape_height";return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficState(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_state";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficAuto(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_auto";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficArrow(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_arrow";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficInterval(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_interval";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficText(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_text";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficUnit(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_unit";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficfont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_font_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficSingle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficArrowLocation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_arrow_location";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_multi_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoNetworkTrafficPosition(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_position";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


////////////////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateFontStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateWeekDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_week_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateWeek(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_week_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateFormat(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_format";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateClor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_date_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateVisible(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_visible";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}




//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateWeekOrientation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_week_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoHeaderDateSymbol(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_symbol";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring

JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_color";
    return env->NewStringUTF(leo_key.c_str());
}
//

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDateDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_date_display";
    return env->NewStringUTF(leo_key.c_str());
}

//

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockAMPM(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_ampm";
    return env->NewStringUTF(leo_key.c_str());
}

//

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockSeconds(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_seconds";
    return env->NewStringUTF(leo_key.c_str());
}

//

extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockSingle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_single";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDateWeekDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_week_display";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDetailsDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_details_display";
    return env->NewStringUTF(leo_key.c_str());
}



//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDateFormat(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_date_format";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDetailsStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_detail_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDateWeekStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_week_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockFontStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_font_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockMultiFontSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_multi_font_size";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockSingleFontSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_single_font_size";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDateENStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_date_en_style";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDatePosition(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_date_position";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockPosition(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDisable(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockIs12(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_24";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDateSymbol(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_date_symbol";
    return env->NewStringUTF(leo_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockDetailsPosition(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_details_orientation";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusBarClockWeekPosition(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_key = "leo_tweaks_statusbar_clock_week_orientation";
    return env->NewStringUTF(leo_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarLogoColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_logo_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarLogoStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_logo_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarLogoSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_logo_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarLogoPosition(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_logo_position";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarLogo(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_logo";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryPackage(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_custom_package";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryIconSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_icon_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryTextSize(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_text_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryTextFont(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryIconStandbyColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_standby_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryTextStandbyColor(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_text_standby_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryAllowTransform(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_allow_standby_charge";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarMainBatteryCustom(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_battery_custom";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoStatusbarSignalPosition(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_signal_location";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLunarWeatherDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_lunar";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLunarWeatherStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_lunar_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLunarWeatherConstellationDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_lunar_constellation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLunarWeatherDateFormatString(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_date_format_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLunarWeatherConstellationOrientation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_lunar_constellation_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoLunarWeatherSymbol(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_lunar_symbol";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherDateBRDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_date_br_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherDateWeekDisplay(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_date_week_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherDateWeekOrientation(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_date_week_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserSettings_getLeoWeatherDateWeekStyle(
        JNIEnv *env,
        jobject /* this */) {
    std::string leo_tweaks_key = "leo_launcher_weather_date_week_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


