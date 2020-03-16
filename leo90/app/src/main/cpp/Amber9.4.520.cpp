#include <jni.h>
#include <string>

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoService(
        JNIEnv *env,
        jclass type) {
    std::string hello = "com.leo.global.action";
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
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoPreList(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoframe(
        JNIEnv *env,
        jclass type) {
    std::string hello = "com.leo.framework";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoEnabled(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_enabled";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoDisable(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_disable";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStyle(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_style";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoLauncherGestureDouble(
        JNIEnv *env,
        jclass type) {
    std::string hello = "launcher_gesture_double";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGlobalVibratorEnable(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_vibrator";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGlobalVibratorLevel(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_vibrator_level";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoLauncherGestureSliding(
        JNIEnv *env,
        jclass type) {
    std::string hello = "launcher_gesture_sliding";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoA(
        JNIEnv *env,
        jclass type) {
    std::string hello = "/system";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoB(
        JNIEnv *env,
        jclass type) {
    std::string hello = "/sdcard";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoC(
        JNIEnv *env,
        jclass type) {
    std::string hello = "/cache";
    return env->NewStringUTF(hello.c_str());
}



extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoRefresh(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_refresh";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoEnabled(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoTitleEnabled(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_title";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoClickEnabled(
        JNIEnv *env,
jclass type) {
std::string hello = "task_info_click";
return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoTotal(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_total";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoAvailable(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_available";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoUsed(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_used";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoSymbol(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_symbol";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoBG(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_bg";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStorageInfoSize(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_size";
    return env->NewStringUTF(hello.c_str());
}



extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGradientColorOne(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_one";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGradientColorTwo(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_two";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGradientColorthee(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_thee";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGradientColorFour(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_four";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGradientColorFive(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_five";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGradientStyle(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_gradient";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoGradientColorSix(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_six";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStrokeThickness(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_thickness";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStrokeDashWidth(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_width";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStrokeDashGap(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_gap";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoStrokeDashed(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_dashed";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoAlpha(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_alpha";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoWallpaper(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_wallpaper";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoWallpaperBlur(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_wallpaper_blur";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoTaskBG(
        JNIEnv *env,
        jclass type) {
    std::string hello = "recents_bg";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoLauncherEffect(
        JNIEnv *env,
        jclass type) {
    std::string hello = "launcher_effect";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoLauncherIconText(
        JNIEnv *env,
        jclass type) {
    std::string hello = "launcher_icon_text";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_fusionleo_LeoProvider_LeoLauncherManages_getLeoLauncherBlurView(
        JNIEnv *env,
        jclass type) {
    std::string hello = "launcher_blurview";
    return env->NewStringUTF(hello.c_str());
}