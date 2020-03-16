/*
 * Copyright (C) 2011 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.systemui.statusbar;


import android.content.ContentResolver;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Handler;
import android.os.SystemProperties;
import android.os.UserHandle;
import android.provider.Settings;
import android.telephony.SubscriptionInfo;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.ArraySet;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityEvent;
import android.widget.ImageView;
import android.widget.LinearLayout;




import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.*;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.mDefaultColor;
import static com.os.leo.utils.LeoUserValues.mLightModeColor;
import static com.os.leo.utils.LeoUtils.getLeoInt;
import static com.os.leo.utils.LeoUtils.getLeoUri;

// Intimately tied to the design of res/layout/signal_cluster_view.xml
public class SignalClusterView extends LinearLayout  {

    static final String TAG = "SignalClusterView";
    static final boolean DEBUG = Log.isLoggable(TAG, Log.DEBUG);

    private static final String SLOT_AIRPLANE = "airplane";
    private static final String SLOT_MOBILE = "mobile";
    private static final String SLOT_WIFI = "wifi";
    private static final String SLOT_ETHERNET = "ethernet";
    private static final String SLOT_VPN = "vpn";



    private boolean mNoSimsVisible = false;
    private boolean mVpnVisible = false;
    private boolean mSimDetected;
    private int mVpnIconId = 0;
    private int mLastVpnIconId = -1;
    private boolean mEthernetVisible = false;
    private int mEthernetIconId = 0;
    private int mLastEthernetIconId = -1;
    private boolean mWifiVisible = false;
    private boolean mMobileIms = false;
    private int mWifiStrengthId = 0;
    private int mLastWifiStrengthId = -1;
    private boolean mWifiIn;
    private boolean mWifiOut;
    private int mLastWifiActivityId = -1;
    private boolean mIsAirplaneMode = false;
    private int mAirplaneIconId = 0;
    private int mLastAirplaneIconId = -1;
    private String mAirplaneContentDescription;
    private String mWifiDescription;
    private String mEthernetDescription;

    //private int mIconTint = Color.WHITE;
    private float mDarkIntensity;
    private final Rect mTintArea = new Rect();

    ViewGroup mEthernetGroup, mWifiGroup;
    View mNoSimsCombo;
    ImageView mVpn, mEthernet, mWifi, mAirplane, mNoSims, mEthernetDark, mWifiDark, mNoSimsDark, mMobileImsImageView;
    ImageView mWifiActivityIn;
    ImageView mWifiActivityOut;
    View mWifiAirplaneSpacer;
    View mWifiSignalSpacer;
    LinearLayout mMobileSignalGroup;

    private int mWifiArrowsColor,mWifiArrowsTint;
    private int mWifiColor,mWifiTint;
    private int mSignalColor,mSignalTint;
    private int mMobileArrowsColor,mMobileArrowsTint;
    private int mMobileTypeColor,mMobileTypeTint;
    private int mAirplaneColor,mAirplaneTint;



    private boolean mBlockAirplane;
    private boolean mBlockMobile;
    private boolean mBlockWifi;
    private boolean mBlockEthernet;
    private boolean mActivityEnabled;
    private boolean mForceBlockWifi;
    private boolean mBlockVpn;
    private boolean mNoBattery;

    private boolean mVoLTEicon;

    Context  mContext;
    private SubscriptionManager mSubscriptionManager;
    private TelephonyManager mTelephony;

    public SignalClusterView(Context context) {
        this(context, null);
    }

    public SignalClusterView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SignalClusterView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);

        mContext=context;
    }

    public void setForceBlockWifi() {
        mForceBlockWifi = true;
        mBlockWifi = true;
        if (isAttachedToWindow()) {
            // Re-register to get new callbacks.

        }
    }
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        setLeoRomObserver();
    }

    private ImageView mSimIcon;


    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();




        mNoSims.setVisibility(View.GONE);

    }
    private int mRoamingColor;
    private int mRoamingTint;
    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver =getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoCustomSignalIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCustomAllSignalIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoWifiIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoAllSignalIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoWifiArrowsIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoAirplaneIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoSignalIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMbileTypeIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoMobileArrowsIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRoamingIconColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarSignalRandomColor()), false, this);
            setSignalClusterViewColors();

        }

        @Override
        public void onChange(boolean selfChange) {
            setSignalClusterViewColors();

        }


    }
    public void setSignalClusterViewColors() {
        LeoSettings( getContext());
        int colordefault= mDefaultColor;
        int wifi=colordefault;
        int wifiArrows=colordefault;
        int Airplane=colordefault;
        int Signal=colordefault;
        int MobileType=colordefault;
        int MobileArrows=colordefault;
        int Roaming=colordefault;
        int all=setLeoUesrCustomAllSignalIconColor;
        int allcolor= setLeoUesrAllSignalIconColor;
        int coloroff= setLeoUesrCustomSignalIconColor ;
        int colorstyle=setLeoUesrStatusBarSignalRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        if (coloroff==1) {
            if (all==0) {
                if(colorstyle==0){
                    wifi = setLeoUesrWifiIconColor;
                    wifiArrows= setLeoUesrWifiArrowsIconColor;
                    Airplane=setLeoUesrAirplaneIconColor;
                    Signal= setLeoUesrSignalIconColor;
                    MobileType= setLeoUesrMobileTypeIconColor;
                    MobileArrows=  setLeoUesrMobileArrowsIconColor;
                    Roaming= setLeoUesrRoamingIconColor;
                }else if(colorstyle==1){
                    wifi = colorrandom;
                    wifiArrows=colorrandom;
                    Airplane=colorrandom;
                    Signal=colorrandom;
                    MobileType= colorrandom;
                    MobileArrows=colorrandom;
                    Roaming=colorrandom;
                }

            } else if ( all == 1) {
            wifi = allcolor;
                wifiArrows= allcolor;
                Airplane= allcolor;
                Signal= allcolor;
                MobileType=allcolor;
                MobileArrows=allcolor;
                Roaming=allcolor;
            }

        }
        mWifiColor = wifi;
        mWifiTint =  wifi;
       mWifiArrowsColor =  wifiArrows;
        mWifiArrowsTint =  wifiArrows;
       mAirplaneColor = Airplane;
       mAirplaneTint = Airplane;
       mSignalColor =  Signal;
        mSignalTint =  Signal;
        mMobileTypeColor = MobileType;
        mMobileTypeTint = MobileType;
        mMobileArrowsColor = MobileArrows;
        mMobileArrowsTint = MobileArrows;
        mRoamingColor = Roaming;
       mRoamingTint = Roaming;

        setLeoRomSignalClusterViewColor();
    }

    ImageView mWifiActivity;
    private ArrayList<PhoneState> mPhoneStates;
    private class PhoneState {
        private ImageView mMobile;
        private ImageView mMobileActivity;
        private ImageView mMobileType;
        private ImageView mMobileRoaming;


    }

    public void setLeoRomSignalClusterViewColor() {


        this.mWifi.setColorFilter(this.mWifiTint, PorterDuff.Mode.MULTIPLY);


    }

    public void onDarkChanged(Rect rect, float darkIntensity, int n) {
        mWifiTint = getTint(darkIntensity, mWifiColor);

        mWifiArrowsTint = getTint(darkIntensity, mWifiArrowsColor);
        mAirplaneTint = getTint(darkIntensity, mAirplaneColor);
        mSignalTint = getTint(darkIntensity,   mSignalColor);
       mMobileTypeTint =getTint(darkIntensity,  mMobileTypeColor);
       mMobileArrowsTint =getTint(darkIntensity,  mMobileArrowsColor);
       mRoamingTint =getTint(darkIntensity,  mRoamingColor);
        setLeoRomSignalClusterViewColor();
    }
    public void setLeoRomObserver() {
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
        setSignalClusterViewColors();
    }
    private LeoRomObserver mLeoRomObserver;


}
