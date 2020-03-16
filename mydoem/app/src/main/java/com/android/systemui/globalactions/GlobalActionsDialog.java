/*
 * Copyright (C) 2017 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the
 * License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.android.systemui.globalactions;

import android.content.ContentResolver;
import android.content.Context;

import android.content.DialogInterface;

import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.provider.Settings;

import android.telephony.PhoneStateListener;


import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.BitSet;
import java.util.Collections;
import java.util.List;

import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.FlashlightController;


import static com.android.systemui.UId.UId51;
import static com.android.systemui.UId.UId52;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;

import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserString.LeoAction;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.getLeoInt;
import static com.android.systemui.UId.UId25;
import static com.android.systemui.UId.UId26;
import static com.android.systemui.UId.UId27;
import static com.android.systemui.UId.UId28;
import static com.android.systemui.UId.UId29;
import static com.android.systemui.UId.UId30;
import static com.android.systemui.UId.UId31;
import static com.android.systemui.UId.UId32;
import static com.android.systemui.UId.UId33;
import static com.android.systemui.UId.UId34;
import static com.android.systemui.UId.UId35;
import static com.android.systemui.UId.UId36;
import static com.android.systemui.UId.UId37;
import static com.android.systemui.UId.UId38;
import static com.android.systemui.UId.UId39;
import static com.android.systemui.UId.UId40;
import static com.android.systemui.UId.UId41;
import static com.android.systemui.UId.UId42;
import static com.os.leo.utils.LeoUserString.*;

class GlobalActionsDialog implements OnDismissListener, OnClickListener{

    static public final String SYSTEM_DIALOG_REASON_KEY = "reason";
    static public final String SYSTEM_DIALOG_REASON_GLOBAL_ACTIONS = "globalactions";

    private static final String TAG = "GlobalActionsDialog";

    private static final boolean SHOW_SILENT_TOGGLE = true;

    /* Valid settings for global actions keys.
     * see config.xml config_globalActionList */
    private static final String GLOBAL_ACTION_KEY_POWER = "power";
    private static final String GLOBAL_ACTION_KEY_AIRPLANE = "airplane";
    private static final String GLOBAL_ACTION_KEY_BUGREPORT = "bugreport";
    private static final String GLOBAL_ACTION_KEY_SILENT = "silent";
    private static final String GLOBAL_ACTION_KEY_USERS = "users";
    private static final String GLOBAL_ACTION_KEY_SETTINGS = "settings";
    private static final String GLOBAL_ACTION_KEY_LOCKDOWN = "lockdown";
    private static final String GLOBAL_ACTION_KEY_VOICEASSIST = "voiceassist";
    private static final String GLOBAL_ACTION_KEY_ASSIST = "assist";
    private static final String GLOBAL_ACTION_KEY_RESTART = "restart";
    private static final String GLOBAL_ACTION_KEY_ADVANCED = "advanced";
    private static final String GLOBAL_ACTION_KEY_SCREENSHOT = "screenshot";
    private static final String GLOBAL_ACTION_KEY_SCREENRECORD = "screenrecord";
    private static final String GLOBAL_ACTION_KEY_ON_THE_GO = "on_the_go";
    private static final String GLOBAL_ACTION_KEY_FLASHLIGHT = "flashlight";

    private static final int SHOW_TOGGLES_BUTTON = 1;
    private static final int RESTART_HOT_BUTTON = 2;
    private static final int RESTART_RECOVERY_BUTTON = 3;
    private static final int RESTART_BOOTLOADER_BUTTON = 4;
    private static final int RESTART_UI_BUTTON = 5;

    private final Context mContext;

    //  private final GlobalActionsManager mWindowManagerFuncs;


    private boolean mKeyguardShowing = false;
    private boolean mDeviceProvisioned = false;
    private boolean mIsWaitingForEcmExit = false;
    private boolean mHasTelephony;
    private boolean mHasVibrator;

 //   private final EmergencyAffordanceManager mEmergencyAffordanceManager;

    private BitSet mAirplaneModeBits;
    private final List<PhoneStateListener> mPhoneStateListeners = new ArrayList<>();

    private static final String SYSUI_PACKAGE = "com.android.systemui";
    private static final String SYSUI_SCREENSHOT_SERVICE =
            "com.android.systemui.screenshot.TakeScreenshotService";
    private static final String SYSUI_SCREENRECORD_SERVICE =
            "com.android.systemui.omni.screenrecord.TakeScreenrecordService";

    GlobalActionsDialog(Context context) {
       mContext = context;
       if( setLeoUesrPowerMenuConfirmDialog){
           LeoSettings(mContext);
       }

    }
    private String[] getLeoPowerMenuString() {
        LeoSettings(mContext);
        String systemString =setLeoUesrPowerMenuItem;
        if (TextUtils.equals(systemString, null) || TextUtils.equals(systemString, "")) {
            systemString = "power,restart,emergencymode";
        }
        String[] split = systemString.split(",");
        switch (setLeoUesrPowerMenuItemOrder) {
            case 1 :
                Collections.reverse(Arrays.asList(split));
                break;
            case 2:
                Collections.shuffle(Arrays.asList(split));
                break;
        }
        return split;
    }

    @Override
    public void onClick(DialogInterface dialogInterface, int i) {

    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {

    }

    // private FlashlightController mFlashlightController;

    /**
     * Since there are two ways of handling airplane mode (with telephony, we depend on the internal
     * device telephony state), and MSIM devices do not report phone state for missing SIMs, we
     * need to dynamically setup listeners based on subscription changes.
     *
     * So if there is _any_ active SIM in the device, we can depend on the phone state,
     * otherwise fall back to {@link Settings.Global#AIRPLANE_MODE_ON}.
     */
    private interface Action {
        View create(Context context, View view, ViewGroup viewGroup, LayoutInflater layoutInflater);

        boolean isEnabled();

        void onPress();

        boolean showBeforeProvisioning();

        boolean showConditional();

        boolean showDuringKeyguard();
    }

    private static boolean sIsSViewCoverClosed = false;

    private static final boolean SUPPORT_FORCE_RESTART =true;
    private static boolean sIsCoverOpen = true;
    private GlobalActionsFrameLayout mGlobalActionsFrameLayout;
    private LinearLayout mForceRestartLayout;
    private static Resources sResource = null;
    private boolean mShowNavigationBar;
    private boolean mIsBugReportEnable;
    private LinearLayout mBottomLayout;

int off;
   public boolean powerfull(){
        boolean powerfull=setLeoUesrFullscreenPowerMenu;
        if(powerfull){
            powerfull=false;
        } else {
            powerfull=SUPPORT_FORCE_RESTART;
        }
        return powerfull;
    }

    private void adjustBottomView() {
        if (powerfull()) {
            this.mForceRestartLayout = (LinearLayout) this.mGlobalActionsFrameLayout.findViewById(16909012);
            this.mForceRestartLayout.setPadding(0, 0, 0, 0);
        }

    }

    private void adjustForceRestartView() {
        if (!powerfull()) {
            return;
        }
        if (sIsCoverOpen || sIsClearCoverClosed) {
            this.mForceRestartLayout = (LinearLayout) this.mGlobalActionsFrameLayout.findViewById(16909012);
            TextView textView = (TextView) this.mGlobalActionsFrameLayout.findViewById(16908997);
            setPowerMeunText(textView);
            Configuration configuration = sResource.getConfiguration();
            if (!(!this.mShowNavigationBar || configuration.orientation == 2 || this.mForceRestartLayout == null)) {
                int dimensionPixelSize = sResource.getDimensionPixelSize(17105233);
                if (!this.mIsBugReportEnable) {
                    this.mForceRestartLayout.setPadding(0, 0, 0, dimensionPixelSize);
                }
            }
            if (sIsNeedWhiteTheme && textView != null) {
                setPowerMeunTextWhiteTheme(textView);
            }
            float dimension = sResource.getDimension(17105733) / sResource.getDisplayMetrics().density;
            if (configuration.fontScale > 1.2f) {
            }
            CharSequence string = this.mContext.getString(17040250, new Object[]{Integer.valueOf(7)});
            if (textView != null) {
                textView.setText(string);
            }
            if (this.mForceRestartLayout != null) {
                this.mForceRestartLayout.setVisibility(0);
            }
        }
    }


    public void setPowerMeunText(TextView textView) {
        LeoSettings(textView.getContext());
        if( setLeoUesrPowerTextHint==1) {
             textView.setTypeface(setLeoRomFonts(0,setLeoUesrPowerTextHintFont));
            textView.setTextSize(setLeoUesrPowerTextHintSize);
            textView.setTextColor(setLeoUesrPowerTextHintColor);
        }

    }
    public void setPowerMeunTextWhiteTheme(TextView textView) {
        LeoSettings(textView.getContext());
        textView.setTextColor(sResource.getColor(17170961));
        if(setLeoUesrPowerTextHint==1) {
        if(setLeoUesrPowerTextHintLinkWhiteTheme==1) {
            textView.setTextColor(setLeoUesrPowerTextHintColor);
        }
        }
    }


    private static abstract class ToggleAction implements Action {
        protected int mDisabledIconResid;
        protected int mDisabledStatusMessageResId;
        protected int mEnabledIconResId;
        protected int mEnabledStatusMessageResId;
        int mLayoutId;
        protected int mMessageResId;
        protected State mState = State.Off;

        enum State {
            Off(false),
            TurningOn(true),
            TurningOff(true),
            On(false);

            private final boolean inTransition;

            private State(boolean intermediate) {
                this.inTransition = intermediate;
            }

            public boolean inTransition() {
                return this.inTransition;
            }
        }

        abstract void onToggle(boolean z);

        public ToggleAction(int enabledIconResId, int disabledIconResid, int message, int enabledStatusMessageResId, int disabledStatusMessageResId) {
            this.mEnabledIconResId = enabledIconResId;
            this.mDisabledIconResid = disabledIconResid;
            this.mMessageResId = message;
            this.mEnabledStatusMessageResId = enabledStatusMessageResId;
            this.mDisabledStatusMessageResId = disabledStatusMessageResId;
            if (GlobalActionsDialog.sIsSViewCoverClosed) {
                this.mLayoutId = 17367152;
            } else {
                this.mLayoutId = 17367150;
            }
        }

        void willCreate() {
        }

        public View create(Context context, View convertView, ViewGroup parent, LayoutInflater inflater) {
            View v;
            willCreate();
            if (GlobalActionsDialog.sIsSViewCoverClosed) {
                v = inflater.inflate(17367152, parent, false);
            } else {
                v = inflater.inflate(17367150, parent, false);
            }
            ImageView icon = (ImageView) v.findViewById(16908294);
            TextView messageView = (TextView) v.findViewById(16908299);
            TextView statusView = (TextView) v.findViewById(16909551);
            FrameLayout iconView = (FrameLayout) v.findViewById(16909014);
            boolean enabled = isEnabled();
            if (messageView != null) {
                messageView.setText(this.mMessageResId);
                messageView.setEnabled(enabled);
                if (!enabled) {
                    messageView.setTextColor(-7829368);
                }
            }
            boolean on = this.mState == State.On || this.mState == State.TurningOn;
            if (icon != null) {
                icon.setImageDrawable(context.getResources().getDrawableForDensity(on ? this.mEnabledIconResId : this.mDisabledIconResid, GlobalActionsDialog.sCurrentDensity));
                icon.setEnabled(enabled);
                icon.setTag(Integer.valueOf(on ? this.mEnabledIconResId : this.mDisabledIconResid));
            }
            if (statusView != null) {
                statusView.setText(on ? this.mEnabledStatusMessageResId : this.mDisabledStatusMessageResId);
                statusView.setVisibility(0);
                statusView.setEnabled(enabled);
                if (!enabled) {
                    statusView.setTextColor(-7829368);
                }
            }
            v.setEnabled(enabled);
            if (iconView != null) {
                iconView.setEnabled(enabled);
                if (enabled) {
                    iconView.setClickable(true);
                    iconView.setAlpha(1.0f);
                } else {
                    iconView.setClickable(false);
                    iconView.setAlpha(0.4f);
                }
            }
            if (GlobalActionsDialog.sIsNeedWhiteTheme) {
                if (messageView != null) {
                    messageView.setTextColor(GlobalActionsDialog.sMessageViewColorWhite);
                }
                if (statusView != null) {
                    statusView.setTextColor(GlobalActionsDialog.sStatusViewColorWhite);
                }
            }
            return v;
        }

        public void onPress() {
           // Log.i("GlobalActionsDialog", "ToggleAction onPress  mState=" + this.mState);
            if (this.mState.inTransition()) {
               // Log.w("GlobalActionsDialog", "shouldn't be able to toggle when in transition");
                return;
            }
            boolean nowOn = this.mState != State.On;
         //   Log.i("GlobalActionsDialog", "onPress nowOn : " + nowOn);
            onToggle(nowOn);
            changeStateFromPress(nowOn);
        }

        public void onPressAction() {
          //  Log.i("GlobalActionsDialog", "ToggleAction onPress  mState=" + this.mState);
            if (this.mState.inTransition()) {
              //  Log.w("GlobalActionsDialog", "shouldn't be able to toggle when in transition");
                return;
            }
            boolean nowOn = this.mState != State.On;
           // Log.i("GlobalActionsDialog", "onPressAction nowOn : " + nowOn);
            onToggle(nowOn);
            changeStateFromPress(nowOn);
        }

        public boolean isEnabled() {
            return mState.inTransition() ^ (setLeoUesrPowerMenuClickState==0) ? true : false;
        }

        protected void changeStateFromPress(boolean buttonOn) {
            this.mState = buttonOn ? State.On : State.Off;
           // Log.i("GlobalActionsDialog", "changeStateFromPress : " + buttonOn);
        }

        public void updateState(State state) {
            this.mState = state;
        }
    }

    private static abstract class SinglePressAction implements Action {
        public int customAction = 0;
        public boolean isKnoxCustom = false;
        private final Drawable mIcon;
        private final int mIconResId;
        int mLayoutId;
        private final CharSequence mMessage;
        private final int mMessageResId;
        int color;
        int SIZE;
        int fONR;
        boolean BBBB;

        protected SinglePressAction(int i, int i2) {
            this.mIconResId = i;
            this.mMessageResId = i2;
            this.mMessage = null;
            this.mIcon = null;
            init();
        }

        protected SinglePressAction(int i, Drawable drawable, CharSequence charSequence) {
            this.mIconResId = i;
            this.mMessageResId = 0;
            this.mMessage = charSequence;
            this.mIcon = drawable;
            init();
        }

        protected SinglePressAction(Drawable drawable, String str, int i) {
            this.mIcon = drawable;
            this.mMessage = str;
            this.mIconResId = 0;
            this.mMessageResId = 0;
            this.isKnoxCustom = true;
            this.customAction = i;
            init();
        }

        private void init() {
            if (GlobalActionsDialog.sIsSViewCoverClosed) {
                this.mLayoutId = 17367152;
            } else {
                this.mLayoutId = 17367150;
            }
        }



        public View create(Context context, View view, ViewGroup viewGroup, LayoutInflater layoutInflater) {
            View inflate = GlobalActionsDialog.sIsSViewCoverClosed ? layoutInflater.inflate(17367152, viewGroup, false) : layoutInflater.inflate(17367150, viewGroup, false);
            ImageView imageView = (ImageView) inflate.findViewById(16908294);
            TextView textView = (TextView) inflate.findViewById(16908299);


                TextView textView2 = (TextView) inflate.findViewById(16909551);


            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(16909014);
            boolean isEnabled = isEnabled();
            CharSequence status = getStatus();
            if (!(textView2 == null || TextUtils.isEmpty(status))) {
                textView2.setText(status);
                setPowerMeunText(textView2);

                if (!isEnabled) {
                    setPowerMeunText(textView);
                }
            }
            if (this.mIcon != null) {
                imageView.setImageDrawable(this.mIcon);
                imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
                imageView.setTag(Integer.valueOf(this.mIconResId));
            } else if (this.mIconResId != 0) {
                imageView.setImageDrawable(context.getResources().getDrawableForDensity(this.mIconResId, GlobalActionsDialog.sCurrentDensity));
                imageView.setTag(Integer.valueOf(this.mIconResId));
                setPowerMeunImageView(imageView);
            }
            if (textView != null) {

                if (this.mMessage != null) {
                    textView.setText(this.mMessage);
                } else {
                    textView.setText(this.mMessageResId);
                }
                if (!isEnabled) {
                    setPowerMeunText(textView);
                }
            }

            if (frameLayout != null) {
                if (this.mMessageResId != 0) {
                    frameLayout.setContentDescription(context.getString(this.mMessageResId) + ", " + context.getResources().getString(17040280));
                }
                frameLayout.setEnabled(isEnabled);
                if (isEnabled) {
                    frameLayout.setClickable(true);
                    frameLayout.setAlpha(1.0f);
                } else {
                    frameLayout.setClickable(false);
                    frameLayout.setAlpha(0.4f);
                }
            }
            if (GlobalActionsDialog.sIsNeedWhiteTheme) {
                if (textView != null) {
                    setPowerMeunTextWhiteTheme(textView);
            }
                if (textView2 != null) {
                    textView2.setTextColor(GlobalActionsDialog.sStatusViewColorWhite);
                }
            }
            if (GlobalActionsDialog.sIsGraceR && GlobalActionsDialog.sIsClearCoverClosed) {
                GlobalActionsDialog.setLimitTextSizeToLarge(textView, GlobalActionsDialog.sMessageViewTextSize);
                GlobalActionsDialog.setLimitTextSizeToLarge(textView2, GlobalActionsDialog.sStatusViewTextSize);
            }

            return inflate;
        }

        public String getStatus() {
            return null;
        }

        public boolean isEnabled() {
            return (setLeoUesrPowerMenuClickState==0) ? true : false;
        }

        public abstract void onPress();
        public void setPowerMeunImageView(ImageView imageView) {
            LeoSettings(imageView.getContext());
            int custom=setLeoUesrPowerImageView;
            if(custom==1) {
                int mLogoColor=setLeoUesrPowerImageViewColor;
                imageView. setColorFilter(mLogoColor, PorterDuff.Mode.SRC_ATOP);

                float size=setLeoUesrPowerImageViewSize;
                imageView. setScaleX(size);
                imageView. setScaleY(size);
            } else {
                imageView. setColorFilter(0, PorterDuff.Mode.SRC_ATOP);
            }

        }
        public void setPowerMeunText(TextView textView) {
            LeoSettings(textView.getContext());
            if(setLeoUesrPowerTextStatus==1) {
                textView.setTypeface(setLeoRomFonts(0,setLeoUesrPowerTextFont));
                textView.setTextSize(setLeoUesrPowerTextSize);
                textView.setTextColor(setLeoUesrPowerTextColor);
            }

        }
        public   void setPowerMeunTextWhiteTheme(TextView textView) {
            LeoSettings(textView.getContext());
            textView.setTextColor(GlobalActionsDialog.sMessageViewColorWhite);
            if(setLeoUesrPowerTextStatus==1) {
                if(setLeoUesrPowerTextLinkWhiteTheme==1) {
                    textView.setTextColor(setLeoUesrPowerTextColor);
                }
            }
        }
    }
    private static boolean sIsGraceR = false;
    private static void setLimitTextSizeToLarge(TextView textView, int i) {
        if (textView != null) {
            float f = textView.getContext().getResources().getConfiguration().fontScale;
            if (f > 1.3f) {
                f = 1.3f;
            }
            textView.setTextSize(1, ((float) i) * f);
        }
    }
    private static int sStatusViewTextSize = 0;

    private static int sMessageViewColorWhite = 0;
    private static int sMessageViewTextSize = 0;
    private static int sStatusViewColorWhite = 0;
    private static boolean sIsClearCoverClosed = false;
    private static int sCurrentDensity = 0;

    private SinglePressAction mScreenshot;
    private static boolean sIsNeedWhiteTheme = false;

    class Screenshot extends SinglePressAction {
        Screenshot(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            LeoAction(mContext,112,null);
        }

        public boolean showBeforeProvisioning() {
            return true;
        }


        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return true;
        }
    }

    private SinglePressAction mQuickReboot;
    class QuickReboot extends SinglePressAction {
        QuickReboot(int i, int i2) {
            super(i, i2);
        }
        QuickReboot(int i, Drawable drawable, CharSequence charSequence) {
            super(i, drawable, charSequence);
        }
        QuickReboot(Drawable drawable, String str) {
            super(drawable, str, 1);
        }

        public void onPress() {
            try {
                Runtime.getRuntime().exec(new String[]{"setprop", "ctl.restart", "zygote"});
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }


    class ScreenRecord extends SinglePressAction {
        ScreenRecord(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            LeoAction(mContext,118,null);
        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }
    private SinglePressAction mDownload;
    class Download extends SinglePressAction {
        Download(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            Intent intent = new Intent();
            intent.setAction(LEO_ACTION_SERVICE);
            intent.putExtra("ACTION", LEO_ACTION_DOWNLOAD);
            mContext.sendBroadcast(intent);
        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }

    private SinglePressAction mRecovery;
    class Recovery extends SinglePressAction {
        Recovery(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            Intent intent = new Intent();
            intent.setAction(LEO_ACTION_SERVICE);
            intent.putExtra("ACTION", LEO_ACTION_RECOBERY);
            mContext.sendBroadcast(intent);
        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }
    private SinglePressAction mFlashlight;
    class Flashlight extends SinglePressAction {
        Flashlight(int i, int i2) {
            super(i, i2);
        }


        public void onPress() {
            LeoAction(mContext,116,null);

        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }
    private SinglePressAction mLeoPersonalize;
    class LeoPersonalize extends SinglePressAction {
        LeoPersonalize(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            LeoAction(mContext,117,null);
        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }
    class SoundMode extends SinglePressAction {
        SoundMode(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            LeoAction(mContext,122,null);
        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }
    class WifiMode extends SinglePressAction {
        WifiMode(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            LeoAction(mContext,123,null);
        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }
    class MiPop extends SinglePressAction {
        MiPop(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            LeoAction(mContext,133,null);
        }

        public boolean showBeforeProvisioning() {
            return SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return true;

        }

        public boolean showDuringKeyguard() {
            return SHOW_SILENT_TOGGLE;
        }
    }
    private SinglePressAction mScreenRecord;
    private SinglePressAction mMipop;
    private SinglePressAction mSound;
    private SinglePressAction mWifi;
    public void getLeoreSource() {
        mFlashlight = new Flashlight(UId25, UId32);
        mScreenRecord = new ScreenRecord(UId26, UId33);
        mRecovery= new Recovery(UId27,UId34);
        mDownload = new Download(UId28, UId35);
        mScreenshot = new Screenshot(UId29,UId36);
        mQuickReboot = new QuickReboot(UId30,UId37);
        mSound= new SoundMode(UId39, UId40);
        mLeoPersonalize= new LeoPersonalize(UId31, UId38);
        mWifi= new WifiMode(UId41, UId42);
        mMipop= new MiPop(UId51, UId52);
    }

    private boolean isSingleActionItem(View view) {
        int intValue = ((Integer) ((ImageView) view.findViewById(16908294)).getTag()).intValue();
        boolean off=setLeoUesrPowerMenuConfirmDialog;
        return (off && intValue == this.mPowerOffIconResId || off && intValue == this.mRestartIconResId);

    }

    private int mPowerOffIconResId;
    private int mRestartIconResId;



}
