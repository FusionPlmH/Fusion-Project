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

package com.android.systemui.statusbar.policy;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.widget.LinearLayout;
import android.widget.TextClock;
import android.widget.TextView;


import com.android.keyguard.KeyguardUpdateMonitor;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.android.systemui.UId.setLeoUesrQSbuttonRandomColor;
import static com.leo.utils.Constants.getLeoResource;

import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadClockColor;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadClockDisable;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadClockFont;
import static com.os.leo.utils.LeoUserSettings.getLeoHeadClockSize;

import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockAllColor;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockColorAll;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockCustomColor;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockDetail;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockDetailColor;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockDetailFont;

import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockDetailSize;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockDetailStyle;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockRandomColor;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockSecond;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockSecondColor;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockSecondSize;

import static com.os.leo.utils.LeoUserSettings.getLeoQSbuttonOFFColor;
import static com.os.leo.utils.LeoUserSettings.getLeoQSbuttonONColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockAllColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockColorAll;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockCustomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockDetail;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockDetailColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockDetailFont;

import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockDetailSize;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockDetailStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockDisplay;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockSecond;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockSecondColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockSecondSize;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockSize;

import static com.os.leo.utils.LeoUserString.getClockDetails;
import static com.os.leo.utils.LeoUserString.getSymbol;
import static com.os.leo.utils.LeoUserValues.Minutes;
import static com.os.leo.utils.LeoUserValues.apm;
import static com.os.leo.utils.LeoUserValues.is12;
import static com.os.leo.utils.LeoUserValues.is24;
import static com.os.leo.utils.LeoUserValues.second;

import static com.os.leo.utils.LeoUtils.getLeoUri;


public class SplitClockView extends LinearLayout {
    private LeoRomObserver mLeoRomObserver;
    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.TIME_SET".equals(action) || "android.intent.action.TIMEZONE_CHANGED".equals(action) || "android.intent.action.LOCALE_CHANGED".equals(action) || "android.intent.action.CONFIGURATION_CHANGED".equals(action) || "android.intent.action.USER_SWITCHED".equals(action)) {
                SplitClockView.this.updatePatterns();
            }
        }
    };
    private TextClock mTimeView;
    private TextClock mTimeSecondView;
    private TextClock mTimeChinaDetailView;
    public SplitClockView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        mTimeView = (TextClock) findViewById(getLeoResource("id/time_view"));
        mTimeSecondView = (TextClock) findViewById(getLeoResource("id/lid_header_clock_second"));
        mTimeChinaDetailView= (TextClock) findViewById(getLeoResource("id/lid_header_clock_detail"));
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

        updatePatterns();
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
    }


    public int mColorClock ;
    public int mSecondColor;
    public int ChinaDetailcolor;
    public void updateHeadsClock(){

        int mrcolor=getContext().getColor(getLeoResource("color/qs_header_clock"));
        if (setLeoUesrHeaderTextClockDisplay) {
            mTimeView.setVisibility(TextClock.VISIBLE);
        } else {
            mTimeView.setVisibility(TextClock.GONE);
        }
        if (setLeoUesrHeaderTextClockCustomColor==1) {
            int allcolor=setLeoUesrHeaderTextClockAllColor;
            int all=setLeoUesrHeaderTextClockColorAll;
            int colorstyle=setLeoUesrHeaderTextClockRandomColor;
            int colorrandom=getLeoRandomColor(getContext());
            if (all==0) {
                if(colorstyle==0){
                    mColorClock=setLeoUesrHeaderTextClockColor;
                    mSecondColor=setLeoUesrHeaderTextClockSecondColor;
                    ChinaDetailcolor=setLeoUesrHeaderTextClockDetailColor;
                }else if(colorstyle==1){
                    mColorClock=colorrandom;
                    mSecondColor=colorrandom;
                    ChinaDetailcolor=colorrandom;
                }

            } else if ( all == 1) {
                ChinaDetailcolor=allcolor;
                mSecondColor=allcolor;
                mColorClock=allcolor;
            }
        }else if (setLeoUesrHeaderTextClockCustomColor==0) {
            ChinaDetailcolor=mrcolor;
            mSecondColor=mrcolor;
            mColorClock=mrcolor;
        }
        mTimeView.setTextColor(mColorClock);
        mTimeSecondView.setTextColor(mSecondColor);
        mTimeChinaDetailView.setTextColor(ChinaDetailcolor);
        mTimeView.setTextSize(setLeoUesrHeaderTextClockSize);
        mTimeChinaDetailView.setTextSize(setLeoUesrHeaderTextClockDetailSize);
        mTimeSecondView.setTextSize(setLeoUesrHeaderTextClockSecondSize);
        mTimeSecondView.setTypeface(setLeoRomFonts(0,setLeoUesrHeaderTextClockFont));
        mTimeChinaDetailView.setTypeface(setLeoRomFonts(0,setLeoUesrHeaderTextClockDetailFont));
        mTimeView.setTypeface(setLeoRomFonts(0,setLeoUesrHeaderTextClockFont));
        if ( setLeoUesrHeaderTextClockSecond) {
            mTimeSecondView.setVisibility(mTimeSecondView.VISIBLE);
        } else {
            mTimeSecondView.setVisibility(mTimeSecondView.GONE);
        }
        if (setLeoUesrHeaderTextClockDetail) {
            String Details=getClockDetails(setLeoUesrHeaderTextClockDetailStyle,true);
            mTimeChinaDetailView.setFormat12Hour(Details);
            mTimeChinaDetailView.setFormat24Hour(Details);
         //   mTimeChinaDetailView.setText(getClockDetails(setLeoUesrHeaderTextClockDetailStyle,true));
            mTimeChinaDetailView.setVisibility(mTimeChinaDetailView.VISIBLE);
        } else {
            mTimeChinaDetailView.setVisibility(mTimeChinaDetailView.GONE);
        }
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        getContext().unregisterReceiver(this.mIntentReceiver);
    }


    private void updatePatterns() {
        LeoSettings(getContext());
        mTimeView.setFormat12Hour(is12+Minutes);
        mTimeView.setFormat24Hour(is24+ Minutes);
        mTimeSecondView.setFormat12Hour(":"+second);
        mTimeSecondView.setFormat24Hour(":"+second);
        updateHeadsClock();
    }




    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
         ContentResolver contentResolver;
        void observe() {

            contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockDetail()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockSecond()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockDetailStyle()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockCustomColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeadClockColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeadClockFont()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeadClockDisable()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeadClockSize()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockDetailColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockDetailSize()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeaderTextClockDetailFont()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockSecondColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeaderTextClockSecondSize()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockColorAll()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockAllColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextClockRandomColor()), false, this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updatePatterns();
        }

    }
}