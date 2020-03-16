package com.android.systemui.recents;

import android.app.Activity;
import android.app.ActivityOptions;
import android.app.TaskStackBuilder;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings.System;

import android.util.Log;
import android.util.Slog;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver.OnDrawListener;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;


import com.leo.systemui.LeoRecentsMemory;
import com.leo.view.LeoCallBackgroundView;
import com.os.leo.utils.LeoUserSettings;
import com.os.leo.utils.LeoUtils;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;


import static com.leo.utils.Constants.mLeoRom;
import static com.os.leo.utils.LeoUtils.*;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.*;

import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.getLeoUri;
import static com.android.systemui.SystemUIApplication.getContext;
import static com.android.systemui.UId.UId44;
import static com.android.systemui.UId.UId45;


public class RecentsActivity extends  Activity implements OnPreDrawListener {
    private boolean launchDockedTaskFromFullRecents;

    private boolean mFinishedOnStartup;
    private int mFocusTimerDuration;
   // LeoRecentsMemory mLeoMemoryInfo;
   // private LeoObserver mLeoObserver = null;
    private Handler mHandler = new Handler();

    private final OnPreDrawListener mRecentsDrawnEventListener = new OnPreDrawListener() {
        public boolean onPreDraw() {
   //         RecentsActivity.this.mRecentsView.getViewTreeObserver().removeOnPreDrawListener(this);

            return true;
        }
    };
    private FrameLayout mLeoRecentsView;

  //  private RecentsView mRecentsView;
    ViewStub mRecentsViewStub;

    @Override
    public boolean onPreDraw() {
        return false;
    }





