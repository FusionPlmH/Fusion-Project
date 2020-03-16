package com.android.server.policy;

import android.app.ActivityManager;
import android.content.Context;
import android.provider.Settings.Global;
import android.util.ArraySet;
import android.util.Slog;
import android.view.WindowManager.LayoutParams;
import com.android.server.policy.WindowManagerPolicy.WindowState;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;

public class PolicyControl {
    private static boolean DEBUG = false;
    private static final String NAME_IMMERSIVE_FULL = "immersive.full";
    private static final String NAME_IMMERSIVE_NAVIGATION = "immersive.navigation";
    private static final String NAME_IMMERSIVE_PRECONFIRMATIONS = "immersive.preconfirms";
    private static final String NAME_IMMERSIVE_STATUS = "immersive.status";
    private static String TAG = "PolicyControl";
    private static int sDexMode = 0;
    private static boolean sDexStandAloneModeEnabled;
    private static boolean sForceImmersiveModeEnabled;
    private static boolean sGestureHintEnabled;
    private static boolean sGestureNavBarEnabled;
    private static Filter sImmersiveNavigationFilter;
    private static Filter sImmersivePreconfirmationsFilter;
    private static Filter sImmersiveStatusFilter;
    private static boolean sInputMethodVisible;
    private static String sSettingValue;
    private static boolean sVrImmersiveMode;

    private static class Filter {
        private static final String ALL = "*";
        private static final String APPS = "apps";
        private final ArraySet<String> mBlacklist;
        private final ArraySet<String> mWhitelist;

        private Filter(ArraySet<String> arraySet, ArraySet<String> arraySet2) {
            this.mWhitelist = arraySet;
            this.mBlacklist = arraySet2;
        }

        private void dump(String str, ArraySet<String> arraySet, PrintWriter printWriter) {
            printWriter.print(str);
            printWriter.print("=(");
            int size = arraySet.size();
            for (int i = 0; i < size; i++) {
                if (i > 0) {
                    printWriter.print(',');
                }
                printWriter.print((String) arraySet.valueAt(i));
            }
            printWriter.print(')');
        }

        private boolean onBlacklist(String str) {
            return this.mBlacklist.contains(str) || this.mBlacklist.contains(ALL);
        }

        private boolean onWhitelist(String str) {
            return this.mWhitelist.contains(ALL) || this.mWhitelist.contains(str);
        }

        static Filter parse(String str) {
            if (str == null) {
                return null;
            }
            ArraySet arraySet = new ArraySet();
            ArraySet arraySet2 = new ArraySet();

            return new Filter(arraySet, arraySet2);
        }

        void dump(PrintWriter printWriter) {
            printWriter.print("Filter[");
            dump("whitelist", this.mWhitelist, printWriter);
            printWriter.print(',');
            dump("blacklist", this.mBlacklist, printWriter);
            printWriter.print(']');
        }

        boolean matches(LayoutParams layoutParams) {
            if (layoutParams == null) {
                return false;
            }
            boolean z = layoutParams.type >= 1 && layoutParams.type <= 99;
            return ((z && this.mBlacklist.contains(APPS)) || onBlacklist(layoutParams.packageName)) ? false : (z && this.mWhitelist.contains(APPS)) ? true : onWhitelist(layoutParams.packageName);
        }

        boolean matches(String str) {
            return !onBlacklist(str) && onWhitelist(str);
        }

        public String toString() {
            Writer stringWriter = new StringWriter();
            dump(new PrintWriter(stringWriter, true));
            return stringWriter.toString();
        }
    }

    public static int adjustClearableFlags(WindowState windowState, int i) {
        return (sImmersiveStatusFilter == null || !sImmersiveStatusFilter.matches(windowState != null ? windowState.getAttrs() : null)) ? i : i & -5;
    }

    public static boolean canApplyForceImmersiveMode(WindowState windowState) {
        return (windowState == null || !windowState.isDefaultDisplay()) ? false : false;
    }

    public static boolean disableImmersiveConfirmation(String str) {
        return (sImmersivePreconfirmationsFilter != null && sImmersivePreconfirmationsFilter.matches(str)) || ActivityManager.isRunningInTestHarness();
    }

    private static void dump(String str, Filter filter, String str2, PrintWriter printWriter) {
        printWriter.print(str2);
        printWriter.print("PolicyControl.");
        printWriter.print(str);
        printWriter.print('=');
        if (filter == null) {
            printWriter.println("null");
            return;
        }
        filter.dump(printWriter);
        printWriter.println();
    }

    public static void dump(String str, PrintWriter printWriter) {
        dump("sImmersiveStatusFilter", sImmersiveStatusFilter, str, printWriter);
        dump("sImmersiveNavigationFilter", sImmersiveNavigationFilter, str, printWriter);
        dump("sImmersivePreconfirmationsFilter", sImmersivePreconfirmationsFilter, str, printWriter);
        printWriter.print(str);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("PolicyControl.sDexMode=");
        stringBuilder.append(sDexMode);
        printWriter.println(stringBuilder.toString());
        printWriter.print(str);
        stringBuilder = new StringBuilder();
        stringBuilder.append("PolicyControl.sDexStandAloneModeEnabled=");
        stringBuilder.append(sDexStandAloneModeEnabled);
        printWriter.println(stringBuilder.toString());
        printWriter.print(str);
        stringBuilder = new StringBuilder();
        stringBuilder.append("PolicyControl.sVrImmersiveMode=");
        stringBuilder.append(sVrImmersiveMode);
        printWriter.println(stringBuilder.toString());
    }

