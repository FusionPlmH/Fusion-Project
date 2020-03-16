package com.android.systemui.servicebox.pages.clock;

import android.app.ActivityManager;

import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.SQLException;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.os.UserHandle;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.util.SettingsHelper;

import com.google.android.collect.Lists;

import dalvik.system.PathClassLoader;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

public class ExternalClockProvider extends BroadcastReceiver {
    private static final Uri LOCK_SETTING_CLOCK_TYPE_URI_PARSED = Uri.parse("content://com.samsung.android.app.clockpack.provider/lock_settings/lock_clock_type");
    private static final Uri LOCK_SETTING_PALETTE_INFO_URI_PARSED = Uri.parse("content://com.samsung.android.app.clockpack.provider/lock_settings/lock_palette_info");
    private static final Uri LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED = Uri.parse("content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_package");
    private static final Uri LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED = Uri.parse("content://com.samsung.android.app.clockpack.provider/lock_settings/lock_theme_clock_trial_package");
    private static ExternalClockProvider sExternalClockProvider;
    private ContentObserver mAODLockSettingsObserver = new ContentObserver((Handler) Dependency.get(Dependency.MAIN_HANDLER)) {
        public void onChange(boolean selfChange, Uri uri) {
            super.onChange(selfChange);
            if (uri != null) {
                Log.d("ExternalClockProvider", uri.toString() + " changed");
                ExternalClockProvider.this.mHandler.sendMessage(ExternalClockProvider.this.mHandler.obtainMessage(2, uri));
            }
        }
    };
    private final ArrayList<WeakReference<ClockCallback>> mClockCallback = Lists.newArrayList();
    private Context mContext;
    private Context mContextForUser;
    private final Handler mHandler = new Handler(Looper.getMainLooper()) {
        public void handleMessage(Message msg) {
            switch (msg.what) {
                case 1:
                    ExternalClockProvider.this.handleClockPackageUpdated();
                    return;
                case 2:
                    ExternalClockProvider.this.handleClockSettingsChanged((Uri) msg.obj);
                    return;
                default:
                    return;
            }
        }
    };
    private ClassLoaderFilter mParentClassLoader;
    private PackageManager mPm;


    public interface ClockCallback {
        void onClockColorChanged();

        void onClockPackageChanged();

        void onClockStyleChanged();
    }

    private static class ClassLoaderFilter extends ClassLoader {
        private final ClassLoader mBase;
        private final String mPackage;

        ClassLoaderFilter(ClassLoader base, String pkg) {
            super(ClassLoader.getSystemClassLoader());
            this.mBase = base;
            this.mPackage = pkg;
        }

        protected Class<?> loadClass(String name, boolean resolve) throws ClassNotFoundException {
            if (!name.startsWith(this.mPackage)) {
                super.loadClass(name, resolve);
            }
            return this.mBase.loadClass(name);
        }
    }

    public static class PluginContextWrapper extends ContextWrapper {
        private final ClassLoader mClassLoader;
        private LayoutInflater mInflater;

        public PluginContextWrapper(Context base, ClassLoader classLoader) {
            super(base);
            this.mClassLoader = classLoader;
        }

        public ClassLoader getClassLoader() {
            return this.mClassLoader;
        }

        public Object getSystemService(String name) {
            if (!"layout_inflater".equals(name)) {
                return getBaseContext().getSystemService(name);
            }
            if (this.mInflater == null) {
                this.mInflater = LayoutInflater.from(getBaseContext()).cloneInContext(this);
            }
            return this.mInflater;
        }
    }

    private ExternalClockProvider(Context context) {
        Log.d("ExternalClockProvider", "ExternalClockProvider() created");
        this.mPm = context.getPackageManager();
        this.mContext = context;

        IntentFilter filter = new IntentFilter("android.intent.action.PACKAGE_ADDED");
        filter.addAction("android.intent.action.PACKAGE_CHANGED");
        filter.addAction("android.intent.action.PACKAGE_DATA_CLEARED");
        filter.addDataScheme("package");
        filter.addDataSchemeSpecificPart("com.samsung.android.app.aodservice", 0);
        this.mContext.registerReceiver(this, filter);
        this.mContext.registerReceiver(this, new IntentFilter("com.samsung.intent.action.EMERGENCY_STATE_CHANGED"));

    }

    private Context getContextForUser(int userId) {

        return null;
    }

