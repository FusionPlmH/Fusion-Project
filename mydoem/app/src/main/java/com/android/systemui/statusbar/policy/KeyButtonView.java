package com.android.systemui.statusbar.policy;

import android.app.ActivityManager;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.hardware.input.InputManager;
import android.media.AudioManager;

import android.os.AsyncTask;
import android.os.Bundle;
import android.os.Debug;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View.OnClickListener;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.widget.ImageView;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.Dependency;

import com.android.systemui.plugins.statusbar.phone.NavBarButtonProvider.ButtonInterface;

public class KeyButtonView extends ImageView implements ButtonInterface {
    private static final boolean DEBUG;
    private AudioManager mAudioManager;
    private final Runnable mCheckLongPress;
    private int mCode;
    private int mContentDescriptionRes;
    private long mDownTime;
    private boolean mForceActionChecked;
    private boolean mForceActionHandled;
    private boolean mForcePressed;
    private boolean mForcePressing;
    private boolean mGestureAborted;
    private boolean mLongClicked;
    private final MetricsLogger mMetricsLogger;
    private OnClickListener mOnClickListener;
 //   private final boolean mPlaySounds;
   // private final KeyButtonRipple mRipple;
    private boolean mSupportsLongpress;
    private int mTouchSlop;

    static {
        boolean z = true;

        DEBUG = z;
    }

    public KeyButtonView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public KeyButtonView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs);
        this.mSupportsLongpress = true;
        this.mMetricsLogger = (MetricsLogger) Dependency.get(MetricsLogger.class);
        this.mCheckLongPress = new Runnable() {
            public void run() {
                if (!KeyButtonView.this.isPressed()) {
                    return;
                }
                if (KeyButtonView.this.isLongClickable()) {
                    KeyButtonView.this.performLongClick();
                    KeyButtonView.this.mLongClicked = true;
                } else if (KeyButtonView.this.mSupportsLongpress) {
                    KeyButtonView.this.sendEvent(0, 128);
                    KeyButtonView.this.sendAccessibilityEvent(2);
                    KeyButtonView.this.mLongClicked = true;
                }
            }
        };

        setClickable(true);
        this.mTouchSlop = ViewConfiguration.get(context).getScaledTouchSlop();
        this.mAudioManager = (AudioManager) context.getSystemService("audio");

    }

    public void setCode(int code) {
        this.mCode = code;
    }

    public void setOnClickListener(OnClickListener onClickListener) {
        super.setOnClickListener(onClickListener);
        this.mOnClickListener = onClickListener;
    }

    public void loadAsync(Icon icon) {

    }

    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
    }

    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(info);
        if (this.mCode != 0) {
            info.addAction(new AccessibilityAction(16, null));
            if (this.mSupportsLongpress || isLongClickable()) {
                info.addAction(new AccessibilityAction(32, null));
            }
        }
    }

    protected void onWindowVisibilityChanged(int visibility) {
        super.onWindowVisibilityChanged(visibility);
        if (visibility != 0) {
            jumpDrawablesToCurrentState();
        }
    }

    public boolean performAccessibilityActionInternal(int action, Bundle arguments) {
        if (action == 16 && this.mCode != 0) {
            sendEvent(0, 0, SystemClock.uptimeMillis());
            sendEvent(1, 0);
            sendAccessibilityEvent(1);

            return true;
        } else if (action != 32 || this.mCode == 0) {

        } else {
            sendEvent(0, 128);
            sendEvent(1, 0);
            sendAccessibilityEvent(2);
            return true;
        }
        return false;
    }

    public boolean onTouchEvent(MotionEvent ev) {
     //   int i = com.android.systemui.plugins.R.styleable.AppCompatTheme_textAppearanceSmallPopupMenu;
        int action = ev.getAction();
        if (action == 0) {
            this.mGestureAborted = false;
        }
        if (this.mGestureAborted) {
            return false;
        }
        if (DEBUG && action != 2) {
            Log.d("KeyButtonView", "Motion event=" + action);
        }


        return false;
    }

    public void playSoundEffect(int soundConstant) {

    }

    public void sendEvent(int action, int flags) {
        sendEvent(action, flags, SystemClock.uptimeMillis());
    }

    void sendEvent(int action, int flags, long when) {

    }

    public void abortCurrentGesture() {
        setPressed(false);
        this.mGestureAborted = true;
    }

    public void setDarkIntensity(float darkIntensity) {
        if (getDrawable() != null) {
            ((KeyButtonDrawable) getDrawable()).setDarkIntensity(darkIntensity);
            invalidate();
        }
        //this.mRipple.setDarkIntensity(darkIntensity);
    }

    public void setVertical(boolean vertical) {
    }

    public void setCarMode(boolean carMode) {
    }
}
