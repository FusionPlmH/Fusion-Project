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
import android.view.WindowManagerGlobal;
import android.widget.FrameLayout;
import android.widget.Toast;

import com.os.leo.utils.LeoUserString;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;




public class StatusBarWindowView extends FrameLayout {
    public static final String TAG = "StatusBarWindowView";
    private GestureDetector mDoubleTapGesture;
  //  private GestureDetector mStatusBarGesture;//
    private int mStatusBarHeaderHeight;
    private Vibrator mVibrator;

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
    class   LeoStatusBarGesture extends GestureDetector.SimpleOnGestureListener {

        LeoStatusBarGesture() {
          LeoSettings(getContext());
        }

    }
}







