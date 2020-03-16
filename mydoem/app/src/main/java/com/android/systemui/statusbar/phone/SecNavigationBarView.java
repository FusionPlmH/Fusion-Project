package com.android.systemui.statusbar.phone;

import android.app.ActivityManager;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.ActivityNotFoundException;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources.NotFoundException;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Debug;
import android.os.FactoryTest;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Vibrator;
import android.provider.Settings;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
;
import com.android.systemui.UId;
import com.android.systemui.statusbar.NavigationBarSettingsHelper;
import com.leo.utils.Constants;
import com.os.leo.utils.LeoBlur;
import com.os.leo.utils.LeoUserSettings;
import com.os.leo.utils.LeoUtils;


import java.io.File;
import java.util.ArrayList;
import java.util.List;

import static com.leo.utils.Constants.*;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserSettings.getLeoNavigationBarAllIcon;
import static com.os.leo.utils.LeoUserSettings.getLeoNavigationBarAllIconStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoNavigationBarBackIconStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoNavigationBarHomeIconStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoNavigationBarRecentIconStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarClockColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNavigationBarAllIcon;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNavigationBarAllIconStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNavigationBarBackIconStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNavigationBarHomeIconStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNavigationBarRecentIconStyle;
import static com.os.leo.utils.LeoUserString.LeoAction;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.LeoGradientDrawable;
import static com.os.leo.utils.LeoUtils.getLeoBasicColor;
import static com.os.leo.utils.LeoUtils.getLeoBlurWallpaper;
import static com.os.leo.utils.LeoUtils.getLeoInt;
import static com.os.leo.utils.LeoUtils.getLeoUri;

import static com.os.leo.utils.LeoUtils.getLeoWallpaper;


public class SecNavigationBarView extends NavigationBarView {


