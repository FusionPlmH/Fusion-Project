package org.salt.preference;


import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;

import androidx.preference.DropDownPreference;
import androidx.preference.PreferenceViewHolder;

import org.salt.preference.utils.SystemSettingsStore;
import static org.salt.preference.utils.SaltPrefeUtils.showArrows;
public class SaltDropDownPreference extends DropDownPreference {
     public SaltDropDownPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
    }
    public SaltDropDownPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
    }
    public SaltDropDownPreference(Context context) {
        super(context, null);
        setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        showArrows(getContext(), holder);
    }

    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {
        setValue(restoreValue ? getPersistedString((String) defaultValue) : (String) defaultValue);
    }
}
