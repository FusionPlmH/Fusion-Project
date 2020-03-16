#include <jni.h>
#include <string>



extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_hitomiA(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "R58J44F6B3D";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_hitomiB(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "RF8J52ELJFR";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_getOS(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "ro.build.rom.name";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_getOnema(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "Leo ROM";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_getOCode(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "ro.build.leo.code";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_getOCodeN(
        JNIEnv *env,
        jclass type) {
    std::string leo_key = "Leo Code(Android Pie)_v2.0";
    return env->NewStringUTF(leo_key.c_str());
}



extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_getLeoPowerMenuStyle(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_powermenu_style";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_getLeoPowerRestartMenuEnabled(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_powermenu_restart_enabled";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_getLeoPowerMenuTitleCustom(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_powermenu_title_custom";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_leo_global_LeoGlobalValues_getLeoPowerMenuTitleCustomString(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "leo_tweaks_powermenu_title_string";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}
