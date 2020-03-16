package com.android.server.statusbar;

import android.app.ActivityThread;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.RemoteException;
import android.os.ResultReceiver;
import android.os.ServiceManager;

import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Slog;
import android.view.KeyEvent;
import android.widget.RemoteViews;
import com.android.internal.statusbar.IStatusBar;
import com.android.internal.statusbar.IStatusBarService.Stub;
import com.android.internal.statusbar.NotificationVisibility;
import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.util.DumpUtils;
import com.android.server.LocalServices;

import com.android.server.statusbar.StatusBarManagerInternal.GlobalActionsListener;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

public class StatusBarManagerService extends Stub {
    private static final boolean SPEW = false;
    private static final String TAG = "StatusBarManagerService";
    private volatile IStatusBar mBar;

    private int mDisabled1 = 0;
    private int mDisabled2 = 0;
    private final Rect mDockedStackBounds = new Rect();
    private int mDockedStackSysUiVisibility;
   // private EdgeManagerInternal mEdgeInternal = null;
    private final Rect mFullscreenStackBounds = new Rect();
    private int mFullscreenStackSysUiVisibility;
    private GlobalActionsListener mGlobalActionListener;
    private Handler mHandler = new Handler();
    private ArrayMap<String, StatusBarIcon> mIcons = new ArrayMap();
    private int mImeBackDisposition;
    private IBinder mImeToken = null;
    private int mImeWindowVis = 0;
    private final StatusBarManagerInternal mInternalService = new StatusBarManagerInternal() {
        private boolean mNotificationLightOn;

        public void appTransitionCancelled() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionCancelled();
                } catch (RemoteException e) {
                }
            }
        }

        public void appTransitionFinished() {

            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionFinished();
                } catch (RemoteException e) {
                }
            }
        }

        public void appTransitionPending() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionPending();
                } catch (RemoteException e) {
                }
            }
        }

        public void appTransitionStarting(long j, long j2) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.appTransitionStarting(j, j2);
                } catch (RemoteException e) {
                }
            }
        }

        public void cancelPreloadRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.cancelPreloadRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        public void dismissKeyboardShortcutsMenu() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.dismissKeyboardShortcutsMenu();
                } catch (RemoteException e) {
                }
            }
        }

        public void hideRecentApps(boolean z, boolean z2) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.hideRecentApps(z, z2);
                } catch (RemoteException e) {
                }
            }
        }

        public void onCameraLaunchGestureDetected(int i) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.onCameraLaunchGestureDetected(i);
                } catch (RemoteException e) {
                }
            }
        }

        public void preloadRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.preloadRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        @Override
        public void setCurrentUser(int i) {

        }

        @Override
        public void setGlobalActionsListener(GlobalActionsListener globalActionsListener) {

        }

        @Override
        public void setSystemUiVisibility(int i, int i2, int i3, int i4, Rect rect, Rect rect2, String str) {

        }

        @Override
        public void setWindowState(int i, int i2) {

        }

        @Override
        public void showAssistDisclosure() {

        }

        @Override
        public void showGlobalActions() {

        }

        @Override
        public void showPictureInPictureMenu() {

        }

        @Override
        public void showRecentApps(boolean z, boolean z2) {

        }

        @Override
        public void showScreenPinningRequest(int i) {

        }

        @Override
        public void showSnapWindowGuideView(int i, String str) {

        }

        @Override
        public void startAssist(Bundle bundle) {

        }

        @Override
        public void toggleKeyboardShortcutsMenu(int i) {

        }

        @Override
        public void toggleRecentApps() {

        }

        @Override
        public void toggleSplitScreen() {

        }

        @Override
        public void topAppWindowChanged(boolean z) {

        }

    };

    @Override
    public void expandNotificationsPanel() throws RemoteException {

    }

    @Override
    public void collapsePanels() throws RemoteException {

    }

    @Override
    public void disable(int i, IBinder iBinder, String s) throws RemoteException {

    }

    @Override
    public void disableForUser(int i, IBinder iBinder, String s, int i1) throws RemoteException {

    }

    @Override
    public void disable2(int i, IBinder iBinder, String s) throws RemoteException {

    }

    @Override
    public void disable2ForUser(int i, IBinder iBinder, String s, int i1) throws RemoteException {

    }

    @Override
    public void setIcon(String s, String s1, int i, int i1, String s2) throws RemoteException {

    }

    @Override
    public void setIconVisibility(String s, boolean b) throws RemoteException {

    }

    @Override
    public void removeIcon(String s) throws RemoteException {

    }

    @Override
    public void setImeWindowStatus(IBinder iBinder, int i, int i1, boolean b) throws RemoteException {

    }

    @Override
    public void expandSettingsPanel(String s) throws RemoteException {

    }

    @Override
    public void registerStatusBar(IStatusBar iStatusBar, List<String> list, List<StatusBarIcon> list1, int[] ints, List<IBinder> list2, Rect rect, Rect rect1) throws RemoteException {

    }

    @Override
    public void onPanelRevealed(boolean b, int i) throws RemoteException {

    }

    @Override
    public void onPanelHidden() throws RemoteException {

    }

    @Override
    public void clearNotificationEffects() throws RemoteException {

    }

    @Override
    public void onNotificationClick(String s) throws RemoteException {

    }

    @Override
    public void onNotificationActionClick(String s, int i) throws RemoteException {

    }

    @Override
    public void onNotificationError(String s, String s1, int i, int i1, int i2, String s2, int i3) throws RemoteException {

    }

    @Override
    public void onClearAllNotifications(int i) throws RemoteException {

    }

    @Override
    public void onNotificationClear(String s, String s1, int i, int i1) throws RemoteException {

    }

    @Override
    public void onNotificationVisibilityChanged(NotificationVisibility[] notificationVisibilities, NotificationVisibility[] notificationVisibilities1) throws RemoteException {

    }

    @Override
    public void onNotificationExpansionChanged(String s, boolean b, boolean b1) throws RemoteException {

    }

    @Override
    public void setSystemUiVisibility(int i, int i1, String s) throws RemoteException {

    }

    @Override
    public void addTile(ComponentName componentName) throws RemoteException {

    }

    @Override
    public void remTile(ComponentName componentName) throws RemoteException {

    }

    @Override
    public void clickTile(ComponentName componentName) throws RemoteException {

    }

    @Override
    public void handleSystemNavigationKey(int i) throws RemoteException {

    }


}
