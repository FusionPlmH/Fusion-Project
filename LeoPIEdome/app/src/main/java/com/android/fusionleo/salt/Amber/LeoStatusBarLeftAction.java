package com.android.fusionleo.salt.Amber;


import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;

import android.database.ContentObserver;

import android.graphics.Color;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.support.annotation.Nullable;
import android.util.AttributeSet;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

import android.widget.ImageView;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureVibrationLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarLeftClickAction;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarLeftClickApp;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarLeftLongClickAction;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarLeftLongClickApp;


public class LeoStatusBarLeftAction extends ImageView implements View.OnClickListener, View.OnLongClickListener {

    private Context mContext;
    public LeoStatusBarLeftAction(Context context) {
        this(context, null);
    }
    public LeoStatusBarLeftAction(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
    public LeoStatusBarLeftAction(Context context, AttributeSet attributeSet, int defStyle) {
        super(context, attributeSet, defStyle);
        mContext = context;
    }
    public void onClick(View view) {
        LeoStatusSettings(mContext);
        int Click=setLeoUesrStatusBarLeftClickAction ;
        String string =setLeoUesrStatusBarLeftClickApp;
        Vibrate();
        if (Click <= 0) {
            Click=100;
        }
        LeoGlobalActiong(mContext,Click,string);
    }
    public boolean onLongClick(View view) {
        LeoStatusSettings(mContext);
        int LongClick=setLeoUesrStatusBarLeftLongClickAction;
        String string =setLeoUesrStatusBarLeftLongClickApp;
        if (LongClick <= 0) {
            LongClick=101;
        }
        LeoGlobalActiong(mContext,LongClick,string);
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

        setOnClickListener(this);
        setOnLongClickListener(this);

    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();

    }

}
