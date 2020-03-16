package com.android.systemui.statusbar.salt;


import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.widget.LinearLayout;
import com.android.keyguard.CarrierText;

import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.phone.NotificationPanelView;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.android.settingslib.salt.SaltConfigCenter.getLeoSymbolStyle;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoTextSize;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.SaltValues.Values12;
import static com.android.settingslib.salt.SaltValues.Values13;
import static com.android.settingslib.salt.SaltValues.Values14;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltNotificationPanelController{
    private  Context mContext;
    private NotificationPanelView mPanelView;
    private boolean mLeoDoubleTapToSleepEnabled;
    private boolean mLeoDoubleTapToSleepAnywhere;
    private int mStatusBarHeaderHeight;
    private GestureDetector mLeoDoubleTapGesture;
    public final static String TAG =SaltNotificationPanelController.class.getSimpleName();
    private CarrierText  mLeoPanelCarrierView;
    private LinearLayout mPulldownPanel;
    private SaltAnalogClock mLeoAnalogClock;
    private SaltDeviceInfo mLeoDeviceInfoView;
    public SaltNotificationPanelController(Context context,NotificationPanelView notificationPanelView) {
        mContext = context;
        mPanelView= notificationPanelView;

    }
    public void intLeoPanelView(){
        mLeoPanelCarrierView=mPanelView.findViewById(getLeoUIResource(Values12));
        mPulldownPanel=mPanelView.findViewWithTag(Values13);
        updatePanel();
    }
    public void updatePanel(){
        LeoSysUiManages(mContext);
        mLeoAnalogClock=new SaltAnalogClock(mContext);
        mLeoDeviceInfoView=new SaltDeviceInfo(mContext);
        mLeoDeviceInfoView.setTag("salt_panel_deviceInfo");
        mPulldownPanel.removeAllViews();
        mPulldownPanel.addView(mLeoAnalogClock);
        mPulldownPanel.addView(mLeoDeviceInfoView);
        mLeoAnalogClock.updateAnalogClock();
        mLeoAnalogClock.setVisibility( setLeoNotificationPanelAnalogClockShow? VISIBLE :GONE);
        int top;
        if(setLeoDeviceInfoEnabled){
            top=10;
        }else{
            top=5;
        }
        mLeoDeviceInfoView.setLeoDeviceInfo();
        mLeoAnalogClock.setPadding(0,top,0,0);
        CarrierText   Carrier=  mLeoPanelCarrierView;
        Carrier.updateLeoCarrierText();
        Carrier.setLeoTogeCarrierColor(setLeoNotificationPanelCarrierColor,0);
        Carrier.setLeoTogeCarrier(setLeoNotificationPanelCustomCarrier,
                setLeoNotificationPanelCarrierMulti,
                setLeoNotificationPanelCustomCarrierStringA,
                setLeoNotificationPanelCustomCarrierStringB,
                getLeoSymbolStyle(mContext,
                        setLeoNotificationPanelCarrierSymbol,
                        setLeoNotificationPanelCustomCarrierSymbol,
                        "｜")
        );
        Carrier.setLeoTogeCarrier5G(setLeoStatusBar5Gicon);
        setLeoTextSize(Carrier,setLeoNotificationPanelCarrierSize);
        Carrier.setTypeface(setLeoTextFont(mContext,setLeoNotificationPanelCarrierFont,"sec-roboto-light",Typeface.NORMAL));
    }

    public void updateLeoDetector(){
        LeoSysUiManages(mContext);
        mLeoDoubleTapToSleepEnabled= setLeoKeyguardDoubleTapToSleepEnabled;
        mLeoDoubleTapToSleepAnywhere=setLeoKeyguardDoubleTapToSleepAnywhere;
    }
    public void LeoDetector(){
        try {
            mLeoDoubleTapGesture = new GestureDetector(mContext , new LeoGestureDetector(mContext));
        } catch (Throwable th) {
            Log.e("Leo Salt", "Listener");
        }
        updateLeoDetector();
    }


    public void onTouchEvent(MotionEvent event,int mStatusBarState) {
        if (mLeoDoubleTapToSleepEnabled
                && mStatusBarState == StatusBarState.KEYGUARD
                && event.getY() < mStatusBarHeaderHeight) {
            mLeoDoubleTapGesture.onTouchEvent(event);
        } else if (mLeoDoubleTapToSleepAnywhere
                && mStatusBarState == StatusBarState.KEYGUARD) {
            mLeoDoubleTapGesture.onTouchEvent(event);
        }
    }


    private  class LeoGestureDetector extends GestureDetector.SimpleOnGestureListener {

        public  LeoGestureDetector(Context context){
            LeoSysUiManages(context);

        }
        @Override
        public boolean onDoubleTap(MotionEvent e) {
            int style=setLeoKeyguardDoubleTap;
              if(style<=0){
                  style=202;
              }
            setLeoAction(mContext,null,  style);
            return true;
        }
    }
    public void loadLeoDimens() {
        mStatusBarHeaderHeight = mContext.getResources().getDimensionPixelSize(getLeoUIResource(Values14));
    }


}