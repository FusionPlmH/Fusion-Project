package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.Gravity;
import android.widget.TextView;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.isChineseLanguage;
import static com.android.settingslib.salt.SaltValues.Values16;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class DateView extends TextView implements QSClockBellTower.TimeAudience {
    private String mLastText;
    private String mSaltDate;

    public DateView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);


    }

    public void updateDate() {
        Context context=getContext();
        LeoSysUiManages(context);
        QSClockBellTower instance = QSClockBellTower.getInstance(context, getHandler());
        if (instance != null) {
            mSaltDate=instance.getChinaSaltDate(Values16.equals(getTag()));
            notifyTimeChanged("", "", false, instance.getDateViewText());
        }
        setVisibility(setLeoQSheaderDateDisplayEnabled?VISIBLE:GONE);
    }


    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        QSClockBellTower.getInstance(getContext(), getHandler()).registerAudience(getTag().toString(), this);
        updateDate();

    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        QSClockBellTower.getInstance(getContext(), getHandler()).unregisterAudience(getTag().toString());

    }

    @Override
    public void notifyTimeChanged(String str, String str2, boolean z, String str3) {
        String sting;
        if (isChineseLanguage()) {
            sting=str3+mSaltDate;
        }else {
            sting=str3;
        }
        String defaultfont="sec-roboto-light";
        if (Values16.equals(getTag())) {
            setSingleLine(false);
            setGravity(Gravity.CENTER);
            defaultfont="sans-serif-light";
        }
        setTypeface(setLeoTextFont(getContext(),setLeoQSheaderDateDateFont, defaultfont, Typeface.NORMAL));
        if (!sting.equals(this.mLastText)) {
            setText(sting);
            this.mLastText =sting;
        }
    }
}