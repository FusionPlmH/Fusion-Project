package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Bundle;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.View.AccessibilityDelegate;
import android.view.ViewGroup;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.WindowInsets;


public class KeyguardBottomAreaShortcutView extends KeyguardBottomAreaView {
    private int mCurrentOrientation;
    private int mCutoutPadding;
    /* access modifiers changed from: private */
    public Display mDisplay;
    private DisplayMetrics mDisplayMetrics;
    /* access modifiers changed from: private */
    public boolean mEasyMode;
    /* access modifiers changed from: private */
    public boolean mIsAllShortcutDisabled;
    private boolean mIsDeskMode;
    /* access modifiers changed from: private */
    public boolean mIsFloatingShortcut;
    /* access modifiers changed from: private */
    public boolean mIsUserUnlocked;



    public KeyguardBottomAreaShortcutView(Context context) {
        this(context, null);
    }

    public KeyguardBottomAreaShortcutView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyguardBottomAreaShortcutView(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    public KeyguardBottomAreaShortcutView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);

    }


}
