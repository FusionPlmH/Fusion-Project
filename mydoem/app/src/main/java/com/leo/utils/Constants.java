package com.leo.utils;



import android.content.Context;
import android.graphics.drawable.Drawable;
import android.provider.Settings;
import android.util.Log;

import android.animation1.ArgbEvaluator;

import com.android.systemui.SystemUIApplication;

import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.mDarkModeColor;


public class Constants {

    public static final ArgbEvaluator mArgb = ArgbEvaluator.getInstance();
    public static final int mDarkColor =mDarkModeColor;
    public static final Context mLeoRom = SystemUIApplication.getContext();

  public static int getTint(float DarkAmount, int Color) {
      Log.v(AUTHOR, "LeoRom Constants" );
        return ((Integer) mArgb.evaluate(DarkAmount, Integer.valueOf(Color), Integer.valueOf(mDarkColor))).intValue();
   }



    public static int getLeoResource(String resource ) {
        Log.v(AUTHOR, "LeoRom Constants" );
        return mLeoRom.getResources().getIdentifier(resource, null, "com.android.systemui");
    }
    public static int getInt(String key, int Int) {
        Log.v(AUTHOR, "LeoRom Constants" );
        return Settings.System.getInt(mLeoRom.getContentResolver(), key, Int);
    }


    public static int getLeoAndroidResource(String resource ) {
        Log.v(AUTHOR, "LeoRom Constants" );
        return mLeoRom.getResources().getIdentifier(resource, null, "android");
    }


}
