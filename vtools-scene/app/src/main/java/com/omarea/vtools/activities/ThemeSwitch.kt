package com.omarea.vtools.activities

import android.Manifest
import android.app.Activity
import android.app.UiModeManager
import android.app.WallpaperManager
import android.content.Context
import android.content.SharedPreferences
import android.graphics.Bitmap
import android.graphics.Color
import android.graphics.drawable.BitmapDrawable
import android.graphics.drawable.Drawable
import android.os.Build
import android.renderscript.Allocation
import android.renderscript.Element
import android.renderscript.RenderScript
import android.renderscript.ScriptIntrinsicBlur
import android.support.v4.content.PermissionChecker
import android.view.View
import android.view.WindowManager
import com.omarea.common.ui.DialogHelper
import com.omarea.common.ui.ThemeMode
import com.omarea.store.SpfConfig
import com.omarea.vtools.R

object ThemeSwitch {
    private val themeMap = arrayListOf(
            // 彩色 + 白
            R.style.AppThemeBlue,
            R.style.AppThemeCyan,
            R.style.AppThemeGreen,
            R.style.AppThemeOrange,
            R.style.AppThemeRed,
            R.style.AppThemePink,
            R.style.AppThemePretty,
            R.style.AppThemeViolet,
            // 深色 + 灰
            R.style.AppThemeNoActionBarNight,
            // 白色 + 粉紫
            R.style.AppThemeWhite
    )

    private var globalSPF: SharedPreferences? = null

    private fun checkPermission(context: Context, permission: String): Boolean = PermissionChecker.checkSelfPermission(context, permission) == PermissionChecker.PERMISSION_GRANTED

    internal fun switchTheme(activity: Activity): ThemeMode {
        val themeMode = ThemeMode()
        if (globalSPF == null) {
            globalSPF = activity.getSharedPreferences(SpfConfig.GLOBAL_SPF, Context.MODE_PRIVATE)
        }

        var theme = 1
        if (!globalSPF!!.contains(SpfConfig.GLOBAL_SPF_THEME) || globalSPF!!.getInt(SpfConfig.GLOBAL_SPF_THEME, -1) == -1) {
            val uiModeManager = activity.applicationContext.getSystemService(Context.UI_MODE_SERVICE) as UiModeManager
            if (uiModeManager.nightMode == UiModeManager.MODE_NIGHT_YES) {
                theme = 8
            } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                theme = 9
            }
        } else {
            theme = globalSPF!!.getInt(SpfConfig.GLOBAL_SPF_THEME, 1)
        }

        if (theme < themeMap.size) {
            val themeId = themeMap[theme]
            activity.setTheme(themeId)

            themeMode.isDarkMode = (themeId == R.style.AppThemeNoActionBarNight)
            themeMode.isLightStatusBar = (theme == 9)

            if (themeMode.isLightStatusBar) {
                if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O) {
                    activity.window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR or View.SYSTEM_UI_FLAG_LIGHT_NAVIGATION_BAR
                } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                    activity.window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR
                }
            }
        } else if (theme == 10) {
            // 设置壁纸作为背景需要读取外置存储权限
            if (checkPermission(activity, Manifest.permission.READ_EXTERNAL_STORAGE) && checkPermission(activity, Manifest.permission.WRITE_EXTERNAL_STORAGE)) {
                val wallpaper = WallpaperManager.getInstance(activity)
                val wallpaperInfo = wallpaper.wallpaperInfo
                // 动态壁纸
                if (wallpaperInfo != null && wallpaperInfo.packageName != null) {
                    activity.setTheme(R.style.AppThemeWallpaper)
                    // activity.window.setBackgroundDrawable(activity.getDrawable(R.drawable.window_transparent));
                    activity.window.addFlags(WindowManager.LayoutParams.FLAG_SHOW_WALLPAPER)

                    themeMode.isDarkMode = true
                } else {
                    val wallpaperDrawable = wallpaper.drawable

                    // 深色的静态壁纸
                    if (isDarkColor(wallpaperDrawable)) {
                        activity.setTheme(R.style.AppThemeWallpaper)

                        themeMode.isDarkMode = true
                    } else {
                        // 浅色的静态壁纸
                        activity.setTheme(R.style.AppThemeWallpaperLight)

                        themeMode.isDarkMode = false
                        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.M) {
                            activity.window.decorView.systemUiVisibility = View.SYSTEM_UI_FLAG_LIGHT_STATUS_BAR
                            themeMode.isLightStatusBar = true
                        }
                    }

                    activity.window.setBackgroundDrawable(wallpaperDrawable)
                    // 使用壁纸高斯模糊作为窗口背景
                    // activity.window.setBackgroundDrawable(BitmapDrawable(activity.resources, rsBlur((wallPaper as BitmapDrawable).bitmap, 25, activity)))
                }
            } else {
                DialogHelper.helpInfo(activity, "", activity.getString(R.string.wallpaper_rw_permission))
            }
        }
        return themeMode
    }

    private fun isDarkColor(wallPaper: Drawable): Boolean {
        // 根据壁纸色彩设置主题
        val bitmap = (wallPaper as BitmapDrawable).bitmap
        val h = bitmap.height - 1
        val w = bitmap.width - 1

        var darkPoint = 0
        var lightPoint = 0

        // 采样点数
        val pointCount = if (h > 8 && w > 8) 8 else 1

        for (i in 0..pointCount) {
            val y = h / pointCount * i
            val x = w / pointCount * i
            val pixel = bitmap.getPixel(x, y)

            // 获取颜色
            val redValue = Color.red(pixel)
            val blueValue = Color.blue(pixel)
            val greenValue = Color.green(pixel)

            if (redValue > 150 && blueValue > 150 && greenValue > 150) {
                lightPoint += 1
            } else {
                darkPoint += 1
            }
        }
        return darkPoint > lightPoint
    }

    private fun rsBlur(source: Bitmap, radius: Int, context: Context): Bitmap {
        val inputBmp = source
        val renderScript = RenderScript.create(context);

        // Allocate memory for Renderscript to work with
        //(2)
        val input = Allocation.createFromBitmap(renderScript, inputBmp);
        val output = Allocation.createTyped(renderScript, input.getType());
        //(3)
        // Load up an instance of the specific script that we want to use.
        val scriptIntrinsicBlur = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
        //(4)
        scriptIntrinsicBlur.setInput(input);
        //(5)
        // Set the blur radius
        scriptIntrinsicBlur.setRadius(radius.toFloat());
        //(6)
        // Start the ScriptIntrinisicBlur
        scriptIntrinsicBlur.forEach(output);
        //(7)
        // Copy the output to the blurred bitmap
        output.copyTo(inputBmp);
        //(8)
        renderScript.destroy();

        return inputBmp;
    }
}
