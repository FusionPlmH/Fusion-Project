package com.android.systemui.statusbar.policy;



import android.app.StatusBarManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;

import android.content.res.TypedArray;
import android.database.ContentObserver;

import android.graphics.Rect;
import libcore.icu.LocaleData;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;

import android.text.Spannable;

import android.text.SpannableStringBuilder;

import android.text.TextUtils;
import android.text.format.DateFormat;

import android.text.style.CharacterStyle;

import android.text.style.RelativeSizeSpan;

import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;

import com.android.leo.R;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;
import com.android.systemui.SysUiServiceProvider;
import com.android.systemui.statusbar.CommandQueue;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;


import static com.android.fusionleo.global.LeoGlobalUtils.*;

import static com.android.fusionleo.global.LeoGlobalUtils.isLunarSetting;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.global.LeoGlobalValues.mNewline;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoGradient;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mStatusBarClockColor;


public class Clock extends TextView  implements DemoMode, CommandQueue.Callbacks, DarkIconDispatcher.DarkReceiver, ConfigurationController.ConfigurationListener, View.OnClickListener{
    private static final String TAG =new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'});
    protected boolean mAttached;
    protected Calendar mCalendar;
    protected String mClockFormatString;
    protected SimpleDateFormat mClockFormat;
    private SimpleDateFormat mContentDescriptionFormat;
    protected Locale mLocale;
    private boolean mScreenOn = true;
    private Handler mSecondsHandler;
    public static final int CLOCK_DATE_DISPLAY_GONE = 0;
    public static final int CLOCK_DATE_DISPLAY_SMALL = 1;
    public static final int CLOCK_DATE_DISPLAY_NORMAL = 2;
    public static final int CLOCK_DATE_STYLE_REGULAR = 0;
    public static final int CLOCK_DATE_STYLE_LOWERCASE = 1;
    public static final int CLOCK_DATE_STYLE_UPPERCASE = 2;
    public static final int STYLE_DATE_LEFT  = 0;
    public static final int STYLE_DATE_RIGHT = 1;
    private final boolean mShowDark;
    private Context mContext;
    private SettingsObserver mSettingsObserver;
    private KeyguardServiceBoxCallback mKeyguardServiceBoxCallback;
   // private boolean mClockVisibleByPolicy = true;
    @Override
    public void onClick(View view) {
        Intent launchIntentForPackage = this.mContext.getPackageManager().getLaunchIntentForPackage("com.sec.android.app.clockpackage");
        if (launchIntentForPackage != null) {
            this.mContext.startActivity(launchIntentForPackage);
        }
    }


    public interface KeyguardServiceBoxCallback {
        void onTimeTextChanged();
    }


    protected class SettingsObserver extends ContentObserver {
        SettingsObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockIs12()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockAMPM()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDateDisplay()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockSeconds()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockSingle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDateWeekDisplay()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDetailsDisplay()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDateFormat()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDetailsStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDateWeekStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockFontStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockMultiFontSize()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockSingleFontSize()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDateENStyle()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDatePosition()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDateSymbol()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockWeekPosition()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockDetailsPosition()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoClockOnClickEnabled()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockRandomColor()), false,
                    this);
            resolver.registerContentObserver(getLeoUri(getLeoStatusBarClockColorEnabled()), false,
                    this);

        }

        @Override
        public void onChange(boolean selfChange) {
            updateSettings();
        }
    }

    public Clock(Context context) {
        this(context, null);
    }

    public Clock(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }


    public Clock(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);

        mContext = context;
        TypedArray a = context.getTheme().obtainStyledAttributes(
                attrs,
                R.styleable.Clock,
                0, 0);
        try {
            mAmPmStyle = a.getInt(R.styleable.Clock_amPmStyle, AM_PM_STYLE_GONE);
           mShowDark = a.getBoolean(1, true);
        } finally {
            a.recycle();
        }


    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

        if (!mAttached) {
            mAttached = true;
            IntentFilter filter = new IntentFilter();

            filter.addAction(Intent.ACTION_TIME_TICK);
            filter.addAction(Intent.ACTION_TIME_CHANGED);
            filter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
            filter.addAction(Intent.ACTION_CONFIGURATION_CHANGED);
            //filter.addAction(Intent.ACTION_USER_SWITCHED);
            filter.addAction(Intent.ACTION_SCREEN_ON);
            filter.addAction(Intent.ACTION_SCREEN_OFF);
         // getContext().registerReceiverAsUser(mIntentReceiver, UserHandle.ALL, filter,
                  //null, Dependency.get(Dependency.TIME_TICK_HANDLER));
       // SysUiServiceProvider.getComponent(getContext(), CommandQueue.class).addCallbacks(this);
            if (mShowDark) {
                Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
            }
        }
