package org.salt.preference;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;


import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceManager;
import androidx.preference.SwitchPreference;
import androidx.preference.SwitchPreferenceCompat;

import java.util.ArrayList;

import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;
import static org.salt.preference.utils.SaltPrefeUtils.getIntSaltSettings;
import static org.salt.preference.utils.SaltPrefeUtils.getIntSaltSettings2;
import static org.salt.preference.utils.SaltPrefeUtils.putIntSaltSettings;
import static org.salt.preference.utils.SaltPrefeUtils.putIntSaltSettings2;
import static org.salt.preference.utils.SaltPrefeUtils.showrestart;


public class SaltSwitchPreference extends SwitchPreferenceCompat implements Preference.OnPreferenceChangeListener,
        ReverseDependencyMonitor {

    private ArrayList<Preference> mReverseDependents;
    private String mReverseDependencyKey;
    private  int mModeSettings;
    private Context mContext;
    private String mBroadcastKey;
    private final String mPackageToKill;
    private final boolean mIsRebootRequired;
    public SaltSwitchPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext=context;
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mReverseDependencyKey = typedArray.getString(R.styleable.LeoPreference_reverseDependency);
        mBroadcastKey = typedArray.getString(R.styleable.LeoPreference_BroadcastKey);
        mModeSettings =typedArray.getInt(R.styleable.LeoPreference_modeSettings,0);
        mIsRebootRequired = typedArray.getBoolean(R.styleable.LeoPreference_packageKill, false);
        mPackageToKill =typedArray.getString(R.styleable.LeoPreference_packageName);
        typedArray.recycle();
        setOnPreferenceChangeListener(this);
    }
    @Override
    public void onAttached() {
        super.onAttached();

        registerDependency();
    }
    private void registerDependency() {
        if (!TextUtils.isEmpty(mReverseDependencyKey)) {
            Preference findPreferenceInHierarchy = findPreferenceInHierarchy(mReverseDependencyKey);
            if (findPreferenceInHierarchy != null && (findPreferenceInHierarchy instanceof SaltSwitchPreference || findPreferenceInHierarchy instanceof CheckBoxPreference)) {
                ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) findPreferenceInHierarchy;
                reverseDependencyMonitor.registerReverseDependencyPreference(this);

            }
        }
    }
    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {
        int dbInt = 0;
        try {
            dbInt =getIntSaltSettings(mModeSettings,mContext,mKEY);
        } catch (Settings.SettingNotFoundException e) {
            if (defaultValue != null) {
                dbInt = (boolean) defaultValue ? 1 : 0;
                putIntSaltSettings(mModeSettings,mContext, mKEY, dbInt);

            }
        }
        persistBoolean(dbInt != 0);
        setChecked(dbInt != 0);

    }

    @Override
    protected void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        super.onAttachedToHierarchy(preferenceManager);
        registerDependency();
    }

    public String mKEY=defaultKey+getKey();
    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        boolean isTrue = (boolean) newValue;
        int dbInt = isTrue ? 1 : 0;
        putIntSaltSettings(mModeSettings,mContext, mKEY,dbInt );
        mContext.sendBroadcast(new Intent(mBroadcastKey));
        if (mReverseDependents != null && mReverseDependents.size() > 0) {
            for (Preference pref : mReverseDependents) {
                pref.setEnabled(!isTrue);
            }
        }
        if(mIsRebootRequired){
            showrestart(getContext(),mPackageToKill);
        }
        return true;
    }


    @Override
    public void registerReverseDependencyPreference(Preference preference) {
        if (mReverseDependents == null) {
            mReverseDependents = new ArrayList<>(); }
        if (preference != null && !mReverseDependents.contains(preference)) {
            mReverseDependents.add(preference);
            preference.setEnabled(!isChecked());
            Log.d("daxgirl", "registerReverseDependencyPreference preference is " + preference.getClass().getSimpleName());
        }

    }
}
