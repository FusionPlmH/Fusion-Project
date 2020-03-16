package com.android.launcher3.quickstep;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import android.app.ActivityOptions;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

import com.android.launcher3.LeoAmber.LeoRecentsMemory;
import com.android.launcher3.framework.support.context.appstate.LauncherAppState;

import static com.android.launcher3.LeoAmber.LeoGlobalUtils.LeoGradientDrawable;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoBasicColor;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoBlurWallpaper;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoUri;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoWallpaper;

import static com.android.launcher3.LeoAmber.LeoGlobalValues.*;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.*;
import com.android.launcher3.framework.view.context.BaseDraggingActivity;
import com.android.leo.R;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;

import static com.android.launcher3.framework.support.context.appstate.LauncherAppState.setApplicationContext;

public class RecentsActivity extends BaseDraggingActivity {
    private static final String TAG = "RecentsActivity";
    private LauncherAppState mApp;
    private boolean mCheckScreenOffPostStop;

    private Configuration mOldConfig;

    BroadcastReceiver mReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            if (RecentsActivity.this.mCheckScreenOffPostStop) {


                RecentsActivity.this.mCheckScreenOffPostStop = false;
            }
        }
    };

    private boolean mRelaunched;
    private Handler mUiHandler = new Handler(Looper.getMainLooper());

    private void init() {

    }

    private void initDeviceProfile() {

    }

    private void onHandleConfigChanged() {

    }

    public void changeNavigationBarColor(boolean z) {
    }

    public void changeStatusBarColor(boolean z) {
    }

    public void clearSavedState() {
    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(str);
        stringBuilder.append("Misc:");
        printWriter.println(stringBuilder.toString());
        dumpMisc(printWriter);
    }

    public void finishSettingsActivity() {
    }

    public ActivityOptions getActivityLaunchOptions(View view) {
        return getActivityLaunchOptions(view, null);
    }

    public ActivityOptions getActivityLaunchOptions(View view, Runnable runnable) {

        return null;
    }

    @Override
    public ViewGroup getDragLayer() {
        return null;
    }

    @Override
    public <T extends View> T getOverviewPanel() {
        return null;
    }





    @Override
    public View getRootView() {
        return null;
    }

    public ArrayList<Runnable> getBindOnResumeCallbacks() {
        return null;
    }



    public LayoutInflater getInflater() {
        return null;
    }




    public Bundle getSavedState() {
        return null;
    }

    public int getSecondTopStageMode() {
        return 0;
    }



    public int getTopStageMode() {
        return 0;
    }




    public boolean getVisible() {
        return false;
    }



    public boolean isDraggingEnabled() {
        return false;
    }

    public boolean isLandscape() {
        return false;
    }

    public boolean isMultiTouchState() {
        return false;
    }

    public boolean isPaused() {
        return false;
    }

    public boolean isPortrait() {
        return false;
    }

    public boolean isSkipAnim() {
        return false;
    }

    public void onActivityResult(int i, int i2, Intent intent) {

    }

    public void onBackPressed() {
        startHome();
    }

    public void onChangeSelectMode(boolean z, boolean z2) {
    }

    public void onClick(View view) {

    }

    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);

        this.mApp.makeDeviceProfile();
        this.mApp.initScreenGrid(this.mApp.isHomeOnlyModeEnabled());

        int diff = configuration.diff(this.mOldConfig);
        if ((diff & 256) != 0) {
            LauncherAppState.getInstance().updateInvariantDeviceProfile(this.mApp.getContext());

        }

        this.mOldConfig.setTo(configuration);
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.mOldConfig = new Configuration(getResources().getConfiguration());
        setApplicationContext(getApplicationContext());
        this.mApp = LauncherAppState.getInstance();
        this.mApp.setLauncherActivity(this);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.N) {
            this.mApp.setMultiWindowMode(isInMultiWindowMode());
        }

        this.mApp.makeDeviceProfile();
        this.mApp.initScreenGrid(this.mApp.isHomeOnlyModeEnabled());

        initDeviceProfile();
        boolean z = true;
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN_MR1) {
            if (this.mOldConfig.getLayoutDirection() != 1) {
                z = false;
            }
        }


        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.SCREEN_OFF");
        registerReceiver(this.mReceiver, intentFilter);
        this.mRelaunched = false;
        setLeoRomObserver();
    }

    protected void onDestroy() {
        super.onDestroy();

        unregisterReceiver(this.mReceiver);
    }

    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        super.onMultiWindowModeChanged(z, configuration);
        onHandleConfigChanged();


    }

    protected void onNewIntent(Intent intent) {
        super.onNewIntent(intent);

        init();
        this.mRelaunched = true;
    }

    public void onRootViewSizeChanged() {
        if (isInMultiWindowModeCompat()) {
            onHandleConfigChanged();
        }
    }

    protected void onStart() {
        super.onStart();
        if (!this.mRelaunched) {
            init();
        }
        this.mRelaunched = false;
    }

    protected void onStop() {
        super.onStop();



        this.mCheckScreenOffPostStop = true;
    }

    public void onTrimMemory(int i) {
        super.onTrimMemory(i);

    }

    public void onWindowVisibilityChanged(int i) {
    }

    protected void reapplyUi() {

    }

    public void recreateLauncher() {
    }

    public void setEnableHotWord(boolean z) {
    }

    public void setHotWordDetection(boolean z) {
    }

    public void startHome() {

    }

    public boolean waitUntilResume(Runnable runnable, boolean z) {
        return false;
    }

    public boolean waitUntilResumeForHotseat(Runnable runnable) {
        return false;
    }

    @Override
    public void onPointerCaptureChanged(boolean hasCapture) {

    }


    private LeoObserver mLeoObserver;

    public void setLeoRomObserver() {
        mLeoObserver = new LeoObserver(new Handler());
        mLeoObserver.observe();
        setLeoRomRecentsBackground(getApplicationContext());
    }
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver  resolver=getApplicationContext().getContentResolver();
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


        }

        @Override
        public void onChange(boolean selfChange) {

            setLeoRomRecentsBackground(getApplicationContext());
        }


    }
    private FrameLayout mLeoRecentsView;
    public void  setLeoRomRecentsBackground(Context c) {
        mLeoRecentsView= (FrameLayout) findViewById(c.getResources().getIdentifier("leo_recents_view", "id", c.getPackageName()));
        LeoGlobalSetting(getApplicationContext());
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


}
