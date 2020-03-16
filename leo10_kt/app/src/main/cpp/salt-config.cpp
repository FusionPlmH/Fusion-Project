#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoFrameworkMhg(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "MHgyNTgwMjU4TDkyNDg2MTgzNTZlMjQ3MDkxNDc4bzk2Mw==";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoFrameworkMdoc(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "ro.leo.ota.mdec";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoFramework(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "com.leo.framework";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarClock(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_clock";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoEnabled(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_enabled";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStyle(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_style";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoSize(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_size";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoFont(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_font";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStr(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_string";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoSymbol(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_symbol";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoSymbolString(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_symbol_string";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoGlobalVibratorEnable(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_vibrator";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoColor(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_color";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoGlobalVibratorLevel(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_vibrator_level";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarBattery(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_battery";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarBatteryBar(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_battery_bar";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStrokeThickness(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_thickness";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarSignal(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_signal";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarLogo(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_logo";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarNetworkTraffic(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_traffic";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarTemp(
        JNIEnv *env,
        jclass clazz) {
    std::string hello= "leo_salt_statusbar_temp";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarCarrier(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_carrier";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoKeyguardCarrier(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_keyguard_carrier";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoAction(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStatusbarGesture(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_gesture";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoService(
        JNIEnv *env,
        jclass clazz) {
    std::string hello= "com.leo.global.action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoNotificationPanelCarrier(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_panel_carrier";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoNotificationPanelAnalogClock(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_panel_analogclock";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoKeyguardAction(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_keyguard_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoDeviceInfo(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_device_info";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoLunar(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_lunar";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoQSDate(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_date";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoQSClock(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_clock";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoQSBar(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_datausage";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoFloatBall(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_floatball";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoMiniPOP(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_minipop";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoAlpha(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_alpha";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoQSButton(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_button";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoPulldownBlur(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_blur";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoKeyguardAlarm(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_keyguard_alarm";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoKeyguardWeather(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_keyguard_weather";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoNavGesture(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_navbar_gesture";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoKeyguardLunar(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_keyguard_lunar";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoQsSaltBar(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_qsbar";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_settingslib_salt_utils_LeoManages_getLeoStockGlobalGestures(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_stock_globalgestures";
    return env->NewStringUTF(hello.c_str());
}