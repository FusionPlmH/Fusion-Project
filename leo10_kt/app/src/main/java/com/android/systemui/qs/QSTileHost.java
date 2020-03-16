package com.android.systemui.qs;

import android.app.ActivityManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.content.res.Resources;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.os.UserManager;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.service.quicksettings.Tile;
import android.text.TextUtils;
import android.util.Log;
import com.android.systemui.Dependency;

import com.android.systemui.Rune;
import com.android.systemui.SysUiServiceProvider;

import com.android.systemui.statusbar.phone.StatusBar;
import com.android.systemui.statusbar.phone.StatusBarIconController;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.tuner.TunerService.Tunable;
import com.android.systemui.util.DeviceState;

import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.lang.Thread.UncaughtExceptionHandler;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map.Entry;
import java.util.function.Predicate;


public class QSTileHost  {
    private static final boolean DEBUG = Log.isLoggable("QSTileHost", 3);
    private static final boolean LOGGING_DEBUG = Log.isLoggable("SA_QUICK_SETTINGS", 3);

    private String mBnRRemovedTileList;
    private String mBnRTileList;

    /* access modifiers changed from: private */
    public HashMap<String, String> mComponentNameTable;
    /* access modifiers changed from: private|final */
    public final Context mContext=null;
    private int mCurrentUser;
  //  private final List<CustomTileListCallback> mCustomTileListCallbacks = new ArrayList();

    private Editor mEditor;
    private Handler mHandler = new Handler();
    //private final StatusBarIconController mIconController;
    private boolean mIsRestoring;
    /* access modifiers changed from: private */
    public List<String> mKnoxBlockedQsTileList;



}
