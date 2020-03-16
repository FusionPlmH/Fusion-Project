package com.android.launcher3.framework.view.context;

import android.app.ActivityOptions;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.graphics.Rect;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.os.StrictMode.VmPolicy;
import android.os.StrictMode.VmPolicy.Builder;
import android.view.ActionMode;
import android.view.View;
import android.view.ViewGroup;


public abstract class BaseDraggingActivity extends BaseActivity {
    public static final Object AUTO_CANCEL_ACTION_MODE = new Object();
    public static final String INTENT_EXTRA_IGNORE_LAUNCH_ANIMATION = "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION";
    private static final String TAG = "BaseDraggingActivity";

    private ActionMode mCurrentActionMode;
    protected boolean mIsSafeModeEnabled;
    private OnStartCallback mOnStartCallback;

    public interface OnStartCallback<T extends BaseDraggingActivity> {
        void onActivityStart(T t);
    }

    public static BaseDraggingActivity fromContext(Context context) {
        return context instanceof BaseDraggingActivity ? (BaseDraggingActivity) context : (BaseDraggingActivity) ((ContextWrapper) context).getBaseContext();
    }

    private boolean isSystemApp(Context context, Intent intent) {
        String str;
        PackageManager packageManager = context.getPackageManager();
        ComponentName component = intent.getComponent();
        if (component == null) {
            ResolveInfo resolveActivity = packageManager.resolveActivity(intent, 65536);
            str = (resolveActivity == null || resolveActivity.activityInfo == null) ? null : resolveActivity.activityInfo.packageName;
        } else {
            str = component.getPackageName();
        }
        if (str == null) {
            return false;
        }
        try {
            PackageInfo packageInfo = packageManager.getPackageInfo(str, 0);
            boolean z = true;
            if (packageInfo == null || packageInfo.applicationInfo == null || (packageInfo.applicationInfo.flags & 1) == 0) {
                z = false;
            }
            return z;
        } catch (NameNotFoundException unused) {
            return false;
        }
    }

    private void onDeviceRotationChanged() {

    }

    private void startShortcutIntentSafely(Intent intent, Bundle bundle) {
        VmPolicy vmPolicy;
        try {
            vmPolicy = StrictMode.getVmPolicy();
            StrictMode.setVmPolicy(new Builder().detectAll().penaltyLog().build());

            StrictMode.setVmPolicy(vmPolicy);
        } catch (SecurityException e) {

        } catch (Throwable th) {

        }
    }

    public boolean finishAutoCancelActionMode() {
        if (this.mCurrentActionMode == null || AUTO_CANCEL_ACTION_MODE != this.mCurrentActionMode.getTag()) {
            return false;
        }
        this.mCurrentActionMode.finish();
        return true;
    }

    public abstract ActivityOptions getActivityLaunchOptions(View view);

    public abstract ActivityOptions getActivityLaunchOptions(View view, Runnable runnable);

