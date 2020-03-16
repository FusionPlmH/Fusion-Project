package com.android.systemui.statusbar.phone;

import android.app.ActivityManager;
import android.app.IActivityManager;
import android.content.Context;
import android.net.Uri;
import android.os.Binder;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.RemoteException;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.util.Log;
import android.util.TypedValue;
import android.view.ViewGroup;
import android.view2.WindowManager;
import android.view2.WindowManager.LayoutParams;
import android.widget.FrameLayout;

import androidx.annotation.VisibleForTesting;

import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.keyguard.KeyguardUpdateMonitorCallback;

import com.android.systemui.Dependency;

import com.android.systemui.Rune;

import com.android.systemui.qscoloring.SecQSColoringPresenter;

import com.android.systemui.statusbar.StatusBarState;

import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;
import com.android.systemui.util.DeviceState;

import com.google.android.collect.Lists;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;

import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoPulldownBlur;
import static com.android.settingslib.salt.utils.LeoManages.setLeoPulldownBlurStyle;

public class StatusBarWindowController implements ConfigurationListener {
    private static final boolean DEBUG = false;
    private final IActivityManager mActivityManager=null;
    private int mBarHeight;
    private final Runnable mBarHeightMonitorRunnable=null;
    private float mBlurAmount;
    private FrameLayout mBouncerContainer;
    private LayoutParams mBouncerLp;
    private LayoutParams mBouncerLpChanged;
    private boolean mCachedLightStatusBar;
 //   private final ArrayList<WeakReference<StatusBarWindowCallback>> mCallbacks;
    /* access modifiers changed from: private|final */
 //   public final SysuiColorExtractor mColorExtractor;
    private final Context mContext=null;
    private final State mCurrentState=null;
  //  private final DozeParameters mDozeParameters;
    private final Handler mHandler=null;
    private boolean mHasTopUi;
    private boolean mHasTopUiChanged;
    private boolean mKeyguardScreenRotation;
    private OtherwisedCollapsedListener mListener;
    private LayoutParams mLp;
    private final LayoutParams mLpChanged=null;
    private PowerManager mPowerManager;
    private float mScreenBrightnessDoze;
 //   private OnChangedCallback mSettingsListener;
  //  private final StateListener mStateListener;
    private ViewGroup mStatusBarView;
    private final WindowManager mWindowManager=null;

    public interface OtherwisedCollapsedListener {
        void setWouldOtherwiseCollapse(boolean z);
    }

    private static class State {
        boolean backdropShowing;
        boolean bouncerShowing;
        boolean bubbleExpanded;
        boolean bubblesShowing;
        boolean coverAppShowing;
        int coverType;
        boolean dozing;
        boolean forceCollapsed;
        boolean forceDozeBrightness;
        boolean forceExpandedByShortcut;
        boolean forcePluginOpen;
        boolean forceStatusBarVisible;
        boolean forceUserActivity;
        boolean headsUpShowing;
        boolean keyguardFadingAway;
        boolean keyguardNeedsInput;
        boolean keyguardOccluded;
        boolean keyguardShowing;
        long keyguardUserActivityTimeout;
        long lockTimeOutValue;
        boolean notTouchable;
        boolean panelExpanded;
        boolean panelVisible;
        boolean qsExpanded;
        boolean remoteInputActive;
        boolean screenOrientationNoSensor;
        int scrimsVisibility;
        boolean securedWindow;
        boolean statusBarFocusable;
        boolean statusBarSplitTouchable;
        int statusBarState;
        boolean userScreenTimeOut;
        boolean viewCoverShowing;
        boolean wakeAndUnlock;
        boolean wallpaperSupportsAmbientMode;

        private State() {
            this.statusBarSplitTouchable = true;
        }


        public boolean isKeyguardShowingAndNotOccluded() {
            return this.keyguardShowing && !this.keyguardOccluded;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Window State {");
            String str = "\n";
            stringBuilder.append(str);
            for (Field field : State.class.getDeclaredFields()) {
                stringBuilder.append("  ");
                try {
                    stringBuilder.append(field.getName());
                    stringBuilder.append(": ");
                    stringBuilder.append(field.get(this));
                } catch (IllegalAccessException unused) {
                }
                stringBuilder.append(str);
            }
            stringBuilder.append("}");
            return stringBuilder.toString();
        }
    }


    public StatusBarWindowController(Context context) {

    }


    private void adjustScreenOrientation(State state) {
        if (!state.isKeyguardShowingAndNotOccluded() && !state.dozing) {
            this.mLpChanged.screenOrientation = -1;
        } else if (!this.mKeyguardScreenRotation || this.mCurrentState.screenOrientationNoSensor) {
            this.mLpChanged.screenOrientation = 5;
        } else {
            this.mLpChanged.screenOrientation = 2;
        }
    }

