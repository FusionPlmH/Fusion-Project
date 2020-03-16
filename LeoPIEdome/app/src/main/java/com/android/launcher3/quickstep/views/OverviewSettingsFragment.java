package com.android.launcher3.quickstep.views;

import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceCategory;
import android.support.v7.preference.PreferenceFragmentCompat;
import android.support.v7.preference.PreferenceScreen;
import android.support.v7.preference.SwitchPreferenceCompat;
import android.text.SpannableString;
import android.text.style.UnderlineSpan;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

import com.android.launcher3.quickstep.OverviewSettingsActivity;

import static com.android.launcher3.LeoAmber.LeoGlobalUtils.LeoComponetURL;


public class OverviewSettingsFragment extends PreferenceFragmentCompat {
    private static final String PREF_PRIVACY_CUSTOMIZATION_SERVICE = "pref.privacy.customization_service";
    public static final String PREF_RECOMMENDED_APPS = "pref_overview_recommended_apps";
    private static final String RECOMMENDATION_SETTINGS_CATEGORY_KEY = "pref_category_overview_recommendation_settings";
    private static final String RUBIN_CLIENT_PACKAGE = "com.samsung.android.rubin.app";
    private static final String TAG = "OverviewSettingsFragment";
    private boolean mHasClicked = false;
    private Preference mPrefCustomization;
    private PreferenceCategory mRecommendationSettingsCategory;
    private SwitchPreferenceCompat mRecommendedApps;
    private static final String LEO_TASK= "leo_task_url";
    private Preference mPrefLeoTask;

    private String getTextWithColoredPart(String str) {

        return str;
    }

    private SpannableString getUnderlinedText(String str) {
        SpannableString spannableString = new SpannableString(str);
        spannableString.setSpan(new UnderlineSpan(), 0, spannableString.length(), 0);
        return spannableString;
    }

    private void initPreferences() {
        this.mRecommendationSettingsCategory = (PreferenceCategory) findPreference(RECOMMENDATION_SETTINGS_CATEGORY_KEY);
        if (this.mRecommendationSettingsCategory != null) {
            this.mRecommendedApps = (SwitchPreferenceCompat) findPreference(PREF_RECOMMENDED_APPS);
           mPrefCustomization = findPreference(PREF_PRIVACY_CUSTOMIZATION_SERVICE);
            mPrefLeoTask = findPreference(LEO_TASK);
        }
    }

    private boolean isRubinAvailable() {
        boolean z = false;
        try {
            PackageManager packageManager = getContext().getPackageManager();
            packageManager.getPackageInfo(RUBIN_CLIENT_PACKAGE, 0);
            int applicationEnabledSetting = packageManager.getApplicationEnabledSetting(RUBIN_CLIENT_PACKAGE);
            if (applicationEnabledSetting == 1 || applicationEnabledSetting == 0) {
                z = true;
            }
            return z;
        } catch (Throwable e) {

            return false;
        }
    }

    static /* synthetic */ void lambda$null$0(OverviewSettingsFragment overviewSettingsFragment) {
        if (overviewSettingsFragment.isAdded()) {
            overviewSettingsFragment.updateCustomizationSummary();
        }
    }

    private void removePreference(Preference preference) {
        getPreferenceScreen().removePreference(preference);
    }

    private void setupPreferences() {
        if (this.mRecommendationSettingsCategory != null) {
            setupRecommendedAppsPref();
            if (isRubinAvailable()) {
                updateCustomizationSummary();
            } else if (this.mPrefCustomization != null) {
                removePreference(this.mPrefCustomization);
            }
        }
    }

    private void setupRecommendedAppsPref() {
        if (this.mRecommendedApps != null) {
            this.mRecommendedApps.setChecked(getPreferenceManager().getSharedPreferences().getBoolean(PREF_RECOMMENDED_APPS, true));
        }
    }

    private void updateCustomizationSummary() {
        if (this.mPrefCustomization != null) {

        }
    }

    public void onCreatePreferences(Bundle bundle, String str) {
        setPreferencesFromResource(2131230747, str);
        getPreferenceManager().setSharedPreferencesName("com.sec.android.app.launcher.prefs");
        initPreferences();
        setupPreferences();

    }

    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        ViewGroup viewGroup2 = (ViewGroup) super.onCreateView(layoutInflater, viewGroup, bundle);

        return viewGroup2;
    }

    public void onDestroy() {

        super.onDestroy();
    }

    public boolean onPreferenceTreeClick(Preference preference) {
        if (this.mHasClicked) {
            return false;
        }
        if (preference != this.mPrefCustomization) {
            OverviewSettingsActivity.startRubinSettingsActivity(getContext());
        }else
        if (preference != mPrefLeoTask) {
            LeoComponetURL(getContext(),"com.leo.salt/com.leo.salt.activity.RecentsActivity");
        } else {
            return super.onPreferenceTreeClick(preference);
        }
        this.mHasClicked = true;
        return true;

    }


    public void onResume() {
        super.onResume();
        this.mHasClicked = false;
        updateCustomizationSummary();
    }
}
