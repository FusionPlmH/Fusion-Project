package com.android.systemui.statusbar.policy;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;

import com.android.leo.R;
import com.android.settingslib.Utils;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;

import com.android.systemui.FontSizeUtils;
import com.android.systemui.SysUiServiceProvider;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;

import com.fusionleo.LeoX.systemui.LeoConfigTextView;
import com.fusionleo.LeoProvider.LeoObserver;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.CommandQueue.Callbacks;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;
import com.android.systemui.statusbar.policy.DarkIconDispatcher.DarkReceiver;
import com.android.systemui.statusbar.policy.QSClockBellTower.TimeAudience;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.tuner.TunerService.Tunable;

import static com.fusionleo.LeoX.systemui.LeoConfig.Copyright;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoSysUiShortcut;

import static com.fusionleo.LeoX.systemui.LeoConfig.collapsePanel;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoString;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.leoSizeSpan;
import static com.fusionleo.LeoX.systemui.LeoConfig.mLeoTag;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoHaptics;
import static com.fusionleo.LeoProvider.LeoManages.*;



public class QSClock extends LeoConfigTextView implements DemoMode, QSColoringServiceObject, Callbacks, ConfigurationListener, DarkReceiver, TimeAudience, Tunable,View.OnClickListener, LeoObserver.ObListener {
    public static final String TAG =QSClock.class.getSimpleName();
    private boolean mAttached;
    private boolean mClockVisibleByPolicy;
    private boolean mClockVisibleByUser;
    private KeyguardServiceBoxCallback mKeyguardServiceBoxCallback;
    private int mNonAdaptedColor;
    private final boolean mShowDark;
    private boolean mUseWallpaperTextColor;
Context mContext;

    @Override
    public void onClick(View v) {
         Context context=getContext();
         Intent  mLeoIntent=new Intent();
         LeoSysUiManages(context);
        setLeoHaptics(context,setLeoQSheaderClockVibratorEnabled,setLeoQSheaderClockVibratorLevel);
        collapsePanel(context,setLeoQSheaderClockClickCollapsePanels);
        LeoSysUiShortcut(mContext, mLeoIntent,setLeoQSheaderClockActionStyle,mLeoQSHeadsClock[8]);
    }

    @Override
    public void onLeoChange(String str) {
        for (String equals :mLeoQSHeadsClock) {
            if (equals.equals(str)) {
                updateClock();
                return;
            }
        }
    }


    public interface KeyguardServiceBoxCallback {
        void onTimeTextChanged();
    }

    public QSClock(Context context) {
        this(context, null);

    }

    public QSClock(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public QSClock(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mClockVisibleByPolicy = true;
        this.mClockVisibleByUser = true;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, R.styleable.Clock, 0, 0);
        try {
            this.mShowDark = obtainStyledAttributes.getBoolean(1, true);
            this.mNonAdaptedColor = getCurrentTextColor();
        } finally {
            obtainStyledAttributes.recycle();
        }
    }



    private void updateClockVisibility() {
        int i = 0;
        int i2 = (this.mClockVisibleByPolicy && this.mClockVisibleByUser) ? 1 : 0;
        if (i2 == 0) {
            i = 8;
        }
        setVisibility(i);
    }

    public void disable(int i, int i2, boolean z) {
        boolean z2 = (8388608 & i) == 0;
        if (z2 != this.mClockVisibleByPolicy) {
            setClockVisibilityByPolicy(z2);
        }
    }

    public void dispatchDemoCommand(String str, Bundle bundle) {
        QSClockBellTower instance = QSClockBellTower.getInstance(getContext(), getHandler());

        if (instance != null) {
            instance.dispatchDemoCommand(str, bundle);
        }

    }
    private void updateClock() {
        Context context=getContext();
        LeoSysUiManages(context);
        QSClockBellTower instance = QSClockBellTower.getInstance(getContext(), getHandler());
        if (instance != null) {
            notifyTimeChanged(instance.getSmallTime(), instance.getContentDescription(), false, "");
        }

        String tag= mLeoTag[15];
        String defaultfont;
        if (tag.equals(getTag())) {
            defaultfont="sans-serif-light";
            setLeoTextSize(setLeoQSheaderClockBoxSize);
        } else {
            defaultfont="sec-roboto-light";
            setLeoTextSize(setLeoQSheaderClockSize);
        }
        if (setLeoQSheaderClockActionEnabled) {
            setOnClickListener(this);
        } else {
            setClickable(false);
        }
        setLeoTextFont(setLeoQSheaderClockFont,  defaultfont,Typeface.NORMAL);
        setVisibility(setLeoQSheaderClockEnabled ? VISIBLE : GONE);
    }






