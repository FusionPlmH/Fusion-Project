package com.android.systemui.statusbar.policy;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;

import android.database.ContentObserver;

import android.graphics.Typeface;
import android.icu.util.Calendar;
import android.os.Handler;

import android.text.SpannableString;
import android.text.format.DateFormat;

import android.util.AttributeSet;
import android.util.Log;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;

import com.android.leo.R;
import com.android.systemui.Dependency;
import com.fusionleo.LeoX.systemui.LeoConfig;
import com.fusionleo.LeoX.systemui.LeoConfigTextView;
import com.fusionleo.LeoX.systemui.LeoLunar;
import com.fusionleo.LeoProvider.LeoObserver;


import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

import static android.text.format.DateFormat.getBestDateTimePattern;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoSysUiShortcut;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.*;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoFonts;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoHaptics;
import static com.fusionleo.LeoProvider.LeoManages.*;


public class DateView extends LeoConfigTextView implements View.OnClickListener, LeoObserver.ObListener{
    private static final String TAG = "DateView";

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
        LeoObserver mLeoObserver=   new LeoObserver(new Handler(),this);
        ContentResolver contentResolver = getContext().getContentResolver();
        for (String uriFor : mLeoQSHeadsDate) {
            contentResolver.registerContentObserver(getLeoUri(uriFor), false, mLeoObserver);
        }
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        mDateFormat = null; // reload the locale next time
        getContext().unregisterReceiver(mIntentReceiver);
    }
    protected void updateClock() {
        LeoSysUiManages(getContext());
        if (mDateFormat == null) {
            final Locale l = Locale.getDefault();
            final String fmt = getBestDateTimePattern(l, mDatePattern);
            mDateFormat = new SimpleDateFormat(fmt, l);
        }
        String tag= mLeoTag[14];

        mCurrentTime.setTime(System.currentTimeMillis());
        boolean mLunarDisplay;
        String defaultfont;
        if (tag.equals(getTag())) {
            defaultfont="sans-serif-light";
            setLeoTextSize(setLeoQSheaderBoxDateSize);
        } else {
            defaultfont="sec-roboto-light";
            setLeoTextSize(setLeoQSheaderDateSize);
        }

        setVisibility(setLeoQSheaderDateDisplayEnabled?VISIBLE:GONE);
        mLunarDisplay=setLeoQSheaderDateLunarDisplayEnabled;
        setText(new SpannableString(" "));
        updateDateClock(tag,defaultfont);
        if (isChineseLanguage()) {
            updateLunarDivisionClock(mLunarDisplay,tag);
            if(mLunarDisplay){
                updateLunarClock(tag,defaultfont);
            }
        }
        if (setLeoQSheaderDateClickEnabled) {
            setOnClickListener(this);

        } else {
            setClickable(false);
        }


    }

    public void updateDateClock(String str,String font) {
        String date;
        String date2;
        int style;
        if (str.equals(getTag())) {
            date2=setLeoQSheaderDateFormat;
            style=setLeoQSheaderDateWeekStyle;
        }else {
            style=0;
            date2=LeoString("default_date_format");
        }
        date= (String)DateFormat.format(getLeoDateStyle(
                setLeoQSheaderDateWeekLocation,
                setLeoQSheaderDateWeekDisplayEnabled,
                style,
                setLeoQSheaderDateWeekSymbolStyle,
                null, date2), mCurrentTime);
        SpannableString spdate = new SpannableString(date);
       spdate.setSpan(new LeoConfig.TypefaceFonts(setLeoFonts(getContext(),setLeoQSheaderDateDateFont,font,Typeface.NORMAL)), 0,  spdate.length(), 33);
        append(spdate);
    }

    public void updateLunarDivisionClock(boolean mLunarDisplay,String str) {
        String Intervalsymbol="";
        if(mLunarDisplay){
            if ( str.equals(getTag())) {
                Intervalsymbol="\n";
                setSingleLine(false);
                setGravity(Gravity.CENTER);
            }else {
                Intervalsymbol=LeoSaltSymbol(setLeoQSheaderDateLunarSymbolStyle,null,",");
            }
        }

        SpannableString spIntervalsymbol = new SpannableString(Intervalsymbol);
        append( spIntervalsymbol);
    }
    public void updateLunarClock(String str,String font) {
        String lunar;
        int style;
       int Festival;

        if (str.equals(getTag())) {
            style=setLeoQSheaderDateLunarStyle;
            Festival=setLeoQSheaderDateLunarMonthStyle;
        }else {
            style=0;
            Festival=0;
        }
        lunar=new LeoLunar(Calendar.getInstance(),getContext()).toLeoLunarChineseLunar(setLeoQSheaderDateLunarFestivalSymbolEnabled,setLeoQSheaderDateLunarZodiacSymbolEnabled,Festival,style);
        Log.v(TAG, "不咸的盐巴");
        SpannableString splunar = new SpannableString(lunar);
        splunar.setSpan(new LeoConfig.TypefaceFonts(setLeoFonts(getContext(), setLeoQSheaderDateLunarFont,font,Typeface.NORMAL)), 0, splunar.length(), 33);
        append( splunar);
    }

    @Override
    public void onClick(View v) {
        onLeoDateClick(setLeoQSheaderDateClickStyle,mLeoQSHeadsDate[17]);
    }
    public Intent mLeoIntent;
    public void onLeoDateClick(int style, String str) {
        Context context=getContext();
        mLeoIntent=new Intent();
        LeoSysUiManages(context);
        setLeoHaptics(context,setLeoQSheaderDateVibratorEnabled,setLeoQSheaderDateVibratorLevel);
        collapsePanel(context,setLeoQSheaderDateClickCollapsePanels);
        LeoSysUiShortcut(mContext, mLeoIntent,style,str);
    }

    @Override
    public void onLeoChange(String str) {
        for (String equals :mLeoQSHeadsDate) {
            if (equals.equals(str)) {
                updateClock();
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("I'm from China");
                stringBuilder.append("developer");
                stringBuilder.append(new String(new char[]{'s', 'a', 'l', 't'}));
                Log.d(TAG, stringBuilder.toString());
                return;
            }
        }
    }


}
