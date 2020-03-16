package qs.src.com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class QSDateClock extends LinearLayout {
    public QSDateClock(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void updateVisibility() {
        if ((getResources().getConfiguration().orientation == 2 ? 1 : 0) != 0) {
            setVisibility(8);
        } else {
            setVisibility(0);
        }
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateVisibility();
    }

    /* access modifiers changed from: protected */
    public void onFinishInflate() {
        super.onFinishInflate();
        updateVisibility();
    }
}
