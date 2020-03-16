package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.SystemProperties;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.ViewPropertyAnimator;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.accessibility.AccessibilityNodeInfo.AccessibilityAction;
import android.view.animation.AccelerateInterpolator;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.internal.util.NotificationColorUtil;


import java.io.File;


import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.leo.utils.Constants.mLeoRom;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBottomBarViewAllColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBottomBarViewClearAllColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBottomBarViewClearAllFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBottomBarViewColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBottomBarViewNotiSettingClearAllSize;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBottomBarViewNotiSettingColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBottomBarViewNotiSettingFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBottomBarViewRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNotificationEnabledBG;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNotificationItemShowBG;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelBGStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelBgBasicColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelBgGradientBgStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelBgWallpaper;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelBlurBgDegree;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelBlurWallpaperColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelGradientBackGroundColorRadius;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelGradientBackGroundCornerRadius;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelGradientBgCenterColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelGradientBgEndColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelGradientBgStartColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelGradientBgType;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelGradientEnableCenterColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelShowBG;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelStrokeDashColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelStrokeDashGap;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelStrokeDashWidth;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelStrokeEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelStrokeThickness;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelWallpaperColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSPanelWallpaperColorEnable;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrottomBarViewAllColorEnabled;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;

public class NotificationShelf extends FrameLayout implements OnLayoutChangeListener {
    private static final boolean ICON_ANMATIONS_WHILE_SCROLLING = SystemProperties.getBoolean("debug.icon_scroll_animations", true);
    private static final boolean USE_ANIMATIONS_WHEN_OPENING = SystemProperties.getBoolean("debug.icon_opening_animations", true);

    private boolean mAnimationsEnabled = true;
    private TextView mClearAllButton;

    private boolean mDark;
    private boolean mHasItemsInStableShelf;
    private boolean mHideBackground;

    private int mIconAppearTopPadding;
    private boolean mInteractive;
    private int mMaxLayoutHeight;
    private float mMaxShelfEnd;
    private boolean mNoAnimationsInThisFrame;
    private int mNotGoneIndex;
    private TextView mNotiSettingButton;
    private NotificationColorUtil mNotificationColorUtil;
    private float mOpenedAmount;
    private int mPaddingBetweenElements;
    private int mRelativeOffset;
    private int mScrollFastThreshold;
    private View mShelfDivider;



    public NotificationShelf(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mNotificationColorUtil = NotificationColorUtil.getInstance(context);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();

        this.mClearAllButton.setVisibility(4);
        this.mNotiSettingButton.setVisibility(4);
        setLeoRomNotificationShelf();
      
    }
    public void setLeoRomNotificationShelf(){
        LeoSettings(getContext());
        int colorstyle=setLeoUesrBottomBarViewRandomColor;
        int colorrandom=getLeoRandomColor(getContext());
         int colordefault=getContext().getColor(getLeoResource("color/bottom_bar_button_text_color")) ;
         int Clearcolor=colordefault;
        int NotiSetting=colordefault;
         if(setLeoUesrBottomBarViewColorEnabled==0){
             Clearcolor=colordefault;
             NotiSetting=colordefault;
         } else  if(setLeoUesrBottomBarViewColorEnabled==1){
             if(setLeoUesrottomBarViewAllColorEnabled==0){
                 if(colorstyle==0){
                     Clearcolor=setLeoUesrBottomBarViewClearAllColor;
                     NotiSetting=setLeoUesrBottomBarViewNotiSettingColor;
                 }else if(colorstyle==1){
                     Clearcolor=colorrandom;
                     NotiSetting =colorrandom;
                 }
             } else  if(setLeoUesrottomBarViewAllColorEnabled==1){
                 Clearcolor=setLeoUesrBottomBarViewAllColor;
                 NotiSetting=setLeoUesrBottomBarViewAllColor;
             }
         }
        mClearAllButton.setTextColor( Clearcolor);
        mNotiSettingButton.setTextColor(NotiSetting);
        int sitze=setLeoUesrBottomBarViewNotiSettingClearAllSize;
        mNotiSettingButton.setTextSize(sitze);
        mClearAllButton.setTextSize(sitze);
        mClearAllButton.setTypeface(setLeoRomFonts(0,setLeoUesrBottomBarViewClearAllFont));
        mNotiSettingButton.setTypeface(setLeoRomFonts(0,setLeoUesrBottomBarViewNotiSettingFont));
        if ( setLeoUesrNotificationEnabledBG) {
            mShelfDivider.setBackgroundColor(Transparency);
        }else {
            mShelfDivider.setBackgroundColor(Color.parseColor("#ffa0a0a0")) ;
        }
    }


    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoRomNotificationShelf();

    }
    @Override
    public void onLayoutChange(View view, int i, int i1, int i2, int i3, int i4, int i5, int i6, int i7) {

    }
}
