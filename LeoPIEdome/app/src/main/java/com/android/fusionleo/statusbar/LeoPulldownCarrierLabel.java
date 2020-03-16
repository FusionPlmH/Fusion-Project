package com.android.fusionleo.statusbar;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.os.Bundle;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.LinearLayout;
import android.widget.TextView;


import com.android.keyguard.CarrierText;


import static com.android.fusionleo.global.LeoGlobalUtils.getLeoCustomString;
import static com.android.fusionleo.global.LeoGlobalUtils.getSymbol;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getKernel;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPullDownCarrierString;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPullDownCarrierStringA;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPulldownAnalogEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPulldownCarrier;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPulldownCarrierColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPulldownCarrierColorEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPulldownCarrierFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPulldownCarrierRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrPulldownCarrierSize;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.LeoCopyrightToast;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mNotificationPanelCarrierLabelColor;


public class LeoPulldownCarrierLabel  extends LinearLayout {
    public CarrierText mCarrierLabel;
    public TextView  mCustomCarrierLabel;

    public Context mContext;
   public LeoPulldownCarrierLabel(Context context) {
        this(context, null);
    }

    public LeoPulldownCarrierLabel(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LeoPulldownCarrierLabel(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        mContext=context;
        LeoStatusSettings(mContext);
        mCustomCarrierLabel = new TextView(context);
        mCarrierLabel = new CarrierText(context);
        addView(mCustomCarrierLabel);
        addView(mCarrierLabel);
        mCarrierLabel.CustomSymbol=0;
    }


    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoNotificationPanelUI();
    }
    public void  setLeoNotificationPanelUI(){
        LeoStatusSettings(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
                    int color =mNotificationPanelCarrierLabelColor;
                    int switc =setLeoUesrPulldownCarrier;
                    if(switc==0){
                        mCarrierLabel.setVisibility(VISIBLE);
                        mCustomCarrierLabel.setVisibility(GONE);
                    }else if (switc == 1){
                        mCustomCarrierLabel.setVisibility(VISIBLE);
                        mCarrierLabel.setVisibility(GONE);
                    }
                    int i6 =setLeoUesrPulldownCarrierColorEnabled;
                    if (i6 == 0) {
                        mCustomCarrierLabel.setTextColor(color);
                        mCarrierLabel.setTextColor(color);
                    } else if (i6 == 1) {
                        int i2 = setLeoUesrPulldownCarrierColor;
                        int i5 =setLeoUesrPulldownCarrierRandomColor;
                        if (i5 == 0) {
                            mCarrierLabel.setTextColor(i2);
                            mCustomCarrierLabel.setTextColor(i2);
                        } else if (i5 == 1) {
                            int leoRandomColor = getLeoRandomColor(mContext);
                            mCarrierLabel.setTextColor(leoRandomColor);
                            mCustomCarrierLabel.setTextColor(leoRandomColor);
                        }
                    }
                    int i = setLeoUesrPulldownCarrierSize;
                    int i3 = setLeoUesrPulldownCarrierFont;
                    String str = setLeoUesrPullDownCarrierString;
                    String str2 = setLeoUesrPullDownCarrierStringA;
                    mCustomCarrierLabel.setTextSize((float) i);
                    mCustomCarrierLabel.setTypeface(setLeoRomFonts(0, i3));
                    mCarrierLabel.setTextSize((float) i);
                    mCarrierLabel.setTypeface(setLeoRomFonts(0, i3));
                    mCustomCarrierLabel.setText(getLeoCustomString(str) + getSymbol(7, true) + getLeoCustomString(str2));
                } else{
                    Log.v(new String(new char[]{'作', '者', ':', '不', '咸', '的', '盐', '巴'}), AUTHOR);
                }
            } else{
                Log.w(new String(new char[]{'A', 'M', 'B', 'E', 'R'}), "QQ：303834502");
                LeoCopyrightToast(mContext);
            }
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        LeoStatusSettings(mContext);
        setLeoNotificationPanelUI();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();

    }


}