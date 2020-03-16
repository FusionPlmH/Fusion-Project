package com.leo.systemui;

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
import com.leo.utils.Constants;



import static com.android.systemui.UId.NetworkIconStyle;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.*;



import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.mLightModeColor;
import static com.os.leo.utils.LeoUtils.*;


public class LeoNetworkTraffic extends TextView implements DarkIconDispatcher.DarkReceiver {
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
    private int mUnit;


    private long totalRxBytes;
    private long totalTxBytes;
    private int txtSizeMulti;
    private int txtSizeSingle;

    private Context mContext;
    public LeoNetworkTraffic(Context context) {
        this(context, null);
    }

    public LeoNetworkTraffic(Context context, AttributeSet attributeSet) {
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

    public LeoNetworkTraffic(Context context, AttributeSet attributeSet, int defStyle) {
        super(context, attributeSet, defStyle);
        this.mState = 3;
        this.KB = 1000;
        this.MB = this.KB * this.KB;
        this.GB = this.MB * this.KB;


        this.mTrafficHandler = new Handler() {
            private String formatOutput(long j, long j2, String str) {
                long j3 = (long) (((float) j2) / (((float) j) / 1000.0f));
                return j3 < ((long) LeoNetworkTraffic.this.KB) ? LeoNetworkTraffic.decimalFormat.format(j3) + str : j3 < ((long) LeoNetworkTraffic.this.MB) ? LeoNetworkTraffic.decimalFormat.format((double) (((float) j3) / ((float) LeoNetworkTraffic.this.KB))) + 'k' + str : j3 < ((long) LeoNetworkTraffic.this.GB) ? LeoNetworkTraffic.decimalFormat.format((double) (((float) j3) / ((float) LeoNetworkTraffic.this.MB))) + 'M' + str : LeoNetworkTraffic.decimalFormat.format((double) (((float) j3) / ((float) LeoNetworkTraffic.this.GB))) + 'G' + str;
            }

            public void handleMessage(Message message) {
                String str;
                long elapsedRealtime = SystemClock.elapsedRealtime() - LeoNetworkTraffic.this.lastUpdateTime;
                if (((double) elapsedRealtime) < ((double) LeoNetworkTraffic.this.getInterval()) * 0.95d) {
                    if (message.what == 1) {
                        if (elapsedRealtime < 1) {
                            elapsedRealtime = Long.MAX_VALUE;
                        }
                    } else {
                        return;
                    }
                }
                LeoNetworkTraffic.this.lastUpdateTime = SystemClock.elapsedRealtime();
                long totalRxBytes = TrafficStats.getTotalRxBytes();
                long totalTxBytes = TrafficStats.getTotalTxBytes();
                long rxData = totalRxBytes - LeoNetworkTraffic.this.totalRxBytes;
                long txData = totalTxBytes - LeoNetworkTraffic.this.totalTxBytes;
                if (LeoNetworkTraffic.this.KB == 1024) {
                    str = "B/s";
                } else {
                    str = "b/s";
                    rxData *= 8;
                    txData *= 8;
                }
                String str2 = "";
                if (LeoNetworkTraffic.isSet(LeoNetworkTraffic.this.mState, 1)) {
                    str2 = LeoNetworkTraffic.this.mTextEnabled ? formatOutput(elapsedRealtime, txData, str) + " 上传" : formatOutput(elapsedRealtime, txData, str);
                }
                int textsize;
                if (LeoNetworkTraffic.isSet(LeoNetworkTraffic.this.mState, 3)) {
                    str2 = str2 + "\n";
                    textsize = txtSizeMulti;
                } else {
                    textsize = txtSizeSingle;
                }
                if (LeoNetworkTraffic.isSet(LeoNetworkTraffic.this.mState, 2)) {
                    str2 = str2 + (LeoNetworkTraffic.this.mTextEnabled ? formatOutput(elapsedRealtime, rxData, str) + " 下载" : formatOutput(elapsedRealtime, rxData, str));
                }
                LeoNetworkTraffic.this.setTextSize(0, (float) textsize);
                if (!LeoNetworkTraffic.this.mHideInactivity) {
                    LeoNetworkTraffic.this.setVisibility(0);
                    LeoNetworkTraffic.this.setText(str2);
                } else if (LeoNetworkTraffic.this.getText().equals(str2)) {
                    LeoNetworkTraffic.this.setVisibility(8);
                } else {
                    LeoNetworkTraffic.this.setVisibility(0);
                    LeoNetworkTraffic.this.setText(str2);
                }
                LeoNetworkTraffic.this.totalRxBytes = totalRxBytes;
                LeoNetworkTraffic.this.totalTxBytes = totalTxBytes;
                LeoNetworkTraffic.this.clearHandlerCallbacks();
                LeoNetworkTraffic.this.mTrafficHandler.postDelayed(LeoNetworkTraffic.this.mRunnable, (long) LeoNetworkTraffic.this.getInterval());
            }
        };
        this.mRunnable = () -> LeoNetworkTraffic.this.mTrafficHandler.sendEmptyMessage(0);
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
        this.mShouldStart = true;
        updateSettings( );
        updateLeoObserver(mContext.getContentResolver());
    }
    class LeoRomObserver extends ContentObserver {
        LeoNetworkTraffic mLeoNetworkTrafficView;

        public LeoRomObserver(LeoNetworkTraffic Traffic, Handler handler) {
            super(handler);
            mLeoNetworkTrafficView= Traffic;
        }

        public void onChange(boolean z) {
            onChange(z, null);
        }

        public void onChange(boolean z, Uri uri) {
            LeoNetworkTraffic.updatesettings(mLeoNetworkTrafficView);
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

    private  static void updatesettings(LeoNetworkTraffic Traffic) {;
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

    private void updateSettings() {
        LeoSettings(mContext);
        this.mHideInactivity =  setLeoUesrNetworkTrafficActivity;
        this.mUnit =  setLeoUesrNetworkTrafficUnit;

        setTraffic();
        if (this.mUnit == 1) {
            this.KB = 1024;
        } else {
            this.KB = 1000;
        }
        this.MB = this.KB * this.KB;
        this.GB = this.MB * this.KB;
        updateState();
    }





    public static final int MASK_DOWN = 2;      // Second least valuable bit
    public static final int MASK_UP = 1;
    public static void getLeoNetworkIconStyle(int style) {
        String draw = "drawable/";
        UpDownIcom = Constants.getLeoResource(draw + NetworkIconStyle(style) + "_updown");
        UpIcom = Constants.getLeoResource(draw + NetworkIconStyle(style) + "_up");
        DownIcom= Constants.getLeoResource(draw + NetworkIconStyle(style) + "_down");
    }
    public static  int UpDownIcom;
    public static  int UpIcom;
    public static  int DownIcom;
    public Drawable TrafficDrw;
    public  int intTrafficDrawable;

    private void updateTrafficDrawable(int trafcolor) {
        getLeoNetworkIconStyle(setLeoUesrNetworkTrafficIconStyle);
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
            if (setLeoUesrNetworkTrafficIconLocation==0) {
                setCompoundDrawablesRelativeWithIntrinsicBounds(null, null, TrafficDrw, null);
            } else   if (setLeoUesrNetworkTrafficIconLocation==1){
                setCompoundDrawablesWithIntrinsicBounds(TrafficDrw, null, null, null);
            }
        } else {
            setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
        }



    }



    public  int mNetworkDrawableTint,mNetworkDrawableColor;
    private void setTraffic() {
        mState =  setLeoUesrNetworkTrafficState;
        mInterval= setLeoUesrNetworkTrafficInterval;
        mTextEnabled =  setLeoUesrNetworkTrafficText;
        mIconEnabled =  setLeoUesrNetworkTrafficIcon;
        int alldefaultcolor=getContext().getColor(getLeoResource("color/status_bar_clock_color"));
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
            }
      //  }else if(setLeoUesrStatusBarTheme==0){
        //    textcolor=alldefaultcolor;
          //  iconcolor=alldefaultcolor;
    //    }

        mNetworkTrafficColor = textcolor;
        mNetworkTrafficTint =mLightModeColor;
        mNetworkDrawableColor=iconcolor;
        updateTrafficDrawable(mNetworkDrawableColor);
        mNetworkDrawableTint=mLightModeColor;
        setTextColor(mNetworkTrafficColor);
        setTrafficFont();

    }

    private void setTrafficFont() {
        if (! setLeoUesrNetworkTrafficSingle) {
            setSingleLine(false);
            float Multi =  setLeoUesrNetworkTrafficMultiFontSize;
            setScaleX(Multi);
            setScaleY(Multi);
        } else if (true ==  setLeoUesrNetworkTrafficSingle) {
            setSingleLine(true);
        }
        setSingleLine( setLeoUesrNetworkTrafficSingle);

        setTypeface(setLeoRomFonts(0,setLeoUesrNetworkTrafficFontStyle));
    }


    @Override
    public void onDarkChanged(Rect rect, float darkIntensity, int n) {
        mNetworkTrafficTint = getTint(darkIntensity, mNetworkTrafficColor);
        setTextColor(mNetworkTrafficTint);
        mNetworkDrawableTint= getTint(darkIntensity,  mNetworkDrawableColor);
        updateTrafficDrawable( mNetworkDrawableTint);
    }

}