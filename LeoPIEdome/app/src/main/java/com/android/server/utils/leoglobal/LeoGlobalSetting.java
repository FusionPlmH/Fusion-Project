package com.android.server.utils.leoglobal;


import android.content.Context;

import static com.android.fusionleo.global.LeoGlobalValues.SSSSOSSSS;
import static com.android.server.utils.leoglobal.LeoGlobalUtils.*;



public class LeoGlobalSetting{
    static {
        System.loadLibrary(SSSSOSSSS);
    }
    public static int mAmberLeoBixbyClickStyle;
    public static int mAmberLeoHomeDoubleAction;
    public static int mAmberLeoHomeLSDoubleAction;
    public static void LeoGlobalSetting(Context context){
        if (getLeoBuild(getOS()).equals(getOnema())) {
            if (getLeoBuild(getOCode()) .equals(getOCodeN())) {
                String str = "com.android.systemui##com.android.phone##com.leo.global.tweaks##com.sec.android.app.launcher";
                String str2 = "##";
                String systemString =getLeoActionString(context,
                       "" );
                String[] split = (systemString == null || systemString.isEmpty() || !systemString.contains(str2)) ? str.split(str2) : (systemString + str).split(str2);

                KillWhiteList= split;
                return;
            }
            return;
        }
    }

    public static String[] KillWhiteList;

}