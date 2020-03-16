package org.salt.preference;

import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;

import android.util.AttributeSet;

import androidx.preference.ListPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;

import java.util.Arrays;
import java.util.List;

import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;
import static org.salt.preference.utils.SaltPrefeUtils.getStringSaltSettings;
import static org.salt.preference.utils.SaltPrefeUtils.putStringSaltString;
import static org.salt.preference.utils.SaltPrefeUtils.showArrows;


public class SaltListPreference extends ListPreference implements Preference.OnPreferenceChangeListener {
    private List<CharSequence> mEntries, mValues;
    private  int mModeSettings;
    private Context mContext;
    private String mBroadcastKey;
    public SaltListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext=context;
        mEntries = Arrays.asList(getEntries());
        mValues = Arrays.asList(getEntryValues());
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mBroadcastKey = typedArray.getString(R.styleable.LeoPreference_BroadcastKey);
        mModeSettings =typedArray.getInt(R.styleable.LeoPreference_modeSettings,0);
        typedArray.recycle();

        setOnPreferenceChangeListener(this);
    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        showArrows(getContext(), holder);
    }
    public String mKEY=defaultKey+getKey();
    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {
        String dbValue =getStringSaltSettings(mModeSettings,mContext, mKEY);
        String value = "";
        if (!restoreValue) {
            if (dbValue != null) {
                value = dbValue;
                persistString(value);
            } else {
                if (defaultValue != null) {
                    value = (String) defaultValue;
                    putStringSaltString(mModeSettings,mContext,mKEY, (String) defaultValue);
                }
            }
        } else {
            value = getPersistedString(null);
            if (dbValue != null && !dbValue.equals(value)) {
                persistString(dbValue);
                value = dbValue;
            }
        }

        int index = mValues.indexOf(value);
        if (index != -1) {
            setSummary(mEntries.get(index));
            setValue(value);
        }
    }

    @Override
    public void setValue(String value) {
        String oldValue = getValue();
        super.setValue(value);
        if(!value.equals(oldValue)) {
            notifyDependencyChange(shouldDisableDependents());
        }
    }

    @Override
    public boolean shouldDisableDependents() {
        return super.shouldDisableDependents() || getValue() == null ;
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        mContext.sendBroadcast(new Intent(mBroadcastKey));
        putStringSaltString(mModeSettings,mContext,mKEY, (String) newValue);
        int index = mValues.indexOf(newValue);
        if (index != -1) {
            setSummary(mEntries.get(index));
        }
        return true;
    }
}
