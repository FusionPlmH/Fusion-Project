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
import com.android.systemui.statusbar.policy.DarkIconDispatcher;


import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.*;

import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserString.getLeoCustomString;
import static com.os.leo.utils.LeoUserValues.mNewline;
import static com.os.leo.utils.LeoUtils.getLeoUri;

public class LeoStatusBarCarrier extends LinearLayout implements DarkIconDispatcher.DarkReceiver {
   private CarrierText  mLeoCarrier;
    private TextView  mLeoCustomString;
    private Context mContext;
    private int mCarrierColor ;
    private int mCarrierTint;
   private LeoRomObserver mLeoRomObserver;


    public LeoStatusBarCarrier(Context context) {
        this(context, null);
    }

    public LeoStatusBarCarrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
       ;
        mContext = context;



    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        mLeoCarrier=(CarrierText)findViewWithTag("stock_carrier_text");
        mLeoCustomString=(TextView)findViewWithTag("custom_text");
        setinit();
        mLeoRomObserver=new LeoRomObserver(new Handler());
       mLeoRomObserver.observe();
    }
    public void setinit(){
        setView();
    }

    public void setView(){
        LeoSettings(mContext);
        boolean style=setLeoUesrStatusBarCarrierStyle;
        if(style) {
            mLeoCustomString.setVisibility(VISIBLE);
            mLeoCarrier.setVisibility(GONE);
        }  else {

            mLeoCustomString.setVisibility(GONE);
            mLeoCarrier.setVisibility(VISIBLE);
        }
        boolean s=setLeoUesrStatusBarCarrierSingle;
        int size=setLeoUesrStatusBarCarrierSingleSize;
        int size1=setLeoUesrStatusBarCarrierMultiSize;
        if(s) {
            mLeoCarrier.setTextSize(size);
            mLeoCarrier.setSingleLine(true);
        }  else {
            mLeoCarrier.setTextSize(size1);
            mLeoCarrier.setSingleLine(false);
        }
        int font=getSetLeoUesrStatusBarCarrierFont;
        mLeoCarrier.setTypeface(setLeoRomFonts(0,font));
        mLeoCustomString.setTypeface(setLeoRomFonts(0,font));
        String str=setLeoUesrStatusBarCarrierStringSingle;
        String str1= getSetLeoUesrStatusBarCarrierStringMulti;
        mLeoCustomString.setText(myString(s,str, str1,size,size1));
        int defaultcolor=getContext().getColor(getLeoResource("color/status_bar_clock_color"));
        int CarrierColor=defaultcolor;
        int colorstyle=setLeoUesrStatusBarCarrierRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        int color=setLeoUesrStatusBarCarrierColorEnabled;
        if(color==1){
            if(colorstyle==0){
                CarrierColor=getSetLeoUesrStatusBarCarrierColor;
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

        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarStyle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarSingle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarMultiSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarSingleSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarStringSingle()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarStringMulti()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoCarrierStatusBarColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarCarrierColorEnabled()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarCarrierRandomColor()), false,this);
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