#include <jni.h>
#include <string>


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoService(
        JNIEnv *env,
        jclass type) {
    std::string hello = "com.leo.global.action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getSafety(
        JNIEnv *env,
        jclass type) {
    std::string hello = "ro.leo.ota.mdec";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getSafetyCode(
        JNIEnv *env,
        jclass type) {
    std::string hello = "MHgyNTgwMjU4TDkyNDg2MTgzNTZlMjQ3MDkxNDc4bzk2Mw==";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getCodeNumber(
        JNIEnv *env,
jclass type) {
std::string hello = "ro.leo.salt.frame";
return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoPreList(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoframe(
        JNIEnv *env,
        jclass type) {
    std::string hello = "com.leo.framework";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoKillWhiteList(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_action_kill_whitelist";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalBixbyLongPressAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_bixby_longpress_action";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalBixbyClickAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_bixby_click_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalBixbyEnableAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_bixby_action_enable";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalVibratorEnable(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_vibrator_enable";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalVibratorLevel(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_vibrator_level";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalPowerDoubleAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_power_double_action";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalPowerLongPressAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_power_longpress_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalPowerEnableAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_power_action_enable";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalFingerprintUPAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_fingerprint_up_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalFingerprintDownAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_fingerprint_down_action";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalHwKeysEnableAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_hwkeys_action_enable";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalLongPressOnRecentAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_longpress_recent_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalLongPressOnHomeAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_longpress_home_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalLongPressOnBackAction(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_longpress_back_action";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalEnableFingerGestures(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_finger_gestures_enable";
    return env->NewStringUTF(hello.c_str());
}



extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalFingerTopActionGestures(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_finger_top_gestures";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalFingerLeftActionGestures(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_finger_left_gestures";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalFingerRightActionGestures(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_finger_right_gestures";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalFingerGesturesCount(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_finger_count_gestures";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalFingerBottomActionGestures(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_finger_bottom_gestures";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalPowerGlobalActionsStyle(
        JNIEnv *env,
        jclass type) {
    std::string hello = "global_power_globala_ctionsStyle";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalStyle(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_style";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalAmberLeoNavBarHeightPortrait(
        JNIEnv *env,
        jclass type) {
    std::string hello = "nav_portrait_enable";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoGlobalSetting_getLeoGlobalAmberLeoNavBarHeightLandscape(
        JNIEnv *env,
        jclass type) {
    std::string hello = "nav_landscape_enable";
    return env->NewStringUTF(hello.c_str());
}

