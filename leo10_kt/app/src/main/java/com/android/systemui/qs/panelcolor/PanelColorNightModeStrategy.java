package com.android.systemui.qs.panelcolor;

import android.content.Context;
import android.view.ViewGroup;


public class PanelColorNightModeStrategy extends PanelColorStrategy {

    private class NightPanelColorModel extends PanelColorModel {


        public NightPanelColorModel(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, int i28, int i29, int i30, int i31, int i32, int i33) {
            super(i, i2, i3, i4, i5, i6, i7, i8, i9, i10, i11, i12, i13, i14, i15, i16, i17, i18, i19, i20, i21, i22, i23, i24, i25, i26, i27, i28, i29, i30, i31, i32, i33);
        }


    }

    public PanelColorModel loadCommonColors(ViewGroup viewGroup) {
        return null;
    }

    public void updateCommonColorDraw(ViewGroup viewGroup) {
    }
}
