package com.android.keyguard;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.text.method.SingleLineTransformationMethod;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

import com.android.keyguard.CarrierTextController.CarrierTextCallback;
import com.android.keyguard.CarrierTextController.CarrierTextCallbackInfo;
import com.android.systemui.Dependency;

import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.widget.SystemUITextView;
import com.salt.leokt10.R;

import java.util.Locale;

import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoCustomString;
import static com.android.settingslib.salt.SaltValues.Values10;
import static com.android.settingslib.salt.SaltValues.Values8;
import static com.android.settingslib.salt.SaltValues.Values9;

public class CarrierText extends TextView implements DarkIconDispatcher.DarkReceiver {
    private static final String TAG = "CarrierText";
    private boolean mShowMissingSim;
    private boolean mShowAirplaneMode;
    private boolean mShouldMarquee;
   public Context mContext;
    private CarrierTextController mCarrierTextController;

    public CarrierText(Context context) {
        this(context, null);
    }

    public CarrierText(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext=context;
        boolean useAllCaps;
        TypedArray a = context.getTheme().obtainStyledAttributes(
                attributeSet, R.styleable.CarrierText, 0, 0);
        try {
            useAllCaps = a.getBoolean(R.styleable.CarrierText_allCaps, false);
            mShowAirplaneMode = a.getBoolean(R.styleable.CarrierText_showAirplaneMode, false);
            mShowMissingSim = a.getBoolean(R.styleable.CarrierText_showMissingSim, false);
        } finally {
            a.recycle();
        }
        setTransformationMethod(new CarrierTextTransformationMethod(mContext, useAllCaps));
        updateLeoCarrierText();
    }
    private CarrierTextController.CarrierTextCallback mCarrierTextCallback =
            new CarrierTextController.CarrierTextCallback() {
                @Override
                public void updateCarrierInfo(CarrierTextController.CarrierTextCallbackInfo info) {
                    getSaltCarrierStr(info.carrierText);
                }

                @Override
                public void startedGoingToSleep() {
                    setSelected(false);
                }

                @Override
                public void finishedWakingUp() {
                    setSelected(true);
                }
            };

    public CharSequence mSaltCarrierStrSymbol,mSaltCarrierStr;
    private  int mSaltCarrierSingleLine,mNonAdaptedColor,mSaltCarrierColorEnabled,mSaltCarrierTextColor;
    private  int mSaltCarrierToggle;
    private  String mSaltCarrierStrA,mSaltCarrierStrB;
    private  boolean mSaltCarrierCarrier5G;

    public void setLeoTogeCarrier(int of,int of2,String format,String format2,String Symbol,int Cloren,int color,boolean g5) {
        mSaltCarrierToggle =of;
        mSaltCarrierSingleLine=of2;
        mSaltCarrierStrA = format;
        mSaltCarrierStrB= format2;
        mSaltCarrierStrSymbol=Symbol;
        mSaltCarrierColorEnabled= Cloren;
        mSaltCarrierTextColor=color;
        mSaltCarrierCarrier5G=g5;
        refreshSaltCarrierColor();
        updateLeoCarrierText();
    }

    public void getSaltCarrierStr(CharSequence charSequence) {
        mSaltCarrierStr=charSequence;
        updateLeoCarrierText();
    }
    public void updateLeoCarrierText() {
        refreshSaltCarrierColor();
        String Str45G = String.valueOf(mSaltCarrierStr);
        if(mSaltCarrierToggle==1){
            String dsss;
            if(mSaltCarrierSingleLine== 1){
                dsss=getLeoCustomString(mSaltCarrierStrA)+mSaltCarrierStrSymbol+getLeoCustomString(mSaltCarrierStrB);
            }else {
                dsss=getLeoCustomString(mSaltCarrierStrA);
            }
            setText( dsss);
        }else{
            String g5;
            if(mSaltCarrierCarrier5G){
                g5=Str45G.replaceAll("4G", "5G" );
            } else {
                g5=Str45G;
            }
            setText(g5);
        }
        if (Values9.equals(getTag()) ) {
            setSingleLine(mSaltCarrierSingleLine==1?true:false);
        }else{
            setSingleLine(true);
        }
    }
    public void refreshSaltCarrierColor(){
        if (mSaltCarrierColorEnabled==1) {
            setTextColor(mSaltCarrierTextColor);
        } else {
            setTextColor(mNonAdaptedColor);
        }
    }
    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        mNonAdaptedColor = DarkIconDispatcher.getTint(area, this, tint);
        refreshSaltCarrierColor();
    }

    @Override
    protected void onFinishInflate() {
        super.onFinishInflate();
        mCarrierTextController = new CarrierTextController(mContext, mSaltCarrierStrSymbol, mShowAirplaneMode,
                mShowMissingSim);
        mShouldMarquee = KeyguardUpdateMonitor.getInstance(mContext).isDeviceInteractive();
        setSelected(mShouldMarquee); // Allow marquee to work.
        updateLeoCarrierText();
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        mCarrierTextController.setListening(mCarrierTextCallback);
        updateLeoCarrierText();
        Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        mCarrierTextController.setListening(null);
        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
    }

    @Override
    protected void onVisibilityChanged(View changedView, int visibility) {
        super.onVisibilityChanged(changedView, visibility);
        // Only show marquee when visible
        if (visibility == VISIBLE) {
            setEllipsize(TextUtils.TruncateAt.MARQUEE);
        } else {
            setEllipsize(TextUtils.TruncateAt.END);
        }
    }

    private class CarrierTextTransformationMethod extends SingleLineTransformationMethod {
        private final Locale mLocale;
        private final boolean mAllCaps;

        public CarrierTextTransformationMethod(Context context, boolean allCaps) {
            mLocale = context.getResources().getConfiguration().locale;
            mAllCaps = allCaps;
        }

        @Override
        public CharSequence getTransformation(CharSequence source, View view) {
            source = super.getTransformation(source, view);

            if (mAllCaps && source != null) {
                source = source.toString().toUpperCase(mLocale);
            }

            return source;
        }
    }



}
