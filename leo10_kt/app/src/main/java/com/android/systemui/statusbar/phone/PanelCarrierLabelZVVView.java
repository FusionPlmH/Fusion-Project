package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.systemui.statusbar.phone.PanelCarrierLabelManager.PanelCarrierLabelViewBase;

public class PanelCarrierLabelZVVView extends LinearLayout implements PanelCarrierLabelViewBase {
    private TextView mCommonView;
    private LinearLayout mLayoutCarrierLabelZVV;
    private TextView mSlot1View;
    private TextView mSlot2View;

    public PanelCarrierLabelZVVView(Context context) {
        super(context);
    }

    public PanelCarrierLabelZVVView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public PanelCarrierLabelZVVView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    private void setSlotViewStyle(TextView textView, String str) {
        if (textView != null && str != null) {
            if (str.contains("\n")) {
                if (textView.getEllipsize() != TruncateAt.MARQUEE) {
                    textView.setSingleLine(true);
                    textView.setLines(1);
                    textView.setEllipsize(TruncateAt.MARQUEE);
                    textView.setMarqueeRepeatLimit(-1);
                }
            } else if (textView.getEllipsize() != null) {
                textView.setSingleLine(false);
                textView.setLines(2);
                textView.setEllipsize(TruncateAt.END);
                textView.setSelected(true);
            }
        }
    }

    private void setTextAndVisibility(TextView textView, String str) {
        if (textView != null) {
            if (str != null) {
                textView.setText(str);
            }
            textView.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
        }
    }

    private void updateFontSize() {
        int dimensionPixelSize = 0;
        TextView textView = this.mSlot1View;
        if (textView != null) {
            textView.setTextSize(0, (float) dimensionPixelSize);
        }
        textView = this.mSlot2View;
        if (textView != null) {
            textView.setTextSize(0, (float) dimensionPixelSize);
        }
        TextView textView2 = this.mCommonView;
        if (textView2 != null) {
            textView2.setTextSize(0, (float) dimensionPixelSize);
        }
    }

    public int getDefaultHeight() {
        return 0;
    }

    public String getDumpText() {
        StringBuilder stringBuilder;
        StringBuilder stringBuilder2 = new StringBuilder("PanelCarrierLabelZVVView");
        String str = ":";
        if (this.mSlot1View != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(this.mSlot1View.getText().toString());
            stringBuilder2.append(stringBuilder.toString());
        }
        if (this.mSlot2View != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(str);
            stringBuilder.append(this.mSlot2View.getText().toString());
            stringBuilder2.append(stringBuilder.toString());
        }
        return stringBuilder2.toString();
    }

    /* access modifiers changed from: protected */
    public void onAttachedToWindow() {
        super.onAttachedToWindow();

        updateFontSize();
    }

    /* access modifiers changed from: protected */
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        updateFontSize();
    }

    public void setLabelSlot1Text(String str) {
        setTextAndVisibility(this.mCommonView, "");
        this.mLayoutCarrierLabelZVV.setVisibility(0);
        setSlotViewStyle(this.mSlot1View, str);
        setTextAndVisibility(this.mSlot1View, str);
    }

    public void setLabelSlot2Text(String str) {
        setTextAndVisibility(this.mCommonView, "");
        this.mLayoutCarrierLabelZVV.setVisibility(0);
        setSlotViewStyle(this.mSlot2View, str);
        setTextAndVisibility(this.mSlot2View, str);
    }

    public void setLabelText(String str) {
        String str2 = "";
        setSlotViewStyle(this.mSlot1View, str2);
        setSlotViewStyle(this.mSlot2View, str2);
        this.mLayoutCarrierLabelZVV.setVisibility(8);
        setSlotViewStyle(this.mCommonView, str);
        setTextAndVisibility(this.mCommonView, str);
    }
}
