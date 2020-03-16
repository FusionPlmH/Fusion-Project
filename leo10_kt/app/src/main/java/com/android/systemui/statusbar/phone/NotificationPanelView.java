package com.android.systemui.statusbar.phone;


import android.content.Context;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.ViewGroup;

import com.android.systemui.statusbar.StatusBarState;


import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardDoubleTap;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardDoubleTapToSleepAnywhere;
import static com.android.settingslib.salt.utils.LeoManages.setLeoKeyguardDoubleTapToSleepEnabled;


public class NotificationPanelView extends PanelView  {
    private PanelCarrierLabelManager mPanelCarrierLabelManager;
    private SaltKeyguardGesture mSaltKeyguardGesture;


    public NotificationPanelView(Context context) {
        super(context);

        mSaltKeyguardGesture=new  SaltKeyguardGesture(this);
        mSaltKeyguardGesture.SaltKeyguardGesture();
    }
    public int getMaxPanelHeight() {

        return 0;
    }



    public ViewGroup getPanelCarrierLabelParent() {

        return null;
    }

    public  PanelCarrierLabelManager getPanelManager() {
        return mPanelCarrierLabelManager;
    }
    public void onAttachedToWindow() {
        super.onAttachedToWindow();



    }
    private void setListening(boolean z) {

    }
    private boolean mDozing;
    protected int mBarState;
    private boolean mQsExpanded;
    private boolean mQsExpandImmediate;
    private boolean mPulsing;
    public class SaltKeyguardGesture {
        private GestureDetector mDoubleTapGesture;
        private GestureDetector mLockscreenDoubleTapToSleep;
        private boolean mDoubleTapToSleepEnabled;
        private boolean mIsLockscreenDoubleTapEnabled;
        private Context mContext;
        private NotificationPanelView mPanelView;
        private int mStatusBarHeaderHeight;

        public SaltKeyguardGesture (NotificationPanelView panelView){
            mPanelView=panelView;
            mContext=panelView.getContext();
            SaltKeyguardGesture ();
            refreshSaltNotificationPanelTapToSleep();
        }
        public void saltLockGesture() {
            LeoSysUiManages(mContext);
            int style=setLeoKeyguardDoubleTap;
            if(style<=0){
                style=202;
            }
            setLeoAction(mContext,null,  style);
        }
         public void SaltKeyguardGesture (){
            mDoubleTapGesture = new GestureDetector(mContext, new GestureDetector.SimpleOnGestureListener() {
                @Override
                public boolean onDoubleTap(MotionEvent e) {
                    saltLockGesture();
                    // quick pulldown can trigger those values
                    //on double tap - so reset them
                    mPanelView.saltQsExpandImmediate() ;
                    requestPanelHeightUpdate();
                    mPanelView.setListening(false);
                    return true;
                }
            });
            mLockscreenDoubleTapToSleep = new GestureDetector(mContext,
                    new GestureDetector.SimpleOnGestureListener() {
                        @Override
                        public boolean onDoubleTap(MotionEvent e) {
                            saltLockGesture();
                            return true;
                        }
                    });
        }
        public boolean onSaltTouchEvent(MotionEvent event,boolean mQsExpanded,boolean mPulsing,boolean mDozing) {
            if (!mQsExpanded
                    && mDoubleTapToSleepEnabled
                    && event.getY() < mStatusBarHeaderHeight) {
                if (mDoubleTapGesture.onTouchEvent(event)) {
                    return false;
                }
            }
            if (mIsLockscreenDoubleTapEnabled && !mPulsing && !mDozing
                    && mBarState == StatusBarState.KEYGUARD) {
                mLockscreenDoubleTapToSleep.onTouchEvent(event);
            }
            return false;
        }
        public void loadDimens() {
            mStatusBarHeaderHeight = getResources().getDimensionPixelSize(
                    com.android.internal.R.dimen.status_bar_height);
        }
        public void updateDoubleTapToSleep(boolean updateDoubleTapToSleep) {
            mDoubleTapToSleepEnabled = updateDoubleTapToSleep;
        }
        public void setLockscreenDoubleTapToSleep(boolean updateDoubleTapToSleep) {
            mIsLockscreenDoubleTapEnabled = updateDoubleTapToSleep;
        }
    }

public void refreshSaltNotificationPanelTapToSleep(){
    LeoSysUiManages(getContext());
    boolean doubleTapToSleepEnabled = setLeoKeyguardDoubleTapToSleepEnabled;
    boolean isDoubleTapEnabled = setLeoKeyguardDoubleTapToSleepAnywhere;
    if (mSaltKeyguardGesture != null) {
        mSaltKeyguardGesture.updateDoubleTapToSleep(doubleTapToSleepEnabled);
        mSaltKeyguardGesture.setLockscreenDoubleTapToSleep(isDoubleTapEnabled);

    }
}
    @Override
    protected void loadDimens() {
        mSaltKeyguardGesture.loadDimens();
    }

    @Override
    public boolean onTouchEvent(MotionEvent event) {
        saltTouch(event);
        return !mDozing || mPulsing || onTouchEvent(event);
    }

    public void saltTouch(MotionEvent event){
        mSaltKeyguardGesture.onSaltTouchEvent(event,mQsExpanded,mPulsing,mDozing);

    }
    public boolean saltQsExpandImmediate(){
        return mQsExpandImmediate= false;
    }

}
