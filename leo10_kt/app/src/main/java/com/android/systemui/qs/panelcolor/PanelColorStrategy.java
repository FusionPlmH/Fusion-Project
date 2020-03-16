package com.android.systemui.qs.panelcolor;

import android.view.View;
import android.view.ViewGroup;

public abstract class PanelColorStrategy {
    protected PanelColorModel mColorModel;

    public void execute(ViewGroup viewGroup) {
        if (viewGroup != null && viewGroup.getContext() != null) {
            this.mColorModel = loadCommonColors(viewGroup);
            recursiveSearchToUpdateColors(viewGroup, 0);
        }
    }

    public boolean isOneOfUs(Object obj) {
        return obj != null && (obj instanceof PanelColorAssistant);
    }

    public abstract PanelColorModel loadCommonColors(ViewGroup viewGroup);

    /* access modifiers changed from: protected */
    public void recursiveSearchToUpdateColors(ViewGroup viewGroup, int i) {
        if (viewGroup != null && i <= 20) {
            updateCommonColorDraw(viewGroup);
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt != null && (childAt instanceof ViewGroup)) {
                    recursiveSearchToUpdateColors((ViewGroup) childAt, i + 1);
                }
            }
            if (isOneOfUs(viewGroup)) {
                ((PanelColorAssistant) viewGroup).onPanelColorChanged(this.mColorModel);
            }
        }
    }

    public abstract void updateCommonColorDraw(ViewGroup viewGroup);
}
