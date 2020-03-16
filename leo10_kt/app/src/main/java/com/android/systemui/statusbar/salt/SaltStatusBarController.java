package com.android.systemui.statusbar.salt;
import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.keyguard.CarrierText;
import com.android.systemui.BatteryMeterView;


import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.android.settingslib.salt.SaltConfigCenter.collapsePanel;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoHaptics;
import static com.android.settingslib.salt.SaltValues.*;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.mLeoStatusBarClock;
import static com.android.settingslib.salt.utils.LeoManages.*;
import static com.android.systemui.statusbar.salt.SaltMainBattery.BATTERY_TAG;
import static com.android.systemui.statusbar.salt.SaltNetworkTraffic.TRAFFIC_TAG;

public class SaltStatusBarController {
    public final static String TAG = SaltStatusBarController.class.getSimpleName();
    private Context mContext;
    private ViewGroup mGrandParentView;
    private ViewGroup mLeftContainer;
    private ViewGroup mMiddleContainer;
    private ViewGroup mRightContainer;
    private SaltClock mClockView;
    private SaltLogoView mLOGOView;
    private CarrierText mCarrierLabelView;
    private SaltNetworkTraffic mNetworkTrafficView;
    private int mLeoClockPosition;
    private int mLeoNetworkTrafficPosition;
    private int mLeoLOGOPosition;
    private boolean mTempDisplay;
    private boolean mLeoLogoShow;
    private SaltTemp mTempView;
    private int mLeoTempPosition;
    private int mLeoCarrierPosition;
    private SaltAction mLeoAction,mLeoRightAction;
    public SaltStatusBarController(Context context, ViewGroup viewGroup) {
        mContext = context;
        mGrandParentView = viewGroup;
    }
  public void onAttachedToWindow() {
      ViewGroup viewGroup = this.mGrandParentView;
      if ( viewGroup != null) {
            mLeftContainer = (ViewGroup) viewGroup.findViewById(getLeoUIResource(Values1));
            mMiddleContainer = (ViewGroup) viewGroup.findViewById(getLeoUIResource(Values2));
            mRightContainer = (ViewGroup) viewGroup.findViewById(getLeoUIResource(Values3));
            mLeoAction= (SaltAction)  viewGroup.findViewWithTag(Values18);
            mLeoRightAction= (SaltAction) viewGroup.findViewWithTag(Values19);
            mClockView= new SaltClock(mContext);
            mNetworkTrafficView= (SaltNetworkTraffic) viewGroup.findViewWithTag(TRAFFIC_TAG);
            mLOGOView= new SaltLogoView(mContext);
            mTempView= new SaltTemp(mContext);
            mCarrierLabelView= (CarrierText) viewGroup.findViewWithTag(Values9);
            refreshSaltStatusBar();
            settingSaltStatusBarAction();
            setLeoSaltBattery();
        }
    }
    public void onDetachedFromWindow() {
    }
    public void settingSaltStatusBarAction() {
        LeoSysUiManages(mContext);
        int hap=setLeoStatusBarGestureVibratorEnable;
        int hapstyle=setLeoStatusBarGestureVibratorLevel;
        mLeoAction.setSaltAction(setLeoStatusBarLeftActionStyle,mLeoStatusBarGesture[8],hap,hapstyle,setLeoStatusBarLeftAction,setLeoStatusBarLeftActionColor);
        mLeoRightAction.setSaltAction(setLeoStatusBarRightActionStyle,mLeoStatusBarGesture[10],hap,hapstyle,setLeoStatusBarRightAction,setLeoStatusBarRightActionColor);

    }

