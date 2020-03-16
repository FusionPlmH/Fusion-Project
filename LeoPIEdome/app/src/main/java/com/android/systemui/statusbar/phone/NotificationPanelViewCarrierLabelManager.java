package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;

import com.android.systemui.util.DeviceState;

public class NotificationPanelViewCarrierLabelManager {
    private TextView mCarrierLabel;
    private View mCarrierLabelSlot1;
    private View mCarrierLabelSlot2;
    private Context mContext;
    private int mInsetNavigationBarBottomHeight = 0;
    private int mLastDensityDpi = -1;
    private int mLastOrientation = -1;
    private int mLastSemMobileKeyboardCovered = -1;
    private NotificationPanelView mPanelView;
    private View mLeoPullDownHandle;
    public NotificationPanelViewCarrierLabelManager(Context context, NotificationPanelView notificationPanelView) {
        this.mContext = context;
        this.mPanelView = notificationPanelView;

        getLeoPullDownHandle();
    }

    private void getLeoPullDownHandle() {
       // mNotificationPanel.getLeoPullDownHandleView(findViewWithTag("leo_pulldown_handle"));
        mLeoPullDownHandle = (View) this.mPanelView.findViewWithTag("leo_pulldown_handle");
    }
    private int getDefaultCarrierLabelHeight() {
        return this.mContext.getResources().getDimensionPixelSize(2131166437);
    }

    private void relayoutCarrierLabel() {
        if (this.mCarrierLabel != null) {
            this.mCarrierLabel.setTextSize(0, (float) this.mContext.getResources().getDimensionPixelSize(2131166439));
            if ("ZVV".equals(Rune.STATBAR_ICON_BRANDING)) {
                updateCarrierLabelVisibility();
            } else {
                LayoutParams layoutParams = this.mCarrierLabel.getLayoutParams();
                if (layoutParams != null) {
                    layoutParams.height = getDefaultCarrierLabelHeight() + this.mInsetNavigationBarBottomHeight;
                    this.mCarrierLabel.setLayoutParams(layoutParams);
                    this.mCarrierLabel.setPadding(0, 0, 0, this.mInsetNavigationBarBottomHeight);
                }
            }
        }
    }

    public void destroy() {

    }

    public void init() {

    }

    public void onConfigurationChanged(Configuration configuration) {

    }

    public void setCarrierLabelSlot1(View view) {
        this.mCarrierLabelSlot1 = view;
    }

    public void setCarrierLabelSlot2(View view) {
        this.mCarrierLabelSlot2 = view;
    }

    public void updateCarrierLabelAlphaAndVisibility(float f) {

    }

    public void updateCarrierLabelVisibility() {

    }

    public void updateNavHeight(int i) {

    }
}
