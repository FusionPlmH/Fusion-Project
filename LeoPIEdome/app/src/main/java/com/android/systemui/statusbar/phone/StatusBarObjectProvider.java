package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.os.Handler;

import com.android.systemui.statusbar.NotificationShelf;


public interface StatusBarObjectProvider {
    void animateCollapsePanels();



    int getIndicatorBgColor();

    KeyguardStatusBarView getKeyguardStatusBarView();

    Handler getMainHanlder();


    NotificationPanelView getNotificationPanelView();



    NotificationShelf getNotificationShelf();



    PhoneStatusBarView getPhoneStatusBarView();



    Context getStatusBarContext();

    int getStatusBarHeight();

    boolean isExpandedVisible();

    boolean isShadeLockedState();

    void makeExpandedInvisibleForKnox();

    void updateNavigationBar(boolean z);

    void updateNotificationMenuRow();
}
