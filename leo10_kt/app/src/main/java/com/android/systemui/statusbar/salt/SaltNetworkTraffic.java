package com.android.systemui.statusbar.salt;

import java.text.DecimalFormat;
import java.util.HashMap;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.graphics.PorterDuff.Mode;
import android.net.ConnectivityManager;
import android.net.LinkProperties;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.net.NetworkRequest;
import android.net.TrafficStats;
import android.os.Handler;
import android.os.Message;
import android.os.SystemClock;
import android.os.UserHandle;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;

import com.android.systemui.Dependency;
import com.android.systemui.plugins.DarkIconDispatcher;



import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.LEOFRAMEWORK;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoTextPadding;
import static com.android.settingslib.salt.SaltValues.mLightModeFillColor;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltNetworkTraffic extends TextView  implements DarkIconDispatcher.DarkReceiver{
    private Context mContext;
    public static final String TRAFFIC_TAG="leo_statusbar_traffic_view";
    private static final int BOTH = 0;
    private static final int UP = 1;
    private static final int DOWN = 2;
    private static final int KB = 1024;
    private static final int MB = KB * KB;
    private static final int GB = MB * KB;
    private static final String symbol = "B/s";
    private  String line ="";
    private static DecimalFormat decimalFormat = new DecimalFormat("##0.#");
    static {
        decimalFormat.setMaximumIntegerDigits(3);
        decimalFormat.setMaximumFractionDigits(1);
    }
    private static final String FONT_FAMILY_MEDIUM = "sans-serif-medium";

    private boolean mIsEnabled;
    private boolean mAttached;
    private boolean mHideArrow;
    private boolean mLocationArrow=false;
    private long totalRxBytes;
    private long totalTxBytes;
    private long lastUpdateTime;
    private int txtSize;
    private int txtImgPadding;
    private int mTrafficType;
    private int mAutoHideThreshold;
    private int mTintColor =mLightModeFillColor;
    private int mNetworkTrafficColor;
    private int mNetworkTrafficDrawableColor;
    private boolean mNetworkTrafficMergeColor;
    private boolean mNetworkTrafficColorCustom;
    protected boolean mTrafficVisible = false;
    private int mRefreshInterval = 2;
    private  Drawable mDrawable;
    private boolean mScreenOn = true;
    private int mNetworkTrafficDrawableType=0;


    private Handler mTrafficHandler = new Handler() {
        @Override
        public void handleMessage(Message msg) {
            long timeDelta = SystemClock.elapsedRealtime() - lastUpdateTime;

            if (timeDelta < mRefreshInterval * 1000 * 0.95f) {
                if (msg.what != 1) {
                    // we just updated the view, nothing further to do
                    return;
                }
                if (timeDelta < 1) {
                    // Can't div by 0 so make sure the value displayed is minimal
                    timeDelta = Long.MAX_VALUE;
                }
            }
            lastUpdateTime = SystemClock.elapsedRealtime();

            // Calculate the data rate from the change in total bytes and time
            long newTotalRxBytes = TrafficStats.getTotalRxBytes();
            long newTotalTxBytes = TrafficStats.getTotalTxBytes();
            long rxData = newTotalRxBytes - totalRxBytes;
            long txData = newTotalTxBytes - totalTxBytes;

            if (shouldHide(rxData, txData, timeDelta)) {
                setText(line);
                mTrafficVisible = false;
            } else {
                String output;
                if (mTrafficType == UP){
                    output = formatOutput(timeDelta, txData, symbol);
                } else if (mTrafficType == DOWN){

                    output = formatOutput(timeDelta, rxData, symbol);
                } else {
                    // Get information for uplink ready so the line return can be added
                    output = formatOutput(timeDelta, txData, symbol);
                    // Ensure text size is where it needs to be
                    output += "\n";
                    // Add information for downlink if it's called for
                    output += formatOutput(timeDelta, rxData, symbol);

                }
                // Update view if there's anything new to show
                if (! output.contentEquals(getText())) {

                    setGravity(Gravity.CENTER);
                    setText(output);
                }
                mTrafficVisible = true;
            }
            updateVisibility();
            updateTextSize();

            // Post delayed message to refresh in ~1000ms
            totalRxBytes = newTotalRxBytes;
            totalTxBytes = newTotalTxBytes;
            clearHandlerCallbacks();
            mTrafficHandler.postDelayed(mRunnable, mRefreshInterval * 1000);
        }

        private String formatOutput(long timeDelta, long data, String symbol) {
            long speed = (long)(data / (timeDelta / 1000F));
            if (speed < KB) {
                return decimalFormat.format(speed) +getlineSymbol()+ symbol;
            } else if (speed < MB) {
                return decimalFormat.format(speed / (float)KB) +getlineSymbol()+'K' + symbol;
            } else if (speed < GB) {
                return decimalFormat.format(speed / (float)MB) +getlineSymbol()+'M' + symbol;
            }
            return decimalFormat.format(speed / (float)GB) +getlineSymbol()+'G' + symbol;
        }

        private boolean shouldHide(long rxData, long txData, long timeDelta) {
            long speedTxKB = (long)(txData / (timeDelta / 1000f)) / KB;
            long speedRxKB = (long)(rxData / (timeDelta / 1000f)) / KB;
            if (mTrafficType == UP) {
                return !getConnectAvailable() || speedTxKB < mAutoHideThreshold;
            } else if (mTrafficType == DOWN) {
                return !getConnectAvailable() || speedRxKB < mAutoHideThreshold;
            } else {
                return !getConnectAvailable() ||
                        (speedRxKB < mAutoHideThreshold &&
                                speedTxKB < mAutoHideThreshold);
            }
        }
    };

    private Runnable mRunnable = () -> mTrafficHandler.sendEmptyMessage(0);



    public SaltNetworkTraffic(Context context) {
        this(context, null);
    }


    public SaltNetworkTraffic(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }


    public SaltNetworkTraffic(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        mContext=context;
        setTag(TRAFFIC_TAG);

        refreshSaltNetworkTraffic();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!mAttached) {
            mAttached = true;
            IntentFilter filter = new IntentFilter();
            filter.addAction(ConnectivityManager.CONNECTIVITY_ACTION);
            filter.addAction(Intent.ACTION_SCREEN_OFF);
            filter.addAction(Intent.ACTION_SCREEN_ON);
            mContext.registerReceiver(mIntentReceiver, filter, null, getHandler());
            Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
        }
        refreshSaltNetworkTraffic();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mAttached) {
            mContext.unregisterReceiver(mIntentReceiver);
            Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
            mAttached = false;
        }
    }

    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action == null) return;

            if (action.equals(ConnectivityManager.CONNECTIVITY_ACTION) && mScreenOn) {
                refreshSaltNetworkTraffic();
            } else if (action.equals(Intent.ACTION_SCREEN_ON)) {
                mScreenOn = true;
                refreshSaltNetworkTraffic();
            } else if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                mScreenOn = false;
                clearHandlerCallbacks();
            }
        }
    };

    private boolean getConnectAvailable() {
        ConnectivityManager connManager =
                (ConnectivityManager) mContext.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo network = (connManager != null) ? connManager.getActiveNetworkInfo() : null;
        return network != null;
    }

    public void refreshSaltNetworkTraffic() {
        LeoSysUiManages(mContext);
        updateVisibility();

        updateTextSize();
        if (mIsEnabled) {
            if (mAttached) {
                totalRxBytes = TrafficStats.getTotalRxBytes();
                lastUpdateTime = SystemClock.elapsedRealtime();
                mTrafficHandler.sendEmptyMessage(1);

            }
            updateTrafficDrawable();
            return;
        } else {
            clearHandlerCallbacks();
        }
    }
    ;
    public void refreshSaltNetworkMode() {
        if(Settings.System.getInt(mContext.getContentResolver(), "network_speed", 0) == 1){
            mIsEnabled=false;
        }else {
            mIsEnabled =setLeoUesrStatusbarNetworkEnabled;
        }
        mTrafficType = setLeoStatusBarNetworkTrafficType;
        mLocationArrow=setLeoUesrStatusbarNetworkArrowPosition;
        mAutoHideThreshold =setLeoUesrStatusbarNetworkAutoHideThreshold;
        mHideArrow =setLeoUesrStatusbarNetworkArrowEnabled;
        mRefreshInterval = setLeoStatusBarNetworkRefreshInterval;
        txtSize=setLeoUesrStatusbarNetworkTextSize;
        mNetworkTrafficMergeColor=setLeoUesrStatusbarNetworkExtendsColor;
        mNetworkTrafficColorCustom=setLeoStatusBarNetworkCustomColorEnabled == 1;
        mNetworkTrafficDrawableColor= setLeoStatusBarNetworkIconColor;
        mNetworkTrafficColor= setLeoStatusBarNetworkColor;
        mNetworkTrafficDrawableType = setLeoUesrStatusbarNetworkArrowStyle;
        setLeoTextPadding(this, setLeoStatusBarNetworkStartPadding, setLeoStatusBarNetworkEndPadding);
        updateTrafficColor();
        updateTrafficDrawableLocation();
    }
    private String getlineSymbol() {
        String line;
        if(mTrafficType==BOTH){
            line=""  ;
        }else {
            line="\n";
        }
        return line;
    }

    private void clearHandlerCallbacks() {
        mTrafficHandler.removeCallbacks(mRunnable);
        mTrafficHandler.removeMessages(0);
        mTrafficHandler.removeMessages(1);
    }
    public String NetworkIconStyle(int i) {
        switch (i) {
            case 1:
                return "stat_sys_network_traffic_b";
            case 2:
                return "stat_sys_network_traffic_c";
            case 3:
                return "stat_sys_network_traffic_d";
            case 4:
                return "stat_sys_network_traffic_e";
            case 5:
                return "stat_sys_network_traffic_f";
            case 6:
                return "stat_sys_network_traffic_g";
            case 7:
                return "stat_sys_network_traffic_h";
            default:
                return "stat_sys_network_traffic_a";
        }
    }

    public  int UpDownIcom;
    public   int UpIcom;
    public   int DownIcom;
    public  void getLeoNetworkIconStyle(int style) {
        UpDownIcom= getLeoIcon(NetworkIconStyle(style)+ "_updown");
        UpIcom =getLeoIcon(NetworkIconStyle(style) + "_up");
        DownIcom=getLeoIcon(NetworkIconStyle(style) + "_down");
    }
    public Resources LeoRes;
    {
        try {
            LeoRes = getContext().getPackageManager().getResourcesForApplication(LEOFRAMEWORK);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
    }




    public int getLeoIcon(String str) {
        return LeoRes.getIdentifier(str, "drawable", LEOFRAMEWORK);
    }
    private void updateTrafficDrawable() {

        int intTrafficDrawable;
        getLeoNetworkIconStyle(mNetworkTrafficDrawableType);
        if (mIsEnabled && mHideArrow) {
            if (mTrafficType == UP) {
                intTrafficDrawable =UpIcom;
            } else if (mTrafficType == DOWN) {
                intTrafficDrawable = DownIcom;
            } else {
                intTrafficDrawable =UpDownIcom;
            }
        } else {
            intTrafficDrawable = 0;
        }
        if (intTrafficDrawable != 0 && mHideArrow) {
            mDrawable = LeoRes.getDrawable(intTrafficDrawable);
            updateTrafficColor();
            updateTrafficDrawableLocation();
        } else {
            setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
        }
    }
    private void updateTrafficDrawableLocation() {
        if (mDrawable != null) {
            txtImgPadding =(int)setLeoStatusBarNetworkArrowsPadding;
            setCompoundDrawablePadding(txtImgPadding);
            if (mLocationArrow) {
                setCompoundDrawablesWithIntrinsicBounds(mDrawable, null, null, null);
            }else {
                setCompoundDrawablesWithIntrinsicBounds(null, null,mDrawable, null);
            }
        }
    }
    private void updateTrafficColor() {
        int color;
        int tcolor;
        if(mNetworkTrafficColorCustom){
            tcolor=mNetworkTrafficColor;
            color=mNetworkTrafficMergeColor ? tcolor:mNetworkTrafficDrawableColor;
        }else {
            int colors=mTintColor;
            color=colors;
            tcolor=colors;
        }
        if (mDrawable != null) {
            mDrawable.setColorFilter(color, Mode.MULTIPLY);
        }
        setTextColor(tcolor);
    }
    private void updateTextSize() {
        setTextSize(TypedValue.COMPLEX_UNIT_PX, (float)3*txtSize);
        Typeface tf =setLeoTextFont(this.mContext, setLeoStatusBarNetworkFont, FONT_FAMILY_MEDIUM, 1);
        setTypeface(tf);
    }



   private void updateVisibility() {
        if (mIsEnabled && mTrafficVisible) {
            setVisibility(View.VISIBLE);
        } else {
            setText(line);
            setVisibility(View.GONE);
        }
    }


    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        mTintColor = DarkIconDispatcher.getTint(area, this, tint);
        updateTrafficColor();
    }
}