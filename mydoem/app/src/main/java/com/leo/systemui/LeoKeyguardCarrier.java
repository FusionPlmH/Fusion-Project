package com.leo.systemui;


import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.keyguard.CarrierText;
import com.android.systemui.Dependency;
import com.android.systemui.slimindicator.SlimIndicatorCarrierText;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;


import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.*;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserString.getLeoCustomString;
import static com.os.leo.utils.LeoUserValues.mNewline;
import static com.os.leo.utils.LeoUtils.getLeoUri;

public class LeoKeyguardCarrier extends LinearLayout implements DarkIconDispatcher.DarkReceiver {
   private SlimIndicatorCarrierText mLeoCarrier;
    private TextView  mLeoCustomString;
    private Context mContext;
    private int mCarrierColor ;
    private int mCarrierTint;
    private LeoRomObserver mLeoRomObserver;


    public LeoKeyguardCarrier(Context context) {
        this(context, null);
    }

    public LeoKeyguardCarrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
     
        mContext = context;



    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        mLeoCarrier=(SlimIndicatorCarrierText)findViewWithTag("keyguard_stock_carrier_text");
        mLeoCustomString=(TextView)findViewWithTag("keyguard_custom_text");
        setinit();
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
    }
    public void setinit(){
        setView();
    }

    public void setView(){
        LeoSettings(mContext);
        boolean style=setLeoUesrKeyguardCarrierStyle;
        boolean vISIBLE= setLeoUesrKeyguardCarrier;
        if (vISIBLE) {
            mLeoCustomString.setVisibility(GONE);
            mLeoCarrier.setVisibility(GONE);
            setVisibility(GONE);
        } else {

            setVisibility(VISIBLE);
            if(style) {
                mLeoCustomString.setVisibility(VISIBLE);
                mLeoCarrier.setVisibility(GONE);
            }  else {
                mLeoCustomString.setVisibility(GONE);
                mLeoCarrier.setVisibility(VISIBLE);
            }

        }


        boolean s=setLeoUesrKeyguardCarrierSingle;
        int size=setLeoUesrKeyguardCarrierSingleSize;
        int size1=setLeoUesrKeyguardCarrierMultiSize;
        if(s) {
            mLeoCarrier.setTextSize(size);
            mLeoCarrier.setSingleLine(true);
        }  else {
            mLeoCarrier.setTextSize(size1);
            mLeoCarrier.setSingleLine(false);
        }
        int font=setLeoUesrKeyguardCarrierFont;
        mLeoCarrier.setTypeface(setLeoRomFonts(0,font));
        mLeoCustomString.setTypeface(setLeoRomFonts(0,font));
        String str=setLeoUesrKeyguardCarrierStringSingle;
        String str1= getSetLeoUesrKeyguardCarrierStringMulti;
        mLeoCustomString.setText(myString(s,str, str1,size,size1));
        int defaultcolor=getContext().getColor(getLeoResource("color/status_bar_clock_color"));
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
            CarrierColor=defaultcolor;
        }

        mCarrierColor=CarrierColor;
        mCarrierTint=CarrierColor;
        mLeoCustomString.setTextColor( mCarrierColor);
        mLeoCarrier.setTextColor( mCarrierColor);
    }

    public String myString(boolean s,String str ,String str1,int size ,int size1){
        String a=getLeoCustomString(str);
        String b=getLeoCustomString( str1);
        String  custom;
        if(s) {
            custom=a;
            mLeoCustomString.setTextSize(size);
        }  else {
            custom=a+mNewline+b;
            mLeoCustomString.setTextSize(size1);
        }

        return custom;
    }
    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        mCarrierTint= getTint(darkIntensity, mCarrierColor);
        mLeoCarrier.setTextColor(mCarrierTint);
        mLeoCustomString.setTextColor(mCarrierTint);
    }


    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
        ContentResolver contentResolver ;
        void observe() {
            contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardStyle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardSingle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierKeyguardMultiSize()), false,this);
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