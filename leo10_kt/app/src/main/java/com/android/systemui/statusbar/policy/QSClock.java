package com.android.systemui.statusbar.policy;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.SpannableStringBuilder;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;

import com.android.settingslib.Utils;
import com.android.settingslib.salt.utils.LeoReceiver;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;
import com.android.systemui.SysUiServiceProvider;

import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.CommandQueue;

import com.android.systemui.tuner.TunerService;
import com.salt.leokt10.R;

import static com.android.settingslib.salt.SaltConfigCenter.leoSizeSpan;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.isChineseLanguage;
import static com.android.settingslib.salt.SaltValues.Values15;
import static com.android.settingslib.salt.SaltValues.Values16;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailScaling;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailSymbolStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailZoomEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailsEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockFont;

public class QSClock extends TextView implements DemoMode,  CommandQueue.Callbacks, ConfigurationController.ConfigurationListener, DarkIconDispatcher.DarkReceiver, QSClockBellTower.TimeAudience, TunerService.Tunable {
    private boolean mAttached;
    private boolean mClockVisibleByPolicy;
    private boolean mClockVisibleByUser;
    private KeyguardServiceBoxCallback mKeyguardServiceBoxCallback;
    private int mNonAdaptedColor;
    private final boolean mShowDark;
    private boolean mUseWallpaperTextColor;
    private  String mSaltChineseTime;
    private String mHomeViewTag;

    private boolean amIHomeIndicatorClock() {
        return false;
    }
    @Override
    public void notifyTimeChanged(String str, String str2, boolean z, String str3, String str4) {
        if (!z) {
            KeyguardServiceBoxCallback keyguardServiceBoxCallback = this.mKeyguardServiceBoxCallback;
            if (keyguardServiceBoxCallback != null) {
                keyguardServiceBoxCallback.onTimeTextChanged();
            }

            String result;
            int  Chinatimedetailsdize=setLeoQSheaderClockChinaTimeDetailZoomEnabled;
            int Sizescaling=setLeoQSheaderClockChinaTimeDetailScaling;
            String   Chinatimedetails =mSaltChineseTime;
            result= Chinatimedetails   +str ;
            SpannableString formatted = new SpannableString(result);
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
            setTypeface(setLeoTextFont(getContext(),setLeoQSheaderClockFont, "sans-serif-light", Typeface.NORMAL));


            setText(formatted);
            setContentDescription(str2);
            if (amIHomeIndicatorClock()) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("status_bar_clock notifyTimeChanged(currentTime:");
                stringBuilder.append(formatted);
                stringBuilder.append(") mClockVisibleByPolicy:");
                stringBuilder.append(this.mClockVisibleByPolicy);
                stringBuilder.append(", mClockVisibleByUser:");
                stringBuilder.append(this.mClockVisibleByUser);
                stringBuilder.append(", visible?");
                stringBuilder.append(getVisibility() == 0);
                stringBuilder.append(", parent:");
                stringBuilder.append(getParent());
                Log.d("QSClock", stringBuilder.toString());
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

    public void updateClock() {
        Context context=getContext();
        LeoSysUiManages(context);
        QSClockBellTower qSClockBellTower = (QSClockBellTower) Dependency.get(QSClockBellTower.class);
        if (qSClockBellTower != null) {
            mSaltChineseTime=qSClockBellTower.getChinaTime();
            notifyTimeChanged(qSClockBellTower.getSmallTime(), qSClockBellTower.getContentDescription(), false, "", "");
        }
        int style;
        if ("phone_status_bar_clock".equals(getTag())) {
            style=GONE;
            setTextSize(0);
        } else {
            style=setLeoQSheaderClockEnabled?VISIBLE:GONE;
        }
       setVisibility(style);
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

    @Override
    public void dispatchDemoCommand(String str, Bundle bundle) {


    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!this.mAttached) {
            this.mAttached = true;

            ((TunerService) Dependency.get(TunerService.class)).addTunable(this, "icon_blacklist");
           // ((CommandQueue) SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)).addCallbacks(this);
            if (this.mShowDark) {
                ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).addDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
            }
            ((ConfigurationController) Dependency.get(ConfigurationController.class)).addCallback(this);
        }
        updateClock();

    }

    public void onDarkChanged(Rect rect, float f, int i) {
        if ("keyguard_status_bar_clock".equals(getTag()) || "status_bar_clock".equals(getTag())) {
            this.mNonAdaptedColor = DarkIconDispatcher.getTint(rect, this, i);
        }
        if (!this.mUseWallpaperTextColor) {
            setTextColor(this.mNonAdaptedColor);
        }
    }

    public void onDensityOrFontScaleChanged() {
        if ("keyguard_status_bar_clock".equals(getTag())) {
            //FontSizeUtils.updateFontSize(this, 2131167131);
        }
       //setPaddingRelative(this.mContext.getResources().getDimensionPixelSize(2131167148), 0, this.mContext.getResources().getDimensionPixelSize(2131167147), 0);
    }

    /* access modifiers changed from: protected */
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttached) {
            this.mAttached = false;

            ((TunerService) Dependency.get(TunerService.class)).removeTunable(this);
          //  ((CommandQueue) SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)).removeCallbacks(this);
            if (this.mShowDark) {
                ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).removeDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
            }
            ((ConfigurationController) Dependency.get(ConfigurationController.class)).removeCallback(this);

        }
    }

    public void onTuningChanged(String str, String str2) {
      //  setClockVisibleByUser(StatusBarIconController.getIconBlacklist(str2).contains(PluginLockStarFaceWidgetManager.TYPE_CLOCK) ^ 1);
    }

    public void setCallback(KeyguardServiceBoxCallback keyguardServiceBoxCallback) {
        this.mKeyguardServiceBoxCallback = keyguardServiceBoxCallback;
    }

    public void setClockVisibilityByPolicy(boolean z) {
        if (this.mClockVisibleByPolicy != z) {
            this.mClockVisibleByPolicy = z;
            updateClockVisibility();
        }
    }

    public void setClockVisibleByUser(boolean z) {
        if (this.mClockVisibleByUser != z) {
            if ("keyguard_status_bar_clock".equals(getTag()) || "status_bar_clock".equals(getTag())) {
                this.mClockVisibleByUser = z;
            }
            updateClockVisibility();
        }
    }

    public void setVisibility(int i) {
        int i2 = (this.mClockVisibleByPolicy && this.mClockVisibleByUser) ? i : 8;
       // super.setVisibility(i2);
    }

    public void useWallpaperTextColor(boolean z) {
        if (z != this.mUseWallpaperTextColor) {
            this.mUseWallpaperTextColor = z;
            if (this.mUseWallpaperTextColor) {
                setTextColor(Utils.getColorAttr(getContext(), 2130969532));
            } else {
                setTextColor(this.mNonAdaptedColor);
            }
        }
    }
}