    public final Bundle getActivityLaunchOptionsAsBundle(View view) {
        ActivityOptions activityLaunchOptions = getActivityLaunchOptions(view);
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.JELLY_BEAN) {
            return activityLaunchOptions == null ? null : activityLaunchOptions.toBundle();
        }
        return null;
    }

    public abstract ViewGroup getDragLayer();

    public abstract <T extends View> T getOverviewPanel();


    public abstract View getRootView();

    public Rect getViewBounds(View view) {
        int[] iArr = new int[2];
        view.getLocationOnScreen(iArr);
        return new Rect(iArr[0], iArr[1], iArr[0] + view.getWidth(), iArr[1] + view.getHeight());
    }


    public void onActionModeFinished(ActionMode actionMode) {
        super.onActionModeFinished(actionMode);
        this.mCurrentActionMode = null;
    }

    public void onActionModeStarted(ActionMode actionMode) {
        super.onActionModeStarted(actionMode);
        this.mCurrentActionMode = actionMode;
    }

    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);

    }

    protected void onDestroy() {
        super.onDestroy();

    }

    protected void onDeviceProfileInitiated() {

    }

    protected boolean onErrorStartingShortcut(Intent inten) {
        return false;
    }

    protected void onStart() {
        super.onStart();
        if (this.mOnStartCallback != null) {
            this.mOnStartCallback.onActivityStart(this);
            this.mOnStartCallback = null;
        }
    }

    protected abstract void reapplyUi();

    public <T extends BaseDraggingActivity> void setOnStartCallback(OnStartCallback<T> onStartCallback) {
        this.mOnStartCallback = onStartCallback;
    }

    /* JADX WARNING: Removed duplicated region for block: B:44:0x008b A:{Splitter: B:21:0x0040, ExcHandler: android.content.ActivityNotFoundException (r7_19 'e' java.lang.Throwable)} */
    /* JADX WARNING: Missing block: B:44:0x008b, code:
            r7 = move-exception;
     */
    /* JADX WARNING: Missing block: B:45:0x008c, code:
            android.widget.Toast.makeText(r6, com.sec.android.app.launcher.R.string.activity_not_found, 0).show();
            r6 = TAG;
            r0 = new java.lang.StringBuilder();
            r0.append("Unable to launch. tag=");
            r0.append(r9);
            r0.append(" intent=");
            r0.append(r8);
            android.util.Log.e(r6, r0.toString(), r7);
     */
    /* JADX WARNING: Missing block: B:46:0x00b4, code:
            return false;
     */
    public boolean startActivitySafely(android.view.View r7, android.content.Intent r8) {
        /*
        r6 = this;
        r0 = r6.mIsSafeModeEnabled;
        r1 = 0;
        if (r0 == 0) goto L_0x0016;
    L_0x0005:
        r0 = r6.isSystemApp(r6, r8);
        if (r0 != 0) goto L_0x0016;
    L_0x000b:
        r7 = 2131296515; // 0x7f090103 float:1.8210949E38 double:1.053000389E-314;
        r6 = android.widget.Toast.makeText(r6, r7, r1);
        r6.show();
        return r1;
    L_0x0016:
        r0 = 1;
        if (r7 == 0) goto L_0x0023;
    L_0x0019:
        r2 = "com.android.launcher3.intent.extra.shortcut.INGORE_LAUNCH_ANIMATION";
        r2 = r8.hasExtra(r2);
        if (r2 != 0) goto L_0x0023;
    L_0x0021:
        r2 = r0;
        goto L_0x0024;
    L_0x0023:
        r2 = r1;
    L_0x0024:
        r3 = 0;
        if (r2 == 0) goto L_0x002c;
    L_0x0027:
        r2 = r6.getActivityLaunchOptionsAsBundle(r7);
        goto L_0x002d;
    L_0x002c:
        r2 = r3;
    L_0x002d:
        if (r9 != 0) goto L_0x0030;
    L_0x002f:
        goto L_0x0032;
    L_0x0030:
        r3 = r9.user;
    L_0x0032:
        r4 = 268435456; // 0x10000000 float:2.5243549E-29 double:1.32624737E-315;
        r8.addFlags(r4);
        if (r7 == 0) goto L_0x0040;
    L_0x0039:
        r7 = r6.getViewBounds(r7);
        r8.setSourceBounds(r7);
    L_0x0040:
        r7 = com.android.launcher3.framework.support.context.base.BuildSDKVersion.ATLEAST_MARSHMALLOW;	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        if (r7 == 0) goto L_0x0063;
    L_0x0044:
        r7 = r9 instanceof com.android.launcher3.framework.support.data.IconInfo;	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        if (r7 == 0) goto L_0x0063;
    L_0x0048:
        r7 = r9;
        r7 = (com.android.launcher3.framework.support.data.IconInfo) r7;	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        r7 = r7.isAppShortcut;	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        if (r7 == 0) goto L_0x0063;
    L_0x004f:
        r7 = r9.itemType;	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        if (r7 == r0) goto L_0x0058;
    L_0x0053:
        r7 = r9.itemType;	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        r4 = 6;
        if (r7 != r4) goto L_0x0063;
    L_0x0058:
        r7 = r9;
        r7 = (com.android.launcher3.framework.support.data.IconInfo) r7;	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        r7 = r7.isPromise();	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        if (r7 != 0) goto L_0x0063;
    L_0x0061:
        r7 = r0;
        goto L_0x0064;
    L_0x0063:
        r7 = r1;
    L_0x0064:
        if (r7 == 0) goto L_0x006a;
    L_0x0066:
        r6.startShortcutIntentSafely(r8, r2, r9);	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        goto L_0x008a;
    L_0x006a:
        if (r3 == 0) goto L_0x0087;
    L_0x006c:
        r7 = android.os.Process.myUserHandle();	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        r7 = r3.equals(r7);	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        if (r7 == 0) goto L_0x0077;
    L_0x0076:
        goto L_0x0087;
    L_0x0077:
        r7 = com.android.launcher3.framework.support.context.appstate.LauncherAppsCompat.getInstance(r6);	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        r4 = r8.getComponent();	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        r5 = r8.getSourceBounds();	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        r7.startActivityForProfile(r4, r3, r5, r2);	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
        goto L_0x008a;
    L_0x0087:
        r6.startActivity(r8, r2);	 Catch:{ ActivityNotFoundException -> 0x008b, ActivityNotFoundException -> 0x008b }
    L_0x008a:
        return r0;
    L_0x008b:
        r7 = move-exception;
        r0 = 2131296298; // 0x7f09002a float:1.8210509E38 double:1.053000282E-314;
        r6 = android.widget.Toast.makeText(r6, r0, r1);
        r6.show();
        r6 = "BaseDraggingActivity";
        r0 = new java.lang.StringBuilder;
        r0.<init>();
        r2 = "Unable to launch. tag=";
        r0.append(r2);
        r0.append(r9);
        r9 = " intent=";
        r0.append(r9);
        r0.append(r8);
        r8 = r0.toString();
        android.util.Log.e(r6, r8, r7);
        return r1;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.framework.view.context.BaseDraggingActivity.startActivitySafely(android.view.View, android.content.Intent, com.android.launcher3.framework.support.context.base.ItemInfo):boolean");
    }
}