    private void apply(State state) {
        int i;
        int i2;
        applyKeyguardFlags(state);
        applyForceStatusBarVisibleFlag(state);
        applyFocusableFlag(state);
        applyForceShowNavigationFlag(state);
        adjustScreenOrientation(state);
        applyHeight(state);
     //   applyUserActivityTimeout(state);
        applyInputFeatures(state);
        applyFitsSystemWindows(state);
        applyModalFlag(state);
        applyBrightness(state);
        applyHasTopUi(state);
        applyNotTouchable(state);
     //   applyStatusBarColorSpaceAgnosticFlag(state);
        setLeoQSColoringBlur();
        applyAODFlags(state);
        applySplitTouchableFlag(state);
        if (this.mLpChanged.height != this.mLp.height) {
            i = this.mLp.height;
            i2 = 1;
        } else {
            i2 = 0;
            i = i2;
        }
        LayoutParams layoutParams = this.mLp;
        String str = "StatusBarWindowController";
        if (!(layoutParams == null || layoutParams.copyFrom(this.mLpChanged) == 0)) {
           // BioUnlockPFImprover.notifyStatusBarChanged(this.mStatusBarView, this.mLpChanged.height, this.mBarHeight);
            this.mWindowManager.updateViewLayout(this.mStatusBarView, this.mLp);
            if (i2 != 0) {
               // com.android.systemui.keyguard.Log.d(str, "change barHeight from %d to %d", new Object[]{Integer.valueOf(i), Integer.valueOf(this.mLp.height)});
                if (this.mHandler.hasCallbacks(this.mBarHeightMonitorRunnable)) {
                    this.mHandler.removeCallbacks(this.mBarHeightMonitorRunnable);
                }
            }
        }
        boolean z = this.mHasTopUi;
        boolean z2 = this.mHasTopUiChanged;
        if (z != z2) {
            try {
                this.mActivityManager.setHasTopUi(z2);
            } catch (RemoteException e) {
                Log.e(str, "Failed to call setHasTopUi", e);
            }
            this.mHasTopUi = this.mHasTopUiChanged;
        }
     //   notifyStateChangedCallbacks();
        if (this.mBouncerContainer != null) {
            applyBouncer(state);
        }
    }

    private void applyAODFlags(State state) {

    }

    private void applyBouncer(State state) {
        LayoutParams layoutParams;
        boolean z = state.bouncerShowing;
        if (!z || !state.keyguardShowing || state.coverAppShowing || state.viewCoverShowing) {
            this.mBouncerContainer.setVisibility(4);
            layoutParams = this.mBouncerLpChanged;
            layoutParams.height = 0;
            layoutParams.flags |= 8;
            layoutParams.flags &= -131073;
            layoutParams.flags &= -3;
            layoutParams.dimAmount = 0.0f;
            layoutParams.samsungFlags &= -65;
            if (!this.mKeyguardScreenRotation) {
                layoutParams.screenOrientation = -1;
            }
        } else if (z) {
           // WallpaperUtils.isWhiteKeyguardWallpaper(ActionHandler.ACTION_BACKGROUND);
            this.mBouncerContainer.setVisibility(0);
            this.mBouncerContainer.setBackgroundColor(0);
            if (this.mCurrentState.keyguardOccluded) {

            }
            LayoutParams layoutParams2 = this.mBouncerLpChanged;
            layoutParams2.height = -1;
            layoutParams2.flags &= -9;
            layoutParams2.flags &= -17;
            if (state.keyguardNeedsInput) {
                layoutParams2.flags &= -131073;
            } else {
                layoutParams2.flags |= 131072;
            }
            layoutParams2 = this.mBouncerLpChanged;
            layoutParams2.flags |= 2;
            layoutParams2.samsungFlags |= 64;
            layoutParams2.dimAmount = this.mBlurAmount;
            LayoutParams layoutParams3 = this.mLp;
            layoutParams2.userActivityTimeout = layoutParams3.userActivityTimeout;
            layoutParams2.screenDimDuration = layoutParams3.screenDimDuration;
            if (!this.mKeyguardScreenRotation && state.keyguardOccluded) {
                layoutParams2.screenOrientation = 5;
            }
        }
        layoutParams = this.mBouncerLpChanged;
        if ((layoutParams.flags & 67108864) != 0) {
          //  layoutParams.subtreeSystemUiVisibility |= 1280;
        }
        int copyFrom = this.mBouncerLp.copyFrom(this.mBouncerLpChanged);
        if (copyFrom != 0) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Bouncer LP changed!!! = 0x");
            stringBuilder.append(Integer.toHexString(copyFrom));
            stringBuilder.append(", height = ");
            stringBuilder.append(this.mBouncerLpChanged.height);
            Log.d("StatusBar-Window", stringBuilder.toString());
            this.mWindowManager.updateViewLayout(this.mBouncerContainer, this.mBouncerLp);
        }
    }

