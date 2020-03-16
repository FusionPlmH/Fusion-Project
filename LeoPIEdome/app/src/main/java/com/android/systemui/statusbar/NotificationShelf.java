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

import static com.android.fusionleo.global.LeoGlobalUtils.getLeoCustomString;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrBottomBarViewClearAllCustom;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrBottomBarViewClearAllCustomString;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrBottomBarViewClearAllFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrBottomBarViewClearAllSettingSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrBottomBarViewNotiSettingCustom;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrBottomBarViewNotiSettingCustomString;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrBottomBarViewNotiSettingFont;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class NotificationShelf extends FrameLayout implements OnLayoutChangeListener {
    private static final boolean ICON_ANMATIONS_WHILE_SCROLLING = SystemProperties.getBoolean("debug.icon_scroll_animations", true);
    private static final boolean USE_ANIMATIONS_WHEN_OPENING = SystemProperties.getBoolean("debug.icon_opening_animations", true);

    private boolean mAnimationsEnabled = true;
    private TextView mClearAllButton;

    private boolean mDark;
    private boolean mHasItemsInStableShelf;
    private boolean mHideBackground;
    public Context mContext;
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
        LeoStatusSettings( mContext);
        int sitze=setLeoUesrBottomBarViewClearAllSettingSize;
        mNotiSettingButton.setTextSize(sitze);
        mClearAllButton.setTextSize(sitze);
        mClearAllButton.setTypeface(setLeoRomFonts(0,setLeoUesrBottomBarViewClearAllFont));
        mNotiSettingButton.setTypeface(setLeoRomFonts(0,setLeoUesrBottomBarViewNotiSettingFont));
        mNotiSettingButton.setText(
                (setLeoUesrBottomBarViewNotiSettingCustom==0) ?
                        mContext.getResources().getString(getLeoResource("string/noti_setting_text"))  :
                        getLeoCustomString(setLeoUesrBottomBarViewNotiSettingCustomString));
        mClearAllButton.setText(
                (setLeoUesrBottomBarViewClearAllCustom==0) ?
                        mContext.getResources().getString(getLeoResource("string/clear_all_text")) :
                        getLeoCustomString(setLeoUesrBottomBarViewClearAllCustomString));
    }


    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoRomNotificationShelf();

    }
    @Override
    public void onLayoutChange(View view, int i, int i1, int i2, int i3, int i4, int i5, int i6, int i7) {

    }
}