    protected void onDestroy() {
        super.onDestroy();
        if (!this.mFinishedOnStartup) {

           /* ContentResolver contentResolver = getContentResolver();
            if (!(contentResolver == null || this.mLeoObserver == null)) {
                contentResolver.unregisterContentObserver(mLeoObserver);
                mLeoObserver = null;
            }
       */ }
    }




    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);

        setLeoRomObserver();
  /*      mLeoMemoryInfo = (LeoRecentsMemory) findViewById(getLeoResource("id/recents_memory_info"));
        if (mLeoObserver == null) {
            mLeoObserver = new LeoObserver();
        }
        RamUpdates.LeoRAMInfo(this);
        LeoRamUpdates();
    }

    public void LeoRamUpdates() {
        mLeoMemoryInfo.setRam();
  */  }


    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver  resolver=getContext().getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBlurBgDegree()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBgWallpaperAlphaEnable()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBgWallpaperAlpha()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBGStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBgBasicColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsGradientBgStartColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsGradientBgCenterColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsGradientBgEndColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsGradientEnableCenterColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsShowBG()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBgGradientBgStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsGradientBgType()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsGradientBackGroundCornerRadius()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsGradientBackGroundColorRadius()), false,
                    this);
            resolver.registerContentObserver(getLeoUri( getLeoRecentsBgWallpaper()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsWallpaperColorEnable()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsWallpaperColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsStrokeDashGap()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsStrokeEnabled()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsStrokeDashWidth()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsStrokeThickness()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsStrokeDashColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBlurWallpaperColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBlurWallpaperAlpha()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsVibratorEnable()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsVibrationLevel()), false,
                    this);
            resolver.registerContentObserver(getLeoUri( getLeoRecentsGradientColorFour()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsGradientColorFive()  ), false,
                    this);
            resolver.registerContentObserver(getLeoUri( getLeoRecentsGradientColorSix()), false,
                    this);
            resolver.registerContentObserver(getLeoUri( getLeoRecentsGradientColorEnabled()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoRecentsBgWallpaperBlurEnabled()), false,
                    this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMInfo()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMInfoRefresh()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMInfoBGColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMTextColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMClick()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMUsedColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMFreeColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMTextSize()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMLanguage()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMFont()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMStrokeEnabled()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMStrokeDashWidth()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMStrokeThickness()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMStrokeDashColor()), false, this);
            resolver.registerContentObserver(LeoUtils.getLeoUri(LeoUserSettings.getLeoRecentTaskRAMStrokeDashCornerRadius()), false, this);

        }

        @Override
        public void onChange(boolean selfChange) {
            LeoRecentsMemory.RamUpdates.LeoRAMInfo(getContext());
            LeoRamUpdates();
            setLeoRomRecentsBackground(getContext());
        }


    }

    private LeoObserver mLeoObserver;
    LeoRecentsMemory mLeoMemoryInfo;
    public void setLeoRomObserver() {
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        setLeoRomRecentsBackground(getContext());
        mLeoMemoryInfo = (LeoRecentsMemory) findViewById(UId45);
        LeoRecentsMemory.RamUpdates.LeoRAMInfo(this);
        LeoRamUpdates();



    }
    public void  setLeoRomRecentsBackground(Context c) {
        mLeoRecentsView= (FrameLayout) findViewById(UId44);
        LeoSettings(c);
        if (setLeoUesrRecentsShowBG) {
            mLeoRecentsView.setVisibility(mLeoRecentsView.VISIBLE);
        } else {
            mLeoRecentsView.setVisibility(mLeoRecentsView.GONE);
        }
        boolean StrokeEnabled=setLeoUesrRecentsStrokeEnabled;
        int StrokeThickness=setLeoUesrRecentsStrokeThickness;
        int DashWidth= setLeoUesrRecentsStrokeDashWidth;
        int DashGap= setLeoUesrRecentsStrokeDashGap;
        int DashColor= setLeoUesrRecentsStrokeDashColor;
        int CornerRadius=setLeoUesrRecentsGradientBackGroundCornerRadius;
        int WallpaperColor=setLeoUesrRecentsWallpaperColor;
        int Alpha=setLeoUesrRecentsBgWallpaperAlpha;
        String str=setLeoUesrRecentsBgWallpaper;
        int SPanelBGStyle=setLeoUesrRecentsBGStyle;
        int colorstyle=setLeoUesrRecentsGradientColorEnabled;
        if (SPanelBGStyle == 0) {
            if(colorstyle==0){
                mLeoRecentsView.setBackground(getLeoBasicColor(
                        StrokeEnabled,
                        StrokeThickness,
                        DashWidth,
                        DashGap,
                        DashColor,
                        CornerRadius,
                        setLeoUesrRecentsBgBasicColor
                ));
            } else if(colorstyle==1){
                mLeoRecentsView.setBackground(LeoGradientDrawable(setLeoUesrRecentsGradientBgStartColor,setLeoUesrRecentsGradientBgCenterColor,setLeoUesrRecentsGradientBgEndColor,
                        setLeoUesrRecentsGradientColorFour,
                        setLeoUesrRecentsGradientColorFive,
                        setLeoUesrRecentsGradientColorSix,
                        setLeoUesrRecentsGradientEnableCenterColor ,
                        setLeoUesrRecentsBgGradientBgStyle,StrokeEnabled,StrokeThickness, DashWidth,DashGap, DashColor,CornerRadius
                        ,setLeoUesrRecentsGradientBgType,setLeoUesrRecentsGradientBackGroundColorRadius));
            }

        }if (SPanelBGStyle == 999 &&  str != null) {
            int wallpaperstyle=setLeoUesrRecentsBgWallpaperBlurEnabled;
            if(wallpaperstyle==0) {
                mLeoRecentsView.setBackground(getLeoWallpaper(c,str,setLeoUesrRecentsWallpaperColorEnable,WallpaperColor,setLeoUesrRecentsBgWallpaperAlphaEnable,Alpha));
            }else if(wallpaperstyle==1){
                mLeoRecentsView.setBackground(getLeoBlurWallpaper(c,str,setLeoUesrRecentsBlurBgDegree,setLeoUesrRecentsBlurWallpaperColorEnabled,WallpaperColor,setLeoUesrRecentsBlurWallpaperAlphaEnabled,Alpha));
            }
        }
    }

    public void LeoRamUpdates() {
        LeoRecentsMemory ram = mLeoMemoryInfo;
        if (ram != null) {
            ram.setRam();
        }
    }


    public void onMultiWindowModeChanged(boolean z) {


    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);
        if (intent.getBooleanExtra("update_focus", false)) {
            this.launchDockedTaskFromFullRecents = true;
            return;
        }
        // this.mReceivedNewIntent = true;

    }

    protected void onPause() {
        super.onPause();

        mLeoMemoryInfo.onStop();
    }



    protected void onResume() {
        super.onResume();
        LeoRecentsMemory RamInfo = mLeoMemoryInfo;
        if (RamInfo != null) {
            RamInfo.onResume();
        }
    }


    protected void onStop() {
        super.onStop();


        mLeoMemoryInfo.onStop();
    }
}