    public void refreshSaltStatusBar() {
        LeoSysUiManages(mContext);
        mLeoCarrierPosition=setLeoStatusBarCarrierOrientation;
        mLeoNetworkTrafficPosition=setLeoUesrStatusbarNetworkPosition;
        mLeoLOGOPosition= setLeoStatusBarDarkLogoOrientation;
        mLeoLogoShow=setLeoStatusBarLogoShow;
        mLeoClockPosition= setLeoStatusBarClockOrientation;
        mLeoTempPosition=setLeoStatusBarTempOrientation;
        mTempDisplay=setLeoStatusBarTempEnabled;
        mNetworkTrafficView.refreshSaltNetworkTraffic();
        mNetworkTrafficView.refreshSaltNetworkMode();
        CarrierText textView= mCarrierLabelView;
        int style=setLeoStatusBarCarrierSingleLine;
        textView.setLeoTogeCarrier(setLeoStatusBarCarrierCustom,setLeoStatusBarCarrierSingleLine,setLeoStatusBarCarrierStringA, setLeoStatusBarCarrierStringB,"\n",setLeoStatusBarCarrierCustomColorEnabled,setLeoStatusBarCarrierColor,setLeoStatusBar5Gicon);
        if( style==1){
            textView.setSingleLine(false);
            textView.setTextSize(setLeoStatusBarCarrierMultiSize);
        }else{
            textView.setSingleLine(true);
            textView.setTextSize(setLeoStatusBarCarrierSingleSize);
        }
        textView.setTypeface(setLeoTextFont(mContext,setLeoStatusBarCarrierFont,"sec-roboto-light", Typeface.NORMAL));
        textView.setPaddingRelative(
                (int)setLeoStatusBarCarrierStartPadding,
                0,
                (int)setLeoStatusBarCarrierEndPadding,
                0);

        textView.setGravity(Gravity.CENTER);
        textView.setVisibility(setLeoStatusBarCarrierShow ?VISIBLE:  GONE);
        textView.updateLeoCarrierText();
        updateResources();
    }
   public void setLeoSaltBattery() {
       LeoSysUiManages(mContext);
        SaltMainBattery mLeoBattery;
        String Batteryleo=BATTERY_TAG;
        mLeoBattery= mGrandParentView.findViewWithTag(Batteryleo);
        int size=setLeoStatusbarMainBatterySize;
        LinearLayout.LayoutParams params = (LinearLayout.LayoutParams) mLeoBattery.getLayoutParams();
        params.width =size;
        params.height =size;
        mLeoBattery.updateSettings();
    }

    public ViewGroup getSaltLeftContainer() {
        return mLeftContainer;
    }
    public View getCarrierView() {
        return mCarrierLabelView;
    }

    public void updateResources() {
        LinearLayout linearLayout = (LinearLayout)mGrandParentView.findViewById(getLeoUIResource("id/system_icon_area"));
        ViewParent parent = getCarrierView().getParent();
        if (parent != null) {
        }
        ((LinearLayout) parent).removeView(getCarrierView());
        if (mLeoCarrierPosition== 0) {
            mLeftContainer.addView(getCarrierView(),1);
        } else {
            linearLayout.addView(getCarrierView(),0);
        }

        LinearLayout Trafficletf22 =(LinearLayout)mGrandParentView.findViewById(getLeoUIResource("id/system_icon_area"));
        View findViewById = mNetworkTrafficView;
        if (findViewById == null) {
        }
        ((LinearLayout) findViewById.getParent()).removeView(findViewById);
        if (mLeoNetworkTrafficPosition==0) {
            mLeftContainer.addView(findViewById, 1);
        } else {
            Trafficletf22.addView(findViewById, 0);
        }
        SaltClock  clock=mClockView;
        if (mGrandParentView != null && clock != null) {
            mLeftContainer.removeView(clock);
            mRightContainer.removeView(clock);
            mMiddleContainer.removeView(clock);
            switch (mLeoClockPosition) {
                case 1:
                    mMiddleContainer.addView(clock);
                    break;
                case 2:
                    mRightContainer.addView(clock);
                    break;
                default:
                    mLeftContainer.addView(clock);
                    break;
            }
        }
        SaltTemp  temp=mTempView;
        if (mGrandParentView != null  &&  temp != null ) {
            mLeftContainer.removeView( temp);
            mRightContainer.removeView( temp);
            switch (mLeoTempPosition) {
                case 1:
                    mRightContainer.addView( temp);
                    break;
                default:
                    mLeftContainer.addView( temp);
                    break;
            }
            if (mTempDisplay ) {
                temp.setVisibility(View.VISIBLE);
            } else {
                temp.setVisibility(View.GONE);
            }
        }

        SaltLogoView  logo=mLOGOView;
        if (mGrandParentView != null  && logo != null ) {
            mLeftContainer.removeView(logo);
            mRightContainer.removeView(logo);
            switch (mLeoLOGOPosition) {
                case 1:
                    mRightContainer.addView(logo);
                    break;
                default:
                    mLeftContainer.addView(logo);
                    break;
            }
            if (mLeoLogoShow ) {
                logo.setVisibility(View.VISIBLE);
            } else {
                logo.setImageDrawable(null);
                logo.setVisibility(View.GONE);
            }
        }
    }



}