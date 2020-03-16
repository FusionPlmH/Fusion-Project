package com.android.systemui.qs.tileimpl;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;


import com.android.systemui.coloring.QSColoringServiceObject;

import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class QSTileView extends QSTileBaseView implements QSColoringServiceObject {
    private float mDefaultTextSize;
    private int mDensityDpi;
    protected TextView mLabel;
    private ViewGroup mLabelContainer;
    protected TextView mSecondLine;


    public QSTileView(Context context) {
        super(context);

    }


    public void createLabel() {

        this.mLabel = (TextView) this.mLabelContainer.findViewById(2131363258);

        this.mSecondLine = (TextView) this.mLabelContainer.findViewById(2131361892);

        setQSTileViewStyle();
    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setQSTileViewStyle();
    }
   public void setQSTileViewStyle(){
   }

    public TextView getLabel() {
        return this.mLabel;
    }

}
