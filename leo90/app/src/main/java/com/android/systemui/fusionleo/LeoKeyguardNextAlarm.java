package com.android.systemui.fusionleo;


import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.database.ContentObserver;

import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.keyguard.CarrierText;
import com.android.settingslib.Utils;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.fusionleo.LeoX.systemui.LeoConfigImageView;
import com.fusionleo.LeoProvider.LeoManages;
import com.fusionleo.LeoProvider.LeoObserver;

import com.android.systemui.widget.SystemUITextView;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.android.systemui.SystemUIApplication.getContext;
import static com.fusionleo.LeoX.systemui.LeoConfig.*;
import static com.fusionleo.LeoProvider.LeoManages.*;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;

public class LeoKeyguardNextAlarm extends SystemUITextView implements LeoObserver.ObListener{


    Context mContext;

    Resources mResources ;



    public LeoKeyguardNextAlarm(Context context) {
        super(context);

    }

    public LeoKeyguardNextAlarm(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        init(context);
    }

    @Override
    public void onLeoChange(String str) {
        for (String equals :KeyguardAlarm) {
            if (equals.equals(str)) {
                checkSettingsAndUpdate();
                return;
            }
        }
    }



    public void checkSettingsAndUpdate() {
        LeoSysUiManages(mContext);
      String  string = Settings.System.getString(mContext.getContentResolver(), "next_alarm_formatted");
        if (string != null) {
            if (TextUtils.isEmpty(string)) {
             setText(mResources.getIdentifier("servicebox_alarm_no_alarm", "string", mContext.getPackageName()));
            } else {
                String str;
                if(setLeoKeyguardAlarmcapEnr==1){
                    str=mResources.getString(mResources.getIdentifier("servicebox_alarm_next", "string", mContext.getPackageName()))+" "+string;
                }else {
                    str=string;
                }
               setText(str);
            }
        }
        Drawable mAlarmImageView;
        mAlarmImageView=getCustomDrawable(getContext(), "ic_alarm");
        if (setLeoKeyguardAlarmIcon) {
            setCompoundDrawablesRelativeWithIntrinsicBounds( mAlarmImageView, null, null, null);
        } else {
            setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
        }
        setCompoundDrawablePadding(10);
    setTextSize(setLeoKeyguardAlarmSize);
        if(setLeoKeyguardAlarmColorEnr==1) {
           setLeoCustomColor(setLeoKeyguardAlarmColor);
            mAlarmImageView.setColorFilter(setLeoKeyguardAlarmIconColor,PorterDuff.Mode.SRC_IN);
        }else {
           setLeoRemoveCustomColor();
            mAlarmImageView.clearColorFilter();

        }
       setTypeface(setLeoFonts(mContext,setLeoKeyguardAlarmColorFont,"sec-roboto-condensed",Typeface.NORMAL));

        setVisibility(setLeoKeyguardAlarm ?VISIBLE : GONE);
    }

    private void init(Context context) {
        mContext = context;
        mResources = getResources();
        checkSettingsAndUpdate();
        LeoObserver Resolver  = new LeoObserver(new Handler(),this);
        ContentResolver contentResolver = mContext.getContentResolver();
        for (String uriFor :KeyguardAlarm) {
            contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
        }

    }




}