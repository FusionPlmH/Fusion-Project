package com.android.systemui.statusbar.policy;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.TextView;

import com.android.leo.R;
import com.android.settingslib.Utils;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;

import com.android.systemui.SysUiServiceProvider;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.CommandQueue.Callbacks;
import com.android.systemui.statusbar.phone.StatusBarIconController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;
import com.android.systemui.statusbar.policy.DarkIconDispatcher.DarkReceiver;
import com.android.systemui.statusbar.policy.QSClockBellTower.TimeAudience;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.tuner.TunerService.Tunable;
import com.samsung.systemui.splugins.lockstar.PluginLockStarFaceWidgetManager;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoGlobalClockDetails;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderQSClockClick;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderQSClockClickEnabled;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderQSClockClickString;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderQSClockLongClick;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderQSClockLongClickEnabled;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderQSClockLongClickString;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderQSClockVibrate;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderQSClockVibrateLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderDateVibrateLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockClick;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockClickEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockClickString;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockLongClick;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockLongClickEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.collapsePanel;

public class QSClock extends TextView implements DemoMode, QSColoringServiceObject, Callbacks, ConfigurationListener, DarkReceiver, TimeAudience, Tunable , View.OnClickListener, View.OnLongClickListener{
    private boolean mAttached;
    private static final String TAG = "QSClock";
    private boolean mClockVisibleByPolicy;
    private boolean mClockVisibleByUser;
    private KeyguardServiceBoxCallback mKeyguardServiceBoxCallback;
    private int mNonAdaptedColor;
    private final boolean mShowDark;
    private boolean mUseWallpaperTextColor;
    public Context  mContext;

    @Override
    public void onClick(View v) {
        setLeoQSClockAction(setLeoUesrHeaderQSClockClick,setLeoUesrHeaderQSClockClickString);
    }

    @Override
    public boolean onLongClick(View view) {
        setLeoQSClockAction(setLeoUesrHeaderQSClockLongClick,setLeoUesrHeaderQSClockLongClickString);
        return false;
    }

    public void setLeoQSClockAction(int style,String key){
        LeoStatusSettings(mContext);
        if(style<=0){
            Intent launchIntentForPackage =getContext().getPackageManager().getLaunchIntentForPackage("com.sec.android.app.clockpackage");
            if (launchIntentForPackage != null) {
                getContext().startActivity(launchIntentForPackage);
            }
        }
        collapsePanel(getContext()) ;
        Vibrate(setLeoUesrHeaderQSClockVibrate,setLeoUesrHeaderQSClockVibrateLevel);
        LeoGlobalActiong(getContext(),style,key);
    }

    public void Vibrate(int on,int style ) {
        if (on== 1) {
            this.mVibrator = (Vibrator) getContext().getSystemService(Context.VIBRATOR_SERVICE);
            this.mVibrator.vibrate(style);
        }
    }
    private Vibrator mVibrator;
    public interface KeyguardServiceBoxCallback {
        void onTimeTextChanged();
    }
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderQSClockClickEnabled()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeaderQSClockLongClickEnabled()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderQSClockClick()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeaderQSClockLongClick()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderQSClockClickString()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeaderQSClockLongClickString()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderQSClockVibrate()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderQSClockClickEnabled()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeaderQSClockVibrateLevel()), false, this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateClockClick();
            Log.v(TAG, new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}));
        }
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

    private void updateClock() {
        QSClockBellTower instance = QSClockBellTower.getInstance(getContext(), getHandler());
        if (instance != null) {
            notifyTimeChanged(instance.getSmallTime(), instance.getContentDescription(), false, "");
        }
    }

  public void updateClockClick(){
      LeoStatusSettings(mContext);
      if (setLeoUesrHeaderQSClockClickEnabled) {
          setOnClickListener(this);
      } else {
          setClickable(false);
      }

      if (setLeoUesrHeaderQSClockLongClickEnabled) {
          setOnLongClickListener(this);
      } else {
          setLongClickable(false);
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


    public void notifyTimeChanged(String str, String str2, boolean z, String str3) {
        QSClockBellTower instance = QSClockBellTower.getInstance(getContext(), getHandler());
        if (!z) {
            if (this.mKeyguardServiceBoxCallback != null) {
                this.mKeyguardServiceBoxCallback.onTimeTextChanged();
            }
            setText(instance.LeoChinaClock(instance.mLeoChinaClock,instance.mLeoChinaClockStart)+str);
            setContentDescription(str2);
            if ("status_bar_clock".equals(getTag())) {
                String str4 = "QSClock";
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("status_bar_clock notifyTimeChanged(currentTime:");
                stringBuilder.append(str);
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
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        updateClockClick();
    }


    public void onDarkChanged(Rect rect, float f, int i) {
        if ("keyguard_status_bar_clock".equals(getTag()) || "status_bar_clock".equals(getTag())) {
            this.mNonAdaptedColor = DarkIconDispatcher.getTint(rect, this, i);
        } else if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            this.mNonAdaptedColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
        } else {
            this.mNonAdaptedColor = mContext.getResources().getColor(2131100343);
        }
        if (!this.mUseWallpaperTextColor) {
            setTextColor(this.mNonAdaptedColor);
        }
    }


    public void onDensityOrFontScaleChanged() {
        setPaddingRelative(mContext.getResources().getDimensionPixelSize(2131167120), 0, mContext.getResources().getDimensionPixelSize(2131167119), 0);
    }

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
      //  setClockVisibleByUser(StatusBarIconController.getIconBlacklist(str2).contains(PluginLockStarFaceWidgetManager.TYPE_CLOCK) ^ 1);
        updateClockVisibility();
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
