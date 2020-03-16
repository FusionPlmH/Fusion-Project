package com.android.keyguard;

import android.app.trust.TrustManager.TrustListener;
import android.content.ComponentName;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;

import com.android.internal.widget.LockPatternUtils;
import com.android.systemui.Dependency;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHideIrisView;

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

    public static synchronized int getCurrentUser() {
        int i;
        synchronized (KeyguardUpdateMonitor.class) {
            i = sCurrentUser;
        }
        return i;
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

    @Override
    public void onTrustManagedChanged(boolean b, int i) {

    }
    public void getLeo() {
        LeoSettings(mContext);
    }
    private View mIrisView;

    public void deliverIrisRootView(ViewGroup viewGroup) {
        getLeo();
        if ( setLeoUesrHideIrisView) {
            this.mIrisView = null;
        } else if (viewGroup == null) {
            if (this.mIrisView != null) {
                this.mIrisView = null;
            }
        } else {
            int childCount = viewGroup.getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (viewGroup.getChildAt(i).getId() == 2131362423) {
                    this.mIrisView = viewGroup.getChildAt(i);
                    return;
                }
            }
        }
    }
    private LockPatternUtils.StrongAuthTracker mStrongAuthTracker;




}
