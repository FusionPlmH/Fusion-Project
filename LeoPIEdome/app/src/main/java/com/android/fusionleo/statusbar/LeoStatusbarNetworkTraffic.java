package com.android.fusionleo.statusbar;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.TrafficStats;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.widget.TextView;



import java.text.DecimalFormat;


import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;


import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrNetworkTrafficALLColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrNetworkTrafficALLColorEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrNetworkTrafficCustomColorEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrNetworkTrafficIconColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrNetworkTrafficTextColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarNetworkTrafficRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkArrowsOrientation;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkAutoHideEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkAutoHideThreshold;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkShowArrowsEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkShowArrowsStyle;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkSingle;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkState;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkText;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusbarNetworkUnit;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.DownIcom;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.NetworkIconStyle;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.UpDownIcom;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.UpIcom;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoGradient;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoNetworkIconStyle;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mStatusBarClockColor;

public class LeoStatusbarNetworkTraffic extends TextView implements DarkIconDispatcher.DarkReceiver {
    private static DecimalFormat decimalFormat = new DecimalFormat("##0.#");
    private int GB;
    private int KB;
    private int MB;
    private long lastUpdateTime;
    private boolean mAttached;
    private boolean mHideInactivity;
    private boolean mIconEnabled;
    private final BroadcastReceiver mIntentReceiver;
    private int mInterval;
    private int  mNetworkTrafficColor, mNetworkTrafficTint;
    private Runnable mRunnable;
    private boolean mShouldStart;
    private int mState;
    private boolean mTextEnabled;
    private Handler mTrafficHandler;
    private boolean mUnit;


    private long totalRxBytes;
    private long totalTxBytes;
    private int txtSizeMulti;
    private int txtSizeSingle;

    private Context mContext;
    public LeoStatusbarNetworkTraffic(Context context) {
        this(context, null);
    }

