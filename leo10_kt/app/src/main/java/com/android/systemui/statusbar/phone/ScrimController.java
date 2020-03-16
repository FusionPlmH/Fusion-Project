package com.android.systemui.statusbar.phone;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.app.AlarmManager;
import android.app.WallpaperManager;
import android.content.Context;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Trace;
import android.util.Log;
import android.util.MathUtils;
import android.view.View;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;

import com.android.systemui.Rune;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.function.Consumer;

public class ScrimController  {
    private static final boolean DEBUG = Log.isLoggable("ScrimController", 3);
    public static final Interpolator KEYGUARD_FADE_OUT_INTERPOLATOR = new PathInterpolator(0.0f, 0.0f, 0.7f, 1.0f);
    protected boolean mAnimateChange;
    private long mAnimationDelay;
    protected long mAnimationDuration = -1;
    private boolean mBlankScreen;
    private Runnable mBlankingTransitionRunnable;
    //private GradientColors mBouncerColors;

}