    public static ExternalClockProvider getInstance(Context context) {
        if (sExternalClockProvider == null) {
            sExternalClockProvider = new ExternalClockProvider(context);
        }
        return sExternalClockProvider;
    }

    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (action.equals("com.samsung.intent.action.EMERGENCY_STATE_CHANGED")) {
            int reason = intent.getIntExtra("reason", 0);
            Log.d("ExternalClockProvider", "reason=" + reason + ", action=" + action);
            if (reason == 3 || reason == 5) {
                this.mHandler.removeMessages(1);
                this.mHandler.sendEmptyMessage(1);
                return;
            }
            return;
        }
        String pkg = intent.getData().getEncodedSchemeSpecificPart();
        Log.d("ExternalClockProvider", "pkg=" + pkg + ", action=" + action);
        if (!"com.samsung.android.app.aodservice".equals(pkg)) {
            return;
        }
        if (action.equals("android.intent.action.PACKAGE_CHANGED") || action.equals("android.intent.action.PACKAGE_ADDED") || action.equals("android.intent.action.PACKAGE_DATA_CLEARED")) {
            this.mHandler.removeMessages(1);
            this.mHandler.sendEmptyMessage(1);
        }
    }

    private void handleClockPackageUpdated() {
        Log.d("ExternalClockProvider", "handleClockPackageUpdated()");

    }

    /* JADX WARNING: Removed duplicated region for block: B:21:0x006b A:{Splitter: B:19:0x0047, ExcHandler: com.samsung.android.clockpack.plugins.exception.PluginException (e com.samsung.android.clockpack.plugins.exception.PluginException)} */
    /* JADX WARNING: Missing block: B:22:0x006c, code:
            android.util.Log.e("ExternalClockProvider", "Plugin|CategoryException: getClockName(" + getClockType() + ")");
     */
    /* JADX WARNING: Missing block: B:48:?, code:
            return;
     */
    private void handleClockSettingsChanged(android.net.Uri r10) {
        /*
        r9 = this;
        r7 = 1;
        r6 = 0;
        if (r10 == 0) goto L_0x006a;
    L_0x0004:
        r4 = LOCK_SETTING_CLOCK_TYPE_URI_PARSED;
        r4 = r4.equals(r10);
        if (r4 != 0) goto L_0x001c;
    L_0x000c:
        r4 = LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED;
        r4 = r4.equals(r10);
        if (r4 != 0) goto L_0x001c;
    L_0x0014:
        r4 = LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED;
        r4 = r4.equals(r10);
        if (r4 == 0) goto L_0x0092;
    L_0x001c:
        r2 = 0;
    L_0x001d:
        r4 = r9.mClockCallback;
        r4 = r4.size();
        if (r2 >= r4) goto L_0x003b;
    L_0x0025:
        r4 = r9.mClockCallback;
        r4 = r4.get(r2);
        r4 = (java.lang.ref.WeakReference) r4;
        r0 = r4.get();
        r0 = (com.android.systemui.servicebox.pages.clock.ExternalClockProvider.ClockCallback) r0;
        if (r0 == 0) goto L_0x0038;
    L_0x0035:
        r0.onClockStyleChanged();
    L_0x0038:
        r2 = r2 + 1;
        goto L_0x001d;
    L_0x003b:
        r4 = LOCK_SETTING_CLOCK_TYPE_URI_PARSED;
        r4 = r4.equals(r10);
        if (r4 == 0) goto L_0x006a;
    L_0x0043:
        r4 = r9.mProvider;
        if (r4 == 0) goto L_0x006a;
    L_0x0047:
        r4 = r9.mContext;	 Catch:{ PluginException -> 0x006b, PluginException -> 0x006b }
        r5 = "lockscreen_pref";
        r6 = 0;
        r4 = r4.getSharedPreferences(r5, r6);	 Catch:{ PluginException -> 0x006b, PluginException -> 0x006b }
        r4 = r4.edit();	 Catch:{ PluginException -> 0x006b, PluginException -> 0x006b }
        r5 = "9008";
        r6 = r9.mProvider;	 Catch:{ PluginException -> 0x006b, PluginException -> 0x006b }
        r7 = r9.getClockType();	 Catch:{ PluginException -> 0x006b, PluginException -> 0x006b }
        r8 = 2;
        r6 = r6.getClockName(r7, r8);	 Catch:{ PluginException -> 0x006b, PluginException -> 0x006b }
        r4 = r4.putString(r5, r6);	 Catch:{ PluginException -> 0x006b, PluginException -> 0x006b }
        r4.apply();	 Catch:{ PluginException -> 0x006b, PluginException -> 0x006b }
    L_0x006a:
        return;
    L_0x006b:
        r1 = move-exception;
        r4 = "ExternalClockProvider";
        r5 = new java.lang.StringBuilder;
        r5.<init>();
        r6 = "Plugin|CategoryException: getClockName(";
        r5 = r5.append(r6);
        r6 = r9.getClockType();
        r5 = r5.append(r6);
        r6 = ")";
        r5 = r5.append(r6);
        r5 = r5.toString();
        android.util.Log.e(r4, r5);
        goto L_0x006a;
    L_0x0092:
        r4 = LOCK_SETTING_PALETTE_INFO_URI_PARSED;
        r4 = r4.equals(r10);
        if (r4 == 0) goto L_0x006a;
    L_0x009a:
        r2 = 0;
    L_0x009b:
        r4 = r9.mClockCallback;
        r4 = r4.size();
        if (r2 >= r4) goto L_0x00b9;
    L_0x00a3:
        r4 = r9.mClockCallback;
        r4 = r4.get(r2);
        r4 = (java.lang.ref.WeakReference) r4;
        r0 = r4.get();
        r0 = (com.android.systemui.servicebox.pages.clock.ExternalClockProvider.ClockCallback) r0;
        if (r0 == 0) goto L_0x00b6;
    L_0x00b3:
        r0.onClockColorChanged();
    L_0x00b6:
        r2 = r2 + 1;
        goto L_0x009b;
    L_0x00b9:
        r3 = r9.getPaletteInfo();
        r4 = r3[r6];
        if (r4 != 0) goto L_0x00df;
    L_0x00c1:
        r4 = r9.mContext;
        r5 = "lockscreen_pref";
        r4 = r4.getSharedPreferences(r5, r6);
        r4 = r4.edit();
        r5 = "9009";
        r6 = r3[r7];
        r6 = com.android.systemui.SystemUIAnalytics.makeClockColorDetail(r6);
        r4 = r4.putString(r5, r6);
        r4.apply();
        goto L_0x006a;
    L_0x00df:
        r4 = r3[r6];
        if (r4 != r7) goto L_0x006a;
    L_0x00e3:
        r4 = r9.mContext;
        r5 = "lockscreen_pref";
        r4 = r4.getSharedPreferences(r5, r6);
        r4 = r4.edit();
        r5 = "9009";
        r6 = "Color picker";
        r4 = r4.putString(r5, r6);
        r4.apply();
        goto L_0x006a;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.servicebox.pages.clock.ExternalClockProvider.handleClockSettingsChanged(android.net.Uri):void");
    }


    ClassLoader getParentClassLoader() {
        if (this.mParentClassLoader == null) {
            this.mParentClassLoader = new ClassLoaderFilter(getClass().getClassLoader(), "com.samsung.android.clockpack.plugins");
        }
        return this.mParentClassLoader;
    }

    public void registerClockChangedCallback(ClockCallback callback) {
        int i = 0;
        while (i < this.mClockCallback.size()) {
            WeakReference<?> cb = (WeakReference) this.mClockCallback.get(i);
            if (cb == null || cb.get() != callback) {
                i++;
            } else {
                return;
            }
        }
        this.mClockCallback.add(new WeakReference(callback));
    }

    public void unregisterClockChangedCallback(ClockCallback callback) {
        for (int i = this.mClockCallback.size() - 1; i >= 0; i--) {
            WeakReference<?> cb = (WeakReference) this.mClockCallback.get(i);
            if (cb != null && cb.get() == callback) {
                this.mClockCallback.remove(i);
            }
        }
    }

    /* JADX WARNING: Removed duplicated region for block: B:7:0x0021 A:{Splitter: B:2:0x0005, PHI: r0 , ExcHandler: com.samsung.android.clockpack.plugins.exception.PluginException (r1_0 'e' android.util.AndroidException)} */
    /* JADX WARNING: Removed duplicated region for block: B:7:0x0021 A:{Splitter: B:2:0x0005, PHI: r0 , ExcHandler: com.samsung.android.clockpack.plugins.exception.PluginException (r1_0 'e' android.util.AndroidException)} */
    /* JADX WARNING: Missing block: B:7:0x0021, code:
            r1 = move-exception;
     */
    /* JADX WARNING: Missing block: B:8:0x0022, code:
            r1.printStackTrace();
     */
    public android.view.View getClockView(int r5) {
        /*
        r4 = this;
        r0 = 0;
        r2 = r4.mProvider;
        if (r2 == 0) goto L_0x0015;
    L_0x0005:
        r2 = r4.mProvider;	 Catch:{ PluginException -> 0x0021, PluginException -> 0x0021, PluginException -> 0x0021 }
        r3 = 2;
        r0 = r2.getClockView(r5, r3);	 Catch:{ PluginException -> 0x0021, PluginException -> 0x0021, PluginException -> 0x0021 }
        r2 = "ExternalClockProvider";
        r3 = "VERSION_CODE = 12";
        android.util.Log.d(r2, r3);	 Catch:{ PluginException -> 0x0021, PluginException -> 0x0021, PluginException -> 0x0021 }
    L_0x0015:
        if (r0 != 0) goto L_0x0026;
    L_0x0017:
        r2 = "ExternalClockProvider";
        r3 = "getClockView returns null";
        android.util.Log.d(r2, r3);
    L_0x0020:
        return r0;
    L_0x0021:
        r1 = move-exception;
        r1.printStackTrace();
        goto L_0x0015;
    L_0x0026:
        r2 = r4.mContextForUser;
        r2 = com.android.systemui.wallpaper.WallpaperUtils.getAdaptiveColorValue(r2);
        r4.updateClockColor(r0, r2);
        goto L_0x0020;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.systemui.servicebox.pages.clock.ExternalClockProvider.getClockView(int):android.view.View");
    }

    public int getClockType() {
        int clockType = 1;
        Cursor cursor = this.mContextForUser.getContentResolver().query(LOCK_SETTING_CLOCK_TYPE_URI_PARSED, null, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                    clockType = cursor.getInt(0);
                }
                cursor.close();
            } catch (SQLException e) {
                e.printStackTrace();
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        Log.d("ExternalClockProvider", "getClockType() = " + clockType);
        return clockType;
    }

    private int[] getPaletteInfo() {
        int[] paletteInfo = new int[2];
        Cursor cursor = this.mContextForUser.getContentResolver().query(LOCK_SETTING_PALETTE_INFO_URI_PARSED, null, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                    paletteInfo[0] = cursor.getInt(0);
                    paletteInfo[1] = cursor.getInt(1);
                }
                cursor.close();
            } catch (SQLException e) {
                e.printStackTrace();
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        Log.d("ExternalClockProvider", "getPaletteInfo() = " + paletteInfo);
        return paletteInfo;
    }


    private String getThemeClockPackage() {
        String packageName = querySingleString(LOCK_SETTING_THEME_CLOCK_TRIAL_PACKAGE_URI_PARSED);
        if (TextUtils.isEmpty(packageName)) {
            packageName = querySingleString(LOCK_SETTING_THEME_CLOCK_PACKAGE_URI_PARSED);
            Log.d("ExternalClockProvider", "getThemeClockPackage() packageName=" + packageName);
            return packageName;
        }
        Log.d("ExternalClockProvider", "getThemeClockPackage() packageName=" + packageName + " (TRIAL)");
        return packageName;
    }

    private String querySingleString(Uri uri) {
        String val = "";
        Cursor cursor = this.mContextForUser.getContentResolver().query(uri, null, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                    val = cursor.getString(0);
                }
                cursor.close();
            } catch (SQLException e) {
                e.printStackTrace();
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        if ("null".equals(val)) {
            return null;
        }
        return val;
    }

    public int getDateColor() {
        int color = -328966;
        Cursor cursor = this.mContextForUser.getContentResolver().query(LOCK_SETTING_PALETTE_INFO_URI_PARSED, null, null, null, null);
        if (cursor != null) {
            try {
                if (cursor.getCount() > 0 && cursor.moveToFirst()) {
                    color = cursor.getInt(2);
                }
                cursor.close();
            } catch (SQLException e) {
                e.printStackTrace();
                cursor.close();
            } catch (Throwable th) {
                cursor.close();
                throw th;
            }
        }
        Log.d("ExternalClockProvider", "getDateColor() color=" + color);
        return color;
    }
}
