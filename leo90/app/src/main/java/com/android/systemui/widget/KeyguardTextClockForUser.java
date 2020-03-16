package com.android.systemui.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.LinearGradient;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.Shader.TileMode;
import android.graphics.Typeface;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextClock;


import com.android.leo.R;
import com.android.systemui.Rune;


import java.io.File;

public class KeyguardTextClockForUser extends TextClock implements SystemUIWidgetCallback {
    private static Context mContext;
    private boolean mAdaptiveColorEnabled;
    private int[] mAdaptiveColors;
    private int mAttrCount;
   // private KeyguardFontEffectUtil mFontEffectUtil;
    private boolean mIsVertical;
    private ResData mResData;
    private int mUpdateFlag;
    protected boolean mLeoCustomKeyguard;
    protected int mLeoCustomKeyguardColor;
    private class ResData {
        private String adaptiveColorMain;
        private String adaptiveColorSecond;
        private String originColor;
        private int originColorId;
        private String originShadowColor;
        private int originShadowColorId;
        private String themeColor;
        private int themeColorId;
        private String themeShadowColor;
        private int themeShadowColorId;
        private int timeIndex;
        private String whitebgColor;
        private int whitebgColorId;
        private String whitebgShadowColor;
        private int whitebgShadowColorId;

        {
           // this();
        }

        private ResData(KeyguardTextClockForUser keyguardTextClockForUser, Object o) {
        }
    }
    public void setLeoRemoveCustomColor() {
        mLeoCustomKeyguard= false;
        updateTextClockView();
        updateFont();

    }

    public void setLeoCustomColor(int color) {
        mLeoCustomKeyguard = true;
        mLeoCustomKeyguardColor= color;
        updateTextClockView();

    }
    public void setLeoCustomFont(int font) {
        if(font<=0){
            updateFont();
        } else {
           // setTypeface(setLeoRomFonts(0,font));
        }

    }
    public KeyguardTextClockForUser(Context context) {
        this(context, null);
    }

    public KeyguardTextClockForUser(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public KeyguardTextClockForUser(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    public KeyguardTextClockForUser(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        this.mUpdateFlag = 0;
        this.mResData = null;
        this.mAdaptiveColorEnabled = false;
        this.mAttrCount = 0;
        this.mAdaptiveColors = new int[2];
        this.mIsVertical = false;
        mContext = context;
        TypedArray resArray = context.obtainStyledAttributes(attrs, R.styleable.SysuiWidgetRes, defStyleAttr, defStyleRes);
        initAttributeSet(resArray);
        resArray.recycle();
        //this.mFontEffectUtil = new KeyguardFontEffectUtil();
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
       // setShowCurrentUserTime(true);
        if (this.mAttrCount > 0) {
          //  WallpaperEventNotifier.getInstance(mContext).registerCallback(this);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttrCount > 0) {
           // WallpaperEventNotifier.getInstance(mContext).removeCallback(this);
        }
    }

    protected void onDraw(Canvas canvas) {

    }

    @SuppressLint("LongLogTag")
    public void updateStyle(int updateFlag) {
        Log.d("KeyguardTextClockForUser", "updateStyle() flag=" + this.mUpdateFlag + "," + updateFlag + " : " + toString());
        this.mAdaptiveColorEnabled = false;
        this.mUpdateFlag = updateFlag;
        refreshResIds();
        updateTextClockView();
        updateFont();

    }

    @SuppressLint("LongLogTag")
    private void updateTextClockView() {
        int textColor;
     //   semClearAllTextEffect();

        int textColorResId = this.mResData.originColorId;
        int shadowColorResId = this.mResData.originShadowColorId;
        int adaptiveColor = 0;
        if ((this.mUpdateFlag & 1) != 0) {
            Log.d("KeyguardTextClockForUser", "apply style: theme");
            textColorResId = this.mResData.themeColorId;
            shadowColorResId = this.mResData.themeShadowColorId;
        } else if ((this.mUpdateFlag & 2) != 0 && this.mResData.adaptiveColorMain != null) {
            Log.d("KeyguardTextClockForUser", "apply style: adaptive color");
           // AdaptiveColorResult result = WallpaperUtils.getAdaptiveColorValue(mContext);

        } else if (!((this.mUpdateFlag & 4) == 0 || this.mResData.whitebgColor == null || this.mResData.whitebgShadowColor == null)) {
            Log.d("KeyguardTextClockForUser", "apply style: white-bg");
            textColorResId = this.mResData.whitebgColorId;
            shadowColorResId = this.mResData.whitebgShadowColorId;
        }
        int shadowColor = getShadowColor();
        if (this.mAdaptiveColorEnabled) {
            textColor = adaptiveColor;
            if (this.mResData.originShadowColorId > 0) {
                shadowColor = mContext.getResources().getColor(this.mResData.originShadowColorId, null);
            }
        } else if (textColorResId <= 0 || shadowColorResId <= 0) {
            Log.e("KeyguardTextClockForUser", "Invalid res = " + textColorResId + ", " + shadowColorResId);
            return;
        } else {
            textColor = mContext.getResources().getColor(textColorResId, null);
            shadowColor = mContext.getResources().getColor(shadowColorResId, null);
        }
        Log.d("KeyguardTextClockForUser", "textColor=" + String.format("#%08X", new Object[]{Integer.valueOf(textColor)}) + ", shadowColor=" + String.format("#%08X", new Object[]{Integer.valueOf(shadowColor)}));
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
                    case 1:
                        this.mResData.adaptiveColorSecond = resArray.getString(attr);
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
                    case 13:
                        this.mResData.timeIndex = resArray.getInt(attr, -1);
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

    @SuppressLint("LongLogTag")
    private int getResIdByName(String name, String defType) {
        int identifier = mContext.getResources().getIdentifier(name, defType, mContext.getPackageName());
        if (identifier <= 0) {
            Log.e("KeyguardTextClockForUser", "Invalid " + name);
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

    @SuppressLint("LongLogTag")
    private void updateFont() {
        Typeface tf;
        Object path = null;

        if (TextUtils.isEmpty((CharSequence) path) || !new File((String) path).exists()) {
            tf = Typeface.create(Rune.KEYWI_VALUE_CLOCK_FONT_STYLE, 0);
            if (!TextUtils.isEmpty((CharSequence) path)) {
                Log.e("KeyguardTextClockForUser", path + " does not exist. Use default font.");
            }
        } else {
            tf = Typeface.createFromFile((File) path);
        }
        if (tf != null) {
            setTypeface(tf);
        }
    }

    private void setTextFontEffect() {

    }
}
