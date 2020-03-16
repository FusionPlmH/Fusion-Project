package com.android.server.statusbar;

import android.app.ActivityThread;
import android.app.Notification.Action;
import android.content.ComponentName;
import android.content.Context;
import android.graphics.Rect;

import android.hardware.display.DisplayManager;
import android.hardware.display.DisplayManager.DisplayListener;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.IBinder.DeathRecipient;
import android.os.RemoteException;
import android.os.ResultReceiver;

import android.os.UserHandle;
import android.service.notification.StatusBarNotification;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.util.Pair;
import android.util.Slog;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.widget.RemoteViews;
import com.android.internal.annotations.GuardedBy;
import com.android.internal.statusbar.IStatusBar;
import com.android.internal.statusbar.IStatusBarService.Stub;
import com.android.internal.statusbar.NotificationVisibility;

import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.util.DumpUtils;
import com.android.server.LocalServices;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;
import java.util.Map.Entry;
import java.util.Set;

public class StatusBarManagerService extends Stub implements DisplayListener {
    private static final boolean SPEW = false;
    private static final String TAG = "StatusBarManagerService";
    /* access modifiers changed from: private|volatile */
    public volatile IStatusBar mBar;
    /* access modifiers changed from: private|volatile */
    public volatile ArrayMap<Integer, IStatusBar> mBarMap = new ArrayMap();
    /* access modifiers changed from: private|final */
    public final Context mContext=null;
    /* access modifiers changed from: private */
    public int mCurrentUserId;

    ArrayList<String> mDisableHistoryList = new ArrayList();
    /* access modifiers changed from: private|final */
    public final ArrayList<DisableRecord> mDisableRecords = new ArrayList();
    /* access modifiers changed from: private */
    public SparseArray<UiState> mDisplayUiState = new SparseArray();
    private SparseArray<UiState> mDisplayUiStateDex = new SparseArray();

    /* access modifiers changed from: private */

    private Handler mHandler = new Handler();
    private ArrayMap<String, StatusBarIcon> mIcons = new ArrayMap();
    private final StatusBarManagerInternal mInternalService = new StatusBarManagerInternal() {
        private boolean mNotificationLightOn;

        public void appTransitionCancelled(int i) {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 == null) {
            }

        }

