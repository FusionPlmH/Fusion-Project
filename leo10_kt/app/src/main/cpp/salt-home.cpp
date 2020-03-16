#include <jni.h>
#include <string>


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoService(
        JNIEnv *env,
        jclass type) {
    std::string hello = "com.leo.global.action";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoframe(
        JNIEnv *env,
        jclass type) {
    std::string hello = "com.leo.framework";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoA(
        JNIEnv *env,
        jclass type) {
    std::string hello = "/system";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoB(
        JNIEnv *env,
        jclass type) {
    std::string hello = "/sdcard";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoC(
        JNIEnv *env,
        jclass type) {
    std::string hello = "/cache";
    return env->NewStringUTF(hello.c_str());
}



extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoRefresh(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_refresh";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoEnabled(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoTitleEnabled(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_title";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoClickEnabled(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_click";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoTotal(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_total";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoAvailable(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_available";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoUsed(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_used";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoSymbol(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_symbol";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoBG(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_bg";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStorageInfoSize(
        JNIEnv *env,
        jclass type) {
    std::string hello = "task_info_size";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoPreList(
        JNIEnv *env,
        jclass type) {
    std::string hello = "leo_salt_";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoEnabled(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_enabled";
    return env->NewStringUTF(hello.c_str());
}
extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoStyle(
        JNIEnv *env,
jclass type) {
std::string hello = "_style";
return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoGlobalVibratorEnable(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_vibrator";
    return env->NewStringUTF(hello.c_str());
}


extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoGlobalVibratorLevel(
        JNIEnv *env,
        jclass type) {
    std::string hello = "_vibrator_level";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoLauncherGestureDouble(
        JNIEnv *env,
        jclass type) {
    std::string hello = "launcher_gesture_double";
    return env->NewStringUTF(hello.c_str());
}

extern "C" JNIEXPORT jstring JNICALL
Java_com_android_launcher3_salt_SaltLauncher_getLeoLauncherGestureSliding(
        JNIEnv *env,
        jclass type) {
    std::string hello = "launcher_gesture_sliding";
    return env->NewStringUTF(hello.c_str());
}
