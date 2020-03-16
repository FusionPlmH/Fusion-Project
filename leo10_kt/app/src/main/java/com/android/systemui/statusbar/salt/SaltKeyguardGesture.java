package com.android.systemui.statusbar.salt;


import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Typeface;
import android.os.Handler;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import com.android.keyguard.CarrierText;

import com.android.systemui.statusbar.StatusBarState;
import com.android.systemui.statusbar.phone.NotificationPanelView;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.android.settingslib.salt.SaltConfigCenter.getLeoSymbolStyle;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoTextSize;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.SaltValues.Values12;
import static com.android.settingslib.salt.SaltValues.Values13;
import static com.android.settingslib.salt.SaltValues.Values14;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltKeyguardGesture extends GestureDetector.SimpleOnGestureListener{
    private GestureDetector mDoubleTapGesture;
    private GestureDetector mLockscreenDoubleTapToSleep;
    private boolean mIsLockscreenDoubleTapEnabled;
    private Context mContext;
    private NotificationPanelView mPanelView;
    public SaltKeyguardGesture (NotificationPanelView panelView){

    }


}