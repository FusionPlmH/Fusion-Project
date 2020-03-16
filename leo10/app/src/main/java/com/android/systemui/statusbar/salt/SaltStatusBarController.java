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

import com.android.keyguard.CarrierText;


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
        this.mContext = context;
        this.mGrandParentView = viewGroup;
    }
  public void onAttachedToWindow() {
        if (this.mGrandParentView != null) {
            mLeftContainer = (ViewGroup)mGrandParentView.findViewById(getLeoUIResource(Values1));
            mMiddleContainer = (ViewGroup)mGrandParentView.findViewById(getLeoUIResource(Values2));
            mRightContainer = (ViewGroup)mGrandParentView.findViewById(getLeoUIResource(Values3));
            mLeoAction= (SaltAction) mGrandParentView.findViewWithTag(Values18);
            mLeoRightAction= (SaltAction) mGrandParentView.findViewWithTag(Values19);
            mClockView= new SaltClock(mContext);
            mNetworkTrafficView= (SaltNetworkTraffic)mGrandParentView.findViewWithTag(TRAFFIC_TAG);
            mLOGOView= new SaltLogoView(mContext);
            mTempView= new SaltTemp(mContext);
            mCarrierLabelView= (CarrierText)mGrandParentView.findViewWithTag(Values9);
            refreshSaltStatusBar();
            settingSaltStatusBarAction();
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
        mLeoNetworkTrafficPosition=setLeoUesrStatusbarNetworkPosition;
        mLeoLOGOPosition= setLeoStatusBarDarkLogoOrientation;
        mLeoLogoShow=setLeoStatusBarLogoShow;
        mLeoClockPosition= setLeoStatusBarClockOrientation;
        mLeoTempPosition=setLeoStatusBarTempOrientation;
        mTempDisplay=setLeoStatusBarTempEnabled;
        mNetworkTrafficView.refreshSaltNetworkTraffic();
        mNetworkTrafficView.refreshSaltNetworkMode();
        updateCarrierLabel(mCarrierLabelView);
        updateResources();
    }
    private void updateCarrierLabel(CarrierText Carrier) {
        Carrier.updateLeoCarrierText();
        int style=setLeoStatusBarCarrierSingleLine;
        Carrier.setLeoTogeCarrierColor(setLeoStatusBarCarrierColor, setLeoStatusBarCarrierCustomColorEnabled);
        Carrier.setLeoTogeCarrier(setLeoStatusBarCarrierCustom,setLeoStatusBarCarrierSingleLine,setLeoStatusBarCarrierStringA, setLeoStatusBarCarrierStringB,"\n");
        if( style==1){
            Carrier.setSingleLine(false);
            Carrier.setTextSize(setLeoStatusBarCarrierMultiSize);
        }else{
            Carrier.setSingleLine(true);
            Carrier.setTextSize(setLeoStatusBarCarrierSingleSize);
        }
        Carrier.setTypeface(setLeoTextFont(mContext,setLeoStatusBarCarrierFont,"sec-roboto-light", Typeface.NORMAL));
        Carrier.setPaddingRelative(
                (int)setLeoStatusBarCarrierStartPadding,
                0,
                (int)setLeoStatusBarCarrierEndPadding,
                0);
        mLeoCarrierPosition=setLeoStatusBarCarrierOrientation;
       Carrier.setLeoTogeCarrier5G(setLeoStatusBar5Gicon);
        Carrier.setGravity(Gravity.CENTER);
        // Carrier.setLeoStatusBarCarrierShow
        Carrier.setVisibility(setLeoStatusBarCarrierShow ?VISIBLE:  GONE);
    }
    public void updateResources() {
        LinearLayout linearLayout = (LinearLayout)mGrandParentView.findViewById(getLeoUIResource("id/system_icon_area"));
        LinearLayout linearLayout2 = (LinearLayout)mGrandParentView.findViewById(getLeoUIResource("id/left_clock_container"));
        View findViewById2 =mCarrierLabelView;
        ViewParent parent = findViewById2.getParent();
        if (parent != null) {
        }
        ((LinearLayout) parent).removeView(findViewById2);
        if (mLeoCarrierPosition== 0) {
            linearLayout2.addView(findViewById2,1);
        } else {
            linearLayout.addView(findViewById2,0);
        }

        LinearLayout linearLayout6 = (LinearLayout)mGrandParentView.findViewById(getLeoUIResource("id/system_icon_area"));
        LinearLayout linearLayout8 = (LinearLayout)mGrandParentView.findViewById(getLeoUIResource("id/left_clock_container"));
        View findViewById5= mNetworkTrafficView;
        ViewParent parent2 = findViewById5.getParent();
        if (parent2 != null) {
        }
        ((LinearLayout) parent2).removeView(findViewById5);
        if ( mLeoNetworkTrafficPosition== 0) {
            linearLayout8.addView(findViewById5,1);
        } else {
            linearLayout6.addView(findViewById5,0);
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