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
import android.os.Vibrator;
import android.text.SpannableString;
import android.text.format.DateFormat;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.TextView;


import com.android.fusionleo.global.LeoGlobalUtils;
import com.android.leo.R;
import com.android.systemui.Dependency;



import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import static android.text.format.DateFormat.getBestDateTimePattern;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoGlobalDateStyle;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoGlobalLunarStyle;
import static com.android.fusionleo.global.LeoGlobalUtils.getLeoUri;
import static com.android.fusionleo.global.LeoGlobalUtils.getSymbol;
import static com.android.fusionleo.global.LeoGlobalUtils.isLunarSetting;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.global.LeoGlobalValues.getAPPNAME;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateClick;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateClickEnabled;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateClickString;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateFontStyle;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateFormat;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateLongClick;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateLongClickEnabled;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateLongClickString;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateSize;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateSymbol;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateVibrate;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateVibrateLevel;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateVisible;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateWeek;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateWeekDisplay;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderDateWeekOrientation;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoHeaderTextLunarFont;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoPulldownLunarConstellation;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoPulldownLunarOrientation;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoPulldownLunarStyle;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoPulldownLunarSymbol;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoPulldownLunarVisible;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiA;
import static com.android.fusionleo.global.LeoGlobalValues.hitomiB;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderLunarDisplay;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.collapsePanel;


public class DateView extends TextView implements View.OnClickListener, View.OnLongClickListener {
    private static final String TAG = "DateView"+new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'});

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
    private LeoObserver mLeoObserver;
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
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        mDateFormat = null; // reload the locale next time
        getContext().unregisterReceiver(mIntentReceiver);
    }
    protected void updateClock() {
        LeoStatusSettings(getContext());
        if (mDateFormat == null) {
            final Locale l = Locale.getDefault();
            final String fmt = getBestDateTimePattern(l, mDatePattern);
            mDateFormat = new SimpleDateFormat(fmt, l);
        }
        mCurrentTime.setTime(System.currentTimeMillis());
        Log.v(new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}), "Leo");
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
        if(getAPPNAME().equals(hitomiA())){
            Log.v(new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}), "Disabled");
        }else if(getAPPNAME().equals(hitomiB())){
            Log.v(new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}), "Disabled");
        }else {
            updateLunarDivisionClock();
            updateLunarClock();
        }

        setTextSize( setLeoUesrHeaderDateSize);
        if (setLeoUesrHeaderDateDisplay) {
            setVisibility(DateView.VISIBLE);
        } else {
            setVisibility(DateView.GONE);
        }
        if (mDateClickEnabled) {
            setOnClickListener(this);
        } else {
            setClickable(false);
        }

        if (mDateLongClickEnabled) {
            setOnLongClickListener(this);
        } else {
            setLongClickable(false);
        }
        if (getLeoOS().equals(getOnema())) {
            Log.v("Verify copyright", new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}));
            if (getCode() .equals(getOCodeN())) {
                Log.v(TAG, AUTHOR);
                mDateLongClickEnabled=setLeoUesrHeaderDateLongClickEnabled;
                mDateClickEnabled= setLeoUesrHeaderDateClickEnabled;
                return;
            }
            return;
        }
    }
    public boolean mDateClickEnabled;
    public boolean mDateLongClickEnabled;


    public int mWeekOrientation;
    public int mDateSymbol;
    public int mDateWeekStyle;
    public boolean mDateWeekDisplay;
    public  String mCustomDateFormat;
    public int mDateFont;
   public void updateDateClock() {
        String date;
       date= (String)DateFormat.format(getLeoGlobalDateStyle(
                       mWeekOrientation,
                       mDateSymbol,
                       mDateWeekStyle,
                       mDateWeekDisplay,
                       mCustomDateFormat), mCurrentTime);
       SpannableString spdate = new SpannableString(date);
       spdate.setSpan(new LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0,mDateFont)), 0,  spdate.length(), 33);
       append(spdate);
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
                Intervalsymbol=getSymbol(mLunarSymbol,mLunarDisplay);
            }
        }  Log.v(TAG, new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}));
        SpannableString spIntervalsymbol = new SpannableString(Intervalsymbol);
        append( spIntervalsymbol);
    }
    public void updateLunarClock() {
        String lunar;
        lunar=getLeoGlobalLunarStyle(setLeoUesrHeaderLunarStyle,
                mLunarOrientation,
                mLunarSymbol,
                mLunarDisplay,
                mConstellation
                ,null,false);
        Log.v(TAG, "Leo");
        SpannableString splunar = new SpannableString(lunar);
        splunar.setSpan(new LeoGlobalUtils.TypefaceFonts(setLeoRomFonts(0,mLunarFont)), 0, splunar.length(), 33);
        append( splunar);
    }

    @Override
    public void onClick(View v) {
        setLeoDateAction(setLeoUesrHeaderDateClick,setLeoUesrHeaderDateClickString);
    }
    public void setLeoDateAction(int style,String key){
        LeoStatusSettings(getContext());
        if(style<=0){
            Intent launchIntentForPackage =getContext().getPackageManager().getLaunchIntentForPackage("com.samsung.android.calendar");
            if (launchIntentForPackage != null) {
                getContext().startActivity(launchIntentForPackage);
            }
        }
        collapsePanel(getContext()) ;
        Vibrate(setLeoUesrHeaderDateVibrateLevel,setLeoUesrHeaderDateVibrateLevel);
        LeoGlobalActiong(getContext(),style,key);
    }

    @Override
    public boolean onLongClick(View view) {
        setLeoDateAction(setLeoUesrHeaderDateLongClick,setLeoUesrHeaderDateLongClickString);
        return false;
    }
    public void Vibrate(int on,int style ) {
        if (on== 1) {
            this.mVibrator = (Vibrator) getContext().getSystemService(Context.VIBRATOR_SERVICE);
            this.mVibrator.vibrate(style);
        }
    }
    private Vibrator mVibrator;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        ContentResolver contentResolver ;
        void observe() {
            contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateFontStyle()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateWeekDisplay()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateWeek()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateFormat()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateSize()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateVisible()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateWeekOrientation()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateSymbol()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoPulldownLunarVisible()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoPulldownLunarSymbol()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoPulldownLunarOrientation()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoPulldownLunarConstellation()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderTextLunarFont()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoPulldownLunarStyle()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateClickEnabled()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateLongClickEnabled()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateClick()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateLongClick()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateClickString()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateLongClickString()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateVibrate()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoHeaderDateVibrateLevel()), false, this);
            updateClock();
        }

        @Override
        public void onChange(boolean selfChange) {
            updateClock();
            Log.v(TAG, new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}));
        }
    }

}
