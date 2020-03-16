package com.android.settings;

import android.app.Activity;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.Fragment;
import android.content.ContentResolver;
import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import android.content.DialogInterface.OnDismissListener;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;

import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceCategory;
import android.support.v7.preference.PreferenceGroup;
import android.support.v7.preference.PreferenceScreen;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.AdapterDataObserver;
import android.support.v7.widget.RecyclerView.LayoutManager;
import android.text.TextUtils;
import android.util.ArrayMap;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;

import com.android.settings.core.InstrumentedPreferenceFragment;
import com.android.settings.core.instrumentation.InstrumentedDialogFragment;

import java.util.ArrayList;
import java.util.UUID;

public abstract class SettingsPreferenceFragment extends InstrumentedPreferenceFragment  {
    private String[] SETTINGS_FOR_KNOX = null;

    private boolean mAnimationAllowed;
    private boolean mAutoRemoveAvailable = true;
    private ViewGroup mButtonBar;
    private ContentResolver mContentResolver;
    private Adapter mCurrentRootAdapter;
    private AdapterDataObserver mDataSetObserver = new AdapterDataObserver() {
        public void onChanged() {

        }

        public void onItemRangeChanged(int i, int i2) {

        }

        public void onItemRangeChanged(int i, int i2, Object obj) {

        }

        public void onItemRangeInserted(int i, int i2) {

        }

        public void onItemRangeMoved(int i, int i2, int i3) {

        }

        public void onItemRangeRemoved(int i, int i2) {

        }
    };
    /* access modifiers changed from: private */
    public SettingsDialogFragment mDialogFragment;
    private View mEmptyView;


    private boolean mIsDataSetObserverRegistered = false;
    private LinearLayoutManager mLayoutManager;
    private ViewGroup mPinnedHeaderFrameLayout;
    private ArrayMap<String, Preference> mPreferenceCache;
    public boolean mPreferenceHighlighted = false;
    private int mRelativeLinkViewCount = 0;

    public boolean onPreferenceTreeClick(Preference preference) {

        return false;
    }

    public void finish() {


    }


    public static class SettingsDialogFragment extends InstrumentedDialogFragment {
        private OnCancelListener mOnCancelListener;
        /* access modifiers changed from: private */
        public OnDismissListener mOnDismissListener;
        private Fragment mParentFragment;

        public SettingsDialogFragment() {

        }

        public int getDialogId() {
            return this.mDialogId;
        }

        public int getMetricsCategory() {

            return 0;
        }

        public void onCancel(DialogInterface dialogInterface) {

        }

        public Dialog onCreateDialog(Bundle bundle) {

            return null;
        }

        public void onDetach() {

        }

        public void onDismiss(DialogInterface dialogInterface) {

        }

        public void onSaveInstanceState(Bundle bundle) {

        }

        public void onStart() {

        }
    }

    private void addPreferenceToBottom() {

    }

    private void addPreferenceToTop() {

    }

    private void checkAvailablePrefs(PreferenceGroup preferenceGroup) {

    }


}
