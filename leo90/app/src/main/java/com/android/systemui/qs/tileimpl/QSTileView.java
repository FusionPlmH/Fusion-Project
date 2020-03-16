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
import com.android.systemui.Dependency;
import com.android.systemui.FontSizeUtils;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;
import com.fusionleo.LeoProvider.LeoObserver;

import static android.graphics.Typeface.DEFAULT;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.mLeoQSButton;
import static com.fusionleo.LeoProvider.LeoManages.mLeoQSHeadsClock;
import static com.fusionleo.LeoProvider.LeoManages.setLeoQSTileFont;
import static com.fusionleo.LeoProvider.LeoManages.setLeoQSTileSize;

import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoFonts;


public class QSTileView extends QSTileBaseView implements QSColoringServiceObject , LeoObserver.ObListener {
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
        updateLeoChange();
        setQSTileViewStyle();
    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setQSTileViewStyle();
    }
   public void setQSTileViewStyle(){
        Context context=getContext();
       LeoSysUiManages(context);
        int size= setLeoQSTileSize;
        int sttyle= setLeoQSTileFont;
        String str="sec-roboto-light";
       int ds=Typeface.NORMAL;
       mLabel.setTypeface(setLeoFonts(context,sttyle,str, ds));
       mLabel.setTextSize(size);
       mSecondLine.setTypeface(setLeoFonts(getContext(),sttyle,str, ds));
       mSecondLine.setTextSize(size);
   }

    public TextView getLabel() {
        return this.mLabel;
    }
    public  void updateLeoChange() {
        LeoObserver mLeoObserver=   new LeoObserver(new Handler(),this);
        ContentResolver contentResolver = getContext().getContentResolver();
        for (String uriFor : mLeoQSButton) {
            contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
        }


    }

    @Override
    public void onLeoChange(String str) {
        for (String equals :mLeoQSButton) {
            if (equals.equals(str)) {
                setQSTileViewStyle();
                return;
            }
        }
    }
}
