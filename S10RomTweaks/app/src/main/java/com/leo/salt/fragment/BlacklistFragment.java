package com.leo.salt.fragment;


import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.Fragment;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.os.Bundle;


import android.preference.ListPreference;
import android.preference.Preference;
import android.preference.PreferenceGroup;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;


import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BasePreferenceFragment;
import com.leo.salt.tweaks.view.widget.PackageListAdapter;
import com.leo.salt.tweaks.view.widget.ShortcutPickerHelper;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

@SuppressLint("ResourceAsColor")
public class BlacklistFragment  extends BasePreferenceFragment implements Preference.OnPreferenceClickListener {

    private static final String TAG = "Blacklist";
    private static final String KEY_BLACKLIST = "kill_whitelist";

    private static final boolean DEBUG = false;

    private static final int DIALOG_BLACKLIST_APPS = 1;

    protected PackageListAdapter mPackageAdapter;
    protected PackageManager mPackageManager;
    protected PreferenceGroup mBlacklistPrefList;
    protected Preference mAddBlacklistPref;
    protected String mBlacklistPackageList;
    protected String mBlacklistPackageStore;
    protected Map<String, Package> mBlacklistPackages;



    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initializeAllPreferences();

    }

    protected void showDialog(int dialogId) {
        switch (dialogId) {
            case DIALOG_BLACKLIST_APPS: {
                Dialog dialog;
                AlertDialog.Builder alertDialog = new AlertDialog.Builder(getActivity());
                final ListView list = new ListView(getActivity());
                list.setAdapter(mPackageAdapter);
                alertDialog.setTitle(getStringIdentifier(mContext,"select_app_blacklist_title"));
                alertDialog.setView(list);
                dialog = alertDialog.create();
                list.setOnItemClickListener((parent, view, position, id) -> {
                    // Add empty application definition, the user will be able to edit it later
                    PackageListAdapter.PackageItem info= (PackageListAdapter.PackageItem) parent.getItemAtPosition(position);
                    addCustomApplicationPref(info.packageName, mBlacklistPackages);
                    dialog.cancel();
                });
                ((AlertDialog) dialog).setButton(DialogInterface.BUTTON_NEGATIVE,mContext.getString(android.R.string.cancel), (dialog1, which) -> dialog1.dismiss());
                dialog.show();
                break;
            }
        }
    }

    @Override
    public void onResume() {
        super.onResume();
        refreshCustomApplicationPrefs();
    }

    protected void initializeAllPreferences() {
        BasePreferenceFragment( mContext , this, "whitelist_prefs");
        mBlacklistPackageStore ="leo_salt_global_action_kill_whitelist";
        mPackageManager = getActivity().getPackageManager();
        mPackageAdapter = new PackageListAdapter(getActivity());
        mBlacklistPrefList = getPreferenceScreen();
        mBlacklistPrefList.setOrderingAsAdded(false);
        mBlacklistPackages = new HashMap<String, Package>();
        mAddBlacklistPref = findPreference(KEY_BLACKLIST);
        mAddBlacklistPref.setOnPreferenceClickListener(this);
    }

    @Override
    public boolean onPreferenceClick(Preference preference) {
        if (preference == mAddBlacklistPref) {
            showDialog(DIALOG_BLACKLIST_APPS);
        } else {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity())
                    .setTitle(getStringIdentifier(mContext,"delete_app_blacklist_title"))
                    .setMessage(getStringIdentifier(mContext,"delete_app_blacklist_message"))
                    //.setIconAttribute(android.R.attr.alertDialogIcon)
                    .setPositiveButton(android.R.string.ok, (dialog, which) -> removeApplicationPref(preference.getKey(), mBlacklistPackages))
                    .setNegativeButton(android.R.string.cancel, null);

            builder.show();
        }
        return true;
    }

    /**
     * Application class
     */
    protected static class Package {
        public String name;
        /**
         * Stores all the application values in one call
         * @param name
         */
        public Package(String name) {
            this.name = name;
        }

        public String toString() {
            StringBuilder builder = new StringBuilder();
            builder.append(name);
            return builder.toString();
        }

        public static Package fromString(String value) {
            if (TextUtils.isEmpty(value)) {
                return null;
            }

            try {
                Package item = new Package(value);
                return item;
            } catch (NumberFormatException e) {
                return null;
            }
        }

    };

    protected void refreshCustomApplicationPrefs() {
        if (!parsePackageList()) {
            return;
        }

        // Add the Application Preferences
        if (mBlacklistPrefList != null) {
            mBlacklistPrefList.removeAll();

            for (Package pkg : mBlacklistPackages.values()) {
                try {
                    Preference pref = createPreferenceFromInfo(pkg);
                    mBlacklistPrefList.addPreference(pref);
                } catch (PackageManager.NameNotFoundException e) {
                    // Do nothing
                }
            }
        }

        // Keep these at the top
        mAddBlacklistPref.setOrder(0);
        // Add 'add' options
        mBlacklistPrefList.addPreference(mAddBlacklistPref);
    }

    protected void addCustomApplicationPref(String packageName, Map<String,Package> map) {
        Package pkg = map.get(packageName);
        if (pkg == null) {
            pkg = new Package(packageName);
            map.put(packageName, pkg);
            savePackageList(false, map);
            refreshCustomApplicationPrefs();
        }
    }

    protected Preference createPreferenceFromInfo(Package pkg)
            throws PackageManager.NameNotFoundException {
        PackageInfo info = mPackageManager.getPackageInfo(pkg.name,
                PackageManager.GET_META_DATA);
        Preference pref =
                new Preference(getActivity());

        pref.setKey(pkg.name);
        pref.setTitle(info.applicationInfo.loadLabel(mPackageManager));
        if ((info.applicationInfo.flags & info.applicationInfo.FLAG_SYSTEM) <= 0) {
            pref.setSummary(getStringIdentifier(mContext,"use_apps"));
        }else{
            pref.setSummary(getStringIdentifier(mContext,"system_apps"));
        }
        //pref.setSummary(info.applicationInfo.loadLabel(mPackageManager));
        pref.setIcon(info.applicationInfo.loadIcon(mPackageManager));

        pref.setPersistent(false);
        pref.setOnPreferenceClickListener(this);
        return pref;
    }

    protected void removeApplicationPref(String packageName, Map<String,Package> map) {
        if (map.remove(packageName) != null) {
            savePackageList(false, map);
            refreshCustomApplicationPrefs();
        }
    }

    protected boolean parsePackageList() {
        boolean parsed = false;
        final String blacklistString = Settings.System.getString(getActivity().getContentResolver(),
                mBlacklistPackageStore);

        if (DEBUG) Log.v(TAG, "blacklistString: " + blacklistString);

        if (!TextUtils.equals(mBlacklistPackageList, blacklistString)) {
            mBlacklistPackageList = blacklistString;
            mBlacklistPackages.clear();
            parseAndAddToMap(blacklistString, mBlacklistPackages);
            parsed = true;
        }

        return parsed;
    }

    protected void parseAndAddToMap(String baseString, Map<String,Package> map) {
        if (baseString == null) {
            return;
        }

        final String[] array = TextUtils.split(baseString, "##");
        if (DEBUG) Log.v(TAG, "baseString: " + baseString);

        for (String item : array) {
            if (TextUtils.isEmpty(item)) {
                continue;
            }
            Package pkg = Package.fromString(item);
            map.put(pkg.name, pkg);
        }
    }

    protected void savePackageList(boolean preferencesUpdated, Map<String,Package> map) {
        List<String> settings = new ArrayList<String>();
        for (Package app : map.values()) {
            settings.add(app.toString());
        }
        final String value = TextUtils.join("##", settings);
        if (preferencesUpdated) {
            mBlacklistPackageList = value;
        }
        if (DEBUG) Log.v(TAG, "blackStringSaved: " + value);
        Settings.System.putString(getActivity().getContentResolver(),
                mBlacklistPackageStore, value);
    }
}
