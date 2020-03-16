package com.tweaks.salt.preference;

import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;

import android.preference.DialogPreference;
import com.tweaks.salt.preference.MyCheckBoxPreference;
import com.tweaks.salt.preference.MySwitchPreference;
import android.preference.Preference;
import android.provider.Settings.Global;
import android.provider.Settings.Secure;
import android.provider.Settings.System;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RadioButton;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.tweaks.salt.R;
import com.tweaks.salt.utils.MultiSelectAdapter;
import com.tweaks.salt.utils.SelectionItem;
import com.tweaks.salt.utils.Utils;

public class MyMultiSelectPreference extends DialogPreference implements MultiSelectAdapter.OnItemSelectedListener {
    private final String mPackageToKill;
    private final boolean mIsSilent;
    private final boolean mIsRebootRequired;
    private final String mReverseDependencyKey;
    private ContentResolver mContentResolver;
  private boolean isGlobal = false;
    private boolean isSecure = false;
    private String[] mEntries, mValues;
    private MultiSelectAdapter mMultiSelectAdapter;
    private String mValue;
    private int mCount;
    private RadioButton mRadioButton;

    public MyMultiSelectPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContentResolver = context.getContentResolver();
         String isKeyGlobal = attrs.getAttributeValue("SECURE_GLOBAL", "isGlobal");
        String isKeySecure = attrs.getAttributeValue("SECURE_GLOBAL", "isSecure");
        if (TextUtils.equals(isKeyGlobal, "true")) {
            this.isGlobal = true;
        }
        if (TextUtils.equals(isKeySecure, "true")) {
            this.isSecure = true;
        }
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.MyMultiSelectPreference);
        mEntries = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.MyMultiSelectPreference_multiEntryList, -1));
        mValues = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.MyMultiSelectPreference_multiValuesList, -1));
        typedArray.recycle();
        TypedArray generalTypedArray = context.obtainStyledAttributes(attrs, R.styleable.Preference);
        mPackageToKill = generalTypedArray.getString(R.styleable.Preference_packageNameToKill);
        mIsSilent = generalTypedArray.getBoolean(R.styleable.Preference_isSilent, true);
        mReverseDependencyKey = generalTypedArray.getString(R.styleable.Preference_reverseDependency);
        mIsRebootRequired = generalTypedArray.getBoolean(R.styleable.Preference_rebootDevice, false);

        generalTypedArray.recycle();

        setDialogLayoutResource(R.layout.multi_select_preference_dialog_layout);

        setWidgetLayoutResource(R.layout.widget_icon_accent);
        if (mEntries == null || mValues == null || mEntries.length != mValues.length || mEntries.length == 0)
            throw new IllegalArgumentException("Data for preference is missing or improperly formatted. Please verify the arrays are all present and are all of equal size");

    }

    @Override
    protected Object onGetDefaultValue(TypedArray a, int index) {
        return a.getString(index);
    }

    @Override
    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        String value;
        if (this.isGlobal) {
            value = Global.getString(this.mContentResolver, getKey());
        } else if (this.isSecure) {
            value = Secure.getString(this.mContentResolver, getKey());
        } else {
            value = System.getString(this.mContentResolver, getKey());
        }
        if (value == null) {
            value = defaultValue != null ? (String) defaultValue : "";
            if (this.isGlobal) {
                Global.putString(this.mContentResolver, getKey(), value);
            } else if (this.isSecure) {
                Secure.putString(this.mContentResolver, getKey(), value);
            } else {
                System.putString(this.mContentResolver, getKey(), value);
            }
        }
        persistString(value);
        this.mValue = value;
        setSummary(getSummaryString());
    }

    private String getSummaryString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (!TextUtils.isEmpty(this.mValue)) {
            String[] values = this.mValue.split(",");
            if (values.length > 0) {
                for (String value : values) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append(", ");
                    }
                    try {
                        stringBuilder.append(this.mEntries[getEntryForValue(value)]);
                    } catch (ArrayIndexOutOfBoundsException e) {
                        e.printStackTrace();
                    }
                }
            }
        }
        return stringBuilder.toString();
    }

    private int getEntryForValue(String value) {
        return Arrays.asList(this.mValues).indexOf(value);
    }

    @Override
    protected void onAttachedToActivity() {
        super.onAttachedToActivity();
        if (!TextUtils.isEmpty(mReverseDependencyKey)) {
            Preference preference = findPreferenceInHierarchy(mReverseDependencyKey);
            if (preference != null && (preference instanceof MySwitchPreference || preference instanceof MyCheckBoxPreference)) {
                ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) preference;
                reverseDependencyMonitor.registerReverseDependencyPreference(this);
            }
        }
    }

    @Override
    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);
        mMultiSelectAdapter = new MultiSelectAdapter(getData(), this);
        mCount = 0;


        RecyclerView recyclerView = (RecyclerView) view.findViewById(R.id.multi_select_recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
        recyclerView.setAdapter(mMultiSelectAdapter);
        mRadioButton = (RadioButton) view.findViewById(R.id.select_all_radio_button);
        mMultiSelectAdapter.setSelectedItems(mValue);
        mRadioButton.setChecked(mCount == mEntries.length);
        view.findViewById(R.id.select_all_main_container).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                mRadioButton.setChecked(!mRadioButton.isChecked());
                mMultiSelectAdapter.selectAll(mRadioButton.isChecked());
                mCount = mRadioButton.isChecked() ? mEntries.length : 0;
            }
        });


    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        if (which == -1) {
            this.mValue = this.mMultiSelectAdapter.getSelectedItems();
            persistString(this.mValue);
            if (this.isGlobal) {
                Global.putString(this.mContentResolver, getKey(), this.mValue);
            } else if (this.isSecure) {
                Secure.putString(this.mContentResolver, getKey(), this.mValue);
            } else {
                System.putString(this.mContentResolver, getKey(), this.mValue);
            }
            setSummary(getSummaryString());
            if (this.mIsRebootRequired) {
                Utils.showRebootRequiredDialog(getContext());
            } else if (this.mPackageToKill != null && Utils.isPackageInstalled(this.mPackageToKill)) {
                if (this.mIsSilent) {
                    Utils.killPackage(this.mPackageToKill);
                } else {
                    Utils.showKillPackageDialog(this.mPackageToKill, getContext());
                }
            }
        }
        super.onClick(dialog, which);
    }

    private ArrayList<SelectionItem> getData() {
        ArrayList<SelectionItem> list = new ArrayList<>();
        for (int i = 0; i < mEntries.length; i++) {
            SelectionItem selectionItem = new SelectionItem();
            selectionItem.entry = mEntries[i];
            selectionItem.value = mValues[i];
            list.add(selectionItem);
        }
        return list;
    }

    @Override
    public void onItemSelected(boolean isSelected) {
        if (isSelected) {
            mCount++;
            if (mCount == mEntries.length) mRadioButton.setChecked(true);
        } else {
            if (mCount == mEntries.length) mRadioButton.setChecked(false);
            mCount--;
        }
    }
}
