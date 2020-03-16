package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.widget.TextView;

import com.android.systemui.statusbar.phone.PanelCarrierLabelManager.PanelCarrierLabelViewBase;

import static com.android.settingslib.salt.SaltConfigCenter.getLeoSymbolStyle;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoCustomString;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoTextSize;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCarrierColor;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCarrierFont;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCarrierMulti;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCarrierSize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCarrierSymbol;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCustomCarrier;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCustomCarrierStringA;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCustomCarrierStringB;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelCustomCarrierSymbol;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBar5Gicon;

public class PanelCarrierLabelCommonView extends TextView implements PanelCarrierLabelViewBase {
    private DisplayMetrics mDisplayMetrics;

    public PanelCarrierLabelCommonView(Context context) {
        super(context);
    }

    public PanelCarrierLabelCommonView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }



    public int getDefaultHeight() {
        return getLeoUIResource("dimen/notification_panel_carrier_label_height");
    }

    public String getDumpText() {
        StringBuilder stringBuilder = new StringBuilder("PanelCarrierLabelCommonView");
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append(":");
        stringBuilder2.append(getText().toString());
        stringBuilder.append(stringBuilder2.toString());
        return stringBuilder.toString();
    }


    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.mDisplayMetrics = new DisplayMetrics();
        setSaltPanelCarrier();

    }


    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);

    }

    public void setLabelSlot1Text(String str) {
    }

    public void setLabelSlot2Text(String str) {
    }

    public void setLabelText(String str) {
        getSaltCarrierStr(str);
    }
    public String mSaltPanelCarrierLabel;
    public void getSaltCarrierStr(String charSequence) {
        String charSequencew = getText().toString();
        if (charSequence != null && !charSequence.equals(charSequencew)) {
            mSaltPanelCarrierLabel=charSequence;
        }

        setSaltPanelCarrier();
    }
    public void setSaltPanelCarrier(){

        LeoSysUiManages(getContext());
        String charSequence;
        String charSequence2=mSaltPanelCarrierLabel;
        String STR=setLeoNotificationPanelCustomCarrierStringA;
        if(setLeoNotificationPanelCustomCarrier==1){
            if(setLeoNotificationPanelCarrierMulti== 1){
                charSequence=getLeoCustomString(STR)+getLeoSymbolStyle(getContext(),
                        setLeoNotificationPanelCarrierSymbol,
                        setLeoNotificationPanelCustomCarrierSymbol,
                        "｜"+getLeoCustomString(setLeoNotificationPanelCustomCarrierStringB));
            }else {
                charSequence=getLeoCustomString(STR);
            }
            setText(charSequence);
        }else{
            String chaxzrSequence2;
            if(setLeoStatusBar5Gicon){
                chaxzrSequence2=charSequence2.replaceAll("4G", "5G" );
            } else {
                chaxzrSequence2=charSequence2;
            }
            setText(chaxzrSequence2);
        }
        setTextColor(setLeoNotificationPanelCarrierColor);
        setLeoTextSize(this,setLeoNotificationPanelCarrierSize);
        setTypeface(Typeface.create("sec-roboto-light", 0));
        setTypeface(setLeoTextFont(getContext(),setLeoNotificationPanelCarrierFont,"sec-roboto-light",Typeface.NORMAL));
    }
}
