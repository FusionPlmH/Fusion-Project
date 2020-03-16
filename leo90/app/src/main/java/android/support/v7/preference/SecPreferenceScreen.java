package android.support.v7.preference;

import android.content.Context;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v7.preference.PreferenceManager.OnPreferenceTreeClickListener;
import android.util.AttributeSet;

public class SecPreferenceScreen extends PreferenceGroup {
    private boolean mIsSummaryColorPrimaryDark = false;
    private boolean mShouldUseGeneratedIds = true;

    public SecPreferenceScreen(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, TypedArrayUtils.getAttr(context, 2130968993, 16842894));
    }

    /* access modifiers changed from: protected */
    public boolean isOnSameScreenAsChildren() {
        return false;
    }

    /* access modifiers changed from: protected */
    public void onClick() {
        if (getIntent() == null && getFragment() == null && getPreferenceCount() != 0) {
            OnPreferenceTreeClickListener onPreferenceTreeClickListener = getPreferenceManager().getOnPreferenceTreeClickListener();
            if (onPreferenceTreeClickListener != null) {
                onPreferenceTreeClickListener.onPreferenceTreeClick(this);
            }
        }
    }

    public void semSetSummaryColorToColorPrimaryDark(boolean z) {
        SecPreferenceUtils.applySummaryColor(this, z);
    }
}
