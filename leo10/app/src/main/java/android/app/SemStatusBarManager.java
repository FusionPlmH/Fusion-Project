package android.app;

import android.content.Context;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Binder;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.ServiceManager;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.RemoteViews;
import com.android.internal.statusbar.IStatusBarService;
import com.android.internal.statusbar.IStatusBarService.Stub;

import java.io.File;

public class SemStatusBarManager {
    public static final int DISABLE_BACK = 4194304;
    public static final int DISABLE_CLOCK = 8388608;
    public static final int DISABLE_EXPAND = 65536;
    public static final int DISABLE_EXPAND_ON_KEYGUARD = 268435456;
    public static final int DISABLE_HOME = 2097152;
    public static final int DISABLE_NONE = 0;
    public static final int DISABLE_NOTIFICATION_ALERTS = 262144;
    public static final int DISABLE_NOTIFICATION_ICONS = 131072;
    public static final int DISABLE_RECENT = 16777216;
    public static final int DISABLE_SEARCH = 33554432;
    public static final int DISABLE_SYSTEM_INFO = 1048576;
    public static final int NAVIGATION_BAR_POSITION_LEFT = 0;
    public static final int NAVIGATION_BAR_POSITION_RIGHT = 1;
    private static final String TAG = "SemStatusBarManager";
    private Context mContext;
    private IStatusBarService mService;
    private IBinder mToken = new Binder();

    SemStatusBarManager(Context context) {
        this.mContext = context;
    }

    private synchronized IStatusBarService getService() {
        if (this.mService == null) {
            this.mService = Stub.asInterface(ServiceManager.getService("statusbar"));
            IStatusBarService iStatusBarService = this.mService;
        }
        return this.mService;
    }

    private void enforceStatusBarService() {
        this.mContext.enforceCallingOrSelfPermission("android.permission.STATUS_BAR_SERVICE", "StatusBarManagerService");
    }

    public void disable(int what) {
        try {
            IStatusBarService svc = getService();
            if (svc != null) {
                svc.disable(what, this.mToken, this.mContext.getPackageName());
            }
        } catch (RemoteException ex) {
            throw new RuntimeException(ex);
        }
    }

    public void expandNotificationsPanel() {
        try {
            IStatusBarService svc = getService();
            if (svc != null) {
                svc.expandNotificationsPanel();
            }
        } catch (RemoteException ex) {
            throw new RuntimeException(ex);
        }
    }

    public void collapsePanels() {
        try {
            IStatusBarService svc = getService();
            if (svc != null) {
                svc.collapsePanels();
            }
        } catch (RemoteException ex) {
            throw new RuntimeException(ex);
        }
    }

    public void expandQuickSettingsPanel() {
        try {
            IStatusBarService svc = getService();
            if (svc != null) {
                svc.expandSettingsPanel(null);
            }
        } catch (RemoteException ex) {
            throw new RuntimeException(ex);
        }
    }

    public void toggleRecentApps() {

    }

    public void setPanelExpandState(boolean state) {

    }

    public boolean isPanelExpanded() {

        return false;
    }

    public void setIndicatorBgColor(int color) {

    }

    public boolean isQuickSettingPanelExpanded() {

        return false;
    }

    public int getDisableFlags() {

        return 0;
    }

    public void setNavigationBarShortcut(String requestClass, RemoteViews remoteViews, int position) {
        enforceStatusBarService();
        IStatusBarService mBar = getService();
        if (mBar == null) {
            return;
        }
    }

}
