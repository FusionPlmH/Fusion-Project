package com.android.fusionleo.statusbar;



import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.keyguard.CarrierText;
import com.android.systemui.Dependency;

import com.android.systemui.simpleindicator.SimpleIndicatorCarrierText;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.android.fusionleo.global.LeoGlobalUtils.*;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardCarrierStyle;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoCopyrightToast;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoGradient;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mStatusBarClockColor;


public class LeoKeyguardCarrier extends LinearLayout implements DarkIconDispatcher.DarkReceiver {
   private SimpleIndicatorCarrierText mLeoCarrier;
    private TextView  mLeoCustomString;
    private Context mContext;
    private int mCarrierColor ;
    private int mCarrierTint;
    private LeoObserver mLeoObserver;


    public LeoKeyguardCarrier(Context context) {
        this(context, null);
    }

    public LeoKeyguardCarrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext = context;

    }
    protected void onFinishInflate() {
        super.onFinishInflate();
        mLeoCarrier=(SimpleIndicatorCarrierText)findViewWithTag("simple_indicator_tag_lock_carrier_text_label");
        mLeoCustomString=(TextView)findViewWithTag("leo_amber_keyguard_custom_text");
        //mLeoCarrier.CustomSymbol=1;
        setView();
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
    }
    public void setView(){
        LeoStatusSettings(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
                    boolean style=setLeoUesrKeyguardCarrierStyle;
                    boolean vISIBLE= setLeoUesrKeyguardCarrier;
                    if(style) {
                        mLeoCustomString.setVisibility(VISIBLE);
                        mLeoCarrier.setVisibility(GONE);
                    }  else {
                        mLeoCustomString.setVisibility(GONE);
                        mLeoCarrier.setVisibility(VISIBLE);
                    }

                    setVisibility(vISIBLE ? GONE : VISIBLE);
                    boolean s=setLeoUesrKeyguardCarrierSingle;
                    int size=setLeoUesrKeyguardCarrierSingleSize;
                    mLeoCarrier.setTextSize(size);
                    mLeoCustomString.setTextSize(size);
                    int font=setLeoUesrKeyguardCarrierFont;
                    mLeoCarrier.setTypeface(setLeoRomFonts(0,font));
                    mLeoCustomString.setTypeface(setLeoRomFonts(0,font));
                    String str=setLeoUesrKeyguardCarrierStringSingle;
                    String str1= getSetLeoUesrKeyguardCarrierStringMulti;
                    String a=getLeoCustomString(str);
                    String b=getLeoCustomString( str1);
                    mLeoCustomString.setText(a+","+b);
                    int defaultcolor=mStatusBarClockColor;
                    int CarrierColor=defaultcolor;
                    int colorstyle=setLeoUesrKeyguardCarrierRandomColor;
                    int colorrandom=getLeoRandomColor(mContext);
                    int color=setLeoUesrKeyguardCarrierColorEnabled;
                    if(color==1){
                        if(colorstyle==0){
                            CarrierColor=setLeoUesrKeyguardCarrierColor;
                        }else if(colorstyle==1){
                            CarrierColor=colorrandom;
                        }
                    }else if (color==0) {
                        CarrierColor = defaultcolor;
                        mLeoCustomString.setAlpha(0.8f);
                        mLeoCarrier.setAlpha(0.8f);
                    }
                    mCarrierColor=CarrierColor;
                    mCarrierTint=CarrierColor;
                    mLeoCustomString.setTextColor( mCarrierColor);
                    mLeoCarrier.setTextColor( mCarrierColor);
                } else{
                    Log.v(new String(new char[]{'作', '者', ':', '不', '咸', '的', '盐', '巴'}), AUTHOR);
                }
            } else{
                Log.w(new String(new char[]{'A', 'M', 'B', 'E', 'R'}), "QQ：303834502");
                LeoCopyrightToast(mContext);
            }
        }
    }


    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        mCarrierTint=getLeoGradient(darkIntensity, mCarrierColor);
        mLeoCarrier.setTextColor(mCarrierTint);
        mLeoCustomString.setTextColor(mCarrierTint);
    }


    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        ContentResolver contentResolver ;
        void observe() {
            contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardStyle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardSingle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardSingleSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardStringSingle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardStringMulti()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguard()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardColorEnabled()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardRandomColor()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
         setView();
        }


    }



    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

      ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).addDarkReceiver(this);
    }
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
     ((DarkIconDispatcher) Dependency.get(DarkIconDispatcher.class)).removeDarkReceiver(this);
    }

}