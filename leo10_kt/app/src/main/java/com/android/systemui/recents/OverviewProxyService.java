package com.android.systemui.recents;


import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.graphics.Rect;
import android.graphics.Region;
import android.hardware.input.InputManager;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.util.Log;
import android.view.InputMonitor;
import android.view.MotionEvent;
import android.view.accessibility.AccessibilityManager;

import com.android.systemui.Dependency;

import com.android.systemui.Rune;
import com.android.systemui.SysUiServiceProvider;

import com.android.systemui.shared.system.QuickStepContract;

import com.android.systemui.statusbar.phone.NavigationBarFragment;
import com.android.systemui.statusbar.phone.NavigationBarView;

import com.android.systemui.statusbar.phone.StatusBar;

import com.android.systemui.statusbar.phone.StatusBarWindowController;
import com.android.systemui.statusbar.phone.bandaid.ArgumentBuilder;
import com.android.systemui.statusbar.phone.bandaid.ArgumentBuilder.Keys;
import com.android.systemui.statusbar.phone.store.EventType;
import com.android.systemui.statusbar.phone.store.NavBarStore;
import com.android.systemui.statusbar.policy.CallbackController;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public class OverviewProxyService implements CallbackController<OverviewProxyService.OverviewProxyListener> {
    private Region mActiveNavBarRegion;
    private boolean mBound;
    /* access modifiers changed from: private */
    public int mConnectionBackoffAttempts;
    /* access modifiers changed from: private|final */
    public final List<OverviewProxyListener> mConnectionCallbacks = new ArrayList();

    /* access modifiers changed from: private|final */
    public final Context mContext=null;
    /* access modifiers changed from: private */
    public int mCurrentBoundedUserId = -1;
    /* access modifiers changed from: private|final */


    /* access modifiers changed from: private|final */

    /* access modifiers changed from: private|final */
    public final Handler mHandler=null;
    private boolean mIsEnabled;
    private final BroadcastReceiver mLauncherStateChangedReceiver = new BroadcastReceiver() {

        @Override
        public void onReceive(Context context, Intent intent) {

        }
    };
    /* access modifiers changed from: private */
    public float mNavBarButtonAlpha;

    private int mNavBarMode = 0;
    /* access modifiers changed from: private */
    public NavBarStore mNavBarStore;
    /* access modifiers changed from: private */

    private final ServiceConnection mOverviewServiceConnection = new ServiceConnection() {
        public void onBindingDied(ComponentName componentName) {

        }

        public void onNullBinding(ComponentName componentName) {

        }

        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {

        }

        public void onServiceDisconnected(ComponentName componentName) {
            OverviewProxyService.this.mCurrentBoundedUserId = -1;
        }
    };
    /* access modifiers changed from: private|final */

    /* access modifiers changed from: private */
    public boolean mPluginConnected = false;
    private final Intent mQuickStepIntent=null;
    private final ComponentName mRecentsComponentName=null;
    /* access modifiers changed from: private */
    public MotionEvent mStatusBarGestureDownEvent;
    private final StatusBarWindowController mStatusBarWinController=null;

    /* access modifiers changed from: private */
    public boolean mSupportsRoundedCornersOnWindows;
    /* access modifiers changed from: private */

    private int mSysUiStateFlags;
    /* access modifiers changed from: private */
    public float mWindowCornerRadius;

    public interface OverviewProxyListener {

    }




    /* access modifiers changed from: private */
    public void disconnectFromLauncherService() {

    }

    /* access modifiers changed from: private */
    public void disconnectPlugin() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("disconnectPlugin : mPluginConnected=");
        stringBuilder.append(this.mPluginConnected);
        String str = "OverviewProxyService";
        Log.d(str, stringBuilder.toString());
        if (this.mPluginConnected) {
            Log.d(str, "disconnectPlugin");
            this.mPluginConnected = false;

            startConnectionToCurrentUser();
        }
    }

    /* access modifiers changed from: private */
    public void dispatchNavButtonBounds() {

    }

    /* access modifiers changed from: private */
    public void internalConnectToCurrentUser() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("internalConnectToCurrentUser : mPluginConnected=");
        stringBuilder.append(this.mPluginConnected);
        String str = "OverviewProxyService";
        Log.d(str, stringBuilder.toString());
        if (!this.mPluginConnected) {
            disconnectFromLauncherService();

        }
    }



    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.println("OverviewProxyService state:");
        printWriter.print("  recentsComponentName=");
        printWriter.println(this.mRecentsComponentName);
        printWriter.print("  isConnected=");

        printWriter.print("  isCurrentUserSetup=");

        printWriter.print("  connectionBackoffAttempts=");
        printWriter.println(this.mConnectionBackoffAttempts);
        printWriter.print("  quickStepIntent=");
        printWriter.println(this.mQuickStepIntent);
        printWriter.print("  quickStepIntentResolved=");
        printWriter.println(isEnabled());
        printWriter.print("  mSysUiStateFlags=");
        printWriter.println(this.mSysUiStateFlags);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("    ");
        stringBuilder.append(QuickStepContract.getSystemUiStateString(this.mSysUiStateFlags));
        printWriter.println(stringBuilder.toString());
        printWriter.print("    backGestureDisabled=");
        printWriter.println(QuickStepContract.isBackGestureDisabled(this.mSysUiStateFlags));
        printWriter.print("    assistantGestureDisabled=");
        printWriter.println(QuickStepContract.isAssistantGestureDisabled(this.mSysUiStateFlags));
        printWriter.print("  mPluginConnected=");
        printWriter.println(this.mPluginConnected);
    }


    public int getSystemUiStateFlags() {
        return this.mSysUiStateFlags;
    }

    public boolean isEnabled() {
        return this.mIsEnabled;
    }

    public /* synthetic */ void lambda$cleanupAfterDeath$1$OverviewProxyService() {
        StatusBar statusBar = (StatusBar) SysUiServiceProvider.getComponent(this.mContext, StatusBar.class);

    }

    public /* synthetic */ void lambda$new$0$OverviewProxyService() {
        Log.w("OverviewProxyService", "Binder supposed established connection but actual connection to service timed out, trying again");

    }

    public void notifyBackAction(boolean z, int i, int i2, boolean z2, boolean z3) {

    }

    public void notifyPayInfo(boolean z, int i) {

    }

    public void onActiveNavBarRegionChanges(Region region) {
        this.mActiveNavBarRegion = region;
        dispatchNavButtonBounds();
    }

    public void onNavigationModeChanged(int i) {
        this.mNavBarMode = i;
    }

    public void registerPluginListener() {

    }

    @Override
    public void addCallback(OverviewProxyListener listener) {

    }

    public void removeCallback(OverviewProxyListener overviewProxyListener) {
        this.mConnectionCallbacks.remove(overviewProxyListener);
    }

    public void setSystemUiStateFlag(int i, boolean z, int i2) {
        if (i2 == 0) {
            i2 = this.mSysUiStateFlags;
            i = z ? i | i2 : (~i) & i2;
            if (this.mSysUiStateFlags != i) {
                this.mSysUiStateFlags = i;

            }
        }
    }

    public boolean shouldShowSwipeUpUI() {
        return isEnabled() && !QuickStepContract.isLegacyMode(this.mNavBarMode);
    }

    public void startConnectionToCurrentUser() {
        if (this.mHandler.getLooper() != Looper.myLooper()) {

        } else {
            internalConnectToCurrentUser();
        }
    }
}
