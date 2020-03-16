package com.leo.systemui;


import android.app.SemStatusBarManager;
import android.bluetooth.BluetoothAdapter;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;

import android.database.ContentObserver;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.AttributeSet;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;


import com.android.server.fingerprint.FingerprintService;


import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.*;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoPulldownOutdoorColorEnabled;
import static com.os.leo.utils.LeoUserSettings.getLeoPulldownOutdoorEnabled;
import static com.os.leo.utils.LeoUserSettings.getLeoPulldownOutdoorIconColor;
import static com.os.leo.utils.LeoUserSettings.getLeoPulldownOutdoorIconStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoPulldownOutdoorRandomColor;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarGesturesVibratorEnable;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarLeftAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorActionApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorCloseEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorIconColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorIconStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorVibrator;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownOutdoorVibratorLevel;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftClickAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftClickApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftLongClickAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftLongClickApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightClickAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightClickApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightLongClickAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightLongClickApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarWeatherColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarWeatherColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarWeatherRandomColor;
import static com.os.leo.utils.LeoUserString.LeoAction;



public class LeoOutdoor extends ImageView implements View.OnClickListener {

    private Context mContext;

    public LeoOutdoor(Context context) {
        this(context, null);
    }

    public LeoOutdoor(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LeoOutdoor(Context context, AttributeSet attributeSet, int defStyle) {
        super(context, attributeSet, defStyle);
        mContext = context;


    }

    public void onActionClick() {
        int style=setLeoUesrPulldownOutdoorAction;
        if (style == 0) {
            style=131;
        }
        LeoAction(mContext,style,setLeoUesrPulldownOutdoorActionApp);

    }


    public void showmIcon( ) {
        int style=setLeoUesrPulldownOutdoorIconStyle;
        float size=1;
        setScaleX(size);
        setScaleY(size);

       Drawable d = null;
        if ( style == 0) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_outdoor"));
        } else if ( style == 1) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_alibaba"));
        } else if ( style == 2) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_apple_logo"));
        } else if ( style == 3) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_baidu"));
        } else if ( style == 4) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_cmcc"));
        } else if ( style == 5) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_google"));
        } else if ( style == 6) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_ios"));
        } else if ( style == 7) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_linux"));
        } else if ( style == 8) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_qq"));
        } else if ( style == 9) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_telecom"));
        }else if ( style == 10) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_unicom"));
        }else if ( style == 11) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_windows"));
        }else if ( style == 12) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_ubuntu"));
       }else if ( style == 13) {
            d = mContext.getResources().getDrawable(getLeoResource("drawable/ic_leo"));
       }
        setImageDrawable(d);


        int defaultcolor=getContext().getColor(getLeoResource("color/brightness_bar_icon_tint_color"));
        int colorstyle=setLeoUesrPulldownOutdoorRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        int color=setLeoUesrPulldownOutdoorColorEnabled;
        if(color==1){
            if(colorstyle==0){
                mOutdoorColor=setLeoUesrPulldownOutdoorIconColor;
            }else if(colorstyle==1){
                mOutdoorColor=colorrandom;
            }
        }else if (color==0) {
            mOutdoorColor=defaultcolor;
        }
        setColorFilter(mOutdoorColor, PorterDuff.Mode.SRC_ATOP);
    }

private  int mOutdoorColor;



    public void onClick(View view) {
        LeoSettings(mContext);
        if (setLeoUesrPulldownOutdoorCloseEnabled == 1) {
        collapsePanel();
        }
        onActionClick();
        Vibrate();


    }
    private void collapsePanel() {

            try {
                Object service = this.mContext.getSystemService("statusbar");
                Class<?> statusbarManager = Class.forName("android.app.StatusBarManager");
                if (Build.VERSION.SDK_INT <= 16) {
                    statusbarManager.getMethod("collapse", new Class[0]).invoke(service, new Object[0]);
                } else {
                    statusbarManager.getMethod("collapsePanels", new Class[0]).invoke(service, new Object[0]);
                }
            } catch (Exception e) {

            }

    }

    public void Vibrate() {
        if (setLeoUesrPulldownOutdoorVibrator == 1) {
            this.mVibrator = (Vibrator) this.mContext.getSystemService(Context.VIBRATOR_SERVICE);
            this.mVibrator.vibrate(setLeoUesrPulldownOutdoorVibratorLevel);
        }
    }
    private Vibrator mVibrator;
    public void updateSettings() {
        LeoSettings(mContext);
      setOnClickListener(this);
        showmIcon( );
        setVisibility(VISIBLE);

        if (setLeoUesrPulldownOutdoorEnabled==1) {
            setVisibility(GONE);
        }


    }





    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

        if (mLeoSettingsObserver == null) {
            mLeoSettingsObserver = new LeoSettingsObserver(new Handler());
        }
        mLeoSettingsObserver.observe();
        updateSettings();

    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().getContentResolver().unregisterContentObserver(mLeoSettingsObserver);
    }

    private LeoSettingsObserver mLeoSettingsObserver;
    private class LeoSettingsObserver extends ContentObserver {


        LeoSettingsObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoPulldownOutdoorEnabled()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoPulldownOutdoorIconStyle()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoPulldownOutdoorIconColor()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoPulldownOutdoorColorEnabled()), false,
                    this);
            resolver.registerContentObserver(Settings.System
                            .getUriFor(getLeoPulldownOutdoorRandomColor()), false,
                    this);
        }


        @Override
        public void onChange(boolean selfChange) {
            updateSettings();
        }
    }

}