//注意:当接收器一直运行后，在注册了接收器后，就可以安全地完成这些操作。
//在主线程中，在此方法返回之前，接收器不能运行。
//当接收方没有注册时，时区可能发生了变化，因此更新时间。
        mCalendar = Calendar.getInstance(TimeZone.getDefault());
//确保我们更新到当前时间。
        updateStatus();
    }
    private void updateStatus(){


            //确保我们更新到当前时间。
            updateClock();

            mSettingsObserver = new SettingsObserver(new Handler());

            mSettingsObserver.observe();
            updateSettings();
            updateShowSeconds();
        
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mAttached) {
             getContext().unregisterReceiver(mIntentReceiver);
             mAttached = false;
         //  SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)
              //  .removeCallbacks(this);
            if (mShowDark) {
                Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
            }
        }
    }

    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(Intent.ACTION_TIMEZONE_CHANGED)) {
                String tz = intent.getStringExtra("time-zone");
                getHandler().post(() -> {
                mCalendar = Calendar.getInstance(TimeZone.getTimeZone(tz));
                if (mClockFormat != null) {
                    mClockFormat.setTimeZone(mCalendar.getTimeZone());
                }
                });
            } else if (action.equals(Intent.ACTION_CONFIGURATION_CHANGED)) {
                final Locale newLocale = getResources().getConfiguration().locale;
                getHandler().post(() -> {
                    if (!newLocale.equals(mLocale)) {
                        mLocale = newLocale;
                    }
                   
                });
            }

            if (action.equals(Intent.ACTION_SCREEN_ON)) {
                mScreenOn = true;
            } else if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                mScreenOn = false;
            }

            if (mScreenOn) {
                getHandler().post(() -> updateClock());
            }
        }
    };


    final void updateClock() {
        if (!mDemoMode) {
            mCalendar.setTimeInMillis(System.currentTimeMillis());
            if (this.mKeyguardServiceBoxCallback != null) {
                this.mKeyguardServiceBoxCallback.onTimeTextChanged();
            }
            setText(getSmallTime());
            setContentDescription(this.mContentDescriptionFormat.format(mCalendar.getTime()));
        }
    }


    private void updateShowSeconds() {
        if (mShowSeconds) {
            // Wait until we have a display to start trying to show seconds.
            if (mSecondsHandler == null && getDisplay() != null) {
                mSecondsHandler = new Handler();
                if (getDisplay().getState() == Display.STATE_ON) {
                    mSecondsHandler.postAtTime(mSecondTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
                IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
                filter.addAction(Intent.ACTION_SCREEN_ON);
                mContext.registerReceiver(mScreenReceiver, filter);
            }
        } else {
            if (mSecondsHandler != null) {
                mContext.unregisterReceiver(mScreenReceiver);
                mSecondsHandler.removeCallbacks(mSecondTick);
                mSecondsHandler = null;
                updateClock();
            }
        }
    }

    private final CharSequence getSmallTime() {
        Context context = getContext();
        boolean is24 = mIs12;
        LocaleData d = LocaleData.get(context.getResources().getConfiguration().locale);
        final char MAGIC1 = '\uEF00';
        final char MAGIC2 = '\uEF01';
        SimpleDateFormat sdf;
        String format = mShowSeconds
                ? is24 ? d.timeFormat_Hms : d.timeFormat_hms
                : is24 ? d.timeFormat_Hm : d.timeFormat_hm;
        if (!format.equals(mClockFormatString)) {
            mContentDescriptionFormat = new SimpleDateFormat(format);
            /*
             * Search for an unquoted "a" in the format string, so we can
             * add dummy characters around it to let us find it again after
             * formatting and change its size.
             */
            if (mAmPmStyle != AM_PM_STYLE_NORMAL) {
                int a = -1;
                boolean quoted = false;
                for (int i = 0; i < format.length(); i++) {
                    char c = format.charAt(i);

                    if (c == '\'') {
                        quoted = !quoted;
                    }
                    if (!quoted && c == 'a') {
                        a = i;
                        break;
                    }
                }

                if (a >= 0) {
                    // Move a back so any whitespace before AM/PM is also in the alternate size.
                    final int b = a;
                    while (a > 0 && Character.isWhitespace(format.charAt(a-1))) {
                        a--;
                    }
                    format = format.substring(0, a) + MAGIC1 + format.substring(a, b)
                            + "a" + MAGIC2 + format.substring(b + 1);
                }
            }
            mClockFormat = sdf = new SimpleDateFormat(format);
            mClockFormatString = format;
        } else {
            sdf = mClockFormat;
        }


        CharSequence dateString = null;
        String result = "";
        //获得时间细节
        String  ChinaDetails=getLeoGlobalClockDetails(mDetailsStyle,mDetails);

        String  Chinaleft=ChinaDetails;
        String  Chinaright=ChinaDetails;
        String timeResult = sdf.format(this.mCalendar.getTime());
        if (isLunarSetting()==true) {
            timeResult= (mDetailsOrientation ==STYLE_DATE_LEFT) ? Chinaleft+ getSymbol(mClockDateSymbol,mDetails) + timeResult : timeResult +getSymbol(mClockDateSymbol,mDetails) + Chinaright;
        }else {
            timeResult= (mDetailsOrientation ==STYLE_DATE_LEFT) ? Chinaleft+ getSymbol(mClockDateSymbol,false) + timeResult : timeResult +getSymbol(mClockDateSymbol,false) + Chinaright;
        }

        String dateResult;
        Log.v(AUTHOR,"salt");

        if (mClockDateDisplay != CLOCK_DATE_DISPLAY_GONE) {
            Date now = new Date();
            //获得日期格式
            String date=getLeoGlobalDateStyle(mDateWeekOrientation,mClockDateSymbol,mDateWeekStyle,mShowWeek,mDateFormatStyle);
            dateString = DateFormat.format(date, now);
            if (mClockDateENStyle == CLOCK_DATE_STYLE_LOWERCASE) {
                //当日期样式很小的时候，将日期转换为小写。
                dateResult = dateString.toString().toLowerCase();
            } else if (mClockDateENStyle == CLOCK_DATE_STYLE_UPPERCASE) {
                dateResult = dateString.toString().toUpperCase();
            } else {
                dateResult = dateString.toString();
            }
            //更改日期显示在时间旁边的位置
            result = ( mClockDatePosition ==STYLE_DATE_LEFT) ?
            dateResult + mNewline + timeResult : timeResult + mNewline + dateResult;
        } else {
            //没有日期，只是显示时间。
            result = timeResult;
        }
        Log.v(new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}),"salt");
        SpannableStringBuilder formatted = new SpannableStringBuilder(result);
        if (mClockDateDisplay != CLOCK_DATE_DISPLAY_NORMAL) {
            if (dateString != null) {
                int dateStringLen = dateString.length();
                int timeStringOffset = (mClockDatePosition == STYLE_DATE_RIGHT) ? timeResult.length() + 1 : 0;
                if (mClockDateDisplay == CLOCK_DATE_DISPLAY_GONE) {
                    formatted.delete(0, dateStringLen);
                } else {
                    if (mClockDateDisplay == CLOCK_DATE_DISPLAY_SMALL) {
                        CharacterStyle style = new RelativeSizeSpan(0.7f);
                        formatted.setSpan(style, timeStringOffset,
                                timeStringOffset + dateStringLen,
                                Spannable.SPAN_EXCLUSIVE_INCLUSIVE);

                    }

                }

            }
            
        }
        if (mAmPmStyle != AM_PM_STYLE_NORMAL) {
            int magic1 = result.indexOf(MAGIC1);
            int magic2 = result.indexOf(MAGIC2);
            if (magic1 >= 0 && magic2 > magic1) {
                if (mAmPmStyle == AM_PM_STYLE_GONE) {
                    formatted.delete(magic1, magic2+1);
                } else {
                    if (mAmPmStyle == AM_PM_STYLE_SMALL) {
                        CharacterStyle style = new RelativeSizeSpan(0.7f);
                        formatted.setSpan(style, magic1, magic2,
                                Spannable.SPAN_EXCLUSIVE_INCLUSIVE);
                    }
                    formatted.delete(magic2, magic2 + 1);
                    formatted.delete(magic1, magic1 + 1);
                }
            }
        }

        return formatted;
    }
    public static final int AM_PM_STYLE_NORMAL  = 0;
    public static final int AM_PM_STYLE_SMALL   = 1;
    public static final int AM_PM_STYLE_GONE    = 2;

    private int mAmPmStyle = AM_PM_STYLE_GONE;
    private int mDetailsOrientation;
    private int  mClockDateSymbol ;
    private int mDetailsStyle;
    private boolean mDetails = false;
    private int mClockFontStyle ;
    private int mClockColor ;
    private int  mClockTint;
    private int mClockFontSingleSize = 14;
    private int mClockFontMultiSize = 10;
    private boolean mIs12;
    private boolean mShowSeconds;
    private boolean mShowWeek;
    private String mDateFormatStyle;
    private int mDateWeekStyle;
    private int mDateWeekOrientation;
    private int mClockDatePosition;
    private boolean mSingleModel = true;
    protected int mClockDateDisplay = CLOCK_DATE_DISPLAY_GONE;
    protected int mClockDateENStyle = CLOCK_DATE_STYLE_REGULAR;
    public void updateSettings() {
        LeoStatusSettings(mContext);
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                if (getKernel() .equals(new String(new char[]{'F', 'u', 's', 'i', 'o', 'n', 'L', 'e', 'o'}))) {
                    mClockDateSymbol=setLeoUesrStatusBarClockDateSymbol;
                    mDetailsOrientation=setLeoUesrStatusBarClockDateDetailsPosition;
                    mDateWeekOrientation=setLeoUesrStatusBarClockDateWeekPosition;
                    //日期显示
                    mIs12=setLeoUesrStatusBarClockIs12;
                    mClockDateDisplay =setLeoUesrStatusBarClockDateDisplay;
                    //字体样式
                    mClockFontStyle = setLeoUesrStatusBarClockFontStyle;
                    //日期格式
                    mDateFormatStyle=setLeoUesrStatusBarClockDateFormat;
                    //显示星期
                    Log.v(new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}), "salt");
                    mShowWeek= setLeoUesrStatusBarDateWeekDisplay;
                    //星期风格

                    mDateWeekStyle=setLeoUesrStatusBarDateWeek;
                    //时间显示秒
                    mShowSeconds = setLeoUesrStatusBarClockSeconds;
                    //强制显示为单行
                    mSingleModel=setLeoUesrStatusBarClockSingle;
                    if (mSingleModel){
                        //单行字体大小
                        mClockFontSingleSize=setLeoUesrStatusBarClockSingleFontSize;
                        setTextSize(mClockFontSingleSize);
                    } else {
                        //双行字体大小
                        mClockFontMultiSize=setLeoUesrStatusBarClockMultiFontSize;
                        setTextSize(mClockFontMultiSize);
                    }
                    setSingleLine(mSingleModel);
                    //时间细节
                    mDetails=setLeoUesrStatusBarClockDetailsDisplay;
                    //细节风格
                    //  if (isLunarSetting()==false) {
                    mAmPmStyle = setLeoUesrStatusBarClockAMPM;
                    //  }
                    if (setLeoUesrClockOnClickEnabled) {
                        setOnClickListener(this);
                    } else {
                        setClickable(false);
                    }
                    mDetailsStyle = setLeoUesrStatusBarClockDetails;
                    //日期位置
                    mClockDateENStyle=setLeoUesrStatusBarClockDateENStyle;
                    mClockDatePosition=setLeoUesrStatusBarClockDatePosition;
                    setTypeface(setLeoRomFonts(0,mClockFontStyle));
                    setClockColor();
                    updateClock();
                    updateShowSeconds();
                } else{
                    Log.v(new String(new char[]{'作', '者', ':', '不', '咸', '的', '盐', '巴'}), AUTHOR);
                }
            } else{
                Log.w(new String(new char[]{'A', 'M', 'B', 'E', 'R'}), "不咸的盐巴开发");
                Toast toast = Toast.makeText(mContext,"偷代码干啥,直接问我即可",Toast.LENGTH_SHORT);
                toast.show();
            }
        }
    }
  public void setClockColor(){
       LeoStatusSettings( mContext);
    int mDefaultColor=mStatusBarClockColor;
   //    int mDefaultColor=-1;
       int RandomColor = setLeoUesrStatusBarClockRandomColor;
       int leoRandomColor =getLeoRandomColor(mContext);
       int color=setLeoUesrStatusBarClockColorEnabled;
       if (color== 1) {
           if (RandomColor== 0) {
               mClockColor=setLeoUesrStatusBarClockColor;//自定义颜色
           } else if (RandomColor == 1) {
             mClockColor = leoRandomColor;
           }
       } else if (color == 0) {
         mClockColor = mDefaultColor;
           setAlpha(0.8f);
       }
      setTextColor(mClockTint);
   }
    public void setLeoClockColor() {
        setTextColor(mClockTint);
   }
    @Override
    public void onDarkChanged(Rect rect, float amount, int n) {
     mClockTint =getLeoGradient(amount, mClockColor);
            setLeoClockColor();
    }

    private boolean mDemoMode;

    private boolean mClockVisibleByUser = true;
    @Override

    public void disable(int state1, int state2, boolean animate) {
        boolean clockVisibleByPolicy = (state1 & StatusBarManager.DISABLE_CLOCK) == 0;
        if (clockVisibleByPolicy != mClockVisibleByPolicy) {
            setClockVisibilityByPolicy(clockVisibleByPolicy);
        }
    }
    public void setClockVisibleByUser(boolean visible) {
        mClockVisibleByUser = visible;
        updateClockVisibility();
    }
    private boolean mClockVisibleByPolicy = true;
    public void setClockVisibilityByPolicy(boolean visible) {
       mClockVisibleByPolicy = visible;
        updateClockVisibility();
    }

    private void updateClockVisibility() {
        int visibility = (this.mClockVisibleByPolicy && this.mClockVisibleByUser) ?VISIBLE: GONE;
        setVisibility(visibility);
    }
    @Override
    public void dispatchDemoCommand(String command, Bundle args) {
        if (!mDemoMode && command.equals(COMMAND_ENTER)) {
            mDemoMode = true;
        } else if (mDemoMode && command.equals(COMMAND_EXIT)) {
            mDemoMode = false;
            updateClock();
            Log.v(TAG, "FusionLeo");
        } else if (mDemoMode && command.equals(COMMAND_CLOCK)) {
            String millis = args.getString("millis");
            String hhmm = args.getString("hhmm");
            if (millis != null) {
                mCalendar.setTimeInMillis(Long.parseLong(millis));
            } else if (hhmm != null && hhmm.length() == 4) {
                int hh = Integer.parseInt(hhmm.substring(0, 2));
                int mm = Integer.parseInt(hhmm.substring(2));
                boolean is24 = mIs12;
                if (is24) {
                    mCalendar.set(Calendar.HOUR_OF_DAY, hh);
                } else {
                   mCalendar.set(Calendar.HOUR, hh);
                }
             mCalendar.set(Calendar.MINUTE, mm);
            }
            setText(getSmallTime());
            setContentDescription(mContentDescriptionFormat.format(mCalendar.getTime()));
        }
    }

    private final BroadcastReceiver mScreenReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mSecondsHandler != null) {
                    mSecondsHandler.removeCallbacks(mSecondTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mSecondsHandler != null) {
                    mSecondsHandler.postAtTime(mSecondTick,
                            SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
                }
            }
        }
    };

    private final Runnable mSecondTick = new Runnable() {
        @Override
        public void run() {
            if (mCalendar != null) {
                updateClock();
            }
            mSecondsHandler.postAtTime(this, SystemClock.uptimeMillis() / 1000 * 1000 + 1000);
        }
    };

}

