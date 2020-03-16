package org.salt.preference;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.TypedArray;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.Toast;


import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;


import java.util.ArrayList;

import static org.salt.preference.utils.SaltPrefeUtils.getIntSaltSettings;
import static org.salt.preference.utils.SaltPrefeUtils.putIntSaltSettings;

public class SaltCheckBoxPreference extends CheckBoxPreference implements Preference.OnPreferenceChangeListener,
        ReverseDependencyMonitor {
    private final String mReverseDependencyKey;
    private Context mContext;
    private ArrayList<Preference> mReverseDependents;
    private  int mModeSettings;
    public SaltCheckBoxPreference (Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext=context;
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mReverseDependencyKey = typedArray.getString(R.styleable.LeoPreference_reverseDependency);
        mModeSettings =typedArray.getInt(R.styleable.LeoPreference_modeSettings,0);
                typedArray.recycle();

        setOnPreferenceChangeListener(this);
    }

    @Override
    public void onAttached() {
        super.onAttached();
        if (!TextUtils.isEmpty(mReverseDependencyKey)) {
            Preference preference = findPreferenceInHierarchy(mReverseDependencyKey);
            if (preference != null && (preference instanceof SaltSwitchPreference || preference instanceof SaltCheckBoxPreference)) {
                ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) preference;
                reverseDependencyMonitor.registerReverseDependencyPreference(this);
            }
        }
    }

    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {
        int dbInt = 0;
        try {
            dbInt = getIntSaltSettings(mModeSettings,mContext,getKey());
        } catch (Settings.SettingNotFoundException e) {
            if (defaultValue != null) {
                dbInt = (boolean) defaultValue ? 1 : 0;
            }
        }
        putIntSaltSettings(mModeSettings,mContext, getKey(), dbInt);
        persistBoolean(dbInt != 0);
        setChecked(dbInt != 0);

    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        boolean isTrue = (boolean) newValue;
        int dbInt = isTrue ? 1 : 0;
        putIntSaltSettings(mModeSettings,mContext, getKey(), dbInt);
        if (mReverseDependents != null && mReverseDependents.size() > 0) {
            for (Preference pref : mReverseDependents) {
                pref.setEnabled(!isTrue);
            }
        }
        return true;
    }

    @Override
    public void registerReverseDependencyPreference(Preference preference) {
        if (mReverseDependents == null) {
            mReverseDependents = new ArrayList<>();
        }
        if (preference != null && !mReverseDependents.contains(preference)) {
            mReverseDependents.add(preference);
            preference.setEnabled(!isChecked());
            Log.d("daxgirl", "registerReverseDependencyPreference preference is " + preference.getClass().getSimpleName());
        }

    }
}
