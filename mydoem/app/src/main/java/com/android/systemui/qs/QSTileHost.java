package com.android.systemui.qs;

import android.content.ComponentName;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Handler;
import android.provider.Settings.Secure;
import android.util.Log;

import com.android.systemui.plugins.qs.QSTile;

import com.android.systemui.statusbar.phone.StatusBar;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;

public class QSTileHost implements QSHost {
;
    private boolean mLeoReloadTiles = false;

    private final List<Callback> mCallbacks = new ArrayList();
    private HashMap<String, String> mComponentNameTable;
    private final Context mContext;
    private int mCurrentUser;
    private final List<CustomTileListCallback> mCustomTileListCallbacks = new ArrayList();
    private Handler mHandler = new Handler();
    private ArrayList<String> mHiddenTileSpecs;
    //private final StatusBarIconController mIconController;
    private Runnable mInitTilePrefRunnable = new Runnable() {
        public void run() {
            try {

            } catch (Exception e) {
                Log.w("QSTileHost", "SAPreference : " + e);
            }
        }
    };
    private List<String> mKnoxBlockedQsTileList;
   // KnoxStateMonitorCallback mKnoxStateCallback = new KnoxStateMonitorCallback() {
        public void onUpdateQuickPanelItems() {

            Log.d("QSTileHost", "onUpdateQuickPanelItems : " + QSTileHost.this.mKnoxBlockedQsTileList);
            if (QSTileHost.this.mComponentNameTable == null) {

            }
            QSTileHost.this.refreshTileList();
        }
 //   };
  //  private KnoxStateMonitor mKnoxStateMonitor;
    private Handler mPrefHandler = null;
    private boolean mPrefInitialized;
  //  private final ArrayList<QSFactory> mQsFactories = new ArrayList();
  //  private final TileServices mServices;
    private final StatusBar mStatusBar;
    private HashMap<String, String> mTileNameTable;
    protected final ArrayList<String> mTileSpecs = new ArrayList();
    private final LinkedHashMap<String, QSTile> mTiles = new LinkedHashMap();

    private Editor tileEditor;
    private SharedPreferences tilePref;

    public interface CustomTileListCallback {
        void onCustomTileListChanged(String str, int i);
    }
    public void updateTiles() {
        this.mLeoReloadTiles = true;
        String str = "sysui_qs_tiles";
        onTuningChanged(str, Secure.getString(this.mContext.getContentResolver(), str));
        this.mLeoReloadTiles = false;
    }

    public QSTileHost(Context context, StatusBar statusBar, HashMap<String, String> mComponentNameTable, Context mContext, int mCurrentUser, ArrayList<String> mHiddenTileSpecs, boolean mPrefInitialized, StatusBar mStatusBar, HashMap<String, String> mTileNameTable, Editor tileEditor, SharedPreferences tilePref) {

        this.mComponentNameTable = mComponentNameTable;
        this.mContext = mContext;
        this.mCurrentUser = mCurrentUser;
        this.mHiddenTileSpecs = mHiddenTileSpecs;
        this.mPrefInitialized = mPrefInitialized;
        this.mStatusBar = mStatusBar;
        this.mTileNameTable = mTileNameTable;
        this.tileEditor = tileEditor;
        this.tilePref = tilePref;
    }

    public boolean shouldBeHiddenByKnox(String name) {

        return false;
    }

    public void addCallback(Callback callback) {
        this.mCallbacks.add(callback);
    }

    public void removeCallback(Callback callback) {
        this.mCallbacks.remove(callback);
    }

    public Collection<QSTile> getTiles() {
        return this.mTiles.values();
    }

    public void warn(String message, Throwable t) {
    }


    @Override
    public void collapsePanels() {

    }

    @Override
    public void forceCollapsePanels() {

    }

    public Context getContext() {
        return this.mContext;
    }

    @Override
    public String getCustomTileNameFromSpec(String str) {
        return null;
    }


    public int indexOf(String spec) {
        return this.mTileSpecs.indexOf(spec);
    }

    @Override
    public boolean isDefaultCustomTile(ComponentName componentName) {
        return false;
    }

    @Override
    public void onTileStateChanged(String str, int i) {

    }

    @Override
    public void refreshTileList() {

    }

    @Override
    public void removeTile(String str) {

    }

    public void onTuningChanged(String key, String newValue) {

    }


}
