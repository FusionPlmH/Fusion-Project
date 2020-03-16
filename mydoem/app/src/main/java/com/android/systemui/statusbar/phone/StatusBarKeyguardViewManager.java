package com.android.systemui.statusbar.phone;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Bundle;
import android.os.SystemClock;
import android.os.Trace;
import android.view.KeyEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewRootImpl;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.WindowManagerGlobal;
import com.android.internal.widget.LockPatternUtils;

import com.android.keyguard.KeyguardUpdateMonitor;

import com.android.keyguard.ViewMediatorCallback;

import com.android.systemui.Dependency;
import com.android.systemui.Rune;

import java.util.ArrayList;

public class StatusBarKeyguardViewManager  {
    private boolean mShowing;

    public boolean isShowing() {
        return this.mShowing;
    }

}
