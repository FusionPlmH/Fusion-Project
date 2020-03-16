package com.android.server.policy;

import android.animation.Animator;
import android.animation.Animator.AnimatorListener;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.ActivityManager;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.app.KeyguardManager;
import android.app.Notification;
import android.app.PendingIntent;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.ContentValues;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnClickListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.DialogInterface.OnKeyListener;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.UserInfo;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.database.Cursor;
import android.drm.DrmStore;
import android.graphics.Bitmap;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.os.IBinder;
import android.os.IPowerManager.Stub;
import android.os.Message;
import android.os.Messenger;
import android.os.Parcelable;
import android.os.PowerManager;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.os.UserManager;
import android.os.Vibrator;

import android.provider.Settings;
import android.text.TextUtils;
import android.view.ContextThemeWrapper;
import android.view.Display;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.SurfaceControl;
import android.view.View;
import android.view.View.OnLongClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.WindowManagerGlobal;
import android.view.WindowManagerPolicy.WindowManagerFuncs;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.AdapterView.OnItemLongClickListener;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

import java.io.IOException;
import java.security.InvalidParameterException;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;


class GlobalActions implements OnDismissListener, OnClickListener {
    private static final String GLOBAL_ACTION_KEY_RECOVERY = "recovery";
    private static final boolean SHOW_SILENT_TOGGLE = true;
    private static final String GLOBAL_ACTION_KEY_POWER = "power";
    private static int sCurrentDensity = 0;
    static int mCurrentDensity = 0;
    private static boolean sIsNeedWhiteTheme = false;
    private static int mMessageViewColorWhite = 0;
    private static int mStatusViewColorWhite = 0;

    private static boolean mNewFeatureForM;
    private static boolean mIsCoverOpen = SHOW_SILENT_TOGGLE;
    private static boolean mIsClearCover = false;
    private static boolean sIsSViewCoverClosed = false;
    private Context mContext;
    public boolean mFlashlight;
    public  void setFlashlight() {
        boolean z = !mFlashlight ? true : false;
        mFlashlight = z;
     //   SemHardwareInterface.setTorchLight(z);
    }
    @Override
    public void onClick(DialogInterface dialogInterface, int i) {

    }

    @Override
    public void onDismiss(DialogInterface dialogInterface) {

    }
    PhoneWindowManager  mPWM;
    private void setPersonalize() {
       // mPWM.handleBixbyAction(2);
    }

    private interface Action {
        View create(Context context, View view, ViewGroup viewGroup, LayoutInflater layoutInflater);

        CharSequence getLabelForAccessibility(Context context);

        boolean isEnabled();

        void onPress();

        boolean showBeforeProvisioning();

        boolean showConditional();

        boolean showDuringKeyguard();
    }

    private static abstract class SinglePressAction implements Action {
        public int customAction = 0;
        public boolean isKnoxCustom = false;
        private final Drawable mIcon;
        private final int mIconResId;
        int mLayoutId;
        private final CharSequence mMessage;
        private final int mMessageResId;


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

        protected SinglePressAction(int i, CharSequence charSequence) {
            this.mIconResId = i;
            this.mMessageResId = 0;
            this.mMessage = charSequence;
            this.mIcon = null;
            init();
        }

        protected SinglePressAction(Drawable drawable, String str, int i) {
            this.mIcon = drawable;
            this.mMessage = str;
            this.mIconResId = 0;
            this.mMessageResId = 0;
            this.isKnoxCustom = GlobalActions.SHOW_SILENT_TOGGLE;
            this.customAction = i;
            init();
        }


        private void init() {
            if (GlobalActions.sIsSViewCoverClosed) {
                this.mLayoutId = 17367149;
            } else {
                this.mLayoutId = 17367147;
            }
        }

