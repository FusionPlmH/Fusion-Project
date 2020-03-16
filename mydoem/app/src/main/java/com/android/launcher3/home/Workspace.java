/*
 * Copyright (C) 2008 The Android Open Source Project
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

package com.android.launcher3.home;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Property;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewDebug;
import android.view.ViewGroup;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDoubleTapAction;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDoubleTapApp;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDoubleTapEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherDoubleTapVibrator;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherGesturalVibrationLevel;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarGesturesVibratorEnable;
import static com.os.leo.utils.LeoUserString.LeoAction;


/**
 * The workspace is a wide area with a wallpaper and a finite number of pages.
 * Each page contains a number of icons, folders or widgets the user can
 * interact with. A workspace is meant to be used with a fixed width only.
 */
public class Workspace extends ViewGroup {
             private GestureDetector mGestureListener;
    private static final String TAG = "Launcher.Workspace";
    private static final int BIND_NONCURRENT_PAGES = 1;
    private static final int BIND_NOTHING = 0;



     public Workspace(Context context) {
     super(context);
         WorkspaceGestureDoubleTap(context);
     }

    public void WorkspaceGestureDoubleTap(Context context) {
        mGestureListener = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() {
            private Vibrator mVibrator;
            public void Vibrate() {
                if (setLeoUesrLauncherDoubleTapVibrator == 1) {
                    this.mVibrator = (Vibrator) getContext().getSystemService(Context.VIBRATOR_SERVICE);
                    this.mVibrator.vibrate(setLeoUesrLauncherGesturalVibrationLevel);
                }
            }
            @Override
            public boolean onDoubleTap(MotionEvent event) {
               LeoSettings(getContext());
              boolean woksdoutap= setLeoUesrLauncherDoubleTapEnabled;
          if (woksdoutap) {
                Log.d("launcher double"+"Leo Rom", "ROM developer from China." );
              Vibrate();
               String string =setLeoUesrLauncherDoubleTapApp;
               int Click= setLeoUesrLauncherDoubleTapAction;
              LeoAction(getContext(),Click,string);
          }
                return true;
            }
        });


    }


    public boolean onInterceptTouchEvent(MotionEvent ev) {
        switch (ev.getAction() & MotionEvent.ACTION_MASK) {
            case MotionEvent.ACTION_DOWN:
                //mXDown = ev.getX();

        }
        if ( mGestureListener != null) {
           mGestureListener.onTouchEvent(ev);
        }

        return false;
    }

    @Override
    protected void onLayout(boolean b, int i, int i1, int i2, int i3) {

    }
}





