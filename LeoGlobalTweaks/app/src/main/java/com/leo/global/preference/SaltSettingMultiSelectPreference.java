package com.leo.global.preference;

import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.preference.DialogPreference;
import android.preference.Preference;
import android.provider.Settings;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RadioButton;


import com.leo.global.tweaks.R;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


public class SaltSettingMultiSelectPreference extends DialogPreference implements MultiSelectAdapter.OnItemSelectedListener {

    private ContentResolver mContentResolver;
    private String[] mEntries, mValues;
    private MultiSelectAdapter mMultiSelectAdapter;
    private String mValue;
    private int mCount;
    private RadioButton mRadioButton;

    public SaltSettingMultiSelectPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContentResolver = context.getContentResolver();
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.SaltSettingMultiSelect);
        mEntries = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.SaltSettingMultiSelect_multiEntryList, -1));
        mValues = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.SaltSettingMultiSelect_multiValuesList, -1));
        typedArray.recycle();
        setDialogLayoutResource(R.layout.multi_select_preference_dialog_layout);


        if (mEntries == null || mValues == null || mEntries.length != mValues.length || mEntries.length == 0)
            throw new IllegalArgumentException("Data for preference is missing or improperly formatted. Please verify the arrays are all present and are all of equal size");

    }

    @Override
    protected Object onGetDefaultValue(TypedArray a, int index) {
        return a.getString(index);
    }

    @Override
    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        String value = Settings.System.getString(mContentResolver, getKey());
        if (value == null) {
            value = defaultValue != null ? (String) defaultValue : "";
            Settings.System.putString(mContentResolver, getKey(), value);
        }
        persistString(value);
        mValue = value;
        setSummary(getSummaryString());
    }

    private String getSummaryString() {
        StringBuilder stringBuilder = new StringBuilder();
        if (!TextUtils.isEmpty(mValue)) {
            String[] values = mValue.split(",");
            if (values.length > 0) {
                for (String value : values) {
                    if (stringBuilder.length() > 0) {
                        stringBuilder.append(", ");
                    }
                    stringBuilder.append(mEntries[getEntryForValue(value)]);
                }
            }
        }
        return stringBuilder.toString();
    }

    private int getEntryForValue(String value) {
        List<String> listValues = Arrays.asList(mValues);
        return listValues.indexOf(value);
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
        view.findViewById(R.id.select_all_main_container).setOnClickListener(view1 -> {
            mRadioButton.setChecked(!mRadioButton.isChecked());
            mMultiSelectAdapter.selectAll(mRadioButton.isChecked());
            mCount = mRadioButton.isChecked() ? mEntries.length : 0;
        });


    }

    @Override
    public void onClick(DialogInterface dialog, int which) {
        if (which == DialogInterface.BUTTON_POSITIVE) {
            mValue = mMultiSelectAdapter.getSelectedItems();
            persistString(mValue);
            Settings.System.putString(mContentResolver, getKey(), mValue);
            setSummary(getSummaryString());

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

    @Override
    public CharSequence getDialogTitle() {
        return super.getDialogTitle();
    }
}
