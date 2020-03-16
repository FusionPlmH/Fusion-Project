#include <jni.h>
#include <string>



extern "C" JNIEXPORT jstring
JNICALL
Java_com_samsung_LeoAmber_LeoCityLocationSetting_getLeoKernel(
        JNIEnv *env,
        jclass type) {
    std::string leo_tweaks_key = "ro.build.leo.kernel";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}


//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_samsung_LeoAmber_LeoCityLocationSetting_getOS(
        JNIEnv *env,
         jclass type) {
    std::string leo_key = "ro.build.rom.name";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_samsung_LeoAmber_LeoCityLocationSetting_getOnema(
        JNIEnv *env,
         jclass type) {
    std::string leo_key = "Leo ROM";
    return env->NewStringUTF(leo_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_samsung_LeoAmber_LeoCityLocationSetting_getOCode(
        JNIEnv *env,
         jclass type) {
    std::string leo_key = "ro.build.leo.code";
    return env->NewStringUTF(leo_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_samsung_LeoAmber_LeoCityLocationSetting_getOCodeN(
        JNIEnv *env,
         jclass type) {
    std::string leo_key = "Leo Code(Android Pie)_v2.0";
    return env->NewStringUTF(leo_key.c_str());
}


///////////////////////
extern "C" JNIEXPORT jstring
JNICALL
Java_com_samsung_LeoAmber_LeoCityLocationSetting_getLeoMessagingCityLocation(
        JNIEnv *env,
         jclass type) {
    std::string leo_tweaks_key ="leo_tweaks_mms_city_display";
    return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_samsung_LeoAmber_LeoCityLocationSetting_getLeoMessagingCityLocationSize(
        JNIEnv *env,
jclass type) {
std::string leo_tweaks_key ="leo_tweaks_mms_city_size";
return env->NewStringUTF(leo_tweaks_key.c_str());
}

extern "C" JNIEXPORT jstring
JNICALL
Java_com_samsung_LeoAmber_LeoCityLocationSetting_getLeoMessagingCityLocationFont(
        JNIEnv *env,
jclass type) {
std::string leo_tweaks_key ="leo_tweaks_mms_city_font";
return env->NewStringUTF(leo_tweaks_key.c_str());
}