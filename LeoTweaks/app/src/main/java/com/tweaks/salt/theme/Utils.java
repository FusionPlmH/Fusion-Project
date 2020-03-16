/*
 *     Copyright (c) 2015 GuDong
 *
 *     Permission is hereby granted, free of charge, to any person obtaining a copy
 *     of this software and associated documentation files (the "Software"), to deal
 *     in the Software without restriction, including without limitation the rights
 *     to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 *     copies of the Software, and to permit persons to whom the Software is
 *     furnished to do so, subject to the following conditions:
 *
 *     The above copyright notice and this permission notice shall be included in all
 *     copies or substantial portions of the Software.
 *
 *     THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 *     IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 *     FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 *     AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 *     LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 *     OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 *     SOFTWARE.
 */

package com.tweaks.salt.theme;

import android.app.Activity;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.preference.PreferenceManager;
import android.support.annotation.ColorRes;
import android.support.v4.app.FragmentManager;
import android.support.v4.content.ContextCompat;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Window;
import android.view.WindowManager;

import com.tweaks.salt.R;


import java.util.Locale;


public class Utils {



    /**
     * 获取主题强调色
     *
     * @param context
     * @return
     */
    public static int getAccentColor(Context context) {
        TypedValue typedValue = new TypedValue();
        Resources.Theme theme = context.getTheme();
        theme.resolveAttribute(R.attr.colorAccent, typedValue, true);
        return typedValue.data;
    }

    /**
     * 获取当前主题对应的暗色调
     *
     * @return
     */
    public static int getThemePrimaryDarkColor(Context context) {
        TypedValue typedValue = new TypedValue();
        Resources.Theme theme = context.getTheme();
        theme.resolveAttribute(R.attr.colorPrimaryDark, typedValue, true);
        return typedValue.data;
    }
    public static int convertDensityPix(Context context, int dip) {
        float scale = getDensity(context);
        return (int) (dip * scale + 0.5f);
    }
    public static float getDensity(Context context) {
        return context.getResources().getDisplayMetrics().density;
    }

    /**
     * 获取当前主题色对应色值
     *
     * @param context
     * @return
     */
    public static int getThemePrimaryColor(Context context) {
        TypedValue typedValue = new TypedValue();
        Resources.Theme theme = context.getTheme();
        theme.resolveAttribute(R.attr.colorPrimary, typedValue, true);
        return typedValue.data;
    }

    /**
     * 获取当前设置的主题
     *
     * @param context
     * @return
     */
    public static int getCurrentTheme(Context context) {
        int position = Utils.getIntPreference(context, "themePosition", 4);
        return ThemeControl.themeArr()[position];
    }

    /**
     * 获取color对应的int值
     *
     * @param context Activity
     * @param color   资源颜色id
     * @return 对应的int value
     */
    public static int getColorWarp(Activity context, @ColorRes int color) {
        return ContextCompat.getColor(context, color);
    }
    public static int getIntPreference(Context context, String key, int def) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        return sp.getInt(key, def);
    }
    public static void putIntPreference(Context context, String key, int value) {
        SharedPreferences sp = PreferenceManager.getDefaultSharedPreferences(context);
        sp.edit().putInt(key, value).apply();
    }

    public static void  StatusBarColor(final Activity context) {
        Window window = context.getWindow();
        //取消设置透明状态栏,使 ContentView 内容不再覆盖状态栏
        window.clearFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
        //需要设置这个 flag 才能调用 setStatusBarColor 来设置状态栏颜色
        window.addFlags(WindowManager.LayoutParams.FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS);
        //设置状态栏颜色
        //获取样式中的属性值
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(R.attr.colorPrimary, typedValue, true);
        int[] attribute = new int[] { R.attr.colorPrimary };
        TypedArray array = context.obtainStyledAttributes(typedValue.resourceId, attribute);
        //noinspection ResourceAsColor
        int color = array.getColor(0, R.attr.colorPrimary);
        array.recycle();
        window.setStatusBarColor(color);
    }
    private int screenWidth, screenHeight;
    private static Utils instance = null;
    public static Utils getInstance(Context context) {
        if (instance == null) {
            synchronized (Utils.class) {
                if (instance == null)
                    instance = new Utils(context);
            }
        }
        return instance;
    }
    //获取屏幕宽度
    public int getScreenWidth() {
        return screenWidth;
    }

    //获取屏幕高度
    public int getScreenHeight() {
        return screenHeight;
    }
    private Utils(Context context) {
        WindowManager manager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        DisplayMetrics dm = new DisplayMetrics();
        manager.getDefaultDisplay().getMetrics(dm);
        screenWidth = dm.widthPixels;// 获取屏幕分辨率宽度
        screenHeight = dm.heightPixels;// 获取屏幕分辨率高度
    }
}

