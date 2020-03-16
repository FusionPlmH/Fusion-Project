package com.android.launcher3.framework.view.context;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.res.Configuration;
import android.view.View.AccessibilityDelegate;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;

public abstract class BaseActivity extends ViewContext {
    private static final int ACTIVITY_STATE_RESUMED = 2;
    private static final int ACTIVITY_STATE_STARTED = 1;
    private static final int ACTIVITY_STATE_USER_ACTIVE = 4;
    public static final int INVISIBLE_ALL = 3;
    public static final int INVISIBLE_BY_APP_TRANSITIONS = 2;
    public static final int INVISIBLE_BY_STATE_HANDLER = 1;
    private int mActivityFlags;

    private int mForceInvisible;
    private final ArrayList<MultiWindowModeChangedListener> mMultiWindowModeChangedListeners = new ArrayList();


    @Retention(RetentionPolicy.SOURCE)
    public @interface ActivityFlags {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface InvisibilityFlags {
    }

    public interface MultiWindowModeChangedListener {
        void onMultiWindowModeChanged(boolean z);
    }

    public static BaseActivity fromContext(Context context) {
        return context instanceof BaseActivity ? (BaseActivity) context : (BaseActivity) ((ContextWrapper) context).getBaseContext();
    }

    public void addForceInvisibleFlag(int i) {
        this.mForceInvisible = i | this.mForceInvisible;
    }

    public void addMultiWindowModeChangedListener(MultiWindowModeChangedListener multiWindowModeChangedListener) {
        this.mMultiWindowModeChangedListeners.add(multiWindowModeChangedListener);
    }



    public void clearForceInvisibleFlag(int i) {
        this.mForceInvisible = (~i) & this.mForceInvisible;
    }

    protected void dispatchDeviceProfileChanged() {

    }

    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.dump(str, fileDescriptor, printWriter, strArr);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" DeviceProfile=");

        printWriter.println(stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(" DeviceProfile(for overview)=");

        printWriter.println(stringBuilder.toString());
        dumpMisc(printWriter);
    }

    protected void dumpMisc(PrintWriter printWriter) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(" orientation=");
        stringBuilder.append(getResources().getConfiguration().orientation);
        printWriter.println(stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(" mSystemUiController: ");

        printWriter.println(stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(" mActivityFlags: ");
        stringBuilder.append(this.mActivityFlags);
        printWriter.println(stringBuilder.toString());
        stringBuilder = new StringBuilder();
        stringBuilder.append(" mForceInvisible: ");
        stringBuilder.append(this.mForceInvisible);
        printWriter.println(stringBuilder.toString());
    }

    public AccessibilityDelegate getAccessibilityDelegate() {
        return null;
    }


    public boolean hasBeenResumed() {
        return (this.mActivityFlags & 2) != 0;
    }

    public boolean isForceInvisible() {
        return this.mForceInvisible != 0;
    }

    public boolean isInMultiWindowModeCompat() {
        return false;
    }

    public boolean isStarted() {
        return (this.mActivityFlags & 1) != 0;
    }

    public boolean isUserActive() {
        return (this.mActivityFlags & 4) != 0;
    }

    protected void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
    }

    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        super.onMultiWindowModeChanged(z, configuration);
        for (int size = this.mMultiWindowModeChangedListeners.size() - 1; size >= 0; size--) {
            ((MultiWindowModeChangedListener) this.mMultiWindowModeChangedListeners.get(size)).onMultiWindowModeChanged(z);
        }
    }

    protected void onPause() {
        this.mActivityFlags &= -3;
        super.onPause();

    }

    protected void onResume() {
        this.mActivityFlags |= 6;
        super.onResume();
    }

    protected void onStart() {
        this.mActivityFlags |= 1;
        super.onStart();
    }

    protected void onStop() {
        this.mActivityFlags &= -6;
        this.mForceInvisible = 0;
        super.onStop();
    }

    protected void onUserLeaveHint() {
        this.mActivityFlags &= -5;
        super.onUserLeaveHint();
    }

    public void removeMultiWindowModeChangedListener(MultiWindowModeChangedListener multiWindowModeChangedListener) {
        this.mMultiWindowModeChangedListeners.remove(multiWindowModeChangedListener);
    }


}
