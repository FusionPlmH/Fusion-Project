package com.android.launcher3;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherIcon;


public class LauncherFeature {
    private static boolean sSupportNavigationBar = false;


   // private static void checkNavigationBar(Context context) {
      //  Resources res = context.getResources();
       // int resourceId = res.getIdentifier("config_showNavigationBar", "bool", "android");
       // if (resourceId > 0) {
      //      sSupportNavigationBar = res.getBoolean(resourceId);
     //   }
  //  }
   private static void checkNavigationBar(Context context) {
       LeoSettings(context);
       boolean z = false;
       Resources resources = context.getResources();
       int identifier = resources.getIdentifier("config_showNavigationBar", "bool", "android");
       if (identifier > 0) {
           boolean z2 = resources.getBoolean(identifier);
           if (setLeoUesrLauncherIcon ) {
               z = true;
           }
           sSupportNavigationBar = z;
       }
   }

    public static boolean supportRotationSetting() {
        return setLeoUesrLauncherIcon;
    }

}
