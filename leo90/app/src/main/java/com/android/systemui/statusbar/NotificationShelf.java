package com.android.systemui.statusbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Handler;
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
import com.fusionleo.LeoProvider.LeoObserver;

import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoString;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoFonts;
import static com.fusionleo.LeoProvider.LeoManages.*;
import static com.fusionleo.LeoProvider.LeoManages.getLeoUIResource;


public class NotificationShelf extends FrameLayout implements OnLayoutChangeListener, LeoObserver.ObListener {
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
        updateLeoNotificationShelf();
      
    }
    private void updateLeoNotificationShelf(){
        setLeoNotificationShelf();
        LeoObserver mLeoObserver= new LeoObserver(new Handler(),this);
        ContentResolver contentResolver = getContext().getContentResolver();
        for (String uriFor : mLeoQSNotificationShelf) {
            contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
        }
    }
    private void setLeoNotificationShelf(){
        Context context= mContext;
        LeoSysUiManages(context);
        String str="string/";
        String mrfont="sec-roboto-medium";
        int sitze= setLeoQSNotificationShelfSize;
        mNotiSettingButton.setTextSize(sitze);
        mClearAllButton.setTextSize(sitze);

        mNotiSettingButton.setText(
                (setLeoQSNotiSettingShelfStrEnabled) ?
                        getLeoString(setLeoQSNotiSettingShelfStr) :
                        context.getResources().getString(getLeoUIResource(str+"noti_setting_text")));
        mClearAllButton.setText((setLeoQsClearAllShelfStrEnabled) ?getLeoString(setLeoQSClearAllShelfStr) :  context.getResources().getString(getLeoUIResource(str+"clear_all_text")) );
        mClearAllButton.setTypeface(setLeoFonts(context,setLeoQSClearAllShelfFont,mrfont, Typeface.NORMAL));
        mNotiSettingButton.setTypeface(setLeoFonts(context,setLeoQSNotiSettingShelfFont,mrfont,Typeface.NORMAL));
    }



    @Override
    public void onLayoutChange(View view, int i, int i1, int i2, int i3, int i4, int i5, int i6, int i7) {

    }

    @Override
    public void onLeoChange(String str) {
        for (String equals :mLeoQSNotificationShelf) {
            if (equals.equals(str)) {
                setLeoNotificationShelf();
                return;
            }
        }
    }
}
