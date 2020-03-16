package com.android.systemui.qs.panelcolor;

import android.util.Log;
import android.view.ViewGroup;


public class PanelColorQSColoringStrategy extends PanelColorStrategy {
    private PanelColorQSColoringModel makeQuickStarModel() {

        return null;
    }
    public PanelColorModel loadCommonColors(ViewGroup viewGroup) {
        Log.d("[QuickStar]PanelColorQSColoringStrategy", "loadCommonColors()");
        PanelColorQSColoringModel makeQuickStarModel = makeQuickStarModel();
        if (makeQuickStarModel != null) {
            //((SecQSColoringPresenter) Dependency.get(SecQSColoringPresenter.class)).writeSettingValue("qs_coloring_nssl_background_color", makeQuickStarModel.NsslBg);
         //   ((SecQSColoringPresenter) Dependency.get(SecQSColoringPresenter.class)).writeSettingValue("qs_coloring_notification_primary_color", makeQuickStarModel.NotiPrimary);
          //  ((SecQSColoringPresenter) Dependency.get(SecQSColoringPresenter.class)).writeSettingValue("qs_coloring_notification_text_color", makeQuickStarModel.NotiText);
          //  ((SecQSColoringPresenter) Dependency.get(SecQSColoringPresenter.class)).writeSettingValue("qs_coloring_notification_background_color", makeQuickStarModel.NotiBg);
          //  ((SecQSColoringPresenter) Dependency.get(SecQSColoringPresenter.class)).writeSettingValue("qs_coloring_notification_background_opaque_color", makeQuickStarModel.NotiOpaqueBg);
        }
        return makeQuickStarModel;
    }

    public void updateCommonColorDraw(ViewGroup viewGroup) {
        if (viewGroup != null && this.mColorModel != null) {
        //    ((SecQSColoringPresenter) Dependency.get(SecQSColoringPresenter.class)).updateCommonColorDraw(viewGroup, 0);
        }
    }
}
