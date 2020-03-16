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
import android.util.AttributeSet;

import android.util.Log;
import android.view.MotionEvent;
import android.view.View;

import android.widget.ImageView;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureVibrationLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarRightClickAction;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarRightClickApp;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarRightLongClickAction;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarRightLongClickApp;


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
        LeoStatusSettings(mContext);
       int Click=setLeoUesrStatusBarRightClickAction ;
        String string =setLeoUesrStatusBarRightClickApp;
        if (Click <= 0) {
            Click=102;//默认动作为返回
        }
        Vibrate();
        //获取全局动作框架
        LeoGlobalActiong(mContext,Click,string);
    }

    public boolean onLongClick(View view) {
        LeoStatusSettings(mContext);
        int LongClick=setLeoUesrStatusBarRightLongClickAction;
       String string =setLeoUesrStatusBarRightLongClickApp;
        if (LongClick <= 0) {
            LongClick=121; //默认长按动作
        }
        //获取全局动作框架
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
