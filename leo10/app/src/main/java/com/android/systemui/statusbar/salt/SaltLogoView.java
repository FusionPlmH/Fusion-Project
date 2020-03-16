package com.android.systemui.statusbar.salt;

import android.content.Context;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.telephony.TelephonyManager;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.settingslib.Utils;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.android.settingslib.salt.SaltConfigCenter.LogoIcon;

import static com.android.settingslib.salt.SaltConfigFrame.*;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoIconSize;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoImagePadding;
import static com.android.settingslib.salt.SaltValues.*;
import static com.android.settingslib.salt.utils.LeoManages.*;

public class SaltLogoView extends ImageView implements DarkIconDispatcher.DarkReceiver{
    private Context mContext;
    private boolean mAttached;
    private int mLeoLogoStyle;

    public SaltLogoView(Context context) {
        this(context, null);

    }

    public SaltLogoView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SaltLogoView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setTag("leo_statusbar_logo_view");
        mContext=context;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (mAttached) {
            return;
        }
        mAttached = true;
        LeoSysUiManages(mContext);
        Dependency.get(DarkIconDispatcher.class).addDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
        updateSettings();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (!mAttached) {
            return;
        }
        mAttached = false;
        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
    }

    public int mNonAdaptedColor,mLogoColor;
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        mNonAdaptedColor  = DarkIconDispatcher.getTint(area, this, tint);
        if (setLogoColor()) {
            setColorFilter(mLogoColor,PorterDuff.Mode.SRC_IN);
        } else {
            setColorFilter(mNonAdaptedColor,PorterDuff.Mode.SRC_IN);
        }
    }

        public void updateLogoColor() {

        mLogoColor =setLeoStatusBarLogoColor;
        if (setLogoColor()) {
            setColorFilter(mLogoColor,PorterDuff.Mode.SRC_IN);
        } else {
            setColorFilter(mNonAdaptedColor,PorterDuff.Mode.SRC_IN);
        }

    }

    public boolean setLogoColor() {

        return setLeoStatusBarLogoCustomColorEnabled==1;
    }

    public void updateSettings() {
        mLeoLogoStyle=setLeoStatusBarLogoStyle;
        setLeoImagePadding(this,setLeoStatusBarLogoStartPadding, setLeoStatusBarLogoEndPadding);
        float size=setLeoStatusBarLogoSize;
        setLeoIconSize(this,size);
        setImageDrawable(LogoIcon[mLeoLogoStyle]);
        updateLogoColor();

    }


}
