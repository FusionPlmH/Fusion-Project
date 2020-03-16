package com.android.systemui.fusionleo;


import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.ContentObserver;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.keyguard.CarrierText;

import com.android.systemui.statusbar.policy.Clock;
import com.fusionleo.LeoProvider.LeoObserver;



import com.android.systemui.statusbar.policy.NetspeedView;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;


import static com.fusionleo.LeoX.systemui.LeoConfig.*;
import static com.fusionleo.LeoProvider.LeoManages.*;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;

public class LeoStatusBarController implements LeoObserver.ObListener{
    private LeoNetworkTraffic mNetworkTrafficView;
    private LeoLogoView mLogoView;
    public final static String TAG = LeoStatusBarController.class.getSimpleName();
    private LeoTemp mTempView;
    private Context mContext;
    private NetspeedView mNetspeedView;
    private ViewGroup mGrandParentView;
    private ViewGroup mLeftContainer;
    private ViewGroup mMiddleContainer;
    private ViewGroup mRightContainer;

    private CarrierText mCarrierLabelView;
    private Clock mClockView;
    private int mLeoNetworkTrafficPosition;
    private int mLeoLOGOPosition;
    private int mLeoTempPosition;
    private int mLeoCarrierPosition;
    private int mLeoClockPosition;
    public LeoStatusBarController(Context context, ViewGroup viewGroup) {
        this.mContext = context;
        this.mGrandParentView = viewGroup;
    }
  public void onAttachedToWindow() {
        if (this.mGrandParentView != null) {
            mLeftContainer = (ViewGroup)mGrandParentView.findViewById(getLeoUIResource("id/left_clock_container"));
            mMiddleContainer = (ViewGroup)mGrandParentView.findViewById(getLeoUIResource("id/middle_clock_container"));
            mRightContainer = (ViewGroup)mGrandParentView.findViewById(getLeoUIResource("id/right_clock_container"));
            mNetspeedView = (NetspeedView)mGrandParentView.findViewById(getLeoUIResource("id/networkSpeed"));
            mCarrierLabelView= (CarrierText)mGrandParentView.findViewWithTag(mLeoTag[1]);
            mNetworkTrafficView= (LeoNetworkTraffic)mGrandParentView.findViewWithTag(TRAFFIC_TAG);
            mClockView= new Clock(mContext);
            mLogoView= new LeoLogoView(mContext);
            mTempView= new LeoTemp(mContext);
            LeoObserver Resolver  = new LeoObserver(new Handler(),this);
            ContentResolver contentResolver = mContext.getContentResolver();
            for (String uriFor :mLeoStatusBarLogo) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
            }for (String uriFor :mLeoStatusBarNetworkTraffic) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
            }for (String uriFor :mLeoStatusBarCarrier) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
            }for (String uriFor :mLeoStatusBarTemp) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
            }for (String uriFor :mLeoStatusBarGesture) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
            }for (String uriFor :mLeoStatusBarClock) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false,Resolver);
            }for (String uriFor :StatusbarIcon) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
            }
            updatePosition();
        }
    }
    @Override
    public void onLeoChange(String str) {
        for (String equals :mLeoStatusBarLogo) {
            if (equals.equals(str)) {
                updatePosition();
                return;
            }
        }
        for (String equals :mLeoStatusBarNetworkTraffic) {
            if (equals.equals(str)) {
                updatePosition();
                return;
            }
        }for (String equals :mLeoStatusBarCarrier) {
            if (equals.equals(str)) {
                updatePosition();
                return;
            }
        }for (String equals :mLeoStatusBarTemp) {
            if (equals.equals(str)) {
                updatePosition();
                return;
            }
        }for (String equals :mLeoStatusBarGesture) {
            if (equals.equals(str)) {
                updatePosition();
                return;
            }
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("I'm from China");
        stringBuilder.append("developer");
        stringBuilder.append(new String(new char[]{'s', 'a', 'l', 't'}));
        Log.d(TAG, stringBuilder.toString());
        for (String equals :mLeoStatusBarClock) {
            if (equals.equals(str)) {
                updatePosition();
                return;
            }
        }for (String equals :StatusbarIcon) {
            if (equals.equals(str)) {
                updatePosition();
                return;
            }
        }
    }

    public void onDetachedFromWindow() {

    }



    public void updatePosition() {
        LeoSysUiManages(mContext);
        int style=setLeoUesrStatusbarNetworkState;
        if(style>0){
            mNetspeedView.setVisibility(GONE);
        }else if(style==0){
            mNetspeedView.setVisibility(VISIBLE);
        }
        mLeoNetworkTrafficPosition=setLeoStatusBarStatusbarNetworkOrientation;
        mLeoLOGOPosition= setLeoStatusBarDarkLogoOrientation;
        mLeoLogoShow=setLeoStatusBarLogoShow;
        mLeoTempPosition=setLeoStatusBarTempOrientation;
        mTempDisplay=setLeoStatusBarTempEnabled;
        mLeoClockPosition= setLeoStatusBarClockOrientation;
        updateCarrierLabel(mCarrierLabelView);
        updateResources();
    }
    private boolean mTempDisplay;
    private boolean mLeoLogoShow;
    public void updateCarrierLabel(CarrierText Carrier) {
        Carrier.updateLeoCarrierText();
        int style=setLeoStatusBarCarrierSingleLine;
        Carrier.setLeoTogeCarrierColor(setLeoStatusBarCarrierColor, setLeoStatusBarCarrierCustomColorEnabled,setLeoStatusBarDarkCarrierColor,setLeoStatusBarCarrierCustomDarkColorEnabled);
        Carrier.setLeoTogeCarrier(setLeoStatusBarCarrierCustom,setLeoStatusBarCarrierSingleLine,setLeoStatusBarCarrierStringA, setLeoStatusBarCarrierStringB,"\n");
        if( style==1){
            Carrier.setSingleLine(false);
            Carrier.setTextSize(setLeoStatusBarCarrierMultiSize);
        }else{
            Carrier.setSingleLine(true);
            Carrier.setTextSize(setLeoStatusBarCarrierSingleSize);
        }
        Carrier.setTypeface(setLeoFonts(mContext,setLeoStatusBarCarrierFont,"sec-roboto-light",Typeface.NORMAL));
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
        Clock  clock=mClockView;
        if (mGrandParentView != null && clock != null) {
            mLeftContainer.removeView(clock);
            mRightContainer.removeView(clock);
            mMiddleContainer.removeView(clock);
            switch (mLeoClockPosition) {
                case 1:
                    mRightContainer.addView(clock);
                    break;
                case 2:
                    mMiddleContainer.addView(clock);
                    break;
                default:
                    mLeftContainer.addView(clock);
                    break;
            }
            int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(getLeoUIResource("dimen/status_bar_left_clock_end_padding"));
            int dimensionPixelSize2 = this.mContext.getResources().getDimensionPixelSize(getLeoUIResource("dimen/status_bar_left_clock_starting_padding"));
            switch (mLeoClockPosition) {
                case 1:
                    this.mClockView.setPaddingRelative(dimensionPixelSize, 0, dimensionPixelSize2, 0);
                    break;
                case 2:
                    this.mClockView.setPaddingRelative(dimensionPixelSize, 0, dimensionPixelSize, 0);
                    break;
                default:
                    this.mClockView.setPaddingRelative(dimensionPixelSize2, 0, dimensionPixelSize, 0);
                    break;
            }

        }


        LeoLogoView  logo=mLogoView;
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

        LeoTemp  temp=mTempView;
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

    }



}