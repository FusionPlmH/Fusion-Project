package com.android.leo.statusbar;


import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;
import android.util.Log;

import static com.android.leo.global.LeoGlobalUtils.getLeoInt;
import static com.android.leo.global.LeoGlobalUtils.getLeoString;
import static com.android.leo.global.LeoGlobalValues.AUTHOR;
import static com.android.leo.global.LeoGlobalValues.getCode;
import static com.android.leo.global.LeoGlobalValues.getLeoOS;
import static com.android.leo.global.LeoGlobalValues.getLeoPowerMenuStyle;
import static com.android.leo.global.LeoGlobalValues.getLeoPowerMenuTitleCustom;
import static com.android.leo.global.LeoGlobalValues.getLeoPowerMenuTitleCustomString;
import static com.android.leo.global.LeoGlobalValues.getLeoPowerRestartMenuEnabled;
import static com.android.leo.global.LeoGlobalValues.getOCodeN;
import static com.android.leo.global.LeoGlobalValues.getOnema;


public class LeoStatusbarSettings{


    public  static boolean setLeoUesrPowerMenuStyle=false;
    public  static boolean setLeoUesrPowerRestartMenuEnabled=false;
    public  static String setLeoUesrPowerMenuTitleCustomString;
    public  static boolean setLeoUesrPowerMenuTitleCustom=false;
    private static final String TAG = "LeoStatusSettings" ;

    public static void LeoStatusSettings(Context context){
        if (getLeoOS().equals(getOnema())) {
            Log.v("developer leo salt", AUTHOR);
            if (getCode() .equals(getOCodeN())) {
                Log.v(TAG, AUTHOR);
                setLeoUesrPowerMenuStyle= getLeoInt(context,
                        getLeoPowerMenuStyle(), 0) != 0;
                setLeoUesrPowerRestartMenuEnabled= getLeoInt(context,
                        getLeoPowerRestartMenuEnabled(), 0) != 0;
                setLeoUesrPowerMenuTitleCustom= getLeoInt(context,
                        getLeoPowerMenuTitleCustom(), 0) != 0;
                setLeoUesrPowerMenuTitleCustomString = getLeoString(context,
                        getLeoPowerMenuTitleCustomString());
                return;
            }
            return;
        }
    }



}
