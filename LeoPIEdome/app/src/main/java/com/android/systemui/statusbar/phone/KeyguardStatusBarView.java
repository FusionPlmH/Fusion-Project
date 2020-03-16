/*
 * Copyright (C) 2014 The Android Open Source Project
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
 * limitations under the License
 */

package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrKeyguardStatusBar;


public class KeyguardStatusBarView extends RelativeLayout
       {

           private  Context  mContext;
    private TextView mCarrierLabel;
    private TextView mCustomCarrierLabel;

           public void setLockscreenStatusbarVisibility() {
               LeoStatusSettings(getContext());
               if (setLeoUesrKeyguardStatusBar == 1) {
                   setVisibility(8);
               }

           }


    private ContentObserver mObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean selfChange, Uri uri) {


        }
    };

    private boolean mTouchStarted;

    public KeyguardStatusBarView(Context context, AttributeSet attrs) {
        super(context, attrs);

        mContext = context;
    }
           @Override
           public void onAttachedToWindow() {
               super.onAttachedToWindow();

           }



    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);


    }

    private void loadDimens() {
        Resources res = getResources();

    }

           private void updateVisibilities() {

           }





}
