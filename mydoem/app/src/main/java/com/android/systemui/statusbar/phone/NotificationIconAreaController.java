package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Rect;
import android.support.annotation.NonNull;
import android.support.v4.util.ArrayMap;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.android.internal.statusbar.StatusBarIcon;
import com.android.internal.util.NotificationColorUtil;

import com.android.systemui.statusbar.NotificationShelf;

import com.android.systemui.statusbar.policy.DarkIconDispatcher.DarkReceiver;


import java.util.ArrayList;
import java.util.function.Function;

import static com.os.leo.utils.LeoUtils.getLeoInt;

/**
 * A controller for the space in the status bar to the left of the system icons. This area is
 * normally reserved for notifications.
 */
public class NotificationIconAreaController implements DarkReceiver {
    private final NotificationColorUtil mNotificationColorUtil;

    private int mIconSize;
    private int mIconHPadding;
    private int mIconTint = Color.WHITE;

    private StatusBar mStatusBar;
    protected View mNotificationIconArea;

    private final Rect mTintArea = new Rect();

    private Context mContext;

    public NotificationIconAreaController(Context context, StatusBar statusBar) {
        mStatusBar = statusBar;
        mNotificationColorUtil = NotificationColorUtil.getInstance(context);
        mContext = context;

        initializeNotificationAreaViews(context);
    }

    protected View inflateIconArea(LayoutInflater inflater) {
       // return inflater.inflate(R.layout.notification_icon_area, null);
        return null;
    }

    /**
     * Initializes the views that will represent the notification area.
     */
    protected void initializeNotificationAreaViews(Context context) {
        reloadDimens(context);

        LayoutInflater layoutInflater = LayoutInflater.from(context);
        mNotificationIconArea = inflateIconArea(layoutInflater);

    }

    public void setupShelf(NotificationShelf shelf) {

    }

    public void onDensityOrFontScaleChanged(Context context) {

    }

    @NonNull
    private FrameLayout.LayoutParams generateIconLayoutParams() {
        return new FrameLayout.LayoutParams(
                mIconSize + 2 * mIconHPadding, getHeight());
    }

    private void reloadDimens(Context context) {
        Resources res = context.getResources();
        mIconSize = res.getDimensionPixelSize(com.android.internal.R.dimen.status_bar_icon_size);

    }

    /**
     * Returns the view that represents the notification area.
     */
    public View getNotificationInnerAreaView() {
        return mNotificationIconArea;
    }

    /**
     * See {@link com.android.systemui.statusbar.policy.DarkIconDispatcher#setIconsDarkArea}.
     * Sets the color that should be used to tint any icons in the notification area.
     *
     * @param tintArea the area in which to tint the icons, specified in screen coordinates
     * @param darkIntensity
     */
    public void onDarkChanged(Rect tintArea, float darkIntensity, int iconTint) {
        if (tintArea == null) {
            mTintArea.setEmpty();
        } else {
            mTintArea.set(tintArea);
        }
        mIconTint = iconTint;

    }

    protected int getHeight() {

        return 0;
    }




}
