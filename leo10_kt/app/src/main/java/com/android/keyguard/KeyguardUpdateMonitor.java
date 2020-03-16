package com.android.keyguard;

import android.app.trust.TrustManager.TrustListener;
import android.content.ComponentName;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

import com.android.internal.widget.LockPatternUtils;

public class KeyguardUpdateMonitor implements TrustListener {


    private static final ComponentName FALLBACK_HOME_COMPONENT = new ComponentName("com.android.settings", "com.android.settings.FallbackHome");

    private static int sCurrentUser;

    private static KeyguardUpdateMonitor sInstance;
    final int userId = KeyguardUpdateMonitor.getCurrentUser();

    public KeyguardUpdateMonitor(Context context) {
    }
    public boolean getUserHasTrust(int i) {

        return false;
    }
    public boolean isDeviceInteractive() {
        return true;
    }


    public static KeyguardUpdateMonitor getInstance(Context context) {
        if (sInstance == null) {
            sInstance = new KeyguardUpdateMonitor(context);
        }
        return sInstance;
    }

  Context  mContext;

    public KeyguardUpdateMonitor(Context mContext, LockPatternUtils.StrongAuthTracker mStrongAuthTracker) {
        mContext = mContext;
        this.mStrongAuthTracker = mStrongAuthTracker;
    }

    @Override
    public void onTrustChanged(boolean b, int i, int i1) {

    }
    public static synchronized int getCurrentUser() {
        int i;
        synchronized (KeyguardUpdateMonitor.class) {
            i = sCurrentUser;
        }
        return i;
    }


    @Override
    public void onTrustManagedChanged(boolean b, int i) {

    }
    public void getLeo() {

    }
    private View mIrisView;

    public void deliverIrisRootView(ViewGroup viewGroup) {

    }
    private LockPatternUtils.StrongAuthTracker mStrongAuthTracker;




}
