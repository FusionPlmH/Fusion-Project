package com.android.systemui.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextClock;


import com.dome.leo.R;

import static com.os.leo.utils.FontsUtils.setLeoRomFonts;


public class KeyguardTextClock extends TextClock implements SystemUIWidgetCallback {
    protected static Context mContext;
    private int mAttrCount;
    private int mDensityDpi;
    private float mFontScale;
    private float mOriginalFontSizeDp;
    private ResData mResData;
    private int mUpdateFlag;

    private class ResData {
        private String adaptiveColorMain;
        private String originColor;
        private int originColorId;
        private String originShadowColor;
        private int originShadowColorId;
        private String themeColor;
        private int themeColorId;
        private String themeShadowColor;
        private int themeShadowColorId;
        private String whitebgColor;
        private int whitebgColorId;
        private String whitebgShadowColor;
        private int whitebgShadowColorId;

      //  /* synthetic */ ResData(KeyguardTextClock this$0, ResData -this1)
        {
           // this();
        }

        private ResData(KeyguardTextClock keyguardTextClock, Object o) {
        }
    }
    protected boolean mLeoCustomKeyguard;
    protected int mLeoCustomKeyguardColor;
    public void setLeoRemoveCustomColor() {
        mLeoCustomKeyguard= false;
        updateTextClockView();
    }

    public void setLeoCustomColor(int color) {
        mLeoCustomKeyguard = true;
        mLeoCustomKeyguardColor= color;
        updateTextClockView();
    }
    public void setLeoCustomFont(int font) {
        if(font==0){
            setTypeface(Typeface.create("sec-roboto-condensed", Typeface.NORMAL));
        }
        setTypeface(setLeoRomFonts(0,font));
    }


    public KeyguardTextClock(Context context) {
        this(context, null);
    }

    public KeyguardTextClock(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public KeyguardTextClock(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public KeyguardTextClock(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.mFontScale = 1.0f;
        this.mDensityDpi = 0;
        this.mOriginalFontSizeDp = 0.0f;
        this.mUpdateFlag = 0;
        this.mResData = null;
        this.mAttrCount = 0;
        mContext = context;
        TypedArray resArray = context.obtainStyledAttributes(attrs, R.styleable.SysuiWidgetRes, defStyleAttr, defStyleRes);
        initAttributeSet(resArray);
        resArray.recycle();
    }



    protected void onFinishInflate() {
        super.onFinishInflate();
        if (getContext().getResources().getDisplayMetrics().density > 0.0f) {
            this.mOriginalFontSizeDp = getTextSize() / getContext().getResources().getDisplayMetrics().density;
        }
        updateFontSizeInKeyguardBoundary(getContext().getResources().getConfiguration());
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
       // setShowCurrentUserTime(true);
        if (this.mAttrCount > 0) {
        //    WallpaperEventNotifier.getInstance(mContext).registerCallback(this);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttrCount > 0) {
          //  WallpaperEventNotifier.getInstance(mContext).removeCallback(this);
        }
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        updateFontSizeInKeyguardBoundary(newConfig);
    }

    public void updateFontSizeInKeyguardBoundary() {
        updateFontSizeInKeyguardBoundary(getContext().getResources().getConfiguration());
    }

    public void updateFontSizeInKeyguardBoundary(Configuration config) {
        float newFontScaleInBoundary = SystemUITextView.getFontScaleInKeyguardBoundary(mContext, config.fontScale);
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
        }
    }

    public void updateStyle(int updateFlag) {
        Log.d("KeyguardTextClock", "updateStyle() flag=" + this.mUpdateFlag + "," + updateFlag + " : " + toString());
        this.mUpdateFlag = updateFlag;
        refreshResIds();
        updateTextClockView();
    }

    private void updateTextClockView() {
        int textColor;
        //semClearAllTextEffect();
        int textColorResId = this.mResData.originColorId;
        int shadowColorResId = this.mResData.originShadowColorId;
        int adaptiveColor = 0;
        boolean adaptiveColorEnabled = false;
        if ((this.mUpdateFlag & 1) != 0) {
            Log.d("KeyguardTextClock", "apply style: theme");
            textColorResId = this.mResData.themeColorId;
            shadowColorResId = this.mResData.themeShadowColorId;
        } else if ((this.mUpdateFlag & 2) != 0 && this.mResData.adaptiveColorMain != null) {
            Log.d("KeyguardTextClock", "apply style: adaptive color");
          //  AdaptiveColorResult result = WallpaperUtils.getAdaptiveColorValue(mContext);
           // if (result != null) {
            //    adaptiveColorEnabled = true;
               // adaptiveColor = result.getColorByName(this.mResData.adaptiveColorMain);
           // }
        } else if (!((this.mUpdateFlag & 4) == 0 || this.mResData.whitebgColor == null || this.mResData.whitebgShadowColor == null)) {
            Log.d("KeyguardTextClock", "apply style: white-bg");
            textColorResId = this.mResData.whitebgColorId;
            shadowColorResId = this.mResData.whitebgShadowColorId;
        }
        int shadowColor = getShadowColor();
        if (adaptiveColorEnabled) {
            textColor = adaptiveColor;
            if (this.mResData.originShadowColorId > 0) {
                shadowColor = mContext.getResources().getColor(this.mResData.originShadowColorId, null);
            }
        } else if (textColorResId <= 0 || shadowColorResId <= 0) {
            Log.e("KeyguardTextClock", "Invalid res = " + textColorResId + ", " + shadowColorResId);
            return;
        } else {
            textColor = mContext.getResources().getColor(textColorResId, null);
            shadowColor = mContext.getResources().getColor(shadowColorResId, null);
        }
        Log.d("KeyguardTextClock", "textColor=" + String.format("#%08X", new Object[]{Integer.valueOf(textColor)}) + ", shadowColor=" + String.format("#%08X", new Object[]{Integer.valueOf(shadowColor)}));
        setTextColor(textColor);
        setShadowLayer(getShadowRadius(), getShadowDx(), getShadowDy(), shadowColor);
    }

    private void initAttributeSet(TypedArray resArray) {
        this.mResData = new ResData(this, null);
        if (resArray != null) {
            this.mAttrCount = resArray.getIndexCount();
            for (int i = 0; i < this.mAttrCount; i++) {
                int attr = resArray.getIndex(i);
                switch (attr) {
                    case 0:
                        this.mResData.adaptiveColorMain = resArray.getString(attr);
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
    public void setLeoFont(int font,int style) {
        if(font==1){
            setTypeface(setLeoRomFonts(0,style));
        }
    }
    private int getResIdByName(String name, String defType) {
        int identifier = mContext.getResources().getIdentifier(name, defType, mContext.getPackageName());
        if (identifier <= 0) {
            Log.e("KeyguardTextClock", "Invalid " + name);
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
    }
}
