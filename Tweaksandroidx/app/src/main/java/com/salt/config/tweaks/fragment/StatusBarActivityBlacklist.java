package com.salt.config.tweaks.fragment;


import android.app.Dialog;
import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;
import androidx.preference.PreferenceCategory;
import androidx.preference.PreferenceGroup;
import androidx.preference.PreferenceScreen;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.RadioButton;
import android.widget.ListView;

import com.salt.base.SaltPreferenceFragmentCompat;
import com.salt.config.R;
import com.salt.config.adapter.PackageListAdapter;

import org.salt.preference.SaltPreference;

import java.util.ArrayList;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Map;
import java.util.List;

public class StatusBarActivityBlacklist extends SaltPreferenceFragmentCompat implements
        Preference.OnPreferenceClickListener {
    @Override
    protected void getSaltPreferenceEnabled() {

    }
    @Override
    protected boolean getSaltPreferenceDisableSnackn() {
        return false;
    }


    private static final String TAG = "Blacklist";
    private static final String KEY_BLACKLIST = "StatusBar_blacklist_packages";

    private static final boolean DEBUG = false;

    private static final int DIALOG_BLACKLIST_APPS = 1;

    protected PackageListAdapter mPackageAdapter;
    protected PackageManager mPackageManager;
    protected PreferenceGroup mBlacklistPrefList;
    protected SaltPreference mAddBlacklistPref;
    protected String mBlacklistPackageList;
    protected String mBlacklistPackageStore;

    protected Map<String, Package> mBlacklistPackages;

    protected void showDialog(int dialogId) {
        switch (dialogId) {
            case DIALOG_BLACKLIST_APPS: {
                Dialog dialog;
                AlertDialog.Builder alertDialog = new AlertDialog.Builder(getActivity());
                final ListView list = new ListView(getActivity());
                list.setAdapter(mPackageAdapter);
                alertDialog.setTitle(R.string.profile_choose_app);
                alertDialog.setView(list);
                alertDialog.setNegativeButton(android.R.string.cancel,null);
                dialog = alertDialog.create();
                list.setOnItemClickListener((parent, view, position, id) -> {
                    // Add empty application definition, the user will be able to edit it later
                    PackageListAdapter.PackageItem info = (PackageListAdapter.PackageItem) parent.getItemAtPosition(position);
                    addCustomApplicationPref(info.packageName, mBlacklistPackages);
                    dialog.cancel();
                });
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
        mBlacklistPackageStore = "leo_hide_statusbar_blacklist";
        mPackageManager = getActivity().getPackageManager();
        mPackageAdapter = new PackageListAdapter(getActivity());
        mBlacklistPrefList = getPreferenceScreen();
        mBlacklistPrefList.setOrderingAsAdded(false);
        mBlacklistPackages = new HashMap<>();
        mAddBlacklistPref = findPreference(KEY_BLACKLIST);
        mAddBlacklistPref.setOnPreferenceClickListener(this);
    }

    @Override
    public boolean onPreferenceClick(Preference preference) {
        if (preference == mAddBlacklistPref) {
            showDialog(DIALOG_BLACKLIST_APPS);
        } else {
            AlertDialog.Builder builder = new AlertDialog.Builder(getActivity())
                        .setTitle(R.string.dialog_delete_title)
                        .setMessage(R.string.dialog_delete_message)
                        .setIconAttribute(android.R.attr.alertDialogIcon)
                        .setPositiveButton(android.R.string.ok, (dialog, which) -> removeApplicationPref(preference.getKey(), mBlacklistPackages))
                        .setNegativeButton(android.R.string.cancel, null);

            builder.show();
        }
        return true;
    }

    @Override
    protected int getSaltPreferencesFromXML() {
        return R.xml.statusbar_blacklist_prefs;
    }

    @Override
    protected void getSaltCreatePreferences() {

    }
    @Override
    public void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        initializeAllPreferences();
    }
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
        pref.setIcon(info.applicationInfo.loadIcon(mPackageManager));
        pref.setSummary(info.applicationInfo.packageName);
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

        final String[] array = TextUtils.split(baseString, ",-");
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
        final String value = TextUtils.join(",-", settings);
        if (preferencesUpdated) {
            mBlacklistPackageList = value;
        }
        if (DEBUG) Log.v(TAG, "blackStringSaved: " + value);
        Settings.System.putString(getActivity().getContentResolver(),
                mBlacklistPackageStore, value);
    }
}
