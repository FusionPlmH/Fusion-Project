#include <jni.h>
#include <string>



extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoService(
        JNIEnv *env,
        jclass type) {
    std::string hello= "com.leo.global.action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getSafety(
        JNIEnv *env,
        jclass type) {
    std::string hello = "ro.leo.ota.mdec";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getSafetyCode(
        JNIEnv *env,
        jclass type) {
    std::string hello = "MHgyNTgwMjU4TDkyNDg2MTgzNTZlMjQ3MDkxNDc4bzk2Mw==";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoPreList(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoframe(
        JNIEnv *env,
        jclass type) {
    std::string hello = "com.leo.framework";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoColor(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_color";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStyle(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_style";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGradientColorOne(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_one";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGradientColorTwo(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_two";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGradientColorthee(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_thee";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGradientColorFour(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_four";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGradientColorFive(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_five";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGradientStyle(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_gradient";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGradientColorSix(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_six";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStrokeThickness(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_thickness";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStrokeDashWidth(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_width";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStrokeDashGap(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_gap";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStrokeDashed(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_dashed";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoAlpha(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_alpha";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoWallpaper(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_wallpaper";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoWallpaperBlur(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_wallpaper_blur";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGlobalVibratorEnable(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_vibrator";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoGlobalVibratorLevel(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_vibrator_level";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoEnabled(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_enabled";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoDisable(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_disable";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoSize(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_size";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoFont(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_font";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoSymbol(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_symbol";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoSymbolString(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_symbol_string";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStr(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_string";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarClock(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_clock";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarLogo(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_logo";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarNetworkTraffic(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_traffic";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarBattery(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_battery";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarBatteryBar(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_battery_bar";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarSignal(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_signal";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarCarrier(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_carrier";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarTemp(
        JNIEnv *env,
        jclass type) {
    std::string hello= "statusbar_temp";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarGesture(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_gesture";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoStatusbarBG(
        JNIEnv *env,
        jclass type) {
    std::string hello = "statusbar_bg";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_action";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoNavBG(
        JNIEnv *env,
        jclass type) {
    std::string hello = "navbar_bg";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoNotificationPanelCarrier(
        JNIEnv *env,
jclass type) {
std::string hello = "panel_carrier";
return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoNotificationPanelAnalogClock(
        JNIEnv *env,
        jclass type) {
    std::string hello = "panel_analogclock";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoKeyguardWeather(
        JNIEnv *env,
        jclass type) {
    std::string hello = "keyguard_weather";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoKeyguardCarrier(
        JNIEnv *env,
        jclass type) {
    std::string hello = "keyguard_carrier";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoKeyguardAlarm(
        JNIEnv *env,
        jclass type) {
    std::string hello = "keyguard_alarm";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoKeyguardAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "keyguard_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoQSDate(
        JNIEnv *env,
        jclass type) {
    std::string hello = "qs_date";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoLunar(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_lunar";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoQSClock(
        JNIEnv *env,
        jclass type) {
    std::string hello = "qs_clock";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoQSButton(
        JNIEnv *env,
        jclass type) {
    std::string hello = "qs_button";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoQSButtonShelf(
        JNIEnv *env,
        jclass type) {
    std::string hello = "qs_shelf";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoQSBar(
        JNIEnv *env,
        jclass type) {
    std::string hello = "qs_datausage";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoFloatBall(
        JNIEnv *env,
        jclass type) {
    std::string hello = "qs_floatball";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoMiniPOP(
        JNIEnv *env,
        jclass type) {
    std::string hello = "qs_minipop";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoDeviceInfo(
        JNIEnv *env,
        jclass type) {
    std::string hello = "device_info";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoPulldownBlur(
        JNIEnv *env,
        jclass type) {
    std::string hello = "qs_blur";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoManages_getLeoNavGesture(
        JNIEnv *env,
jclass type) {
std::string hello = "navbar_gesture";
return env->NewStringUTF(hello.c_str());
}