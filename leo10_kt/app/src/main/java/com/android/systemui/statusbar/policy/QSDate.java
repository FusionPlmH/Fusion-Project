package com.android.systemui.statusbar.policy;

import android.content.Context;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.Gravity;
import android.widget.TextView;
import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.QSClockBellTower.TimeAudience;

import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltValues.Values16;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateDateFont;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateDisplayEnabled;

public class QSDate extends TextView implements TimeAudience {
    protected String mLastText;
     protected int mSaltDateMode=1;
    protected String  mSaltDateText;
    public QSDate(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public void updateDate() {
        Context context=getContext();
        LeoSysUiManages(context);
        QSClockBellTower qSClockBellTower = (QSClockBellTower) Dependency.get(QSClockBellTower.class);
        if (qSClockBellTower != null) {
            mSaltDateText=qSClockBellTower.getChinaSaltDate(mSaltDateMode);
            notifyTimeChanged("", "", false, qSClockBellTower.getDateViewText(), qSClockBellTower.getShortenDateViewText());
        }
        setTypeface(setLeoTextFont(context,setLeoQSheaderDateDateFont, "sec-roboto-light", Typeface.NORMAL));
        if(mSaltDateMode==1){
            setSingleLine(false);
        }
        setVisibility(setLeoQSheaderDateDisplayEnabled?VISIBLE:GONE);
    }

    public void notifyTimeChanged(String str, String str2, boolean z, String str3, String str4) {
        if (!str3.equals(this.mLastText)) {
            String string=str3+mSaltDateText;
            setText(string);
            this.mLastText = string;
        }
    }

    /* access modifiers changed from: protected */
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        ((QSClockBellTower) Dependency.get(QSClockBellTower.class)).registerAudience(getTag().toString(), this);
        updateDate();
    }

    /* access modifiers changed from: protected */
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        ((QSClockBellTower) Dependency.get(QSClockBellTower.class)).unregisterAudience(getTag().toString());
    }
}
