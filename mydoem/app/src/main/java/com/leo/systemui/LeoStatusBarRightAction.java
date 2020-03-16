package com.leo.systemui;


import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;

import android.database.ContentObserver;

import android.graphics.Color;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.AttributeSet;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

import android.widget.ImageView;
import android.widget.LinearLayout;



import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarGesturesVibratorEnable;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarLeftAction;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarRightAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGestureVibrationLevel;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftClickAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftClickApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftLongClickAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarLeftLongClickApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightClickAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightClickApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightLongClickAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarRightLongClickApp;
import static com.os.leo.utils.LeoUserString.LeoAction;



public class LeoStatusBarRightAction extends ImageView implements View.OnClickListener, View.OnLongClickListener {

    private Context mContext;
    public LeoStatusBarRightAction(Context context) {
        this(context, null);
    }

    public LeoStatusBarRightAction(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public LeoStatusBarRightAction(Context context, AttributeSet attributeSet, int defStyle) {
        super(context, attributeSet, defStyle);
        mContext = context;


    }

    public void onClick(View view) {
        LeoSettings(mContext);
       int Click=setLeoUesrStatusBarRightClickAction ;
        String string =setLeoUesrStatusBarRightClickApp;
        Vibrate();
        LeoAction(mContext,Click,string);
    }

    public boolean onLongClick(View view) {
        LeoSettings(mContext);
        int LongClick=setLeoUesrStatusBarRightLongClickAction;
       String string =setLeoUesrStatusBarRightLongClickApp;
        LeoAction(mContext,LongClick,string);
        Vibrate();
        return true;
    }
    public void Vibrate() {
        if ( setLeoUesrStatusBarGesturesVibratorEnable == 1) {
            this.mVibrator = (Vibrator) this.mContext.getSystemService(Context.VIBRATOR_SERVICE);
            this.mVibrator.vibrate(setLeoUesrStatusBarGestureVibrationLevel);
        }
    }
    private Vibrator mVibrator;

    public void updateSettings() {
        LeoSettings(mContext);

        boolean ViewVisibility=setLeoUesrStatusBarRightAction;
       if (ViewVisibility) {
            setOnClickListener(this);
            setOnLongClickListener(this);
           setVisibility(VISIBLE);
     } else{
           setVisibility(GONE);
       }
    }



    @Override
    public boolean onTouchEvent(MotionEvent event) {
        switch (event.getAction()) {
            case MotionEvent.ACTION_DOWN://0
                Log.e("TAG", "Activity onTouchEvent按住");
                setBackgroundColor(Color.parseColor("#98f73a3a"));
                break;
            case MotionEvent.ACTION_UP://1
                Log.e("TAG", "Activity onTouchEvent抬起");
                setBackgroundColor(0);
                break;
        }
        return super.onTouchEvent(event);
    }
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

        if (mLeoSettingsObserver == null) {
            mLeoSettingsObserver = new LeoSettingsObserver(new Handler());
        }
        mLeoSettingsObserver.observe();
        updateSettings();

    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().getContentResolver().unregisterContentObserver(mLeoSettingsObserver);
    }

    private LeoSettingsObserver mLeoSettingsObserver;
    private class LeoSettingsObserver extends ContentObserver {


        LeoSettingsObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver resolver = mContext.getContentResolver();
         resolver.registerContentObserver(Settings.System
                        .getUriFor(getLeoStatusBarRightAction()), false,
                   this);

        }


        @Override
        public void onChange(boolean selfChange) {
            updateSettings();
        }
    }
}
