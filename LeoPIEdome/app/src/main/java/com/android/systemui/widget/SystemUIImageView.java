package com.android.systemui.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.ImageView;
import android.widget.TextView;

import com.android.leo.R;

import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;


public class SystemUIImageView extends ImageView implements SystemUIWidgetCallback {
    protected static Context mContext;
    private int mAttrCount;
    private boolean mCompoundVisble;
    private int mDensityDpi;
    private float mFontScale;
    private boolean mIsFixedFontSize;
    private float mMaxFontScale;
    private float mOriginalFontSize;
    protected float mOriginalFontSizeDp;
    protected ResData mResData;
    protected int mUpdateFlag;
    protected boolean mLeoCustomKeyguard;
    protected int mLeoCustomKeyguardColor;

    public SystemUIImageView(Context context) {
        super(context);
    }

    @Override
    public void updateStyle(int i) {

    }

    protected class ResData {
        public String adaptiveColorMain;
        public String compoundDrawable;
        int compoundDrawableId;
        String compoundPadding;
        int compoundPaddingId;
        String compoundScale;
        int compoundScaleId;
        public String originColor;
        public int originColorId;
        public String originShadowColor;
        public int originShadowColorId;
        public String themeColor;
        public int themeColorId;
        public String themeShadowColor;
        public int themeShadowColorId;
        public String whitebgColor;
        public int whitebgColorId;
        public String whitebgShadowColor;
        public int whitebgShadowColorId;

        protected ResData() {
        }
    }


}
