package com.android.systemui.statusbar;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.graphics.drawable.GradientDrawable.Orientation;
import android.graphics.drawable.LayerDrawable;
import android.provider.Settings.System;
import android.view.View;
import android.widget.Button;
import android.widget.Chronometer;
import android.widget.DateTimeView;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.android.internal.util.NotificationColorUtil;

import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;

import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;

import java.util.ArrayList;
import java.util.HashMap;

public class NotificationColorPicker implements ConfigurationListener{
    private HashMap<Integer, Integer> mColorSet = new HashMap();
    private Context mContext;
    private boolean mIsInversionNeededByKeyguard;
    private boolean mIsNightModeOn;
    private boolean mNightModeChanged;
    private boolean mPalleteChanged;
    private boolean mShouldTypoReTint;
    private int mState = -1;
    private boolean mUserSwitched;
    public static int mNotTimeTextColor;
    public static int mNotiActionsColor;
    public static int mNotiAppIconColor;
    public static int mNotiAppNameTextColor;
    public static boolean mNotiColorSwitch;
    public static int mNotiDetailedTitleTextColor;
    public static int mNotiDeviderColor;
    public static int mNotiExpandButtonColor;
    public static int mNotiGroupSumColor;
    public static int mNotiGroupTitleColor;
    public static boolean mNotiIconColorSwitch;
    public static int mNotiOverFlowTextColor;
    public static int mNotiSecTitleColor;
    public static int mNotiSumColor;
    public static int mNotiTitleTextColor;

    public void setNotiAppIconColor() {
        mNotiIconColorSwitch = System.getInt(mContext.getContentResolver(), "is_noti_icon_switch", 0)==1;
        mNotiAppIconColor = System.getInt(this.mContext.getContentResolver(), "is_appicon_color", -14606046);
    }

    public void setNotiTextColor() {
        mNotiColorSwitch = System.getInt(mContext.getContentResolver(), "is_notifications_switch", 0)==1;
        mNotiTitleTextColor = System.getInt(this.mContext.getContentResolver(), "is_maintitle_color", -14606046);
        mNotiSumColor = System.getInt(this.mContext.getContentResolver(), "is_summarytext_color", -14606046);
        mNotiExpandButtonColor = System.getInt(this.mContext.getContentResolver(), "is_noti_expand_color", -14606046);
        mNotiAppNameTextColor = System.getInt(this.mContext.getContentResolver(), "is_appname_color", -14606046);
        mNotiDetailedTitleTextColor = System.getInt(this.mContext.getContentResolver(), "is_2ndtitle_color", -14606046);
        mNotiActionsColor = System.getInt(this.mContext.getContentResolver(), "is_action_color", -14606046);
        mNotTimeTextColor = System.getInt(this.mContext.getContentResolver(), "is_time_color", -14606046);
        mNotiDeviderColor = System.getInt(this.mContext.getContentResolver(), "is_devider_color", -14606046);
        mNotiOverFlowTextColor = System.getInt(this.mContext.getContentResolver(), "is_sec_overflow_number", -3062214);
        mNotiGroupTitleColor = System.getInt(this.mContext.getContentResolver(), "is_notif_group_title_text_color", -14342875);
        mNotiGroupSumColor = System.getInt(this.mContext.getContentResolver(), "is_notif_group_summary_text_color", -9079435);
        mNotiSecTitleColor = System.getInt(this.mContext.getContentResolver(), "is_noti_sec_title_text_color", -9079435);
    }

    public NotificationColorPicker(Context context) {
        this.mContext = context;
        ((ConfigurationController) Dependency.get(ConfigurationController.class)).addCallback(this);

    }

    private int getPrimaryColor() {
       return 0;
    }

    private void updateActions(View view, int i, boolean z) {
        if (view != null) {
            FrameLayout frameLayout = (FrameLayout) view.findViewById(16908766);
            if (frameLayout != null) {
                LinearLayout linearLayout = (LinearLayout) frameLayout.findViewById(16908765);
                if (linearLayout != null) {
                    int childCount = linearLayout.getChildCount();
                    for (int i2 = 0; i2 < childCount; i2++) {
                        Button button = (Button) linearLayout.getChildAt(i2);
                        button.setTextColor(i);
                        updateShowButtonBackground(button, i, z);
                    }
                }
            }
        }
    }



    private void updateBig(View view, int i, boolean z, boolean z2,boolean z3) {
        View view2 = view;
        if (view2 != null) {
            updateActions(view2, i, z3);
            TextView textView = (TextView) view2.findViewById(16908834);
            if (textView != null) {

            }
            TextView textView2 = (TextView) view2.findViewById(16909113);
            if (textView2 != null) {
                textView2.setTextColor(((Integer) (z2 ? this.mColorSet.get(Integer.valueOf(-105)) : this.mColorSet.get(Integer.valueOf(16909113)))).intValue());
            }
            TextView textView3 = (TextView) view2.findViewById(16909114);
            if (textView3 != null) {
                textView3.setTextColor(((Integer) (z2 ? this.mColorSet.get(Integer.valueOf(-105)) : this.mColorSet.get(Integer.valueOf(16909114)))).intValue());
            }
            TextView textView4 = (TextView) view2.findViewById(16909115);
            if (textView4 != null) {
                textView4.setTextColor(((Integer) (z2 ? this.mColorSet.get(Integer.valueOf(-105)) : this.mColorSet.get(Integer.valueOf(16909115)))).intValue());
            }
            TextView textView5 = (TextView) view2.findViewById(16909116);
            if (textView5 != null) {
                textView5.setTextColor(((Integer) (z2 ? this.mColorSet.get(Integer.valueOf(-105)) : this.mColorSet.get(Integer.valueOf(16909116)))).intValue());
            }
            TextView textView6 = (TextView) view2.findViewById(16909117);
            if (textView6 != null) {
                textView6.setTextColor(((Integer) (z2 ? this.mColorSet.get(Integer.valueOf(-105)) : this.mColorSet.get(Integer.valueOf(16909117)))).intValue());
            }
            TextView textView7 = (TextView) view2.findViewById(16909118);
            if (textView7 != null) {
                textView7.setTextColor(((Integer) (z2 ? this.mColorSet.get(Integer.valueOf(-105)) : this.mColorSet.get(Integer.valueOf(16909118)))).intValue());
            }
            TextView textView8 = (TextView) view2.findViewById(16909119);
            if (textView8 != null) {
                textView8.setTextColor(((Integer) (z2 ? this.mColorSet.get(Integer.valueOf(-105)) : this.mColorSet.get(Integer.valueOf(16909119)))).intValue());
            }

        }
    }

    private void updateShowButtonBackground(Button button, int i, boolean z) {

    }

    private void updateSingleLine(View view, boolean z) {

    }

    public void forceUpdateDone() {
        this.mNightModeChanged = false;
        this.mPalleteChanged = false;
        this.mUserSwitched = false;
    }

    public int getColor(int i) {
        return ((Integer) this.mColorSet.get(Integer.valueOf(i))).intValue();
    }

    public int getState() {
        return this.mState;
    }


}