    public void notifyTimeChanged(String str, String str2, boolean z, String str3) {
        if (!z) {
            if (this.mKeyguardServiceBoxCallback != null) {
                this.mKeyguardServiceBoxCallback.onTimeTextChanged();
            }

            String result;
            int Sizescaling=setLeoQSheaderClockChinaTimeDetailScaling;

            int style=setLeoQSheaderClockChinaTimeDetailStyle;
            int  Chinatimedetailsdize=setLeoQSheaderClockChinaTimeDetailZoomEnabled;
            boolean Enabled ;
            String fh="";
            String tag= mLeoTag[15];
            String  Chinatimedetails ;
            if (tag.equals(getTag())) {
                Enabled= setLeoQSheaderClockChinaTimeDetailsEnabled;
            } else {
                Enabled=false;
            }
            if(style>=5){
                style=0;
            }
            if (Enabled) {
                fh=LeoSaltSymbol(setLeoQSheaderClockChinaTimeDetailSymbolStyle,null,",");
            }
            Chinatimedetails =getLeoTimeStyle(0,Enabled,style,null) +fh;

            String  timeResult=str;
            result=  Chinatimedetails  + timeResult;
            SpannableStringBuilder formatted = new SpannableStringBuilder(result);
            if (Chinatimedetails!= null) {
                int ChinatimeStringLen =Chinatimedetails.length();
                int ChinatimeStringOffset = 0;
                if(Chinatimedetailsdize==1){

                    RelativeSizeSpan size = new RelativeSizeSpan(leoSizeSpan(Sizescaling));
                    formatted.setSpan(size,ChinatimeStringOffset,
                             ChinatimeStringLen,
                            Spannable.SPAN_EXCLUSIVE_INCLUSIVE);
                }



            }


            setText(formatted);
            setContentDescription(str2);
            if ("status_bar_clock".equals(getTag())) {
                setVisibility(GONE);
                setTextSize(0);
                String str4 ="QSClock";
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(Copyright);
                stringBuilder.append(str);
                stringBuilder.append("I'm from China");
                stringBuilder.append("developer");
                stringBuilder.append(") mClockVisibleByPolicy:");
                stringBuilder.append(this.mClockVisibleByPolicy);
                stringBuilder.append(", mClockVisibleByUser:");
                stringBuilder.append(this.mClockVisibleByUser);
                stringBuilder.append(", visible?");
                stringBuilder.append(getVisibility() == 0);
                stringBuilder.append(", parent:");
                stringBuilder.append(getParent());
                Log.d(str4, stringBuilder.toString());
            }

        }
    }


    /* access modifiers changed from: protected */
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.mAttached) {
            this.mAttached = true;
            QSClockBellTower.getInstance(getContext(), getHandler()).registerAudience(getTag().toString(), this);
            ((TunerService) Dependency.get(TunerService.class)).addTunable(this, "icon_blacklist");
            ((CommandQueue) SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)).addCallbacks(this);
            if (this.mShowDark) {
                ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).addDarkReceiver((DarkReceiver) this);
            }
            ((ConfigurationController) Dependency.get(ConfigurationController.class)).addCallback(this);
        }
        updateClock();
        LeoObserver mLeoObserver=   new LeoObserver(new Handler(),this);
        ContentResolver contentResolver = getContext().getContentResolver();
        for (String uriFor : mLeoQSHeadsClock) {
            contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
        }

    }

    public void onDarkChanged(Rect rect, float f, int i) {
        if ("keyguard_status_bar_clock".equals(getTag()) || "status_bar_clock".equals(getTag())) {
            this.mNonAdaptedColor = DarkIconDispatcher.getTint(rect, this, i);
        } else if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            this.mNonAdaptedColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
        } else {
            this.mNonAdaptedColor =mContext.getResources().getColor(2131100333);
        }
        if (!this.mUseWallpaperTextColor) {
            setTextColor(this.mNonAdaptedColor);
        }
    }

    public void onDensityOrFontScaleChanged() {
        FontSizeUtils.updateFontSize(this, 2131167048);
        setPaddingRelative(mContext.getResources().getDimensionPixelSize(2131167064), 0, this.mContext.getResources().getDimensionPixelSize(2131167063), 0);
    }

    /* access modifiers changed from: protected */
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttached) {
            this.mAttached = false;
            QSClockBellTower.getInstance(getContext(), getHandler()).unregisterAudience(getTag().toString());
            ((TunerService) Dependency.get(TunerService.class)).removeTunable(this);
            ((CommandQueue) SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)).removeCallbacks(this);
            if (this.mShowDark) {
                ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).removeDarkReceiver((DarkReceiver) this);
            }
            ((ConfigurationController) Dependency.get(ConfigurationController.class)).removeCallback(this);
        }
    }

    public void onTuningChanged(String str, String str2) {
        FontSizeUtils.updateFontSize(this, 0);
        setTextSize(0);
       setVisibility(GONE);
    }

    public void setCallback(KeyguardServiceBoxCallback keyguardServiceBoxCallback) {
        this.mKeyguardServiceBoxCallback = keyguardServiceBoxCallback;
    }

    public void setClockVisibilityByPolicy(boolean z) {
        this.mClockVisibleByPolicy = z;
        updateClockVisibility();
    }

    public void setClockVisibleByUser(boolean z) {
        if ("keyguard_status_bar_clock".equals(getTag()) || "status_bar_clock".equals(getTag())) {
            this.mClockVisibleByUser = z;
        }
        updateClockVisibility();
    }

    public void setVisibility(int i) {
        int i2 = (this.mClockVisibleByPolicy && this.mClockVisibleByUser) ? i : 8;
        super.setVisibility(i2);
    }

    public void useWallpaperTextColor(boolean z) {
        if (z != this.mUseWallpaperTextColor) {
            this.mUseWallpaperTextColor = z;
            if (this.mUseWallpaperTextColor) {
                setTextColor(Utils.getColorAttr(mContext, 2130969531));
            } else {
                setTextColor(this.mNonAdaptedColor);
            }
        }
    }
}