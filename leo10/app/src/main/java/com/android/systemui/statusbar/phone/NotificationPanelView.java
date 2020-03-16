package com.android.systemui.statusbar.phone;


import android.content.Context;
import android.view.MotionEvent;
import android.view.View;

import com.android.systemui.qs.SecQuickStatusBarHeader;
import com.android.systemui.statusbar.salt.SaltNotificationPanelController;

import static com.android.settingslib.salt.SaltValues.Values13;


public class NotificationPanelView extends PanelView  {
    public SaltNotificationPanelController mLeoPanelController;
    private View mLeoPanelView;
    Context mContext;
    protected int mStatusBarState;
    private int mLastOrientation;
    protected float mQsExpansionHeight;
    protected int mQsMinExpansionHeight;
    public boolean mQsFullyExpanded;
    public boolean mKeyguardShowing;

    public NotificationPanelView(Context context) {
        super(context);
        mLeoPanelController=new SaltNotificationPanelController(mContext,this);
        mLeoPanelController.LeoDetector();
    }
    public void setLeoPanelUpdated(float f) {
        if (!this.mKeyguardShowing) {
            View mLeoView  = this.mLeoPanelView;
            if (mLeoView != null) {
                mLeoView.setAlpha(f / ((float) getMaxPanelHeight()));
            }
        }
    }

    public void updateLeoPanelVisibility() {
        if (this.mLeoPanelView != null) {
            Object obj = (this.mStatusBarState == 1 || this.mStatusBarState == 5 || this.mStatusBarState == 10) ? null : (this.mLastOrientation == 2 || this.mQsExpansionHeight > ((float) this.mQsMinExpansionHeight)) ? 1 : this.mQsFullyExpanded ? 1 : 1;
            this.mLeoPanelView.setVisibility(obj != null ? 0 : 8);
        }
    }
    public int getMaxPanelHeight() {

        return 0;
    }

    public void loadDimens() {
        mLeoPanelController.loadLeoDimens();
    }
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int action = motionEvent.getAction();

        onleoTouchEvent(motionEvent);


        return true;
    }
    public void onleoTouchEvent(MotionEvent motionEvent) {
        mLeoPanelController.onTouchEvent(motionEvent,mStatusBarState);

    }

    public void onFinishInflate() {
        super.onFinishInflate();
        initLeoPanelController();
    }
    public void  initLeoPanelController(){
        mLeoPanelController.intLeoPanelView();
        mLeoPanelView=findViewWithTag(Values13);
    }
    public  SaltNotificationPanelController refreshetSaltNotificationPanel() {
        return mLeoPanelController;
    }
    public void onAttachedToWindow() {
        super.onAttachedToWindow();



    }

}
