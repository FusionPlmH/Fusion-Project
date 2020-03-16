package com.android.systemui.servicebox;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.LayoutTransition;
import android.app.NotificationManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManager.DisplayListener;
import android.media.session.PlaybackState;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.os.PowerManager;
import android.os.SystemClock;
import android.os.UserHandle;
import android.os.UserManager;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnAttachStateChangeListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManager;
import android.widget.FrameLayout;

import com.android.systemui.servicebox.pages.clock.ExternalClockProvider;
import com.android.systemui.servicebox.pages.clock.ExternalClockProvider.ClockCallback;

import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardAodClockWidget;


public class KeyguardServiceBoxContainer extends FrameLayout  {
Context mContext;
    private ClockCallback mClockCallback;

    public KeyguardServiceBoxContainer(@NonNull Context context) {
        super(context);
    }
    public void setLeoKeyguardClockRefresh() {
        ExternalClockProvider.getInstance(this.mContext).unregisterClockChangedCallback(this.mClockCallback);
        if (setLeoUesrKeyguardAodClockWidget) {
            ExternalClockProvider.getInstance(this.mContext).registerClockChangedCallback(this.mClockCallback);
        }else {
            reissueAllPages();
        }

    }
    public void reissueAllPages() {

    }


}
