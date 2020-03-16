package org.salt.preference;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RadioButton;


import androidx.preference.PreferenceViewHolder;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;


import org.salt.preference.utils.MultiSelectAdapter;
import org.salt.preference.utils.SelectionItem;

import java.util.ArrayList;
import java.util.Arrays;

import static org.salt.preference.utils.SaltPrefeUtils.getStringSaltSettings;
import static org.salt.preference.utils.SaltPrefeUtils.putStringSaltString;
import static org.salt.preference.utils.SaltPrefeUtils.showArrows;


public class SaltMultiSelectPreference extends SaltDialogPreference implements MultiSelectAdapter.OnItemSelectedListener {
    private ContentResolver mContentResolver;
    private String[] mEntries, mValues;
    private MultiSelectAdapter mMultiSelectAdapter;
    private String mValue;
    private int mCount;
    private RadioButton mRadioButton;
    private  int mModeSettings;


    @Override
    protected void showDialogPositive() {
        mValue = mMultiSelectAdapter.getSelectedItems();
        persistString(mValue);
        putStringSaltString(mModeSettings,getContext(), getKey(), mValue);
        setSummary(getSummaryString());
    }

    @Override
    protected void showDialogNegative() {
        mDialog = null;
    }

    @Override
    protected String showDialogPositiveString() {
        return getContext().getString(android.R.string.ok);
    }
    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        showArrows(getContext(), holder);

    }
    @Override
    protected void showDialogView() {
        mMultiSelectAdapter = new MultiSelectAdapter(getData(), this);
        mCount = 0;
        RecyclerView recyclerView = (RecyclerView)mDialog.findViewById(R.id.multi_select_recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
        recyclerView.setAdapter(mMultiSelectAdapter);
        mRadioButton = (RadioButton) mDialog.findViewById(R.id.select_all_radio_button);
        mMultiSelectAdapter.setSelectedItems(mValue);
        mRadioButton.setChecked(mCount == mEntries.length);
        mDialog.findViewById(R.id.select_all_main_container).setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {
                mRadioButton.setChecked(!mRadioButton.isChecked());
                mMultiSelectAdapter.selectAll(mRadioButton.isChecked());
                mCount = mRadioButton.isChecked() ? mEntries.length : 0;
            }
        });
    }

    @Override
    protected int showDialoglayout() {
        return R.layout.multi_select_preference_dialog_layout;
    }

    public SaltMultiSelectPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
	    mContentResolver = context.getContentResolver();

        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.SaltSettingMultiSelect);
        mEntries = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.SaltSettingMultiSelect_multiEntryList, -1));
        mValues = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.SaltSettingMultiSelect_multiValuesList, -1));
        typedArray.recycle();
        TypedArray typedArray2 = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mModeSettings=typedArray2.getInt(R.styleable.LeoPreference_modeSettings,0);
        typedArray2.recycle();
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
        value =getStringSaltSettings(mModeSettings,getContext(), getKey());
        if (value == null) {
            value = defaultValue != null ? (String) defaultValue : "";
            putStringSaltString(mModeSettings,getContext(), getKey(), (String) defaultValue);
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
                        stringBuilder.append(",");
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