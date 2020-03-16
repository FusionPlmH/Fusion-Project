package android.support.v7.preference;

import android.content.Context;
import android.util.AttributeSet;

public class SecPreference extends Preference {
    public SecPreference(Context context) {
        this(context, null);
    }

    public SecPreference(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public SecPreference(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    public SecPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
    }

    public void semSetSummaryColorToColorPrimaryDark(boolean z) {
        SecPreferenceUtils.applySummaryColor(this, z);
    }
}
