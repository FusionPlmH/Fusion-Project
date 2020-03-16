package com.android.launcher3.util;

import android.app.WallpaperManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.Log;
import android.view.WindowManager;
import java.util.HashSet;

public final class WallpaperUtils {
    private static final String TAG = "Launcher.WallpaperUtils";
    public static final String WALLPAPER_HEIGHT_KEY = "wallpaper.height";
    public static final float WALLPAPER_SCREENS_SPAN = 2.0f;
    public static final String WALLPAPER_WIDTH_KEY = "wallpaper.width";
    private static WallpaperManager mWallpaperManager;
    private static HashSet<String> refClassName = new HashSet();
    private static Point sDefaultWallpaperSize = null;
    private static Drawable wpDrawable;

    private static synchronized Point getDefaultWallpaperSize(Resources resources, WindowManager windowManager) {
        Point point;
        synchronized (WallpaperUtils.class) {
            if (sDefaultWallpaperSize == null) {
                int wallpaperTravelToScreenWidthRatio;
                int i;
                Point point2 = new Point();
                Point point3 = new Point();
                windowManager.getDefaultDisplay().getCurrentSizeRange(point2, point3);
                int max = Math.max(point3.x, point3.y);
                int max2 = Math.max(point2.x, point2.y);
                Point point4 = new Point();
                windowManager.getDefaultDisplay().getRealSize(point4);
                max = Math.max(point4.x, point4.y);
                max2 = Math.min(point4.x, point4.y);
                if (resources.getConfiguration().smallestScreenWidthDp >= 720) {
                    wallpaperTravelToScreenWidthRatio = (int) (((float) max) * wallpaperTravelToScreenWidthRatio(max, max2));
                    i = max;
                } else {
                    wallpaperTravelToScreenWidthRatio = Math.max((int) (((float) max2) * WALLPAPER_SCREENS_SPAN), max);
                    i = max;
                }
                sDefaultWallpaperSize = new Point(wallpaperTravelToScreenWidthRatio, i);
            }
            point = sDefaultWallpaperSize;
        }
        return point;
    }

    public static synchronized Drawable getWallpaperDrawable(Context context, String str) {
        Drawable drawable;
        synchronized (WallpaperUtils.class) {
            Log.d(TAG, "getWallpaperDrawable is called by " + str);
            if (mWallpaperManager == null) {
                mWallpaperManager = WallpaperManager.getInstance(context);
            }
            wpDrawable = mWallpaperManager.getDrawable();
            refClassName.add(str);
            drawable = wpDrawable;
        }
        return drawable;
    }

    public static synchronized boolean releaseWallpaperDrawable(String str) {
        boolean z = true;
        synchronized (WallpaperUtils.class) {
            Log.d(TAG, "releaseWallpaperDrawable is called by " + str + ", refLength=" + refClassName.size());
            if (refClassName.contains(str)) {
                refClassName.remove(str);
            }
            if (refClassName.size() < 1) {
                refClassName.clear();
                Bitmap bitmap = ((BitmapDrawable) wpDrawable).getBitmap();
                if (bitmap != null) {
                    Log.e(TAG, "check bitmap.recycle() on releaseWallpaperDrawable");
                    bitmap.recycle();
                    mWallpaperManager.forgetLoadedWallpaper();
                }
            } else {
                z = false;
            }
        }
        return z;
    }

    public static void suggestWallpaperDimension(Resources resources, SharedPreferences sharedPreferences, WindowManager windowManager, WallpaperManager wallpaperManager, boolean z) {
        Point defaultWallpaperSize = getDefaultWallpaperSize(resources, windowManager);
        int i = sharedPreferences.getInt(WALLPAPER_WIDTH_KEY, -1);
        int i2 = sharedPreferences.getInt(WALLPAPER_HEIGHT_KEY, -1);
        if (i == -1 || i2 == -1) {
            if (z) {
                i = defaultWallpaperSize.x;
                i2 = defaultWallpaperSize.y;
            } else {
                return;
            }
        }
        if (i != wallpaperManager.getDesiredMinimumWidth() || i2 != wallpaperManager.getDesiredMinimumHeight()) {
            wallpaperManager.suggestDesiredDimensions(i, i2);
        }
    }

    public static float wallpaperTravelToScreenWidthRatio(int i, int i2) {
        return (0.30769226f * (((float) i) / ((float) i2))) + 1.0076923f;
    }
}