    public LeoStatusbarNetworkTraffic(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }



    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!mAttached) {
            mAttached = true;
            IntentFilter filter = new IntentFilter();
            filter.addAction(ConnectivityManager.CONNECTIVITY_ACTION);
            mContext.registerReceiver(mIntentReceiver, filter, null, getHandler());
        }
        Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
        updateSettings();
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mAttached) {
            mContext.unregisterReceiver(mIntentReceiver);
            mAttached = false;
        }
        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
    }

    public LeoStatusbarNetworkTraffic(Context context, AttributeSet attributeSet, int defStyle) {
        super(context, attributeSet, defStyle);
        this.mState = 3;
        this.KB = 1000;
        this.MB = this.KB * this.KB;
        this.GB = this.MB * this.KB;


        mTrafficHandler = new Handler() {
            private String formatOutput(long j, long j2, String str) {
                long j3 = (long) (((float) j2) / (((float) j) / 1000.0f));
                return j3 < ((long) KB) ? decimalFormat.format(j3) + str : j3 < ((long) LeoStatusbarNetworkTraffic.this.MB) ? LeoStatusbarNetworkTraffic.decimalFormat.format((double) (((float) j3) / ((float) LeoStatusbarNetworkTraffic.this.KB))) + 'k' + str : j3 < ((long) LeoStatusbarNetworkTraffic.this.GB) ? LeoStatusbarNetworkTraffic.decimalFormat.format((double) (((float) j3) / ((float) LeoStatusbarNetworkTraffic.this.MB))) + 'M' + str : LeoStatusbarNetworkTraffic.decimalFormat.format((double) (((float) j3) / ((float) LeoStatusbarNetworkTraffic.this.GB))) + 'G' + str;
            }

            public void handleMessage(Message message) {
                String str;
                long elapsedRealtime = SystemClock.elapsedRealtime() - lastUpdateTime;
                if (((double) elapsedRealtime) < ((double)getInterval()) * 0.95d) {
                    if (message.what == 1) {
                        if (elapsedRealtime < 1) {
                            elapsedRealtime = Long.MAX_VALUE;
                        }
                    } else {
                        return;
                    }
                }
              lastUpdateTime = SystemClock.elapsedRealtime();
                long totalRxBytes = TrafficStats.getTotalRxBytes();
                long totalTxBytes = TrafficStats.getTotalTxBytes();
                long rxData = totalRxBytes - LeoStatusbarNetworkTraffic.this.totalRxBytes;
                long txData = totalTxBytes - LeoStatusbarNetworkTraffic.this.totalTxBytes;
                if (LeoStatusbarNetworkTraffic.this.KB == 1024) {
                    str = "B/s";
                } else {
                    str = "b/s";
                    rxData *= 8;
                    txData *= 8;
                }
                String str2 = "";
                if (LeoStatusbarNetworkTraffic.isSet(LeoStatusbarNetworkTraffic.this.mState, 1)) {
                    str2 = LeoStatusbarNetworkTraffic.this.mTextEnabled ? formatOutput(elapsedRealtime, txData, str) + mContext.getResources().getString(getLeoResource("string/leo_network_info_up")) : formatOutput(elapsedRealtime, txData, str);
                }
                int textsize;
                if (LeoStatusbarNetworkTraffic.isSet(LeoStatusbarNetworkTraffic.this.mState, 3)) {
                    str2 = str2 + "\n";
                    textsize = txtSizeMulti;
                } else {
                    textsize = txtSizeSingle;
                }
                if (LeoStatusbarNetworkTraffic.isSet(LeoStatusbarNetworkTraffic.this.mState, 2)) {
                    str2 = str2 + (LeoStatusbarNetworkTraffic.this.mTextEnabled ? formatOutput(elapsedRealtime, rxData, str) + mContext.getResources().getString(getLeoResource("string/leo_network_info_down")) : formatOutput(elapsedRealtime, rxData, str));
                }
                LeoStatusbarNetworkTraffic.this.setTextSize(0, (float) textsize);
                if (!LeoStatusbarNetworkTraffic.this.mHideInactivity) {
                    LeoStatusbarNetworkTraffic.this.setVisibility(0);
                    LeoStatusbarNetworkTraffic.this.setText(str2);
                } else if (LeoStatusbarNetworkTraffic.this.getText().equals(str2)) {
                    LeoStatusbarNetworkTraffic.this.setVisibility(8);
                } else {
                    LeoStatusbarNetworkTraffic.this.setVisibility(0);
                    LeoStatusbarNetworkTraffic.this.setText(str2);
                }
                LeoStatusbarNetworkTraffic.this.totalRxBytes = totalRxBytes;
                LeoStatusbarNetworkTraffic.this.totalTxBytes = totalTxBytes;
                LeoStatusbarNetworkTraffic.this.clearHandlerCallbacks();
                LeoStatusbarNetworkTraffic.this.mTrafficHandler.postDelayed(LeoStatusbarNetworkTraffic.this.mRunnable, (long) LeoStatusbarNetworkTraffic.this.getInterval());
            }
        };
        this.mRunnable = () -> LeoStatusbarNetworkTraffic.this.mTrafficHandler.sendEmptyMessage(0);
        this.mIntentReceiver = new BroadcastReceiver() {
                public void onReceive(Context context, Intent intent) {
                    String action = intent.getAction();
                    if (action != null && action.equals(ConnectivityManager.CONNECTIVITY_ACTION)) {
                        updateSettings();
                    }
                }

        };
        mContext = context;
        Resources resources = getResources();

        txtSizeSingle = resources.getDimensionPixelSize(getLeoResource("dimen/net_traffic_single_text_size"));
        txtSizeMulti = resources.getDimensionPixelSize(getLeoResource("dimen/net_traffic_multi_text_size"));
       mShouldStart = true;
        updateSettings( );
        updateLeoObserver(mContext.getContentResolver());
    }
    class LeoRomObserver extends ContentObserver {
        LeoStatusbarNetworkTraffic mLeoStatusbarNetworkTrafficView;

        public LeoRomObserver(LeoStatusbarNetworkTraffic Traffic, Handler handler) {
            super(handler);
            mLeoStatusbarNetworkTrafficView= Traffic;
        }

        public void onChange(boolean z) {
            onChange(z, null);
        }

        public void onChange(boolean z, Uri uri) {
            LeoStatusbarNetworkTraffic.updatesettings(mLeoStatusbarNetworkTrafficView);
        }
    }

    private void updateLeoObserver(ContentResolver contentResolver) {
        LeoRomObserver leo = new LeoRomObserver(this, new Handler());
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficSize()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficArrowLocation()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficSingle()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficfont()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficColor()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficUnit()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficText()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficInterval()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficArrow()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficAuto()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(getLeoNetworkTrafficState()), false, leo);
        contentResolver.registerContentObserver(getLeoUri( getLeoNetworkTrafficIconStyle()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(  getLeoNetworkTrafficIconColor()), false, leo);
        contentResolver.registerContentObserver(getLeoUri( getLeoNetworkTrafficIconALLColor()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(  getLeoNetworkTrafficIconALLColorEnabled()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(  getLeoNetworkTrafficIconCustomColorEnabled()), false, leo);
        contentResolver.registerContentObserver(getLeoUri(  getLeoStatusBarNetworkTrafficRandomColor()), false, leo);
    }

    private  static void updatesettings(LeoStatusbarNetworkTraffic Traffic) {;
        Traffic.updateSettings( );
    }



    static {
        decimalFormat.setMaximumIntegerDigits(3);
        decimalFormat.setMaximumFractionDigits(1);
    }

    private void clearHandlerCallbacks() {
        this.mTrafficHandler.removeCallbacks(this.mRunnable);
        this.mTrafficHandler.removeMessages(0);
        this.mTrafficHandler.removeMessages(1);
    }

    private boolean getConnectAvailable() {
        ConnectivityManager connectivityManager = (ConnectivityManager) this.mContext.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = connectivityManager != null ? connectivityManager.getActiveNetworkInfo() : null;
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    private int getInterval() {
        return this.mInterval;
    }

    private static boolean isSet(int i, int i2) {
        return (i & i2) == i2;
    }

    private boolean shouldStartUpdates() {
        return (this.mShouldStart && isSet(this.mState, 1)) ? true : this.mShouldStart && isSet(this.mState, 2);
    }

    private void startTrafficUpdates() {
        if (this.mAttached) {
            this.totalRxBytes = TrafficStats.getTotalRxBytes();
            this.lastUpdateTime = SystemClock.elapsedRealtime();
            this.mTrafficHandler.sendEmptyMessage(1);
        }
        setVisibility(0);
    }



    private void updateState() {
        if (!shouldStartUpdates()) {
            clearHandlerCallbacks();
        } else if (getConnectAvailable()) {
            startTrafficUpdates();
            return;
        }
        setVisibility(8);
    }
    private static final int KILOBIT = 1000;
    private static final int KILOBYTE = 1024;
    private void updateSettings() {
        LeoStatusSettings(mContext);
       mHideInactivity =setLeoUesrStatusbarNetworkAutoHideEnabled;
        mUnit=setLeoUesrStatusbarNetworkUnit;
        setTraffic();
        updateState();
        if (mUnit) {
            KB = KILOBYTE;
        } else {
            KB = KILOBIT;
        }
        MB = KB * KB;
        GB = MB * KB;
    }





    public static final int MASK_DOWN = 2;      // Second least valuable bit
    public static final int MASK_UP = 1;

    public Drawable TrafficDrw;
    public  int intTrafficDrawable;


    private void updateTrafficDrawable(int trafcolor) {
        getLeoNetworkIconStyle(setLeoUesrStatusbarNetworkShowArrowsStyle);
        if (mIconEnabled) {
            if (isSet(mState, MASK_UP + MASK_DOWN)) {
                intTrafficDrawable =UpDownIcom;
            } else if (isSet(mState, MASK_UP)) {
                intTrafficDrawable =UpIcom;
            } else if (isSet(mState, MASK_DOWN)) {
                intTrafficDrawable = DownIcom;
            } else {
                intTrafficDrawable = 0;
            }

            if (intTrafficDrawable != 0) {
                TrafficDrw= getContext().getResources().getDrawable(intTrafficDrawable);
                if (TrafficDrw != null) {
                    TrafficDrw.setColorFilter(trafcolor, PorterDuff.Mode.SRC_ATOP);
                }
            }
            if ( setLeoUesrStatusbarNetworkArrowsOrientation==0) {
                setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, TrafficDrw, null);
            } else   if ( setLeoUesrStatusbarNetworkArrowsOrientation==1){
                setCompoundDrawablesWithIntrinsicBounds(TrafficDrw, null, null, null);
            }
        } else {
            setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
        }



    }



    public  int mNetworkDrawableTint,mNetworkDrawableColor;
    private void setTraffic() {
        mState = setLeoUesrStatusbarNetworkState;
        mInterval= setLeoUesrStatusbarNetworkAutoHideThreshold;
        mTextEnabled =setLeoUesrStatusbarNetworkText;
        mIconEnabled = setLeoUesrStatusbarNetworkShowArrowsEnabled;
        int alldefaultcolor=mStatusBarClockColor;
        int textcolor=alldefaultcolor;
        int iconcolor=alldefaultcolor;
        int colorstyle=setLeoUesrStatusBarNetworkTrafficRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        int color=setLeoUesrNetworkTrafficCustomColorEnabled;
       // if(setLeoUesrStatusBarTheme==1){
            if(color==1){
                int all= setLeoUesrNetworkTrafficALLColorEnabled;
                if (all==0) {
                    if(colorstyle==0){
                        textcolor= setLeoUesrNetworkTrafficTextColor;
                        iconcolor=setLeoUesrNetworkTrafficIconColor;
                    }else if(colorstyle==1){
                        textcolor= colorrandom;
                        iconcolor=colorrandom;
                    }
                } else if ( all == 1) {
                    int allcolor=setLeoUesrNetworkTrafficALLColor;
                    textcolor=allcolor;
                    iconcolor=allcolor;
                }//自定义颜色
            }else if (color==0) {
                textcolor=alldefaultcolor;
                iconcolor=alldefaultcolor;
                setAlpha(0.8f);

            }

        mNetworkTrafficColor = textcolor;
        mNetworkTrafficTint =textcolor;
        mNetworkDrawableColor=iconcolor;
        updateTrafficDrawable(mNetworkDrawableColor);
        mNetworkDrawableTint=iconcolor;
        setTextColor(mNetworkTrafficColor);
        setTrafficFont();

    }

    private void setTrafficFont() {
        float Multi = setLeoUesrStatusbarNetworkSize;
        setScaleX(Multi);
        setScaleY(Multi);
        setSingleLine(setLeoUesrStatusbarNetworkSingle);
        setTypeface(setLeoRomFonts(0,setLeoUesrStatusbarNetworkFont));
    }


    @Override
    public void onDarkChanged(Rect rect, float darkIntensity, int n) {
        mNetworkTrafficTint =getLeoGradient(darkIntensity, mNetworkTrafficColor);
        setTextColor(mNetworkTrafficTint);
        mNetworkDrawableTint=getLeoGradient(darkIntensity,  mNetworkDrawableColor);
        updateTrafficDrawable( mNetworkDrawableTint);
    }

}