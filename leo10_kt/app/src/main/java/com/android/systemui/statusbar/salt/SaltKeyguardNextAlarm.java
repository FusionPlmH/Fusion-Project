package com.android.systemui.statusbar.salt;


import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;

import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;

import android.graphics.PorterDuff;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Handler;

import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;


import com.android.settingslib.salt.utils.LeoReceiver;
import com.android.systemui.widget.SystemUITextView;

import static com.android.settingslib.salt.SaltConfigCenter.LeoString;
import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.SaltConfigFrame.getCustomDrawable;
import static com.android.settingslib.salt.SaltConfigFrame.nextalarm;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltKeyguardNextAlarm extends SystemUITextView implements LeoReceiver.BroadcastListener{


    Context mContext;



    public SaltKeyguardNextAlarm(Context context) {
        super(context);

    }

    public SaltKeyguardNextAlarm(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        mContext = context;

    }
    LeoReceiver mBroadcastReceiver = new LeoReceiver(this);
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        checkSettingsAndUpdate();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(rt100foleo("U0FMVF9VUERBVEVfTE9DS0FMQVJNX1NFVFRJTkdT"));
        mContext.registerReceiver(mBroadcastReceiver, intentFilter);
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        mContext.unregisterReceiver(mBroadcastReceiver);
    }

    public void checkSettingsAndUpdate() {
        LeoSysUiManages(mContext);
        setText(nextalarm(mContext,setLeoKeyguardAlarmcapEnr));
        Drawable mAlarmImageView;
        mAlarmImageView=getCustomDrawable(getContext(), "ic_alarm");
        if (setLeoKeyguardAlarmIcon) {
            setCompoundDrawablesRelativeWithIntrinsicBounds( mAlarmImageView, null, null, null);
        } else {
            setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
        }
        setCompoundDrawablePadding(10);
        setTextSize(setLeoKeyguardAlarmSize);
        if(setLeoKeyguardAlarmColorEnr) {
           setLeoCustomColor(setLeoKeyguardAlarmColor);
            mAlarmImageView.setColorFilter(setLeoKeyguardAlarmIconColor,PorterDuff.Mode.SRC_IN);
        }else {
           setLeoRemoveCustomColor();
            mAlarmImageView.clearColorFilter();
        }
        setTypeface(setLeoTextFont(mContext,setLeoKeyguardAlarmColorFont,"roboto-regular",Typeface.NORMAL));
        setVisibility(setLeoKeyguardAlarm ?VISIBLE : GONE);
    }



    @Override
    public void onLeoChange(Intent intent) {
        String action = intent.getAction();
        if (action.equals(rt100foleo("U0FMVF9VUERBVEVfTE9DS0FMQVJNX1NFVFRJTkdT"))) {
            checkSettingsAndUpdate();
        }
    }
}