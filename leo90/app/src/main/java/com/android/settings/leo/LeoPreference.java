package com.android.settings.leo;

import android.content.Context;
import android.support.v7.preference.SecPreference;
import android.util.AttributeSet;
import static com.android.settings.leo.LeoConfig.*;

public class LeoPreference extends SecPreference {
    private Context mContext;

    public LeoPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mContext = context;
        setTitle(getStringIdentifier(this.mContext, "leo_name"));
        setSummary(getStringIdentifier(this.mContext, "leo_name_sumarry"));
    }
}