        public void appTransitionFinished(int i) {
            StatusBarManagerService.this.enforceStatusBarService();
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 == null) {
            }
            if (access$400 != null) {

            }
        }

        public void appTransitionPending(int i) {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 == null) {
            }
            if (access$400 != null) {

            }
        }

        public void appTransitionStarting(int i, long j, long j2) {
            if (StatusBarManagerService.this.mBar != null) {

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
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 == null) {
            }
            if (access$400 != null) {
                try {
                    StatusBarManagerService.this.mBar.dismissKeyboardShortcutsMenu();
                } catch (RemoteException e) {
                }
            }
        }

        public void hideRecentApps(boolean z, boolean z2) {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 == null) {
            }
            if (access$400 != null) {
                try {
                    StatusBarManagerService.this.mBar.hideRecentApps(z, z2);
                } catch (RemoteException e) {
                }
            }
        }

        public void hideRecentAppsFromType(boolean z, boolean z2, int i) {
            if (StatusBarManagerService.this.mBarMap.get(Integer.valueOf(i)) != null) {
                try {
                    ArrayMap access$700 = StatusBarManagerService.this.mBarMap;
                    Integer valueOf = Integer.valueOf(i);
                    if (valueOf != null) {
                    }
                    ((IStatusBar) access$700.get(valueOf)).hideRecentApps(z, z2);
                } catch (RemoteException e) {
                    Slog.i(StatusBarManagerService.TAG, "RemoteException for HIDE_RECENT_APPS");
                }
            }
        }

        public void onCameraLaunchGestureDetected(int i) {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 == null) {
            }
            if (access$400 != null) {
                try {
                    StatusBarManagerService.this.mBar.onCameraLaunchGestureDetected(i);
                } catch (RemoteException e) {
                }
            }
        }

        public void onDisplayReady(int i) {
            if (StatusBarManagerService.this.mBar != null) {

            }
        }

        public void onProposedRotationChanged(int i, boolean z) {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 != null) {
            }

        }

        public void onRecentsAnimationStateChanged(boolean z) {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 == null) {
            }
            if (access$400 != null) {

            }
        }

        public void preloadRecentApps() {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 != null) {
            }
            if (access$400 != null) {
                try {
                    access$400 = StatusBarManagerService.this.mBar;
                    if (access$400 != null) {
                    }
                    access$400.preloadRecentApps();
                } catch (RemoteException e) {
                }
            }
        }

        public void setCurrentUser(int i) {
            StatusBarManagerService.this.mCurrentUserId = i;
        }


        public void setSystemUiVisibility(int i, int i2, int i3, int i4, int i5, Rect rect, Rect rect2, boolean z, String str) {
            StatusBarManagerService.this.setSystemUiVisibility(i, i2, i3, i4, i5, rect, rect2, z, str, 0);
        }

        public void setSystemUiVisibilityToType(int i, int i2, int i3, int i4, int i5, Rect rect, Rect rect2, boolean z, String str, int i6) {
            StatusBarManagerService.this.setSystemUiVisibility(i, i2, i3, i4, i5, rect, rect2, z, str, i6);
        }

        public void setTopAppHidesStatusBar(boolean z) {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 != null) {
            }

        }

        public void setWindowState(int i, int i2, int i3) {

        }

        public void showAssistDisclosure() {
            IStatusBar access$400 = StatusBarManagerService.this.mBar;
            if (access$400 != null) {
            }
            if (access$400 != null) {
                try {
                    StatusBarManagerService.this.mBar.showAssistDisclosure();
                } catch (RemoteException e) {
                }
            }
        }

        public void showChargingAnimation(int i) {

        }

        public void showPictureInPictureMenu() {

        }

        public void showRecentApps(boolean z) {

        }

        public void showRecentAppsToType(boolean z, int i) {

        }

        public void showScreenPinningRequest(int i) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    IStatusBar access$400 = StatusBarManagerService.this.mBar;
                    if (access$400 != null) {
                    }
                    access$400.showScreenPinningRequest(i);
                } catch (RemoteException e) {
                }
            }
        }

        public void showScreenPinningRequestToType(int i, int i2) {
            if (StatusBarManagerService.this.mBarMap.get(Integer.valueOf(i2)) != null) {
                try {
                    ArrayMap access$700 = StatusBarManagerService.this.mBarMap;
                    if (access$700 == null) {
                    }
                    ((IStatusBar) access$700.get(Integer.valueOf(i2))).showScreenPinningRequest(i);
                } catch (RemoteException e) {
                }
            }
        }

        public boolean showShutdownUi(boolean z, String str) {

            return false;
        }

        public void startAssist(Bundle bundle) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.startAssist(bundle);
                } catch (RemoteException e) {
                }
            }
        }

        public void toggleKeyboardShortcutsMenu(int i) {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    IStatusBar access$400 = StatusBarManagerService.this.mBar;
                    if (access$400 != null) {
                    }
                    access$400.toggleKeyboardShortcutsMenu(i);
                } catch (RemoteException e) {
                }
            }
        }

        public void toggleKeyboardShortcutsMenuToType(int i, int i2) {
            if (StatusBarManagerService.this.mBarMap.get(Integer.valueOf(i2)) != null) {
                try {
                    ArrayMap access$700 = StatusBarManagerService.this.mBarMap;
                    if (access$700 == null) {
                    }
                    ((IStatusBar) access$700.get(Integer.valueOf(i2))).toggleKeyboardShortcutsMenu(i);
                } catch (RemoteException e) {
                }
            }
        }

        public void toggleRecentApps() {
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    IStatusBar access$400 = StatusBarManagerService.this.mBar;
                    if (access$400 == null) {
                    }
                    access$400.toggleRecentApps();
                    for (Object next : StatusBarManagerService.this.mBarMap.entrySet()) {
                        if (next != null) {
                        }
                        Entry entry = (Entry) next;
                        if (((Integer) entry.getKey()).intValue() != 0) {
                            Object value = entry.getValue();
                            if (value != null) {
                            }
                            IStatusBar iStatusBar = (IStatusBar) value;
                            if (iStatusBar != null) {
                                iStatusBar.hideRecentApps(false, true);
                            }
                        }
                    }
                } catch (RemoteException e) {
                }
            }
        }

        public void toggleRecentAppsToType(int i) {
            ArrayMap access$700 = StatusBarManagerService.this.mBarMap;
            Integer valueOf = Integer.valueOf(i);
            if (valueOf != null) {
            }
            Object obj = access$700.get(valueOf);
            if (obj == null) {
            }
            if (obj != null) {
                try {
                    obj = StatusBarManagerService.this.mBarMap.get(Integer.valueOf(i));
                    if (obj != null) {
                    }
                    ((IStatusBar) obj).toggleRecentApps();
                    access$700 = StatusBarManagerService.this.mBarMap;
                    if (access$700 != null) {
                    }
                    Set<Entry> entrySet = access$700.entrySet();
                    if (entrySet == null) {
                    }
                    for (Entry entry : entrySet) {
                        Object key = entry.getKey();
                        if (key != null) {
                        }
                        if (((Integer) key).intValue() != i) {
                            IStatusBar iStatusBar = (IStatusBar) entry.getValue();
                            if (iStatusBar != null) {
                                iStatusBar.hideRecentApps(false, true);
                            }
                        }
                    }
                } catch (RemoteException e) {
                }
            }
        }

        public void toggleSplitScreen() {
            StatusBarManagerService.this.enforceStatusBarService();
            if (StatusBarManagerService.this.mBar != null) {
                try {
                    StatusBarManagerService.this.mBar.toggleSplitScreen();
                } catch (RemoteException e) {
                }
            }
        }

        public void topAppWindowChanged(int i, boolean z) {
            StatusBarManagerService.this.topAppWindowChanged(i, z);
        }

        public void updateRestartButton(int i, boolean z, boolean z2) {

        }
    };
    /* access modifiers changed from: private|final */
    public final Object mLock = new Object();
    /* access modifiers changed from: private */

    private boolean mPanelExpandState = false;
    private ArrayMap<Integer, Boolean> mPanelExpandStateMap = new ArrayMap();
    private ArrayMap<Integer, Boolean> mQsPanelExpandStateMap = new ArrayMap();

    private IBinder mSysUiVisToken = new Binder();


    private class DisableRecord implements DeathRecipient {
        int barType;
        String pkg;
        IBinder token;
        int userId;
        int what1;
        int what2;

        public DisableRecord(int i, IBinder iBinder, int i2) {
            this.userId = i;
            this.token = iBinder;
            this.barType = i2;
            try {
                iBinder.linkToDeath(this, 0);
            } catch (RemoteException e) {
            }
        }

        public void binderDied() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("binder died for pkg=");
            stringBuilder.append(this.pkg);
            Slog.i(StatusBarManagerService.TAG, stringBuilder.toString());
            StatusBarManagerService.this.disableForUserToType(0, this.token, this.pkg, this.userId, this.barType);
            StatusBarManagerService.this.disable2ForUserToType(0, this.token, this.pkg, this.userId, this.barType);
            this.token.unlinkToDeath(this, 0);
        }

        public int getFlags(int i) {
            if (i == 1) {
                return this.what1;
            }
            if (i == 2) {
                return this.what2;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Can't get unsupported disable flag ");
            stringBuilder.append(i);
            String stringBuilder2 = stringBuilder.toString();
            if (stringBuilder2 == null) {
            }
            Slog.w(StatusBarManagerService.TAG, stringBuilder2);
            return 0;
        }

        public boolean isEmpty() {
            return this.what1 == 0 && this.what2 == 0;
        }

        public void setFlags(int i, int i2, String str) {
            if (i2 == 1) {
                this.what1 = i;
            } else if (i2 != 2) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("Can't set unsupported disable flag ");
                stringBuilder.append(i2);
                stringBuilder.append(": 0x");
                String toHexString = Integer.toHexString(i);
                if (toHexString != null) {
                }
                stringBuilder.append(toHexString);
                Slog.w(StatusBarManagerService.TAG, stringBuilder.toString());
            } else {
                this.what2 = i;
            }
            this.pkg = str;
        }

        public String toString() {
            Object[] objArr = new Object[6];
            objArr[0] = Integer.valueOf(this.barType);
            objArr[1] = Integer.valueOf(this.userId);
            Integer valueOf = Integer.valueOf(this.what1);
            if (valueOf == null) {
            }
            objArr[2] = valueOf;
            valueOf = Integer.valueOf(this.what2);
            if (valueOf != null) {
            }
            objArr[3] = valueOf;
            objArr[4] = this.pkg;
            objArr[5] = this.token;
            String format = String.format("barType=%d userId=%d what1=0x%08X what2=0x%08X pkg=%s token=%s", objArr);
            if (format == null) {
            }
            return format;
        }
    }

    private class UiState {
        /* access modifiers changed from: private */
        public int mDisabled1;
        private int mDisabled2;
        /* access modifiers changed from: private|final */
        public final Rect mDockedStackBounds;
        /* access modifiers changed from: private */
        public int mDockedStackSysUiVisibility;
        /* access modifiers changed from: private|final */
        public final Rect mFullscreenStackBounds;
        /* access modifiers changed from: private */
        public int mFullscreenStackSysUiVisibility;
        /* access modifiers changed from: private */
        public int mImeBackDisposition;
        /* access modifiers changed from: private */
        public IBinder mImeToken;
        /* access modifiers changed from: private */
        public int mImeWindowVis;
        /* access modifiers changed from: private */
        public boolean mMenuVisible;
        /* access modifiers changed from: private */
        public boolean mNavbarColorManagedByIme;
        /* access modifiers changed from: private */
        public boolean mShowImeSwitcher;
        /* access modifiers changed from: private */
        public int mSystemUiVisibility;

        private UiState() {
            this.mSystemUiVisibility = 0;
            this.mFullscreenStackSysUiVisibility = 0;
            this.mDockedStackSysUiVisibility = 0;
            this.mFullscreenStackBounds = new Rect();
            this.mDockedStackBounds = new Rect();
            this.mMenuVisible = false;
            this.mDisabled1 = 0;
            this.mDisabled2 = 0;
            this.mImeWindowVis = 0;
            this.mImeBackDisposition = 0;
            this.mShowImeSwitcher = false;
            this.mImeToken = null;
            this.mNavbarColorManagedByIme = false;
        }


        /* access modifiers changed from: private */
        public boolean disableEquals(int i, int i2) {
            return this.mDisabled1 == i && this.mDisabled2 == i2;
        }

        /* access modifiers changed from: private */
        public int getDisabled1() {
            return this.mDisabled1;
        }

        /* access modifiers changed from: private */
        public int getDisabled2() {
            return this.mDisabled2;
        }

        private boolean isMenuVisible() {
            return this.mMenuVisible;
        }

        /* access modifiers changed from: private */
        public void setDisabled(int i, int i2) {
            this.mDisabled1 = i;
            this.mDisabled2 = i2;
        }

        /* access modifiers changed from: private */
        public void setImeWindowState(int i, int i2, boolean z, IBinder iBinder) {
            this.mImeWindowVis = i;
            this.mImeBackDisposition = i2;
            this.mShowImeSwitcher = z;
            this.mImeToken = iBinder;
        }

        /* access modifiers changed from: private */
        public void setMenuVisible(boolean z) {
            this.mMenuVisible = z;
        }

        /* access modifiers changed from: private */
        public void setSystemUiState(int i, int i2, int i3, Rect rect, Rect rect2, boolean z) {
            this.mSystemUiVisibility = i;
            this.mFullscreenStackSysUiVisibility = i2;
            this.mDockedStackSysUiVisibility = i3;
            this.mFullscreenStackBounds.set(rect);
            this.mDockedStackBounds.set(rect2);
            this.mNavbarColorManagedByIme = z;
        }

        /* access modifiers changed from: private */
        public boolean systemUiStateEquals(int i, int i2, int i3, Rect rect, Rect rect2, boolean z) {
            return this.mSystemUiVisibility == i && this.mFullscreenStackSysUiVisibility == i2 && this.mDockedStackSysUiVisibility == i3 && this.mFullscreenStackBounds.equals(rect) && this.mDockedStackBounds.equals(rect2) && this.mNavbarColorManagedByIme == z;
        }
    }

    public StatusBarManagerService(Context context) {

    }

    private void disableLocked(int i, int i2, int i3, IBinder iBinder, String str, int i4, int i5) {
        Object obj;
        manageDisableListLocked(i2, i3, iBinder, str, i4, i5);
        int gatherDisableActionsLocked = gatherDisableActionsLocked(this.mCurrentUserId, 1, i5);
        int gatherDisableActionsLocked2 = gatherDisableActionsLocked(this.mCurrentUserId, 2, i5);
        if (i4 == 1 && str != null && str.contains("systemui")) {
            String str2 = "{ ";
            for (int i6 = 0; i6 < this.mDisableRecords.size(); i6++) {
                Object obj2 = this.mDisableRecords.get(i6);
                if (obj2 != null) {
                }
                DisableRecord disableRecord = (DisableRecord) obj2;
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str2);
                stringBuilder.append("    ([");
                stringBuilder.append(i6);
                stringBuilder.append("] ");
                stringBuilder.append(disableRecord);
                stringBuilder.append("), ");
                str2 = stringBuilder.toString();
            }
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append(str2);
            stringBuilder2.append(" }");
            str2 = stringBuilder2.toString();
            if (str2 != null) {
            }
            UiState uiState = getUiState(i, i5);
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append("disabledlocked (b/113914868): displayId=");
            stringBuilder3.append(i);
            stringBuilder3.append(", net1=");
            stringBuilder3.append(gatherDisableActionsLocked);
            stringBuilder3.append(", mDisabled1=");
            stringBuilder3.append(uiState.mDisabled1);
            stringBuilder3.append(", token=");
            stringBuilder3.append(iBinder);
            stringBuilder3.append(", mDisableRecords=");
            stringBuilder3.append(this.mDisableRecords.size());
            stringBuilder3.append(" => ");
            stringBuilder3.append(str2);
            String stringBuilder4 = stringBuilder3.toString();
            if (stringBuilder4 != null) {
            }
            Log.d(TAG, stringBuilder4);
        }
        UiState uiState2 = getUiState(i, i5);
        if (!uiState2.disableEquals(gatherDisableActionsLocked, gatherDisableActionsLocked2)) {

        }

    }

    private void enforceBiometricDialog() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.MANAGE_BIOMETRIC_DIALOG", TAG);
    }

    private void enforceExpandStatusBar() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.EXPAND_STATUS_BAR", TAG);
    }

    private void enforceStatusBar() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.STATUS_BAR", TAG);
    }

    private void enforceStatusBarOrShell() {
        if (Binder.getCallingUid() != 2000) {
            enforceStatusBar();
        }
    }

    /* access modifiers changed from: private */
    public void enforceStatusBarService() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.STATUS_BAR_SERVICE", TAG);
    }


    private Pair<Integer, DisableRecord> findMatchingRecordLocked(IBinder iBinder, int i, int i2) {
        int size = this.mDisableRecords.size();
        Object obj = null;
        int i3 = 0;
        while (i3 < size) {
            DisableRecord disableRecord = (DisableRecord) this.mDisableRecords.get(i3);
            if (disableRecord.token == iBinder && disableRecord.userId == i && disableRecord.barType == i2) {
                obj = disableRecord;
                break;
            }
            i3++;
        }
        return new Pair(Integer.valueOf(i3), obj);
    }

    private static final Context getUiContext() {
        ActivityThread currentActivityThread = ActivityThread.currentActivityThread();
        if (currentActivityThread == null) {
        }

        return null;
    }

    private UiState getUiState(int i, int i2) {

        return null;
    }


    private void makeDisableHistory(int i, int i2, IBinder iBinder, String str, int i3, int i4) {
        StringBuilder stringBuilder = new StringBuilder();
        String str2 = "";
        if (i3 == 1) {
            if (i2 == 0) {
                stringBuilder.append("CLEAR");
            } else {
                stringBuilder.append((65536 & i2) != 0 ? "EXPAND " : str2);
                stringBuilder.append((131072 & i2) != 0 ? "ICONS " : str2);
                stringBuilder.append((262144 & i2) != 0 ? "ALERTS " : str2);
                stringBuilder.append((524288 & i2) != 0 ? "TICKER " : str2);
                stringBuilder.append((1048576 & i2) != 0 ? "SYSTEM_INFO " : str2);
                stringBuilder.append((4194304 & i2) != 0 ? "BACK " : str2);
                stringBuilder.append((2097152 & i2) != 0 ? "HOME " : str2);

                stringBuilder.append(str2);
            }
        } else if (i3 != 2) {
            return;
        } else {
            if (i2 == 0) {
                stringBuilder.append("CLEAR2");
            } else {
                stringBuilder.append((i2 & 1) != 0 ? "QS " : str2);
                stringBuilder.append((i2 & 2) != 0 ? "SYSTEM_ICONS " : str2);
                stringBuilder.append((i2 & 4) != 0 ? "SHADE " : str2);
                stringBuilder.append((i2 & 8) != 0 ? "GA " : str2);
                if ((i2 & 16) != 0) {
                    str2 = "ROTATE ";
                }
                stringBuilder.append(str2);
            }
        }
        ArrayList arrayList = this.mDisableHistoryList;
        StringBuilder stringBuilder2 = new StringBuilder();
        String makeTime = makeTime();
        if (makeTime == null) {
        }
        stringBuilder2.append(makeTime);
        stringBuilder2.append(" barType=");
        stringBuilder2.append(i4);
        stringBuilder2.append(" pkg=");
        stringBuilder2.append(str);
        stringBuilder2.append(" userId=");
        stringBuilder2.append(i);
        stringBuilder2.append(" what=");
        makeTime = stringBuilder.toString();
        if (makeTime != null) {
        }
        stringBuilder2.append(makeTime);
        stringBuilder2.append(" token=");
        stringBuilder2.append(iBinder);
        arrayList.add(stringBuilder2.toString());
        while (this.mDisableHistoryList.size() > 100) {
            this.mDisableHistoryList.remove(0);
        }
    }

    private String makeTime() {

        return "";
    }

    /* access modifiers changed from: private */
    public void notifyBarAttachChanged() {

    }

    /* access modifiers changed from: private */
    public void setSystemUiVisibility(int i, int i2, int i3, int i4, int i5, Rect rect, Rect rect2, boolean z, String str, int i6) {
        enforceStatusBarService();
        synchronized (this.mLock) {
            updateUiVisibilityLocked(i, i2, i3, i4, i5, rect, rect2, z, i6);
            disableLocked(i, this.mCurrentUserId, i2 & 67043328, this.mSysUiVisToken, str, 1, i6);
        }
    }

    /* access modifiers changed from: private */
    public void topAppWindowChanged(int i, boolean z) {
        enforceStatusBar();
        synchronized (this.mLock) {
            getUiState(i, 0).setMenuVisible(z);

        }
    }

    private void updateUiVisibilityLocked(int i, int i2, int i3, int i4, int i5, Rect rect, Rect rect2, boolean z, int i6) {
        UiState uiState = getUiState(i, i6);
        if (uiState == null) {
        }
        if (!uiState.systemUiStateEquals(i2, i3, i4, rect, rect2, z)) {
            uiState.setSystemUiState(i2, i3, i4, rect, rect2, z);

        }
    }

    public void addTile(ComponentName componentName) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.addQsTile(componentName);
            } catch (RemoteException e) {
            }
        }
    }

    public void clearNotificationEffects() throws RemoteException {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    @Override
    public void onNotificationClick(String s) throws RemoteException {

    }

    @Override
    public void onNotificationActionClick(String s, int i) throws RemoteException {

    }

    public void clickTile(ComponentName componentName) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.clickQsTile(componentName);
            } catch (RemoteException e) {
            }
        }
    }

    @Override
    public void handleSystemNavigationKey(int i) throws RemoteException {

    }

    public void collapsePanels() {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateCollapsePanels();
            } catch (RemoteException e) {
            }
        }
    }

    public void collapsePanelsToType(int i) {
        enforceExpandStatusBar();
        Object obj = this.mBarMap.get(Integer.valueOf(i));
        if (obj != null) {
        }
        if (obj != null) {
            try {
                obj = this.mBarMap.get(Integer.valueOf(i));
                if (obj == null) {
                }
                ((IStatusBar) obj).animateCollapsePanels();
            } catch (RemoteException e) {
            }
        }
    }

    public void disable(int i, IBinder iBinder, String str) {
        disableForUser(i, iBinder, str, this.mCurrentUserId);
    }

    public void disable2(int i, IBinder iBinder, String str) {
        disable2ForUser(i, iBinder, str, this.mCurrentUserId);
    }

    public void disable2ForUser(int i, IBinder iBinder, String str, int i2) {
        enforceStatusBar();
        synchronized (this.mLock) {
            disableLocked(0, i2, i, iBinder, str, 2, 0);
        }
    }

    public void disable2ForUserToType(int i, IBinder iBinder, String str, int i2, int i3) {
        enforceStatusBar();
        synchronized (this.mLock) {
            disableLocked(0, i2, i, iBinder, str, 2, i3);
        }
    }

    public void disable2ToType(int i, IBinder iBinder, String str, int i2) {
        disable2ForUserToType(i, iBinder, str, this.mCurrentUserId, i2);
    }

    public void disableForUser(int i, IBinder iBinder, String str, int i2) {
        enforceStatusBar();
        synchronized (this.mLock) {
            disableLocked(0, i2, i, iBinder, str, 1, 0);
        }
    }

    public void disableForUserToType(int i, IBinder iBinder, String str, int i2, int i3) {
        enforceStatusBar();
        synchronized (this.mLock) {
            disableLocked(0, i2, i, iBinder, str, 1, i3);
        }
    }

    public void disableToType(int i, IBinder iBinder, String str, int i2) {
        disableForUserToType(i, iBinder, str, this.mCurrentUserId, i2);
    }

    /* access modifiers changed from: protected */
    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {


    }

    public void expandNotificationsPanel() {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateExpandNotificationsPanel();
            } catch (RemoteException e) {
            }
        }
    }

    public void expandNotificationsPanelToType(int i) {
        enforceExpandStatusBar();
        ArrayMap arrayMap = this.mBarMap;
        Integer valueOf = Integer.valueOf(i);
        if (valueOf == null) {
        }
        Object obj = arrayMap.get(valueOf);
        if (obj != null) {
        }
        if (obj != null) {
            try {
                arrayMap = this.mBarMap;
                valueOf = Integer.valueOf(i);
                if (valueOf != null) {
                }
                obj = arrayMap.get(valueOf);
                if (obj != null) {
                }
                ((IStatusBar) obj).animateExpandNotificationsPanel();
            } catch (RemoteException e) {
            }
        }
    }

    public void expandSettingsPanel(String str) {
        enforceExpandStatusBar();
        if (this.mBar != null) {
            try {
                this.mBar.animateExpandSettingsPanel(str);
            } catch (RemoteException e) {
            }
        }
    }

    @Override
    public void registerStatusBar(IStatusBar iStatusBar, List<String> list, List<StatusBarIcon> list1, int[] ints, List<IBinder> list2, Rect rect, Rect rect1) throws RemoteException {

    }

    public void expandSettingsPanelToType(String str, int i) {
        enforceExpandStatusBar();
        ArrayMap arrayMap = this.mBarMap;
        Integer valueOf = Integer.valueOf(i);
        if (valueOf == null) {
        }
        if (arrayMap.get(valueOf) != null) {
            try {
                arrayMap = this.mBarMap;
                valueOf = Integer.valueOf(i);
                if (valueOf != null) {
                }
                Object obj = arrayMap.get(valueOf);
                if (obj == null) {
                }
                ((IStatusBar) obj).animateExpandSettingsPanel(str);
            } catch (RemoteException e) {
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public int gatherDisableActionsLocked(int i, int i2, int i3) {
        int size = this.mDisableRecords.size();
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            DisableRecord disableRecord = (DisableRecord) this.mDisableRecords.get(i5);
            if (disableRecord.userId == i && disableRecord.barType == i3) {
                i4 |= disableRecord.getFlags(i2);
            }
        }
        return i4;
    }

    public int[] getDisableFlags(IBinder iBinder, int i) {
        enforceStatusBar();
        int i2 = 0;
        int i3 = 0;
        if (iBinder == null && i == -1) {
            return new int[]{gatherDisableActionsLocked(this.mCurrentUserId, 1, 0), 0};
        }
        synchronized (this.mLock) {
            DisableRecord disableRecord = (DisableRecord) findMatchingRecordLocked(iBinder, i, 0).second;
            if (disableRecord != null) {
                i2 = disableRecord.what1;
                i3 = disableRecord.what2;
            }
        }
        return new int[]{i2, i3};
    }

    public int[] getDisableFlagsToType(IBinder iBinder, int i, int i2) {
        enforceStatusBar();
        int i3 = 0;
        int i4 = 0;
        if (iBinder == null && i == -1) {
            return new int[]{gatherDisableActionsLocked(this.mCurrentUserId, 1, i2), 0};
        }
        synchronized (this.mLock) {
            DisableRecord disableRecord = (DisableRecord) findMatchingRecordLocked(iBinder, i, i2).second;
            if (disableRecord != null) {
                i3 = disableRecord.what1;
                i4 = disableRecord.what2;
            }
        }
        return new int[]{i3, i4};
    }

    public boolean getPanelExpandState() {
        ArrayMap arrayMap = this.mPanelExpandStateMap;
        Integer valueOf = Integer.valueOf(0);
        if (arrayMap.get(valueOf) == null) {
            return false;
        }
        Object obj = this.mPanelExpandStateMap.get(valueOf);
        if (obj != null) {
        }
        return ((Boolean) obj).booleanValue();
    }

    public boolean getPanelExpandStateToType(int i) {
        ArrayMap arrayMap = this.mPanelExpandStateMap;
        Integer valueOf = Integer.valueOf(i);
        if (valueOf == null) {
        }
        if (arrayMap.get(valueOf) == null) {
            return false;
        }
        arrayMap = this.mPanelExpandStateMap;
        valueOf = Integer.valueOf(i);
        if (valueOf != null) {
        }
        Object obj = arrayMap.get(valueOf);
        if (obj != null) {
        }
        return ((Boolean) obj).booleanValue();
    }

    public boolean getQuickSettingPanelExpandState() {
        ArrayMap arrayMap = this.mQsPanelExpandStateMap;
        Integer valueOf = Integer.valueOf(0);
        Object obj = arrayMap.get(valueOf);
        if (obj != null) {
        }
        if (obj == null) {
            return false;
        }
        obj = this.mQsPanelExpandStateMap.get(valueOf);
        if (obj != null) {
        }
        return ((Boolean) obj).booleanValue();
    }

    public boolean getQuickSettingPanelExpandStateToType(int i) {
        if (this.mQsPanelExpandStateMap.get(Integer.valueOf(i)) == null) {
            return false;
        }
        Object obj = this.mQsPanelExpandStateMap.get(Integer.valueOf(i));
        if (obj == null) {
        }
        return ((Boolean) obj).booleanValue();
    }

    public String[] getStatusBarIcons() {
        return null;
    }

    public void handleSystemKey(int i) throws RemoteException {
        enforceExpandStatusBar();
        if (this.mBar != null) {

        }
    }

    public void hideBiometricDialog() {
        enforceBiometricDialog();

    }

    public boolean isFOTAAvailableForGlobalActions() {
        enforceStatusBarService();
        boolean z = false;
        long clearCallingIdentity = Binder.clearCallingIdentity();

        return z;
    }





    public void manageDisableListLocked(int i, int i2, IBinder iBinder, String str, int i3, int i4) {
        Pair findMatchingRecordLocked = findMatchingRecordLocked(iBinder, i, i4);
        int intValue = ((Integer) findMatchingRecordLocked.first).intValue();
        DisableRecord disableRecord = (DisableRecord) findMatchingRecordLocked.second;
        if (!iBinder.isBinderAlive()) {
            if (disableRecord != null) {
                this.mDisableRecords.remove(intValue);
                disableRecord.token.unlinkToDeath(disableRecord, 0);
            }
        } else if (disableRecord != null) {
            if (disableRecord.getFlags(i3) != i2) {
                makeDisableHistory(i, i2, iBinder, str, i3, i4);
            }
            disableRecord.setFlags(i2, i3, str);
            if (disableRecord.isEmpty()) {
                this.mDisableRecords.remove(intValue);
                disableRecord.token.unlinkToDeath(disableRecord, 0);
            }
        } else {
            disableRecord = new DisableRecord(i, iBinder, i4);
            disableRecord.setFlags(i2, i3, str);
            this.mDisableRecords.add(disableRecord);
            if (i2 != 0) {
                makeDisableHistory(i, i2, iBinder, str, i3, i4);
            }
        }
    }

    public void notifyRequestedSystemKey(boolean z, boolean z2) {

    }

    public void onBiometricAuthenticated(boolean z, String str) {
        enforceBiometricDialog();

    }

    public void onBiometricError(String str) {
        enforceBiometricDialog();

    }

    public void onBiometricHelp(String str) {
        enforceBiometricDialog();

    }

    public void onClearAllNotifications(int i) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    @Override
    public void onNotificationClear(String s, String s1, int i, int i1) throws RemoteException {

    }

    public void onDisplayAdded(int i) {
    }

    public void onDisplayChanged(int i) {
    }

    public void onDisplayRemoved(int i) {
        synchronized (this.mLock) {
            this.mDisplayUiState.remove(i);
        }
    }

    public void onGlobalActionsHidden() {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onGlobalActionsShown() {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationActionClick(String str, int i, Action action, NotificationVisibility notificationVisibility, boolean z) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationBubbleChanged(String str, boolean z) {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationClear(String str, String str2, int i, int i2, String str3, int i3, int i4, NotificationVisibility notificationVisibility) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationClick(String str, NotificationVisibility notificationVisibility) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationDirectReplied(String str) throws RemoteException {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationError(String str, String str2, int i, int i2, int i3, String str3, int i4) {
        enforceStatusBarService();
        int callingUid = Binder.getCallingUid();
        int callingPid = Binder.getCallingPid();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationExpansionChanged(String str, boolean z, boolean z2, int i) throws RemoteException {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationSettingsViewed(String str) throws RemoteException {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationSmartReplySent(String str, int i, CharSequence charSequence, int i2, boolean z) throws RemoteException {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onNotificationSmartSuggestionsAdded(String str, int i, int i2, boolean z, boolean z2) {
        enforceStatusBarService();

    }

    public void onNotificationVisibilityChanged(NotificationVisibility[] notificationVisibilityArr, NotificationVisibility[] notificationVisibilityArr2) throws RemoteException {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    @Override
    public void onNotificationExpansionChanged(String s, boolean b, boolean b1) throws RemoteException {

    }

    @Override
    public void setSystemUiVisibility(int i, int i1, String s) throws RemoteException {

    }

    public void onPanelHidden() throws RemoteException {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onPanelRevealed(boolean z, int i) {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }

    public void onShellCommand(FileDescriptor fileDescriptor, FileDescriptor fileDescriptor2, FileDescriptor fileDescriptor3, String[] strArr, ResultReceiver resultReceiver) {
        //new StatusBarShellCommand(this, this.mContext).exec(this, fileDescriptor, fileDescriptor2, fileDescriptor3, strArr, shellCallback, resultReceiver);
    }

    public void reboot(boolean z) {

    }

    public void rebootByBixby(boolean z) {
        enforceStatusBarService();
        long clearCallingIdentity = Binder.clearCallingIdentity();

    }



    public void remTile(ComponentName componentName) {
        enforceStatusBarOrShell();
        if (this.mBar != null) {
            try {
                this.mBar.remQsTile(componentName);
            } catch (RemoteException e) {
            }
        }
    }

    public void removeIcon(String str) {
        enforceStatusBar();
        synchronized (this.mIcons) {
            this.mIcons.remove(str);

        }
    }

    @Override
    public void setImeWindowStatus(IBinder iBinder, int i, int i1, boolean b) throws RemoteException {

    }

    public void requestExpandLockedShadePanel(StatusBarNotification statusBarNotification) {
        enforceStatusBar();

    }

    public void sendKeyEventToDesktopTaskbar(KeyEvent keyEvent) {

    }

    public void sendKeyEventToDesktopTaskbarToType(KeyEvent keyEvent, int i) {
        Object obj = this.mBarMap.get(Integer.valueOf(i));
        if (obj != null) {
        }

    }

    public void setIcon(String str, String str2, int i, int i2, String str3) {
        enforceStatusBar();
        synchronized (this.mIcons) {

            Iterator it = this.mBarMap.entrySet().iterator();
            if (it != null) {
            }
            while (it.hasNext()) {
                Object next = it.next();
                if (next == null) {
                }
                Object value = ((Entry) next).getValue();
                if (value != null) {
                }
                IStatusBar iStatusBar = (IStatusBar) value;
                if (iStatusBar != null) {

                }
            }
        }
    }

    public void setIconVisibility(String str, boolean z) {
        enforceStatusBar();
        synchronized (this.mIcons) {
            StatusBarIcon statusBarIcon = (StatusBarIcon) this.mIcons.get(str);
            if (statusBarIcon == null) {
                return;
            }
            if (statusBarIcon.visible != z) {
                statusBarIcon.visible = z;

            }
        }
    }

    public void setImeWindowStatus(int i, IBinder iBinder, int i2, int i3, boolean z) {
        enforceStatusBar();
        synchronized (this.mLock) {
            UiState uiState = getUiState(i, 0);
            if (uiState == null) {
            }
            uiState.setImeWindowState(i2, i3, z, iBinder);

        }
    }

    public void setImeWindowStatusToType(int i, IBinder iBinder, int i2, int i3, boolean z, int i4) {
        Throwable th;
        enforceStatusBar();
        synchronized (this.mLock) {

        }
    }

    public void setIndicatorBgColor(int i) {
        enforceStatusBar();
        if (this.mBar != null) {

        }
    }

    public void setNavigationBarShortcut(String str, RemoteViews remoteViews, int i, int i2) {
        if (this.mBar != null) {

        }
    }

    public void setPanelExpandState(boolean z) {
        ArrayMap arrayMap = this.mPanelExpandStateMap;
        Integer valueOf = Integer.valueOf(0);
        Boolean valueOf2 = Boolean.valueOf(z);
        if (valueOf2 != null) {
        }
        arrayMap.put(valueOf, valueOf2);
        this.mQsPanelExpandStateMap.put(valueOf, Boolean.valueOf(z));
    }

    public void setPanelExpandStateToType(boolean z, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("  setPanelExpandStateToType : state = ");
        stringBuilder.append(z);
        stringBuilder.append(", barType = ");
        stringBuilder.append(i);
        String stringBuilder2 = stringBuilder.toString();
        if (stringBuilder2 == null) {
        }
        Slog.d(TAG, stringBuilder2);
        this.mPanelExpandStateMap.put(Integer.valueOf(i), Boolean.valueOf(z));
        this.mQsPanelExpandStateMap.put(Integer.valueOf(i), Boolean.valueOf(z));
    }

    public void setSystemUiVisibility(int i, int i2, int i3, String str) {
        int i4 = i;
        UiState uiState = getUiState(i, 0);
        if (uiState == null) {
        }
        setSystemUiVisibility(i, i2, 0, 0, i3, uiState.mFullscreenStackBounds, uiState.mDockedStackBounds, uiState.mNavbarColorManagedByIme, str, 0);
    }

    public void setSystemUiVisibilityToType(int i, int i2, int i3, String str, int i4) {
        UiState uiState = getUiState(i, i4);
        Rect access$1900 = uiState.mFullscreenStackBounds;
        if (access$1900 != null) {
        }
        Rect access$2000 = uiState.mDockedStackBounds;
        if (access$2000 == null) {
        }
        setSystemUiVisibility(i, i2, 0, 0, i3, access$1900, access$2000, uiState.mNavbarColorManagedByIme, str, i4);
    }



    public void showPinningEnterExitToast(boolean z) throws RemoteException {
        if (this.mBar != null) {

        }
    }

    public void showPinningEscapeToast() throws RemoteException {

    }

    public void shutdown() {
        enforceStatusBarService();

    }

    public void shutdownByBixby() {
        enforceStatusBarService();

    }

    public void togglePanel() {
        enforceExpandStatusBar();

    }

    public void toggleRecentApps() {
    }

    public void toggleRecentAppsToType(int i) {
        ArrayMap arrayMap = this.mBarMap;
        Integer valueOf = Integer.valueOf(i);
        if (valueOf == null) {
        }
        Object obj = arrayMap.get(valueOf);
        if (obj != null) {
        }
        if (obj != null) {
            try {
                arrayMap = this.mBarMap;
                valueOf = Integer.valueOf(i);
                if (valueOf == null) {
                }
                obj = arrayMap.get(valueOf);
                if (obj == null) {
                }
                ((IStatusBar) obj).toggleRecentApps();
                for (Object next : this.mBarMap.entrySet()) {
                    if (next != null) {
                    }
                    Entry entry = (Entry) next;
                    if (((Integer) entry.getKey()).intValue() != i) {
                        IStatusBar iStatusBar = (IStatusBar) entry.getValue();
                        if (iStatusBar != null) {
                            iStatusBar.hideRecentApps(false, true);
                        }
                    }
                }
            } catch (RemoteException e) {
            }
        }
    }
}
