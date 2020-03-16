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
import android.widget.TextView;




public class SystemUITextView extends TextView {
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
    public void setLeoRemoveCustomColor() {
        mLeoCustomKeyguard= false;
        updateTextView();
    }

    public void setLeoCustomColor(int color) {
        mLeoCustomKeyguard = true;
        mLeoCustomKeyguardColor= color;
        setTextColor(color);
    }


    public SystemUITextView(Context context) {
        this(context, null);
    }

    public SystemUITextView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SystemUITextView(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public SystemUITextView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.mMaxFontScale = 1.2f;
        this.mFontScale = 1.0f;
        this.mDensityDpi = 0;
        this.mOriginalFontSizeDp = 0.0f;
        this.mCompoundVisble = true;
        this.mUpdateFlag = 0;
        this.mResData = null;
        this.mAttrCount = 0;
        mContext = context;

    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mOriginalFontSize = getTextSize();
        if (getContext().getResources().getDisplayMetrics().density > 0.0f) {
            this.mOriginalFontSizeDp = this.mOriginalFontSize / getContext().getResources().getDisplayMetrics().density;
        }
        updateFontSizeInKeyguardBoundary(getContext().getResources().getConfiguration());
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateFontSizeInKeyguardBoundary(newConfig);
    }

    public void updateFontSizeInKeyguardBoundary() {
        updateFontSizeInKeyguardBoundary(getContext().getResources().getConfiguration());
    }

    public void updateFontSizeInKeyguardBoundary(Configuration config) {
        float newFontScaleInBoundary;
        if (this.mIsFixedFontSize) {
            newFontScaleInBoundary = 1.0f;
        } else {
            newFontScaleInBoundary = getFontScaleInKeyguardBoundary(mContext, Math.min(config.fontScale, this.mMaxFontScale));
        }
        boolean ischanged = false;
        if (config.densityDpi != this.mDensityDpi) {
            this.mDensityDpi = config.densityDpi;
            ischanged = true;
        }
        if (Float.compare(this.mFontScale, newFontScaleInBoundary) != 0) {
            this.mFontScale = newFontScaleInBoundary;
            ischanged = true;
        }
        if (ischanged) {
            setTextSize(0, (this.mOriginalFontSizeDp * this.mFontScale) * mContext.getResources().getDisplayMetrics().density);
            updateCompoundDrawable(this.mCompoundVisble);
        }
    }

    public void setMaxFontScale(float scale) {
        if (scale < 1.0f || scale > 1.2f) {
            scale = this.mMaxFontScale;
        }
        this.mMaxFontScale = scale;
        updateFontSizeInKeyguardBoundary();
    }

    public float getKeyguardFontScale() {
        return this.mFontScale;
    }

    public static float getFontScaleInKeyguardBoundary(Context context, float newFontScale) {

        return Math.max(1.0f, Math.min(1.2f, newFontScale));
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d("SystemUITextView", "onAttachedToWindow mAttrCount = " + this.mAttrCount);
        if (this.mAttrCount > 0) {
        //    WallpaperEventNotifier.getInstance(mContext).registerCallback(this);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttrCount > 0) {
        //    WallpaperEventNotifier.getInstance(mContext).removeCallback(this);
        }
    }

    public void updateStyle(int updateFlag) {
        Log.d("SystemUITextView", "updateStyle() flag=" + this.mUpdateFlag + "," + updateFlag + " : " + toString());
        this.mUpdateFlag = updateFlag;
        refreshResIds();
        updateTextView();
        updateCompoundDrawable(this.mCompoundVisble);
    }

    @SuppressLint("NewApi")
    protected void updateTextView() {

        int textColorResId = this.mResData.originColorId;
        int shadowColorResId = this.mResData.originShadowColorId;
        int adaptiveColor = -1;
        boolean adaptiveColorEnabled = false;
        if ((this.mUpdateFlag & 1) != 0) {
            Log.d("SystemUITextView", "apply style: theme");
            textColorResId = this.mResData.themeColorId;
            shadowColorResId = this.mResData.themeShadowColorId;
        } else if ((this.mUpdateFlag & 2) != 0 && this.mResData.adaptiveColorMain != null) {
            Log.d("SystemUITextView", "apply style: adaptive color");
          //  AdaptiveColorResult result = WallpaperUtils.getAdaptiveColorValue(mContext);

        } else if ((this.mUpdateFlag & 4) != 0) {
            Log.d("SystemUITextView", "apply style: white-bg");
            if (this.mResData.whitebgColor != null) {
                textColorResId = this.mResData.whitebgColorId;
                Log.d("SystemUITextView", "textColorResId = " + textColorResId);
            }
            if (this.mResData.whitebgShadowColor != null) {
                shadowColorResId = this.mResData.whitebgShadowColorId;
                Log.d("SystemUITextView", "shadowColorResId = " + shadowColorResId);
            }
        }
        if (adaptiveColorEnabled) {
            setTextColor(adaptiveColor);
        } else if (textColorResId > 0) {
            setTextColor(mContext.getResources().getColor(textColorResId, null));
        }
        if (shadowColorResId > 0) {
            setShadowLayer(getShadowRadius(), getShadowDx(), getShadowDy(), mContext.getResources().getColor(shadowColorResId, null));
        }
    }

