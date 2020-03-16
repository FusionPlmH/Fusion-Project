package com.android.systemui.qs.panelcolor;

import android.content.res.Configuration;
import android.view.ViewGroup;

public interface PanelColorManager {
    static PanelColorManager getInstance() {
        return PanelColorManagerImpl.getInstance();
    }

    void destroy();

    PanelColorModel getColorModel();

    void init(ViewGroup viewGroup, Configuration configuration);
}
