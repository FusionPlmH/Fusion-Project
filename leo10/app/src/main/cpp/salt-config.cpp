#include <jni.h>
#include <string>


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoFramework(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "com.leo.framework";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarClock(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_clock";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoEnabled(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_enabled";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStyle(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_style";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoSize(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_size";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoFont(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_font";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStr(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_string";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoSymbol(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_symbol";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoSymbolString(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_symbol_string";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoGlobalVibratorEnable(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_vibrator";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoColor(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_color";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoGlobalVibratorLevel(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_vibrator_level";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarBattery(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_battery";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarBatteryBar(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_battery_bar";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStrokeThickness(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_thickness";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarSignal(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_signal";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarLogo(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_logo";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarNetworkTraffic(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_traffic";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarTemp(
        JNIEnv *env,
        jclass clazz) {
    std::string hello= "leo_salt_statusbar_temp";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarCarrier(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_carrier";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoKeyguardCarrier(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_keyguard_carrier";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoAction(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoStatusbarGesture(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_statusbar_gesture";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoService(
        JNIEnv *env,
        jclass clazz) {
    std::string hello= "com.leo.global.action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoNotificationPanelCarrier(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_panel_carrier";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoNotificationPanelAnalogClock(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_panel_analogclock";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoKeyguardAction(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_keyguard_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoDeviceInfo(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_device_info";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoLunar(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_lunar";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoQSDate(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_date";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoQSClock(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_clock";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoQSBar(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_datausage";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoFloatBall(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_floatball";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoMiniPOP(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_minipop";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoAlpha(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "_alpha";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoQSButton(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_button";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoPulldownBlur(
        JNIEnv *env,
        jclass clazz) {
    std::string hello = "leo_salt_qs_blur";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoKeyguardAlarm(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_keyguard_alarm";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoKeyguardWeather(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_keyguard_weather";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoNavGesture(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_navbar_gesture";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoKeyguardLunar(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_keyguard_lunar";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_server_utils_salt_SaltPhoneSetting_getLeoQsSaltBar(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_qsbar";
    return env->NewStringUTF(hello.c_str());
}