    private void updateCompoundDrawable(boolean visible) {
        if (!visible) {
            setCompoundDrawablesWithIntrinsicBounds(0, 0, 0, 0);
            setCompoundDrawablePadding(0);
        } else if (this.mResData.compoundDrawableId > 0 && this.mResData.compoundScaleId > 0) {
            Drawable compoundIcon = mContext.getResources().getDrawable(this.mResData.compoundDrawableId, null);
            float iconScale = getKeyguardFontScale() + (getKeyguardFontScale() - 1.0f);
            int iconSize = (int) (((float) ((int) mContext.getResources().getDimension(this.mResData.compoundScaleId))) * iconScale);
            compoundIcon.setBounds(0, 0, iconSize, iconSize);
            ColorFilter filter = null;
            if ((this.mUpdateFlag & 1) != 0) {
                if (this.mResData.themeColorId > 0) {
                    int duffColor = mContext.getResources().getColor(this.mResData.themeColorId, null);
                    Log.d("SystemUITextView", "filter: " + String.format("#%08X", new Object[]{Integer.valueOf(duffColor)}));
                    filter = new PorterDuffColorFilter(duffColor, Mode.SRC_ATOP);
                }
            } else if ((this.mUpdateFlag & 2) != 0 && this.mResData.adaptiveColorMain != null) {
                Log.d("SystemUITextView", "apply style: adaptive color");

                }
            } else if (!((this.mUpdateFlag & 4) == 0 || this.mResData.whitebgColor == null || this.mResData.whitebgShadowColor == null || this.mResData.whitebgColorId <= 0)) {
               // filter = new PorterDuffColorFilter(mContext.getResources().getColor(this.mResData.whitebgColorId, null), Mode.SRC_ATOP);
            }
           // compoundIcon.setColorFilter(filter);
            try {
              //  setCompoundDrawables(compoundIcon, null, null, null);
                if (this.mResData.compoundPaddingId > 0) {
                    setCompoundDrawablePadding((int) getContext().getResources().getDimension(this.mResData.compoundPaddingId));
                }
            } catch (Exception e) {
                Log.d("SystemUITextView", "Exception adding compoundDrawable!");
            }

    }

    private void initAttributeSet(TypedArray resArray) {
        this.mResData = new ResData();
        if (resArray != null) {
            this.mAttrCount = resArray.getIndexCount();
            for (int i = 0; i < this.mAttrCount; i++) {
                int attr = resArray.getIndex(i);
                switch (attr) {
                    case 0:
                        this.mResData.adaptiveColorMain = resArray.getString(attr);
                        break;
                    case 2:
                        this.mResData.compoundDrawable = resArray.getString(attr);
                        break;
                    case 3:
                        this.mResData.compoundPadding = resArray.getString(attr);
                        break;
                    case 4:
                        this.mResData.compoundScale = resArray.getString(attr);
                        break;
                    case 6:
                        this.mResData.originColor = resArray.getString(attr);
                        break;
                    case 8:
                        this.mResData.originShadowColor = resArray.getString(attr);
                        break;
                    case 10:
                        this.mResData.themeColor = resArray.getString(attr);
                        break;
                    case 12:
                        this.mResData.themeShadowColor = resArray.getString(attr);
                        break;
                    case 15:
                        this.mResData.whitebgColor = resArray.getString(attr);
                        break;
                    case 17:
                        this.mResData.whitebgShadowColor = resArray.getString(attr);
                        break;
                    default:
                        break;
                }
            }
            refreshResIds();
        }
    }

    private int getResIdByName(String name, String defType) {
        int identifier = mContext.getResources().getIdentifier(name, defType, mContext.getPackageName());
        if (identifier <= 0) {
            Log.e("SystemUITextView", "Invalid " + name);
        }
        return identifier;
    }

    private void refreshResIds() {
        if (this.mResData.originColor != null) {
            this.mResData.originColorId = getResIdByName(this.mResData.originColor, "color");
        }
        if (this.mResData.whitebgColor != null) {
            this.mResData.whitebgColorId = getResIdByName(this.mResData.whitebgColor, "color");
        }
        if (this.mResData.themeColor != null) {
            this.mResData.themeColorId = getResIdByName(this.mResData.themeColor, "color");
        }
        if (this.mResData.originShadowColor != null) {
            this.mResData.originShadowColorId = getResIdByName(this.mResData.originShadowColor, "color");
        }
        if (this.mResData.whitebgShadowColor != null) {
            this.mResData.whitebgShadowColorId = getResIdByName(this.mResData.whitebgShadowColor, "color");
        }
        if (this.mResData.themeShadowColor != null) {
            this.mResData.themeShadowColorId = getResIdByName(this.mResData.themeShadowColor, "color");
        }
        if (this.mResData.compoundDrawable != null) {
            this.mResData.compoundDrawableId = getResIdByName(this.mResData.compoundDrawable, "drawable");
        }
        if (this.mResData.compoundScale != null) {
            this.mResData.compoundScaleId = getResIdByName(this.mResData.compoundScale, "dimen");
        }
        if (this.mResData.compoundPadding != null) {
            this.mResData.compoundPaddingId = getResIdByName(this.mResData.compoundPadding, "dimen");
        }
    }

    public void updateCompoundVisible(boolean visible) {
        this.mCompoundVisble = visible;
        updateCompoundDrawable(visible);
    }
}
