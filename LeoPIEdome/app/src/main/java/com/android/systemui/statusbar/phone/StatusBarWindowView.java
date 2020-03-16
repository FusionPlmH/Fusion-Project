/*
 * Copyright (C) 2012 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.systemui.statusbar.phone;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.gesture.GestureOverlayView;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.IBinder;
import android.os.Vibrator;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManagerGlobal;
import android.widget.FrameLayout;
import android.widget.Toast;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureDouble;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureDoubleApp;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureDoubleEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGestureVibrationLevel;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.Transparency;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class StatusBarWindowView extends FrameLayout {
    public static final String TAG = "StatusBarWindowView";
    private GestureDetector mDoubleTapGesture;
  //  private GestureDetector mStatusBarGesture;//
    private int mStatusBarHeaderHeight;

   public Context mContext;
    // Implements the floating action mode for TextView's Cut/Copy/Past menu. Normally provided by
    // DecorView, but since this is a special window we have to roll our own.
    private View mFloatingActionModeOriginatingView;

    public StatusBarWindowView(@NonNull Context context) {
        super(context);
     mStatusBarHeaderHeight = context.getResources().getDimensionPixelSize(getLeoResource("dimen/status_bar_height"));
    }


    @Override
    public FrameLayout.LayoutParams generateLayoutParams(AttributeSet attrs) {
        return new LayoutParams(getContext(), attrs);
    }

    @Override
    protected FrameLayout.LayoutParams generateDefaultLayoutParams() {
        return new LayoutParams(LayoutParams.MATCH_PARENT, LayoutParams.MATCH_PARENT);
    }




    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();

    }
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        LeoStatusBarGesture();
    }
        public  void LeoStatusBarGesture(){
        mDoubleTapGesture = new GestureDetector( StatusBarWindowView.this.mContext, new GestureDetector.SimpleOnGestureListener() {
            private Vibrator mVibrator;
            private void updateDoubleAction(Context context) {
                if(setLeoUesrStatusBarGestureDoubleEnabled==1){
                    updateContext(context);
                    int act=setLeoUesrStatusBarGestureDouble;
                    if(act==0){
                        act=100;
                    }
                    LeoGlobalActiong(context, act,setLeoUesrStatusBarGestureDoubleApp );
                    Vibrate();
                }

            }
            private void updateContext(Context context) {
                LeoStatusSettings(context);
            }
            public void Vibrate() {
                if ( setLeoUesrStatusBarGesturesVibratorEnable == 1) {
                    mVibrator = (Vibrator)getContext().getSystemService(Context.VIBRATOR_SERVICE);
                    mVibrator.vibrate(setLeoUesrStatusBarGestureVibrationLevel);
                }
            }

            public boolean onDoubleTap(MotionEvent motionEvent) {
                updateDoubleAction(getContext());
                return true;
            }
        });


    }
}







