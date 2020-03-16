package com.leo.global.utils;


import android.content.Context;
import android.os.Environment;
import android.provider.Settings;


import java.io.File;

import static com.leo.global.tweaks.LeoAmberApplication.getContext;


public class Constants {
    public static String GLOBAL_SPF_NIGHT_MODE = "app_night_mode";
    public static String GLOBAL_SPF_DISABLE_ENFORCE = "enforce_0";
    public static String GLOBAL_SPF = "global"; //spf
    public static String APP_HIDE_HISTORY_SPF = "app_hide_spf";
    public static String safety="JXU1MDI5JXVGRjBDJXU0RjU5JXU3NTFGJXU4MEZEJXU1NDI2JXU4QkE5JXU2MjExJXU3MTY3JXU5ODdFJXU0RjYwJXU5NjZBJXU0RjYwJXU0RTAwJXU4RDc3JXU4RDcwJXU0RTBCJXU1M0JCJXVGRjFG";
    public static boolean DayNight(Context context){

        return Settings.System.getInt(context.getContentResolver(), "leo_night_theme", 0) == 1;
    }
}