    private StatusBar mStatusBar;
    private int  mNavigationBarHeight;
    public SecNavigationBarView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setNavigationBarHeight(context);

    }
    public void setNavigationBarHeight(Context context) {
        mNavigationBarHeight= context.getResources().getDimensionPixelSize(12);
    }
    public void setVisibility(int visibility) {
        super.setVisibility(visibility);
        if (visibility == 8) {

        }
    }
    private LeoObserver mLeoObserver;

    public void setLeoRomObserver() {
       mLeoObserver = new LeoObserver(new Handler());
       mLeoObserver.observe();

    }

    private GestureDetector mLeoNavigationGestureListener;
    class   LeoNavigationGesture extends GestureDetector.SimpleOnGestureListener {
        LeoNavigationGesture() {
            LeoSettings(getContext());
        }
            private Vibrator mVibrator;
            public void Vibrate() {
                if (setLeoUesrLauncherDoubleTapVibrator == 1) {
                    this.mVibrator = (Vibrator) getContext().getSystemService(Context.VIBRATOR_SERVICE);
                    this.mVibrator.vibrate(setLeoUesrLauncherGesturalVibrationLevel);
                }
            }
            @Override
            public boolean onDoubleTap(MotionEvent event) {
                LeoSettings(getContext());
                boolean woksdoutap= setLeoUesrLauncherDoubleTapEnabled;
                if (woksdoutap) {
                    Log.d("launcher double"+"Leo Rom", "ROM developer from China." );
                    Vibrate();
                    String string =setLeoUesrLauncherDoubleTapApp;
                    int Click= setLeoUesrLauncherDoubleTapAction;
                    LeoAction(getContext(),Click,string);
                }
                return true;
            }
        }



    public boolean onTouchEvent(MotionEvent event) {

        return super.onTouchEvent(event);
    }

    public boolean onInterceptTouchEvent(MotionEvent event) {
        LeoTouchEvent(event);
        return super.onInterceptTouchEvent(event);
    }

    public void LeoTouchEvent(MotionEvent event) {
        if (event.getY() < ((float)  mNavigationBarHeight)) {
            mLeoNavigationGestureListener.onTouchEvent(event);
        }

    }
    public void LeoGesture() {
        mLeoNavigationGestureListener= new GestureDetector(mContext, new LeoNavigationGesture());

    }
    public void onFinishInflate() {
        boolean z = false;
        super.onFinishInflate();
        setLeoNavbg();
    }
    public void playHomeButtonUpAnimation() {

    }

    public void setLeoNavbg() {
        LeoSettings(getContext());
        mNavbgView.setBackgroundColor(setLeoUesrNavigationBarBgBasicColor);
    }

 Context mContext;


    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }



        void observe() {
            ContentResolver resolver = SecNavigationBarView.this.getContext().getContentResolver();
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavigationBarAllIcon()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavigationBarAllIconStyle()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavigationBarHomeIconStyle()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavigationBarBackIconStyle()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavigationBarRecentIconStyle()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavColorEnabled()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavAllColorEnabled()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavHomeColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavBackColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavTaskColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavImeColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavPinColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoNavIconAllColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings. getLeoNavIconRandomColor()), false, this);
        }



        @Override
        public void onChange(boolean selfChange) {

            onOpenThemeChanged();
            setNavigationIconHints(mNavigationIconHints, true);

        }

    }
    protected Configuration mConfiguration;


    public void  setLeoRomStatusBarBackground() {

        LeoSettings(getContext());
        GradientDrawable LeoGradientDrawable = new GradientDrawable();
        boolean StrokeEnabled=setLeoUesrNavigationBarStrokeEnabled;
        int StrokeThickness=setLeoUesrNavigationBarStrokeThickness;
        int DashWidth= setLeoUesrNavigationBarStrokeDashWidth;
        int DashGap= setLeoUesrNavigationBarStrokeDashGap;
        int DashColor= setLeoUesrNavigationBarStrokeDashColor;
        int CornerRadius=setLeoUesrNavigationBarGradientBackGroundCornerRadius;
        int WallpaperColor=setLeoUesrNavigationBarWallpaperColor;
        int Alpha=setLeoUesrNavigationBarBgWallpaperAlpha;
        String str=setLeoUesrNavigationBarBgWallpaper;
        if (setLeoUesrNavigationBarShowBG) {
            int SPanelBGStyle=setLeoUesrNavigationBarBGStyle;
            if (SPanelBGStyle == 0) {
                getLeoBasicColor(
                        StrokeEnabled,
                        StrokeThickness,
                        DashWidth,
                        DashGap,
                        DashColor,
                        CornerRadius,
                        setLeoUesrNavigationBarBgBasicColor
                );
                setBackground(LeoGradientDrawable);
            }  else if (SPanelBGStyle == 1) {
              //  setBackground(LeoGradientDrawable(setLeoUesrNavigationBarGradientBgStartColor,setLeoUesrNavigationBarGradientBgCenterColor,setLeoUesrNavigationBarGradientBgEndColor,setLeoUesrNavigationBarGradientEnableCenterColor ,
                     //   setLeoUesrNavigationBarBgGradientBgStyle,StrokeEnabled,StrokeThickness, DashWidth,DashGap, DashColor,CornerRadius
                     //   ,setLeoUesrNavigationBarGradientBgType,setLeoUesrNavigationBarGradientBackGroundColorRadius));
            }   else if (SPanelBGStyle == 666 &&  str != null) {
                setBackground(getLeoWallpaper(mContext,str,setLeoUesrNavigationBarWallpaperColorEnable,WallpaperColor,setLeoUesrNavigationBarBgWallpaperAlphaEnable,Alpha));

            } else if (SPanelBGStyle == 999 &&  str != null) {
              //  setBackground(getLeoBlurWallpaper(mContext,str,setLeoUesrNavigationBarBlurBgDegree,setLeoUesrNavigationBarBlurWallpaperColorEnabled,WallpaperColor,setLeoUesrNavigationBarBlurWallpaperAlphaEnabled,Alpha));
            }
        } else {

            setBackgroundColor(Transparency);
        }
    }
    public void onOpenThemeChanged() {


    }
    protected void updateIcons(Context context, Configuration configuration, Configuration configuration2) {
      setLeoRomStatusBarBackground();
    }


    public static Drawable setLeoBlurView(Context cxt,  String str , int blur, int scale){
        Bitmap bitmapWallpaper;
        Drawable drawable = null;
        File backgroundwallpaper = new File(Uri.parse(str).getPath());
        if (backgroundwallpaper != null) {
            bitmapWallpaper = BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath());
            Log.v(AUTHOR, CORYRIGHT+China );
            Bitmap finalBitmap = LeoBlur.with(cxt)
                    .bitmap(bitmapWallpaper) //要模糊的图片
                    .radius(blur)//模糊半径
                    .scale(scale)//指定模糊前缩小的倍数
                    .blur();
            drawable= new BitmapDrawable(
                    cxt.getResources(), finalBitmap);

        }
        return drawable;
    }

     private void updateNavigationBarColor(boolean themeDefault) {
        int color;
        int color2=getLeoResource("color/light_navbar_background_opaque");
        if (themeDefault) {
            this.mNavigationBarSettingsHelper.setNavigationBarThemeColor(getThemeNavigationBarColor());
            setBackground( setLeoBlurView(mContext,Settings.System.getString(mContext.getContentResolver(),"leo_tweaks_activity_wallpaper"),15,15));
            color = this.mContext.getColor(color2);

        } else {
            color = this.mNavigationBarSettingsHelper.getNavigationBarColor();

        }
        if (color == 0) {
            color = this.mContext.getColor(color2);

        }
        this.mBarTransitions.updateModeBackgroundColor(0, color);
        this.mNavigationBarSettingsHelper.setNavigationBarCurrentColor(color);

    }
    private NavigationBarSettingsHelper mNavigationBarSettingsHelper;
    private int getThemeNavigationBarColor() {
        Context context = this.mContext;
        try {
            context = this.mContext.createPackageContext("com.android.systemui", 0);
        } catch (NameNotFoundException e) {
            e.printStackTrace();
        }
        return context.getColor(-1);
    }


    public static int mCustomBack;
    public static int mCustomBackAlt;
    public static int mCustomBackAltDark;
    public static int mCustomBackDark;
    public static int mCustomHome;
    public static int mCustomHomeDark;
    public static int mCustomRecents;
    public static int mCustomRecentsDark;

}