    public static int getSystemUiVisibility(WindowState windowState, LayoutParams layoutParams) {
        int systemUiVisibility = 0;
        Object obj = null;
        if (windowState == null || layoutParams == null) {
            layoutParams = layoutParams != null ? layoutParams : windowState.getAttrs();
           // systemUiVisibility = windowState != null ? windowState.getSystemUiVisibility() : layoutParams.systemUiVisibility | layoutParams.subtreeSystemUiVisibility;
        } else {
           // systemUiVisibility = layoutParams.systemUiVisibility | layoutParams.subtreeSystemUiVisibility;
        }
        if (sImmersiveStatusFilter != null && sImmersiveStatusFilter.matches(layoutParams)) {
            systemUiVisibility = (systemUiVisibility | 5124) & -1073742081;
            obj = 1;
        }
        if (sImmersiveNavigationFilter != null && sImmersiveNavigationFilter.matches(layoutParams)) {
            systemUiVisibility = (systemUiVisibility | 4610) & 2147483391;
            obj = 1;
        }

        return sVrImmersiveMode ? (systemUiVisibility | 5638) & 1073741567 : systemUiVisibility;
    }

    public static int getWindowFlags(WindowState windowState, LayoutParams layoutParams) {
        layoutParams = layoutParams != null ? layoutParams : windowState.getAttrs();
        int i = layoutParams.flags;
        if (sImmersiveStatusFilter != null && sImmersiveStatusFilter.matches(layoutParams)) {
            i = (i | 1024) & -67110913;
        }
        if (sImmersiveNavigationFilter != null && sImmersiveNavigationFilter.matches(layoutParams)) {
            i &= -134217729;
        }
        return sVrImmersiveMode ? ((i | 1024) & -67110913) & -134217729 : i;
    }

    public static boolean isForceImmersiveModeApplied(int i) {
        return i != 0 ? false : false;
    }

    public static boolean isGestureHintEnabled() {
        return sGestureHintEnabled;
    }

    public static boolean isGestureNavBarEnabled() {
        return sGestureNavBarEnabled;
    }

    public static void reloadFromSetting(Context context) {
        if (DEBUG) {
            Slog.d(TAG, "reloadFromSetting()");
        }
        try {

        } catch (Throwable th) {
            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Error loading policy control, value=");
            stringBuilder.append((StringBuffer) null);
            Slog.w(str, stringBuilder.toString(), th);
        }
    }

    public static void setDexMode(int i) {
        sDexMode = i;
        boolean z = true;
        if (i != 1) {
            z = false;
        }
        sDexStandAloneModeEnabled = z;
    }

    private static void setFilters(String str) {
        String str2;
        StringBuilder stringBuilder;
        if (DEBUG) {
            str2 = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("setFilters: ");
            stringBuilder.append(str);
            Slog.d(str2, stringBuilder.toString());
        }
        sImmersiveStatusFilter = null;
        sImmersiveNavigationFilter = null;
        sImmersivePreconfirmationsFilter = null;
        if (str != null) {
            for (String str3 : str.split(":")) {
                int indexOf = str3.indexOf(61);
                if (indexOf != -1) {
                    String substring = str3.substring(0, indexOf);
                    String substring2 = str3.substring(indexOf + 1);
                    Filter parse;
                    if (substring.equals(NAME_IMMERSIVE_FULL)) {
                        parse = Filter.parse(substring2);
                        sImmersiveNavigationFilter = parse;
                        sImmersiveStatusFilter = parse;
                        if (sImmersivePreconfirmationsFilter == null) {
                            sImmersivePreconfirmationsFilter = parse;
                        }
                    } else if (substring.equals(NAME_IMMERSIVE_STATUS)) {
                        sImmersiveStatusFilter = Filter.parse(substring2);
                    } else if (substring.equals(NAME_IMMERSIVE_NAVIGATION)) {
                        parse = Filter.parse(substring2);
                        sImmersiveNavigationFilter = parse;
                        if (sImmersivePreconfirmationsFilter == null) {
                            sImmersivePreconfirmationsFilter = parse;
                        }
                    } else if (substring.equals(NAME_IMMERSIVE_PRECONFIRMATIONS)) {
                        sImmersivePreconfirmationsFilter = Filter.parse(substring2);
                    }
                }
            }
        }
        if (DEBUG) {
            str2 = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("immersiveStatusFilter: ");
            stringBuilder.append(sImmersiveStatusFilter);
            Slog.d(str2, stringBuilder.toString());
            str2 = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("immersiveNavigationFilter: ");
            stringBuilder.append(sImmersiveNavigationFilter);
            Slog.d(str2, stringBuilder.toString());
            str2 = TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("immersivePreconfirmationsFilter: ");
            stringBuilder.append(sImmersivePreconfirmationsFilter);
            Slog.d(str2, stringBuilder.toString());
        }
    }

    public static void setForceImmersiveModeEnabled(boolean z) {
        sForceImmersiveModeEnabled = z;
    }

    public static void setGestureNavBarAndHintEnabled(boolean z, boolean z2) {
        sGestureNavBarEnabled = z;
        sGestureHintEnabled = z2;
    }

    public static void setInputMethodVisible(boolean z) {
        sInputMethodVisible = z;
    }

    public static void setVrImmersiveMode(boolean z) {
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("setVrImmersiveMode vrImmersiveMode=");
        stringBuilder.append(z);
        Slog.d(str, stringBuilder.toString());
        sVrImmersiveMode = z;
    }
}
