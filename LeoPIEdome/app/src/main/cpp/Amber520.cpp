#include <jni.h>
#include <string>



extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_server_utils_leoglobal_LeoGlobalUtils_getLeoKernel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "ro.build.leo.kernel";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_server_utils_leoglobal_LeoGlobalUtils_getOS(
        JNIEnv *env,
         jclass type) {
    std::string leo_key = "ro.build.rom.name";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_server_utils_leoglobal_LeoGlobalUtils_getOnema(
        JNIEnv *env,
         jclass type) {
    std::string leo_key = "Leo ROM";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_server_utils_leoglobal_LeoGlobalUtils_getOCode(
        JNIEnv *env,
         jclass type) {
    std::string leo_key = "ro.build.leo.code";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_android_server_utils_leoglobal_LeoGlobalUtils_getOCodeN(
        JNIEnv *env,
         jclass type) {
    std::string leo_key = "Leo Code(Android Pie)_v2.0";
    return env->NewStringUTF(leo_key.c_str());
}