    private void applyBrightness(State state) {
        if (state.forceDozeBrightness) {
            this.mLpChanged.screenBrightness = this.mScreenBrightnessDoze;
            return;
        }
        this.mLpChanged.screenBrightness = -1.0f;
    }

    private void applyFitsSystemWindows(State state) {
        //boolean access$100 = state.isKeyguardShowingAndNotOccluded() ^ 1;
        ViewGroup viewGroup = this.mStatusBarView;

    }

    private void applyFocusableFlag(State state) {
        Object obj = (state.statusBarFocusable && state.panelExpanded) ? 1 : null;
        LayoutParams layoutParams;

    }

    private void applyForceShowNavigationFlag(State state) {
        LayoutParams layoutParams;

    }

    private void applyForceStatusBarVisibleFlag(State state) {
        LayoutParams layoutParams;
        if (state.forceExpandedByShortcut || state.forceStatusBarVisible) {
            layoutParams = this.mLpChanged;
            layoutParams.privateFlags |= 4096;
            return;
        }
        layoutParams = this.mLpChanged;
        layoutParams.privateFlags &= -4097;
    }

    private void applyHasTopUi(State state) {
     //   this.mHasTopUiChanged = isExpanded(state);
    }

    private void applyHeight(State state) {

    }

    private void applyInputFeatures(State state) {
        LayoutParams layoutParams;
        if (!state.isKeyguardShowingAndNotOccluded() || state.statusBarState != 1 || state.qsExpanded || state.forceUserActivity) {
            layoutParams = this.mLpChanged;
            layoutParams.inputFeatures &= -5;
            return;
        }
        layoutParams = this.mLpChanged;
        layoutParams.inputFeatures |= 4;
    }

    private void applyKeyguardFlags(State state) {
        LayoutParams layoutParams;
        if (state.keyguardShowing) {
            layoutParams = this.mLpChanged;
            layoutParams.privateFlags |= 1024;
        } else {
            layoutParams = this.mLpChanged;
            layoutParams.privateFlags &= -1025;
        }
        Object obj = 1;
        Object obj2 = state.scrimsVisibility == 2 ? 1 : null;

        if (obj == null || state.backdropShowing || obj2 != null) {
            layoutParams = this.mLpChanged;
            layoutParams.flags &= -1048577;
        } else {
            layoutParams = this.mLpChanged;
            layoutParams.flags |= 1048576;
        }
        LayoutParams layoutParams2;
        if (state.dozing) {
            layoutParams2 = this.mLpChanged;
            layoutParams2.privateFlags |= 524288;
            return;
        }
        layoutParams2 = this.mLpChanged;
        layoutParams2.privateFlags &= -524289;
    }

    private void applyModalFlag(State state) {
        LayoutParams layoutParams;
        if (state.headsUpShowing) {
            layoutParams = this.mLpChanged;
            layoutParams.flags |= 32;
            return;
        }
        layoutParams = this.mLpChanged;
        layoutParams.flags &= -33;
    }

    private void applyNotTouchable(State state) {
        LayoutParams layoutParams;
        if (state.notTouchable) {
            layoutParams = this.mLpChanged;
            layoutParams.flags |= 16;
            return;
        }
        layoutParams = this.mLpChanged;
        layoutParams.flags &= -17;
    }

    private void applySplitTouchableFlag(State state) {
        LayoutParams layoutParams;
        if (state.statusBarSplitTouchable) {
            layoutParams = this.mLpChanged;
            layoutParams.flags |= 8388608;
            return;
        }
        layoutParams = this.mLpChanged;
        layoutParams.flags &= -8388609;
    }

    private void setLeoQSColoringBlur() {
        LeoSysUiManages(mContext);
        if (setLeoPulldownBlur) {
            float f = (setLeoPulldownBlurStyle) / 100.0f;
            if (!(this.mCurrentState.keyguardShowing || this.mCurrentState.headsUpShowing || !this.mCurrentState.panelVisible)) {
                LayoutParams layoutParams = this.mLpChanged;
                layoutParams.flags |= 2;
                layoutParams.dimAmount = f;
                layoutParams.samsungFlags |= 64;
                return;
            }
        }
        this.mLpChanged.dimAmount = 0.0f;
        LayoutParams layoutParams2 = this.mLpChanged;
        layoutParams2.flags &= -3;
    }

}
