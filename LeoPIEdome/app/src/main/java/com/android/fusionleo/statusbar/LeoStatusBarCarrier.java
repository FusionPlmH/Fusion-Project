package com.android.fusionleo.statusbar;


import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;

import com.android.fusionleo.global.LeoGlobalUtils;
import com.android.fusionleo.global.LeoGlobalValues;
import com.android.keyguard.CarrierText;
import com.android.systemui.Dependency;
import com.android.systemui.simpleindicator.SimpleIndicatorCarrierText;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.android.fusionleo.global.LeoGlobalUtils.getLeoCustomString;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoCarrierStatusBarStyle;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoCopyrightToast;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoGradient;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mStatusBarClockColor;


public class LeoStatusBarCarrier extends LinearLayout implements DarkIconDispatcher.DarkReceiver {

    private Context mContext;
    private int mCarrierColor ;
    private int mCarrierTint;
   private LeoObserver mLeoObserver;


    private CarrierText mLeoCarrier;
    private TextView mLeoCustomString;
    public LeoStatusBarCarrier(Context context) {
        this(context, null);
    }
    public LeoStatusBarCarrier(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext = context;

    }
   protected void onFinishInflate() {
       super.onFinishInflate();
       mLeoCarrier=(CarrierText)findViewWithTag("leo_amber_statusbar_stock_carrier_text");
       mLeoCustomString=(TextView)findViewWithTag("leo_amber_statusbar_carrier_custom_text");
       mLeoCarrier.CustomSymbol=1;
         setView();
       
       mLeoObserver=new LeoObserver(new Handler());
       mLeoObserver.observe();
   }
    public void setView() {
        LeoStatusbarSettings.LeoStatusSettings(this.mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
                    if (LeoStatusbarSettings.setLeoUesrStatusBarCarrierStyle) {
                        this.mLeoCustomString.setVisibility(0);
                        this.mLeoCarrier.setVisibility(8);
                    } else {
                        this.mLeoCustomString.setVisibility(8);
                        this.mLeoCarrier.setVisibility(0);
                    }
                    boolean z = LeoStatusbarSettings.setLeoUesrStatusBarCarrierSingle;
                    int i = LeoStatusbarSettings.setLeoUesrStatusBarCarrierSingleSize;
                    int i2 = LeoStatusbarSettings.setLeoUesrStatusBarCarrierMultiSize;
                    if (z) {
                        this.mLeoCarrier.setTextSize((float) i);
                        this.mLeoCarrier.setSingleLine(true);
                    } else {
                        this.mLeoCarrier.setTextSize((float) i2);
                        this.mLeoCarrier.setSingleLine(false);
                    }
                    int i3 = LeoStatusbarSettings.getSetLeoUesrStatusBarCarrierFont;
                    this.mLeoCarrier.setTypeface(LeoGlobalUtils.setLeoRomFonts(0, i3));
                    this.mLeoCustomString.setTypeface(LeoGlobalUtils.setLeoRomFonts(0, i3));
                    this.mLeoCustomString.setText(myString(z, LeoStatusbarSettings.setLeoUesrStatusBarCarrierStringSingle, LeoStatusbarSettings.getSetLeoUesrStatusBarCarrierStringMulti, i, i2));
                    int i4 = LeoStatusbarUtils.mStatusBarClockColor;
                    int i5 = i4;
                    int i6 = LeoStatusbarSettings.setLeoUesrStatusBarCarrierRandomColor;
                    int leoRandomColor = LeoStatusbarUtils.getLeoRandomColor(this.mContext);
                    int i7 = LeoStatusbarSettings.setLeoUesrStatusBarCarrierColorEnabled;
                    if (i7 == 1) {
                        if (i6 == 0) {
                            i5 = LeoStatusbarSettings.getSetLeoUesrStatusBarCarrierColor;
                        } else if (i6 == 1) {
                            i5 = leoRandomColor;
                        }
                    } else if (i7 == 0) {
                        i5 = i4;
                        mLeoCustomString.setAlpha(0.8f);
                        mLeoCarrier.setAlpha(0.8f);
                    }
                    this.mCarrierColor = i5;
                    this.mCarrierTint = i5;
                    this.mLeoCustomString.setTextColor(this.mCarrierColor);
                    this.mLeoCarrier.setTextColor(this.mCarrierColor);
                } else{
                    Log.v(new String(new char[]{'作', '者', ':', '不', '咸', '的', '盐', '巴'}), AUTHOR);
                }
            } else{
                Log.w(new String(new char[]{'A', 'M', 'B', 'E', 'R'}), "QQ：303834502");
                LeoCopyrightToast(mContext);
            }
        }
    }

    public String myString(boolean z, String str, String str2, int i, int i2) {
        String leoCustomString = LeoGlobalUtils.getLeoCustomString(str);
        String leoCustomString2 = LeoGlobalUtils.getLeoCustomString(str2);
        String str3;
        if (z) {
            str3 = leoCustomString;
            this.mLeoCustomString.setTextSize((float) i);
            return str3;
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(leoCustomString);
        stringBuilder.append(LeoGlobalValues.mNewline);
        stringBuilder.append(leoCustomString2);
        str3 = stringBuilder.toString();
        this.mLeoCustomString.setTextSize((float) i2);
        return str3;
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