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

package com.android.systemui.statusbar.policy;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.os.Handler;
import android.text.SpannableString;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.TextView;


import com.android.systemui.Dependency;

import com.dome.leo.R;
import com.os.leo.utils.FontsUtils;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import static android.text.format.DateFormat.getBestDateTimePattern;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserString.getLeoDateStyle;
import static com.os.leo.utils.LeoUserString.getLeoRomLunarStyle;
import static com.os.leo.utils.LeoUserValues.*;
import static com.os.leo.utils.LeoUtils.getLeoUri;
import static com.os.leo.utils.LeoUtils.isLunarSetting;


public class DateView extends TextView {
    private static final String TAG = "DateView"+mNewline+"("+AUTHOR+CORYRIGHT+"）" ;

    private final Date mCurrentTime = new Date();

    private SimpleDateFormat mDateFormat;
    private String mDatePattern;
    private boolean mScreenOn = true;

    private BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            final String action = intent.getAction();
            if (action.equals(Intent.ACTION_SCREEN_ON)) {
                mScreenOn = true;
                updateStatus();
            } else if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                mScreenOn = false;
            }

            if (Intent.ACTION_TIME_TICK.equals(action)
                    || Intent.ACTION_TIME_CHANGED.equals(action)
                    || Intent.ACTION_TIMEZONE_CHANGED.equals(action)
                    || Intent.ACTION_LOCALE_CHANGED.equals(action)) {
                if (Intent.ACTION_LOCALE_CHANGED.equals(action)
                        || Intent.ACTION_TIMEZONE_CHANGED.equals(action)) {
                    // need to get a fresh date format
                    getHandler().post(() -> mDateFormat = null);
                }
                if (mScreenOn) {
                    updateStatus();
                }
            }
        }
    };
    private void updateStatus(){
        getHandler().post(() -> updateClock());
    }
    public DateView(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray a = context.getTheme().obtainStyledAttributes(
                attrs,
                R.styleable.DateView,
                0, 0);

        try {
            mDatePattern = a.getString(R.styleable.DateView_datePattern);
        } finally {
            a.recycle();
        }
        if (mDatePattern == null) {
            mDatePattern = "MMMd";
        }
    }
    private LeoRomObserver mLeoRomObserver;
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

        IntentFilter filter = new IntentFilter();
        filter.addAction(Intent.ACTION_SCREEN_ON);
        filter.addAction(Intent.ACTION_SCREEN_OFF);
        filter.addAction(Intent.ACTION_TIME_TICK);
        filter.addAction(Intent.ACTION_TIME_CHANGED);
        filter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
        filter.addAction(Intent.ACTION_LOCALE_CHANGED);
        getContext().registerReceiver(mIntentReceiver, filter, null,
        Dependency.get(Dependency.TIME_TICK_HANDLER));
        updateClock();
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();

        mDateFormat = null; // reload the locale next time
        getContext().unregisterReceiver(mIntentReceiver);
    }

    protected int mDateColor;
    protected int mLunarColor;
    protected void updateClock() {
        LeoSettings(getContext());

        if (mDateFormat == null) {
            final Locale l = Locale.getDefault();
            final String fmt = getBestDateTimePattern(l, mDatePattern);
            mDateFormat = new SimpleDateFormat(fmt, l);
        }
        mCurrentTime.setTime(System.currentTimeMillis());
        Log.v(TAG, China);
       // int defaultcolor=DeepDarkColor;
      int defaultcolor=getContext().getColor(getLeoResource("color/qs_header_date"));
        if (setLeoUesrHeaderTextDateColorCustom==1) {
            int allColor=setLeoUesrHeaderTextDateAllColor;
            int all=setLeoUesrHeaderTextDateColorALL;
            int colorstyle=setLeoUesrHeaderDateRandomColor;
            int colorrandom=getLeoRandomColor(getContext());
            if(all==1){
                mLunarColor=allColor;
                mDateColor=allColor;
            }else if (all==0) {
                if(colorstyle==0){
                    mLunarColor=setLeoUesrHeaderTextLunarColor;
                    mDateColor=setLeoUesrHeaderDateColor;
                }else if(colorstyle==1){
                    mLunarColor=colorrandom;
                    mDateColor=colorrandom;
                }
            }

        }  else if (setLeoUesrHeaderTextDateColorCustom==0) {
            mLunarColor=defaultcolor;
            mDateColor = defaultcolor;
            setAlpha((float) 0.8);
        }
        mLunarDisplay=setLeoUesrHeaderLunarDisplay;
        mConstellation=setLeoUesrHeaderLunarConstellation;
        mLunarSymbol=setLeoUesrHeaderLunarSymbol;
        mLunarOrientation=setLeoUesrHeaderLunarOrientation;
        mWeekOrientation=setLeoUesrHeaderDateWeekOrientation;
        mDateSymbol=setLeoUesrHeaderDateSymbol;
        mDateWeekStyle=setLeoUesrHeaderDateWeekStyle;
        mDateWeekDisplay=setLeoUesrHeaderDateWeekDisplay;
        mCustomDateFormat=setLeoUesrHeaderCustomDateFormat;
        mLunarFont=setLeoUesrHeaderTextLunarFont;
        mDateFont= setLeoUesrHeaderDateFont;
        setText(new SpannableString(" "));
        updateDateClock();
        updateLunarDivisionClock();
        updateLunarClock();
        setTextSize( setLeoUesrHeaderDateSize);
        if (setLeoUesrHeaderDateDisplay) {
            setVisibility(DateView.VISIBLE);
        } else {
            setVisibility(DateView.GONE);
        }

    }
   public int mWeekOrientation;
    public int mDateSymbol;
    public int mDateWeekStyle;
    public boolean mDateWeekDisplay;
    public  String mCustomDateFormat;
    public int mDateFont;
   public void updateDateClock() {
        String date;
       date= (String)DateFormat.format(
               getLeoDateStyle(
                       mWeekOrientation,
                       mDateSymbol,
                       mDateWeekStyle,
                       mDateWeekDisplay,
                       mCustomDateFormat

               ), mCurrentTime);
       SpannableString spdate = new SpannableString(date);
       spdate.setSpan(new ForegroundColorSpan(mDateColor), 0, spdate.length(), 33);
    //   spdate.setSpan(new RelativeSizeSpan(size), 0, spdate.length(), 33);
      spdate.setSpan(new FontsUtils.TypefaceFonts(setLeoRomFonts(0,mDateFont)), 0,  spdate.length(), 33);
       append(spdate);
     //  updateLunarClock(int style, int syle2, int style3,boolean on,boolean on2,int color,int size,int font);
    }
    public  boolean mConstellation;
    public  boolean mLunarDisplay;
    public int  mLunarSymbol;
    public int  mLunarOrientation;
    public int  mLunarFont;
    public void updateLunarDivisionClock() {
        String Intervalsymbol="";
        if(mLunarDisplay){
            if (isLunarSetting()==true) {
                Intervalsymbol="｜";
            }
        }  Log.v(TAG, China);
        SpannableString spIntervalsymbol = new SpannableString(Intervalsymbol);
        spIntervalsymbol.setSpan(new ForegroundColorSpan(mLunarColor), 0, spIntervalsymbol.length(), 33);
        append( spIntervalsymbol);
    }
    public void updateLunarClock() {
        String lunar;
        lunar=getLeoRomLunarStyle(0,
                mLunarOrientation,
                mLunarSymbol,
                mLunarDisplay,
                mConstellation
                ,null,false);  Log.v(TAG, China);
        SpannableString splunar = new SpannableString(lunar);
        splunar.setSpan(new ForegroundColorSpan(mLunarColor), 0, splunar.length(), 33);
        splunar.setSpan(new FontsUtils.TypefaceFonts(setLeoRomFonts(0,mLunarFont)), 0, splunar.length(), 33);
        append( splunar);
    }



    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
        ContentResolver contentResolver ;
        void observe() {
            contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri( getLeoHeadClockDisable()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateFontStyle()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateWeekDisplay()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateWeek()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateFormat()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateSize()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateClor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateVisible()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateWeekOrientation()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateSymbol()), false, this);  Log.v(TAG, China);
            contentResolver.registerContentObserver(getLeoUri( getLeoPulldownLunarVisible()), false, this);
            contentResolver.registerContentObserver(getLeoUri(  getLeoPulldownLunarSymbol()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoPulldownLunarOrientation()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoPulldownLunarConstellation()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoHeaderTextLunarColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextLunarFont()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextDateAllColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextDateColorALL()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextDateColorCustom()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateRandomColor()), false, this);
            updateClock();
        }

        @Override
        public void onChange(boolean selfChange) {
            updateClock();
            Log.v(TAG, China);
        }


    }

}
