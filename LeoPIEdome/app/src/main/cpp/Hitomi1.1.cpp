#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKernel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "ro.build.leo.kernel";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_hitomiA(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "R58J44F6B3D";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_hitomiB(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "RF8J52ELJFR";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarNetworkTrafficRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficState(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_state";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficAuto(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_auto";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficArrow(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_arrow";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficInterval(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_interval";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficText(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_text";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficUnit(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_unit";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficfont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_font_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficSingle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficArrowLocation(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_arrow_location";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_multi_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficIconColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_icon_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficIconALLColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficIconALLColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_all_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficIconCustomColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_custom_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficIconStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoClockOnClickEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_clock_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_clock_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_clock_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring

JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_color";
    return env->NewStringUTF(leo_key.c_str());
}
//

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDateDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_date_display";
    return env->NewStringUTF(leo_key.c_str());
}

//

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockAMPM(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_ampm";
    return env->NewStringUTF(leo_key.c_str());
}

//

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockSeconds(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_seconds";
    return env->NewStringUTF(leo_key.c_str());
}

//

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockSingle(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_single";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDateWeekDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_week_display";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDetailsDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_details_display";
    return env->NewStringUTF(leo_key.c_str());
}



//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDateFormat(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_date_format";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDetailsStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_detail_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDateWeekStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_week_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockFontStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_font_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockMultiFontSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_multi_font_size";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockSingleFontSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_single_font_size";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDateENStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_date_en_style";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDatePosition(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_date_position";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockPosition(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDisable(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockIs12(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_24";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDateSymbol(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_date_symbol";
    return env->NewStringUTF(leo_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockDetailsPosition(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_details_orientation";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarClockWeekPosition(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_clock_week_orientation";
    return env->NewStringUTF(leo_key.c_str());
}



////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarStringSingle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_string_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarStringMulti(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_string_multi";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarSingle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarSingleSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_single_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarMultiSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_multi_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarCarrierRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarCarrierColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarTemperatureSingle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarTemperatureSingleSzie(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_single_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarTemperatureMultiSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_multi_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarTemperature(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarTemperatureColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarTemperatureFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarTemperatureRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarTemperatureColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
/////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryPackage(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_custom_package";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryIconSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_icon_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryTextSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_text_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryTextFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryIconStandbyColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_standby_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryTextStandbyColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_text_standby_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryAllowTransform(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_allow_standby_charge";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarMainBatteryCustom(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_custom";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarMainBatteryRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_battery_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBardp(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBarStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBar(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBarAnimate(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_animate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBarChargingColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_enable_charging_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBarBlendColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_blend_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBarBlendReversedColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_blend_color_reverse";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBarColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBarChargingColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_charging_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarBatteryBarLowColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_battery_bar_battery_low_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarTemperatureOrientation(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_temperature_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNetworkTrafficPosition(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_network_traffic_position";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBarOrientation(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierStatusBar(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_carrier";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguard(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardStringSingle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_string_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardStringMulti(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_string_multi";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardSingle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_single";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardSingleSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_single_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardMultiSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_multi_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoCarrierKeyguardColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_keyguard_carrier_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarLogoRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_logo_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarLogoColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_logo_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarLogoColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_logo_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarLogoStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_logo_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarLogoSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_logo_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarLogoPosition(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_logo_position";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarLogo(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_logo";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarStrokeDashColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarStrokeThickness(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarStrokeDashWidth(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_dash_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarStrokeDashGap(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_dash_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarStrokeEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_bg_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBlurBgDegree(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_blur_bg_wallpaper_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBgWallpaperAlphaEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBgWallpaperAlpha(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper_alpha";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBGStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBgBasicColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_only_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientBgStartColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_one_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientBgCenterColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_two_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientBgEndColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_three_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientEnableCenterColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_three_bgcolor_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarShowBG(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_show";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBgGradientBgStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_type";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientBgType(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_model";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientBackGroundCornerRadius(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_corners_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientBackGroundColorRadius(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_gradient_bg_color_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBgWallpaper(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarWallpaperColorEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarWallpaperColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_statusbar_bg_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBlurWallpaperColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_blur_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBlurWallpaperAlpha(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_blur_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarBgWallpaperBlurEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_blur_bg_wallpaper_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_gradient_bg_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientColorFour(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_gradient_bg_four_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientColorFive(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_gradient_bg_five_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarGradientColorSix(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_gradient_bg_six_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarWifiIconCustom(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_wifi_arrow";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarWifiIconStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_wifi_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarSignalIconStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_sim_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatsusBarFlashlightIcon(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_flashlight_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownCarrierColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownCarrierRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPullDownCarrierString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_notification_carrier_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPullDownCarrierStringA(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_notification_carrier_string_a";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoTogglePullDownCarrier(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_notification_carrier_toggle";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownCarrierColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_label_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownCarrierSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_label_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownCarrierFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_notification_carrier_label_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_random_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoArray(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_array";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoCustomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoALLColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoColorAll(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_color_all_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_font_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoFontTwo(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_font_two";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoFontThree(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_font_three";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoFontFour(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_font_four";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoFontFive(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_font_five";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoColorTwo(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color_two";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoColorThree(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color_three";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoColorFour(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color_four";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoColorFive(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_color_five";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfo(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoStyleTwo(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style_two";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoStyleThree(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style_three";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoStyleFour(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style_four";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoStyleFive(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_style_five";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoDeviceInfoOrientation(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_device_info_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getOS(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "ro.build.rom.name";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getOnema(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "Leo ROM";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getOCode(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "ro.build.leo.code";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getOCodeN(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "Leo Code(Android Pie)_v2.0";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_display";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageSingle(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_single";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageSingleSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_single_size";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageMultiSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_multi_size";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_font";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_color_enabled";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_color";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_random_color";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusbarVoltageOrientation(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_statusbar_votage_orientation";
    return env->NewStringUTF(leo_key.c_str());
}
/////////////////////////////////////////////////////////////////////////////////////////

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockDateEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_data_enable";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockDateColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_data_color";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockDateSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_data_size";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockDateFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_data_font";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockDialStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_dial_style";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_dial_size";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockColorEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_color_enable";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockDialColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_dial_color";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockHourColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_hour_color";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring

JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockMinutColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_minut_color";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockSecondColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_second_color";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownAnalogClockEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "leo_tweaks_pulldown_analogclock_enable";
    return env->NewStringUTF(leo_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBGStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBgBasicColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_only_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientBgStartColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_one_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientBgCenterColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_two_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientBgEndColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_three_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientEnableCenterColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_three_bgcolor_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuShowBG(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_show";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBgGradientBgStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_type";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientBgType(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_model";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientBackGroundCornerRadius(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_corners_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientBackGroundColorRadius(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_gradient_bg_color_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBgWallpaper(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuWallpaperColorEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuWallpaperColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBlurBgDegree(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_blur_bg_wallpaper_radius";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBgWallpaperAlphaEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBgWallpaperAlpha(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_bg_wallpaper_alpha";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuStrokeDashColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuStrokeThickness(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_thickness";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuStrokeDashWidth(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_dash_width";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuStrokeDashGap(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_dash_gap";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuStrokeEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_bg_stroke_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBlurWallpaperColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_blur_wallpaper_color_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBlurWallpaperAlpha(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_blur_wallpaper_alpha_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuBgWallpaperBlurEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_blur_bg_wallpaper_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientColorEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_gradient_bg_color_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientColorFour(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_gradient_bg_four_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientColorFive(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_gradient_bg_five_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuGradientColorSix(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_gradient_bg_six_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardStatusBarGone(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_statusbar_keyguard";
    return env->NewStringUTF(leo_tweaks_key.c_str());


}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoBiologicalUnlock(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_biometric_unlock";
    return env->NewStringUTF(leo_tweaks_key.c_str());


}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoHomeAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_nav_home_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());

}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoHomeActionString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_nav_home_action_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoNavVibration(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_nav_action_vibratior";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoNavVibrationLevel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_nav_action_vibratior_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoNavNavActionEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keys_action_toggle";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoLongpressRecentAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_taskleft_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoLongpressRecentActionString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_taskleft_long_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoLongpressBackAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_back_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoLongpressBackActionString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_back_long_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoPowerDoubleActionLS(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_power_double_ls_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoPowerDoubleAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_power_double_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoPowerDoubleActionAPP(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_power_double_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoPowerLongpressActionLS(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_power_ls_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoPowerLongpressAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_power_button_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoPowerLongpressActionAPP(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_power_button_long_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoTogglePowerKeysSAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_power_action_toggle";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
////////////////////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoBixbyActionToggle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_bixby_start";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoBixbyLongPressAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_bixby_long";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoBixbyLongPressAPP(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_bixby_long_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoBixbyClickAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_bixby_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoBixbyClickAPP(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_bixby_click_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoFingerprintDownAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_fingerprint_down_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoFingerprintDownActionAPP(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_fingerprint_down_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoFingerprintUPAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_fingerprint_up_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoFingerprintUPActionApp(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_hardware_fingerprint_up_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
///////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoThreeGesturesEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_three_finger_gesture";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiLeoGesturesAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_three_finger_gesture_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiThreeGesturesActionAPP(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_three_finger_gesture_actiona_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiThreeGesturesVibration(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_three_finger_gesture_vibrator_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalHitomiThreeGesturesVibrationLevel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_three_finger_gesture_vibrator_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoMipEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoMipBackAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_back_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoLeoMipBackActionString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_back_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}




//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoMipTaskAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_task_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoLeoMipTaskActionString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_task_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoMipFlashlightAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_flashlight_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoLeoMipFlashlightActionString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_flashlight_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoMipActionVibrateLevel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_vibration_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoLeoMipActionVibrate(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_vibrate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoMipHomeAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_home_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoMipHomeActionString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_minip_home_action_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingDownSlideDelete(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_disable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingVibrate(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_vibrate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingVibratelevel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_vibrate_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingLeftStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_left_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingRightStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_right_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingDownStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_down_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingUPStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_up_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingClickStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_click_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingLeftString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_left_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingRightString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_right_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingDownString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_down_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingUPString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_up_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoFloatingClickString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_ball_click_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarLeftClickAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_click_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarLeftClickApp (
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_click_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarLeftLongClickAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_longclick_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarLeftAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarLeftLongClickApp(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_left_longclick_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarGestureVibrationLevel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_gestures_vibrator_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarGesturesVibratorEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_status_bar_gestures_vibrator_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarRightClickAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_click_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarRightClickApp (
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_click_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarRightLongClickAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_longclick_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarRightAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarRightLongClickApp(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_right_longclick_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeosetLeoUesrStatusBarGestureDoubleEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_doubletap_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarGestureDoubleApp (
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_doubletap_app";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoStatusBarDoubleAction(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_status_bar_doubletap_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerMenuStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_powermenu_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


/////////////////////////////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNotificationPanelDataUsageEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_data_usage_text_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNotificationPanelDataUsageOrientation(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_data_usage_text_gravity";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNotificationPanelDataUsageTextFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_data_usage_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNotificationPanelDataUsageTextSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_data_usage_text_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNotificationPanelBlurLevel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_blur";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoNotificationPanelBlurEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_pulldown_blur_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

/////////////////////////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoBottomBarViewClearAllFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_notice_clear_all_button_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoBottomBarViewNotiSettingFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_notice_noti_setting_button_text_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoBottomBarViewNotiSettingCustom(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_noti_setting_button_custom_enablede";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoBottomBarViewNotiSettingCustomString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_noti_setting_button_custom_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoBottomBarViewClearAllCustom(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_noti_clear_all_button_custom_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoBottomBarViewClearAllCustomString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_noti_clear_all_button_custom_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoBottomBarViewClearAllSettingSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_notice_noti_clear_button_text_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
////////////////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateFontStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateWeekDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_week_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateWeek(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_week_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateFormat(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_format";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateVisible(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_visible";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateWeekOrientation(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_week_orientation";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateSymbol(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_symbol";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownLunarVisible(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_visible";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownLunarStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_style";return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownLunarFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_font";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownLunarConstellation(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_constellation";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownLunarSymbol(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_symbol";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPulldownLunarOrientation(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_orientation";return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderTextLunarFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_lunar_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
//////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateClickEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_long_click_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateLongClickEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_long_click_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateClick(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateLongClick(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_date_long_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateClickString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_data_click_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateLongClickString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_data_long_click_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateVibrate(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_data_vibrate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderDateVibrateLevel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_pulldown_data_vibrate_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

///////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsLabelCustomEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionslabel_custom_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsLabelRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionslabel_randomolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsLabelSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionslabel_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsLabelWhiteColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionslabel_whitecolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsLabelblackColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionslabel_blackcolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsLabelFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionslabel_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

///////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsStateCustomEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsstate_custom_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsStateRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsstate_randomolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsStateSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsstate_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsStateWhiteColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsstate_whitecolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsStateblackColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsstate_blackcolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsStateFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsstate_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsDescriptionCustomEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsdescription_custom_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsDescriptionRandomColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsdescription_randomolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsDescriptionSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsdescription_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsDescriptionWhiteColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsdescription_whitecolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsDescriptionblackColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsdescription_blackcolor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerActionsDescriptionFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_power_actionsdescription_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


/////////////////////////////////////////////////////

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerIconNumberCustomLandscape(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_powericon_number_landscape";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoPowerIconNumberCustomPortrait(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_powericon_number_portrait";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

/////////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockCustomEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_custom_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockVisibility(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_visibility";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockBigCustomEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_big_custom_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockBigVisibility(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_big_visibility";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockBigSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_big_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockBigFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_big_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockClickEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_click_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockLongClickEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_long_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockClick(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_click_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockLongClick(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_long_action";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockClickString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_click_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockLongClickString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_long_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockVibrate(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_vibrate";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderQSClockVibrateLevel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_qsclock_vibrate_level";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

///////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderSearchButtonVisibility(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_header_searchbutton_bisibility";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderSettingsButtonVisibility(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_header_settingsbutton_visibility";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderSearchButtonClick(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_header_searchbutton_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderSettingsButtonClick(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_header_settingsbutton_click";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderSearchButtonString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_header_searchbutton_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoHeaderSettingsButtonClickString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_header_settingsbutton_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
////////////////////////////

//////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalAmberLeoLandscapeNavBarHeight(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_navbar_landscape_height";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalAmberLeoPortraitNavBarHeight(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_navbar_portrait_height";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalAmberLeoNavBarHeightLandscape(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_navbar_landscape_mod";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalAmberLeoNavBarHeightPortrait(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_navbar_portrait_mod";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


/////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardAlarmDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_alarm_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardAlarmIconDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_alarm_icon";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardAlarmFormat(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_alarm_format";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardAlarmTextSize(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_alarm_size";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardAlarmTextFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_alarm_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardAlarmColorEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_alarm_color_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardAlarmColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_alarm_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
/////////////////////////////////////////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherLocationDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_location_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherCurrentTempDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_currenttemp_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherRealFeelDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_realfeel_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherLowHighTempDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_lowhightemp_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherAQIDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_aqi_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherStateDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_state_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherSunriseDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_sunrise_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherSunsetDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_sunset_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherLocationIconDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_locationicon_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherSunriseIconDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_sunriseicon_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherSunsetIconDisplay(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_sunseticon_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherLocationFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_location_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherCurrentFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_currenttemp_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherRealFeelFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_realfeel_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherLowHighTempFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_lowhightemp_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherAQIFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_aqi_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherStateFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_state_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherSunriseFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_sunrise_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherSunsetFont(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_sunset_font";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherColorEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_color_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherAllColorEnable(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_all_color_enable";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherAllColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_all_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherLocationColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_location_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherCurrentTempColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_currenttemp_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherRealFeelColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_realfeel_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherLowHighTempColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_lowhightemp_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherAQIColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_aqi_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherStateColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_state_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherSunriseColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_sunrise_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoKeyguardWeatherSunsetColor(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_keyguard_weather_sunset_color";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsEMERGENCY(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_emergency";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsRESTART(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_restart";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsSCREENSHOT(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_screenshot";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsQUICKBOOT(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_quickboot";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsRECOBERY(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_recovery";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsDOWNLOAD(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_download";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsTORCH(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_flashlight";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsOUTDOOR(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_outdoor";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsMIPOP(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_mipop";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsSCREENRECORD(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_screenrecord";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsAIRPLANE(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_airplane";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsWIFI(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_wifi";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsLEO(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_tweaks";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsSOUND(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_sound";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsFLOATBLL(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_floating";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsDataMode(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_data";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_fusionleo_global_LeoGlobalValues_getLeoGlobalActionsSYSTEMUI(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_global_actions_SystemUI";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}