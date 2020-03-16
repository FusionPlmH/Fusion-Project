#include <jni.h>
#include <string>



//////////////////////////////////////////////////
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserValues_OKS( JNIEnv *env,
                                                                        jobject /* this */) {
    std::string leo_tweaks_key ="Leo ROM";return env->NewStringUTF(leo_tweaks_key.c_str());
}
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserValues_ryid( JNIEnv *env,
                                         jobject /* this */) {
    std::string leo_tweaks_key ="0x4f6787aeedfff759416c1832aaa0a8b53b1b2000000000000000000000000000";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserValues_K( JNIEnv *env,
                                                   jobject /* this */) {
    std::string leo_tweaks_key ="ro.build.rom.name";return env->NewStringUTF(leo_tweaks_key.c_str());
}
//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserValues_LeoID( JNIEnv *env,
                                                      jobject /* this */) {
    std::string leo_tweaks_key ="ro.expect.recovery_id";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserValues_L( JNIEnv *env,
                                                 jobject /* this */) {
    std::string leo_tweaks_key ="LosKS";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserValues_Code( JNIEnv *env,
                                       jobject /* this */) {
    std::string leo_tweaks_key ="ro.build.leo.code";return env->NewStringUTF(leo_tweaks_key.c_str());
}

//
extern "C" JNIEXPORT jstring
JNICALL
Java_com_os_leo_utils_LeoUserValues_CodeVersions( JNIEnv *env,
                                          jobject /* this */) {
    std::string leo_tweaks_key ="v3.0";return env->NewStringUTF(leo_tweaks_key.c_str());
}