        public View create(Context context, View view, ViewGroup viewGroup, LayoutInflater layoutInflater) {
            View inflate = !GlobalActions.mNewFeatureForM ? (GlobalActions.mIsCoverOpen || GlobalActions.mIsClearCover) ? layoutInflater.inflate(17367146, viewGroup, false) : layoutInflater.inflate(17367148, viewGroup, false) : (GlobalActions.mIsCoverOpen || GlobalActions.mIsClearCover) ? layoutInflater.inflate(17367147, viewGroup, false) : layoutInflater.inflate(17367149, viewGroup, false);
            ImageView imageView = (ImageView) inflate.findViewById(16908294);
            TextView textView = (TextView) inflate.findViewById(16908299);
            TextView textView2 = (TextView) inflate.findViewById(16909271);
            FrameLayout frameLayout = (FrameLayout) inflate.findViewById(16909273);
            boolean isEnabled = isEnabled();
            CharSequence status = getStatus();
            if (textView2 != null) {
                if (!TextUtils.isEmpty(status)) {
                    textView2.setText(status);
                    if (!isEnabled) {
                        textView2.setTextColor(-7829368);
                        setPowerMeunText(textView);
                }
                } else if (!GlobalActions.mNewFeatureForM) {
                    textView2.setVisibility(8);
                }
            }
            if (this.mIcon != null) {
                imageView.setImageDrawable(this.mIcon);
                imageView.setScaleType(ScaleType.CENTER_CROP);
                imageView.setTag(Integer.valueOf(this.mIconResId));
            } else if (this.mIconResId != 0) {
                imageView.setImageDrawable(context.getResources().getDrawableForDensity(this.mIconResId, GlobalActions.mCurrentDensity));
                imageView.setTag(Integer.valueOf(this.mIconResId));
            }
            if (textView != null) {
                if (this.mMessage != null) {
                    textView.setText(this.mMessage);
                } else {
                    textView.setText(this.mMessageResId);
                }
                if (!isEnabled) {
                    textView.setTextColor(-7829368);
                }
            }
            if (GlobalActions.mNewFeatureForM && frameLayout != null) {
                if (this.mMessageResId != 0) {
                    frameLayout.setContentDescription(context.getString(this.mMessageResId) + ", " + context.getResources().getString(17041394));
                }
                frameLayout.setEnabled(isEnabled);
                if (isEnabled) {
                    frameLayout.setClickable(GlobalActions.SHOW_SILENT_TOGGLE);
                    frameLayout.setAlpha(1.0f);
                } else {
                    frameLayout.setClickable(false);
                    frameLayout.setAlpha(0.4f);
                }
            }
            if (GlobalActions.sIsNeedWhiteTheme) {
                if (textView != null) {
                    textView.setTextColor(GlobalActions.mMessageViewColorWhite);
                }
                if (textView2 != null) {
                    textView2.setTextColor(GlobalActions.mStatusViewColorWhite);
                }
            } else if (!(GlobalActions.mNewFeatureForM || GlobalActions.mIsCoverOpen || GlobalActions.mIsClearCover)) {
                if (textView != null) {
                    textView.setTextColor(Color.parseColor("#FF000000"));
                }
                if (textView2 != null) {
                    textView2.setTextColor(Color.parseColor("#6B6F72"));
                }
            }
            return inflate;
        }



        public CharSequence getLabelForAccessibility(Context context) {
            return this.mMessage != null ? this.mMessage : context.getString(this.mMessageResId);
        }

        public String getStatus() {
            return null;
        }

        public boolean isEnabled() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public abstract void onPress();

        void setPowerMeunText(TextView textView) {
         //   ContentResolver LeoSettings = textView.getContext().getContentResolver();
          //  textView.setTextColor(Settings.System.getInt(LeoSettings, getLeoPowerMenuColor(), -1));
           //textView.setTextSize(Settings.System.getInt(LeoSettings, getLeoPowerMenuSize(), 13));
          //  getFontsStyle(Settings.System.getInt(LeoSettings, getLeoPowerMenuFont(), 0),textView);

        }
    }

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
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return Settings.System.getInt(GlobalActions.this.mContext.getContentResolver(), "leo_tweaks_power_reboot", 1) == 0 ? false : GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showDuringKeyguard() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }
    }


    class Screenrecord extends SinglePressAction {
        Screenrecord(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
          //  KeyLeo(25,mContext,null);
        }

        public boolean showBeforeProvisioning() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return Settings.System.getInt(GlobalActions.this.mContext.getContentResolver(), "leo_tweaks_power_record", 1) == 0 ? false : GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showDuringKeyguard() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }
    }
    class Download extends SinglePressAction {
        Download(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            ((PowerManager) GlobalActions.this.mContext.getSystemService(GlobalActions.GLOBAL_ACTION_KEY_POWER)).reboot("download");
        }

        public boolean showBeforeProvisioning() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return Settings.System.getInt(GlobalActions.this.mContext.getContentResolver(), "leo_tweaks_power_download", 1) == 0 ? false : GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showDuringKeyguard() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }
    }


    class Recovery extends SinglePressAction {
        Recovery(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
            ((PowerManager) GlobalActions.this.mContext.getSystemService(GlobalActions.GLOBAL_ACTION_KEY_POWER)).reboot("recovery");
        }

        public boolean showBeforeProvisioning() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return Settings.System.getInt(GlobalActions.this.mContext.getContentResolver(), "leo_tweaks_power_recovery", 1) == 0 ? false : GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showDuringKeyguard() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }
    }

    class Flashlight extends SinglePressAction {


        Flashlight(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
         //   KeyLeo(17,mContext,null);
        }

        public boolean showBeforeProvisioning() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return Settings.System.getInt(GlobalActions.this.mContext.getContentResolver(), "power_torch", 1) == 0 ? false : GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showDuringKeyguard() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }
    }
    class Personalize extends SinglePressAction {


        Personalize(int i, int i2) {
            super(i, i2);
        }

        public void onPress() {
      //      KeyLeo(18,mContext,null);
        }

        public boolean showBeforeProvisioning() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showConditional() {
            return Settings.System.getInt(GlobalActions.this.mContext.getContentResolver(), "power_torch", 1) == 0 ? false : GlobalActions.SHOW_SILENT_TOGGLE;
        }

        public boolean showDuringKeyguard() {
            return GlobalActions.SHOW_SILENT_TOGGLE;
        }
    }


    private void init() {
            //if (GlobalActions.mNewFeatureForM) {
              //  if (GlobalActions.mIsCoverOpen || GlobalActions.mIsClearCover) {
              //      this.mLayoutId = 17367147;
              //  } else {
              //      this.mLayoutId = 17367149;
             //   }
           // } else if (GlobalActions.mIsCoverOpen || GlobalActions.mIsClearCover) {
           //     this.mLayoutId = 17367146;
          //  } else {
          //      this.mLayoutId = 17367148;
            }


    }