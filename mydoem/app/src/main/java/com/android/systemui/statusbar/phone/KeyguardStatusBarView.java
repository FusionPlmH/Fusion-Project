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

import static com.android.systemui.UId.UId;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardStatusBar;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownCarrier;
import static com.os.leo.utils.LeoUtils.getLeoUri;


/**
 * The header group on Keyguard.
 */
public class KeyguardStatusBarView extends RelativeLayout
       {

           private  Context  mContext;
    private TextView mCarrierLabel;
    private TextView mCustomCarrierLabel;

           public void setLockscreenStatusbarVisibility() {
               if (Settings.System.getInt(getContext().getContentResolver(), "Man-1993", 0)==1) {
                   setVisibility(GONE);
                   Log.v("LeoRom Settings" , "Man-1993 设置" );
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
               mContext.getContentResolver().registerContentObserver(getLeoUri(
                       "leo_notification_carrier_label_style"), false, mObserver);
               mContext.getContentResolver().registerContentObserver(getLeoUri(
                       "leo_notification_carrier_label_color"), false, mObserver);
               mContext.getContentResolver().registerContentObserver(getLeoUri(
                       "leo_notification_carrier_label_font"), false, mObserver);
               mContext.getContentResolver().registerContentObserver(getLeoUri(
                       "leo_notification_carrier_label_size"), false, mObserver);
               mContext.getContentResolver().registerContentObserver(getLeoUri(
                       "leo_notification_carrier_label"), false, mObserver);
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
