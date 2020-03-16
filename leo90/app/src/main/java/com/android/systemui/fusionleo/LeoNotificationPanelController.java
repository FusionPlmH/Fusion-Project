package com.android.systemui.fusionleo;


import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view2.WindowManager;
import android.widget.LinearLayout;
import com.android.keyguard.CarrierText;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.fusionleo.LeoProvider.LeoObserver;
import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.phone.NotificationPanelView;
import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.fusionleo.LeoX.systemui.LeoConfig.*;
import static com.fusionleo.LeoProvider.LeoManages.*;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;


public class LeoNotificationPanelController implements LeoObserver.ObListener{
    private  Context mContext;
    private NotificationPanelView mPanelView;
    private boolean mLeoDoubleTapToSleepEnabled;
    private boolean mLeoDoubleTapToSleepAnywhere;
    private int mStatusBarHeaderHeight;
    private GestureDetector mLeoDoubleTapGesture;
    public final static String TAG =LeoNotificationPanelController.class.getSimpleName();
    private CarrierText  mLeoPanelCarrierView;
    private LinearLayout mPulldownPanel;
    private AnalogClock mLeoAnalogClock;
    private LeoDeviceInformation mLeoDeviceInfoView;
    public LeoNotificationPanelController(Context context,NotificationPanelView notificationPanelView) {
        mContext = context;
        mPanelView= notificationPanelView;

    }



    public void intLeoPanelView(NotificationPanelView notificationPanelView){
        mPanelView = notificationPanelView;
        mLeoPanelCarrierView=mPanelView.findViewById(getLeoUIResource("id/notification_panel_carrier_label"));
        mPulldownPanel=mPanelView.findViewWithTag("leo_pulldown_panel");
        mLeoAnalogClock=new AnalogClock(mContext);
        mLeoDeviceInfoView=new LeoDeviceInformation (mContext);

        updateSettings();
        LeoObserver Resolver  = new LeoObserver(new Handler(),this);
        ContentResolver contentResolver = mContext.getContentResolver();
        for (String uriFor :NotificationPanel) {
            contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
        }
        for (String uriFor :mLeoDeviceInfo) {
            contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
        }for (String uriFor :StatusbarIcon) {
            contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
        }
    }
    public void updateSettings(){
        LeoSysUiManages(mContext);
        mPulldownPanel.removeAllViews();
        mPulldownPanel.addView(mLeoAnalogClock);
        mPulldownPanel.addView(mLeoDeviceInfoView);
        mLeoAnalogClock.updateAnalogClock();
        mLeoAnalogClock.setVisibility( setLeoNotificationPanelAnalogClockShow? VISIBLE :GONE);
        int top;
        if(setLeoDeviceInfoEnabled){
            top=40;
        }else{
            top=10;
        }
        mLeoDeviceInfoView.setLeoDeviceInfo();
        mLeoAnalogClock.setPadding(0,top,0,0);
        CarrierText   Carrier=  mLeoPanelCarrierView;
        Carrier.updateLeoCarrierText();
        Carrier.setLeoTogePanelCarrierColor(setLeoNotificationPanelCarrierColor);
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
        Carrier.setTextSize( setLeoNotificationPanelCarrierSize);
        Carrier.setTypeface(setLeoFonts(mContext,setLeoNotificationPanelCarrierFont,"sec-roboto-light",Typeface.NORMAL));
    }

    private void updateLeoDetector(){
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

    @Override
    public void onLeoChange(String str) {
        for (String equals :NotificationPanel) {
            if (equals.equals(str)) {
                updateSettings();
                return;
            }
        }
        for (String equals : StatusbarIcon) {
            if (equals.equals(str)) {
                updateSettings();
                return;
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("I'm from China");
        stringBuilder.append("developer");
        stringBuilder.append(new String(new char[]{'s', 'a', 'l', 't'}));
        Log.d(TAG, stringBuilder.toString());
        for (String equals : mLeoDeviceInfo) {
            if (equals.equals(str)) {
                updateSettings();
                return;
            }
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
        mStatusBarHeaderHeight = mContext.getResources().getDimensionPixelSize(getLeoUIResource("dimen/status_bar_header_height_expanded"));
    }


}