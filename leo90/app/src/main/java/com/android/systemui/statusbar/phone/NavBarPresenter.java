package com.android.systemui.statusbar.phone;

import android.content.Context;


public class NavBarPresenter {
    private boolean mAllKeyDisabled;

    private Context mContext;


    public boolean mImmersiveToastShowing;
    private boolean mIsKeyguard;
    private boolean mIsNightModeOn;
    private boolean mIsThemeDefault;
    private long mLastPinButtonClickTime;

    public boolean isNightModeOn() {
        return this.mIsNightModeOn;
    }


}
