package com.android.systemui.statusbar.salt;

import android.app.StatusBarManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.os.SystemClock;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.format.DateFormat;
import android.text.style.CharacterStyle;
import android.text.style.RelativeSizeSpan;
import android.util.AttributeSet;
import android.view.Display;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;

import com.android.settingslib.Utils;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;
import com.android.systemui.SysUiServiceProvider;

import com.android.systemui.plugins.DarkIconDispatcher;
import com.android.systemui.statusbar.policy.IconLogger;

import com.android.systemui.settings.CurrentUserTracker;
import com.android.systemui.statusbar.CommandQueue;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;

import com.android.systemui.tuner.TunerService;
import com.salt.leokt10.R;


import libcore.icu.LocaleData;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.TimeZone;

import static com.android.settingslib.salt.SaltConfigCenter.*;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.*;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.SaltConfigFrame.isChineseLanguage;
import static com.android.settingslib.salt.SaltValues.*;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltClock extends TextView implements DemoMode, CommandQueue.Callbacks,
        DarkIconDispatcher.DarkReceiver, ConfigurationListener {
    private static final String CLOCK_SUPER_PARCELABLE = "clock_super_parcelable";
    private static final String CURRENT_USER_ID = "current_user_id";
    private static final String VISIBLE_BY_POLICY = "visible_by_policy";
    private static final String VISIBLE_BY_USER = "visible_by_user";
    private static final String SHOW_SECONDS = "show_seconds";
    private static final String VISIBILITY = "visibility";
    private Context mContext;
    private final CurrentUserTracker mCurrentUserTracker;
    private int mCurrentUserId;
    protected boolean mClockVisibleByPolicy = true;
    protected boolean mClockVisibleByUser = true;
    protected boolean mAttached;
    protected Calendar mCalendar;
    protected String mClockFormatString;
    protected SimpleDateFormat mClockFormat;
    private SimpleDateFormat mContentDescriptionFormat;
    protected Locale mLocale;
    private boolean mScreenOn = true;
    private Handler autoHideHandler = new Handler();

    private static final int HIDE_DURATION = 60; // 1 minute
    private static final int SHOW_DURATION = 5; // 5 seconds
    public int mNonAdaptedColor;
    public static final int AM_PM_STYLE_GONE    = 0;
    public static final int AM_PM_STYLE_SMALL   = 1;
    public static final int AM_PM_STYLE_NORMAL  = 2;


    public static final int CLOCK_DATE_DISPLAY_GONE = 0;
    public static final int CLOCK_DATE_DISPLAY_SMALL = 1;
    public static final int CLOCK_DATE_DISPLAY_NORMAL = 2;

    public static final int CLOCK_DATE_STYLE_REGULAR = 0;
    public static final int CLOCK_DATE_STYLE_LOWERCASE = 1;
    public static final int CLOCK_DATE_STYLE_UPPERCASE = 2;

    public static final int STYLE_DATE_LEFT = 0;
    public static final int STYLE_DATE_RIGHT = 1;



    private int mClockFontStyle ;

    private boolean mIs12;
    protected int mClockDateDisplay = CLOCK_DATE_DISPLAY_GONE;
    protected int mClockDateStyle = CLOCK_DATE_STYLE_REGULAR;

    protected String mClockDateFormat = null;
    protected int mClockDatePosition;
    public int mClockDateWeekPosition;
    public int mClockDateWeekStyle;
    public int mClockDetailsPosition;
    protected boolean mShowClock = true;
    protected boolean mShowDateWeek =true;
    private int mClockSize = 14;

    private int mAmPmStyle;
    private final boolean mShowDark;

    private boolean mShowSeconds;
    private boolean mChinaDetails;
    private int mChinaDetailsStyle;
    private int mChinaLunarMonthStyle;
    private int mChinaDetailssymbolStyle;
    private String mChinaDetailssymbolSting;
    private int mDatesymbolStyle;
    private String  mDatesymbolSting;
    private String mChinaDetailsSting;
    private Handler mSecondsHandler;
    private boolean mClockAutoHide;
    private int mHideDuration = HIDE_DURATION;
    private int mShowDuration = SHOW_DURATION;
    private Handler mHandler = new Handler();



    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        public void observe() {
            ContentResolver contentResolver =getContext().getContentResolver();
            for (String leoUri : mLeoStatusBarClock) {
                contentResolver.registerContentObserver(getLeoUri(leoUri), false, this);
            }
           updateSettings();
        }

        public void onChange(boolean z) {
         updateSettings();
          updateClockColor();
        updateClockSize();
          updateClockFontStyle();
        }
    }



    public SaltClock(Context context) {
        this(context, null);
    }

    public SaltClock(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SaltClock(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        mContext=context;
        setTag(mStatusbarClock);
        TypedArray a = context.getTheme().obtainStyledAttributes(
                attrs, mStyleableClock, 0, 0);
        try {
            mAmPmStyle = a.getInt(getLeoUIResource("styleable/Clock_amPmStyle"),getLeoUIResource("styleable/AM_PM_STYLE_GONE"));
           mShowDark = a.getBoolean(AM_PM_STYLE_SMALL, true);
           mNonAdaptedColor = getCurrentTextColor();
        } finally {
            a.recycle();
        }
        mCurrentUserTracker = new CurrentUserTracker(context) {
            @Override
            public void onUserSwitched(int newUserId) {
                mCurrentUserId = newUserId;
            }
        };
        updateSettings();
    }

    @Override
    public Parcelable onSaveInstanceState() {
        Bundle bundle = new Bundle();
        bundle.putParcelable(CLOCK_SUPER_PARCELABLE, super.onSaveInstanceState());
        bundle.putInt(CURRENT_USER_ID, mCurrentUserId);
        bundle.putBoolean(VISIBLE_BY_POLICY, mClockVisibleByPolicy);
        bundle.putBoolean(VISIBLE_BY_USER, mClockVisibleByUser);
        bundle.putBoolean(SHOW_SECONDS, mShowSeconds);
        bundle.putInt(VISIBILITY, getVisibility());


        return bundle;
    }

    @Override
    public void onRestoreInstanceState(Parcelable state) {
        if (state == null || !(state instanceof Bundle)) {
            super.onRestoreInstanceState(state);
            return;
        }

        Bundle bundle = (Bundle) state;
        Parcelable superState = bundle.getParcelable(CLOCK_SUPER_PARCELABLE);
        super.onRestoreInstanceState(superState);
        if (bundle.containsKey(CURRENT_USER_ID)) {
            mCurrentUserId = bundle.getInt(CURRENT_USER_ID);
        }
        mClockVisibleByPolicy = bundle.getBoolean(VISIBLE_BY_POLICY, true);
        mClockVisibleByUser = bundle.getBoolean(VISIBLE_BY_USER, true);
        mShowSeconds = bundle.getBoolean(SHOW_SECONDS, false);
        if (bundle.containsKey(VISIBILITY)) {
            setVisibility(bundle.getInt(VISIBILITY));
        }

    }
    private LeoObserver mLeoObserver;

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
            filter.addAction("android.intent.action.USER_SWITCHED");

            //getContext().registerReceiverAsUser(mIntentReceiver, UserHandle.ALL, filter,
                 //   null, Dependency.get(Dependency.TIME_TICK_HANDLER));
            SysUiServiceProvider.getComponent(getContext(), CommandQueue.class).addCallback(this);
            if (mShowDark) {
                Dependency.get(DarkIconDispatcher.class).addDarkReceiver(this);
            }
            mCurrentUserTracker.startTracking();
            mCurrentUserId = mCurrentUserTracker.getCurrentUserId();
        }

        // NOTE: It's safe to do these after registering the receiver since the receiver always runs
        // in the main thread, therefore the receiver can't run before this method returns.

        // The time zone may have changed while the receiver wasn't registered, so update the Time
        mCalendar = Calendar.getInstance(TimeZone.getDefault());

        if (mLeoObserver == null) {
            mLeoObserver = new LeoObserver(new Handler());
        }
        mLeoObserver.observe();
        updateStatus();
    }

    private void updateStatus() {
        if (mAttached) {
            LeoSysUiManages(mContext);
            updateClock();
            updateShowSeconds();
            updateClockColor();
            updateClockSize();
            updateClockFontStyle();
        }
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();

        if (mAttached) {
            getContext().unregisterReceiver(mIntentReceiver);
            getContext().getContentResolver().unregisterContentObserver(mLeoObserver);
            mAttached = false;
            SysUiServiceProvider.getComponent(getContext(), CommandQueue.class)
                    .removeCallback(this);
            if (mShowDark) {
                Dependency.get(DarkIconDispatcher.class).removeDarkReceiver(this);
            }
            mCurrentUserTracker.stopTracking();
        }
    }

    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(Intent.ACTION_TIMEZONE_CHANGED)) {
                String tz = intent.getStringExtra("time-zone");
                mHandler.post(() -> {
                    mCalendar = Calendar.getInstance(TimeZone.getTimeZone(tz));
                    if (mClockFormat != null) {
                        mClockFormat.setTimeZone(mCalendar.getTimeZone());
                    }
                });
            } else if (action.equals(Intent.ACTION_CONFIGURATION_CHANGED)) {
                final Locale newLocale = getResources().getConfiguration().locale;
                mHandler.post(() -> {
                    if (!newLocale.equals(mLocale)) {
                        mLocale = newLocale;
                    }
                    updateStatus();
                    return;
                });
            }

            if (action.equals(Intent.ACTION_SCREEN_ON)) {
                mScreenOn = true;
            } else if (action.equals(Intent.ACTION_SCREEN_OFF)) {
                mScreenOn = false;
            }

            if (mScreenOn) {
                getHandler().post(() -> updateClock());
                if (mClockAutoHide) autoHideHandler.post(() -> updateClockVisibility());
            }
        }
    };

    @Override
    public void setVisibility(int visibility) {
        if (visibility == View.VISIBLE && !shouldBeVisible()) {
            return;
        }

        super.setVisibility(visibility);
    }

    public void setClockVisibleByUser(boolean visible) {
        mClockVisibleByUser = visible;
        updateClockVisibility();
    }

    public void setClockVisibilityByPolicy(boolean visible) {
        mClockVisibleByPolicy = visible;
        updateClockVisibility();
    }

    private boolean shouldBeVisible() {
        return mClockVisibleByPolicy && mClockVisibleByUser;
    }

    protected void updateClockVisibility() {
        boolean visible = (0 == 0) && mShowClock && mClockVisibleByPolicy && mClockVisibleByUser;

        int visibility = visible ? View.VISIBLE : View.GONE;
        try {
            autoHideHandler.removeCallbacksAndMessages(null);
        } catch (NullPointerException e) {
            // Do nothing
        }
        super.setVisibility(visibility);
        if (mClockAutoHide && visible && mScreenOn) {
            autoHideHandler.postDelayed(()->autoHideClock(), mShowDuration * 1000);
        }
    }
    public boolean isClockVisible() {
        return mClockVisibleByPolicy && mClockVisibleByUser;
    }


    private void autoHideClock() {
        setVisibility(View.GONE);
        autoHideHandler.postDelayed(()->updateClockVisibility(), mHideDuration*1000);
    }

    final void updateClock() {
        if (!mDemoMode) {
            mCalendar.setTimeInMillis(System.currentTimeMillis());
            setText(getSmallTime());
            setContentDescription(mContentDescriptionFormat.format(mCalendar.getTime()));
        }
    }

    @Override
    public void disable(int state1, int state2, boolean animate) {
        if ( state1== getDisplay().getDisplayId()) {
            boolean z2 = (8388608 & state2) == 0;
            if (z2 != this.mClockVisibleByPolicy) {
                setClockVisibilityByPolicy(z2);
            }
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
        boolean is24 =mIs12;
        LocaleData d = LocaleData.get(context.getResources().getConfiguration().locale);

        final char MAGIC1 = '\uEF00';
        final char MAGIC2 = '\uEF01';

        SimpleDateFormat sdf;
        String format = mShowSeconds
                ? is24 ? d.timeFormat_Hms : d.timeFormat_hms
                : is24 ? d.timeFormat_Hm : d.timeFormat_hm;
        if (!format.equals(mClockFormatString)) {
            mContentDescriptionFormat = new SimpleDateFormat(format);
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
        CharSequence ChinaDetails =getLeoTimeStyle(mContext,mChinaLunarMonthStyle,mChinaDetails,mChinaDetailsStyle,mChinaDetailsSting);
        String result = "";

        String timeResult = sdf.format(mCalendar.getTime());
        String addtime=timeResult;
        String dateResult = "";
        String SymbolResult =LeoSaltSymbolStyle(mContext,mChinaDetailssymbolStyle,mChinaDetailssymbolSting);
        String timeStyle = (mClockDetailsPosition == STYLE_DATE_LEFT) ? ChinaDetails +SymbolResult+ addtime
                : timeResult + SymbolResult+ ChinaDetails;
        timeResult=timeStyle;
         if (mClockDateDisplay != CLOCK_DATE_DISPLAY_GONE) {
            Date now = new Date();
            String date=getLeoDateStyle(mContext,mClockDateWeekPosition,mShowDateWeek,mClockDateWeekStyle,mDatesymbolStyle,mDatesymbolSting,mClockDateFormat);
            dateString = DateFormat.format(date, now);
            if (mClockDateStyle == CLOCK_DATE_STYLE_LOWERCASE) {
                // When Date style is small, convert date to uppercase
                dateResult = dateString.toString().toLowerCase();
            } else if (mClockDateStyle == CLOCK_DATE_STYLE_UPPERCASE) {
                dateResult = dateString.toString().toUpperCase();
            } else {
                dateResult = dateString.toString();
            }

            result = (mClockDatePosition == STYLE_DATE_LEFT) ? dateResult + "\n" + timeResult
                    : timeResult + "\n" + dateResult;

        } else {
            // No date, just show time
            result = timeResult;
        }

        SpannableStringBuilder formatted = new SpannableStringBuilder(result);

        if (mClockDateDisplay != CLOCK_DATE_DISPLAY_NORMAL) {
            if (dateString != null) {
                int dateStringLen = dateString.length();
                int timeStringOffset = (mClockDatePosition == STYLE_DATE_RIGHT)
                        ? timeResult.length() + 1 : 0;
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




    private boolean mDemoMode;

    @Override
    public void dispatchDemoCommand(String command, Bundle args) {
        if (!mDemoMode && command.equals(COMMAND_ENTER)) {
            mDemoMode = true;
        } else if (mDemoMode && command.equals(COMMAND_EXIT)) {
            mDemoMode = false;
            updateClock();
        } else if (mDemoMode && command.equals(COMMAND_CLOCK)) {
            String millis = args.getString("millis");
            String hhmm = args.getString("hhmm");
            if (millis != null) {
                mCalendar.setTimeInMillis(Long.parseLong(millis));
            } else if (hhmm != null && hhmm.length() == 4) {
                int hh = Integer.parseInt(hhmm.substring(0, 2));
                int mm = Integer.parseInt(hhmm.substring(2));
                boolean is24 =mIs12;
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

    protected void updateSettings() {
        LeoSysUiManages(mContext);
        mIs12=setLeoStatusBarClock12Format;
        mShowClock =setLeoStatusBarClockShow;



        mShowSeconds =setLeoStatusBarClockShowSeconds;

        boolean is24hour =mIs12;

        if(isChineseLanguage() ){
            mChinaDetailssymbolStyle=setLeoStatusBarClockChinaDetailSymbol;

            mChinaDetails= setLeoStatusBarClockChinaDetail;
        } else {
            mChinaDetailssymbolStyle=0;
            int amPmStyle= setLeoStatusBarClockAMPMStyle;
            mAmPmStyle = is24hour ? AM_PM_STYLE_GONE : amPmStyle;
        }
        mDatesymbolStyle=setLeoStatusBarClockWeekSymbol;
        mDatesymbolSting=  setLeoStatusBarClockWeekSymbolStr;
        mChinaDetailsStyle=  setLeoStatusBarClockChinaDetailStyle;
        mChinaDetailsSting= setLeoStatusBarClockChinaDetailStr;
        mClockFormatString = "";
        mClockDateDisplay = setLeoStatusBarClockDateShow;
        mClockDateStyle=setLeoStatusBarClockDateStyle;
        mClockDateFormat = setLeoStatusBarClockDateFormat;
        mClockDatePosition =setLeoStatusBarClockDatePosition;
        mShowDateWeek=setLeoStatusBarClockWeekShow;
        mClockDateWeekPosition=setLeoStatusBarClockWeekOrientation;
        mClockDateWeekStyle=setLeoStatusBarClockWeekStyle;
        mClockDetailsPosition=setLeoStatusBarClockChinaOrientation;
        mClockAutoHide =setLeoStatusBarClockAutoHide;
        mHideDuration = setLeoStatusBarClockHideDuration;
        mShowDuration =setLeoStatusBarClockShowDuration;
        setLeoTextPadding( this,setLeoStatusBarClockStartPadding, setLeoStatusBarClockEndPadding);
        mChinaDetailssymbolSting= setLeoStatusBarClockChinaDetailSymbolStr;
        mChinaLunarMonthStyle=setLeoStatusBarClockLunarMonthStyle;
        if (mAttached) {
            updateClockVisibility();
            updateClock();
            updateShowSeconds();
        }
    }

    public boolean isClockDateEnabled() {
        return isClockVisible() && mClockDateDisplay != CLOCK_DATE_DISPLAY_GONE;
    }



   public boolean mSingleLine;
    public void updateClockSize() {
        mSingleLine=setLeoStatusBarClockSingleLine;
        int size;
        if(mSingleLine){
            size=setLeoStatusBarClockSingleSize;
        }else {
            setGravity(Gravity.CENTER);
            size=setLeoStatusBarClockMultiSize;
        }
        setSingleLine(mSingleLine);
        mClockSize=size;
		setLeoTextSize(this,mClockSize);
		updateClock();
    }


    public static final  int[] mStyleableClock= R.styleable.Clock;

    public String  mStatusbarClock="leo_status_bar_clock";
    public void updateClockColor() {
        mClockColor =setLeoStatusBarClockColor;
        if (setClockCustomColor()) {
            setTextColor(mClockColor);
        } else {
            setTextColor(mNonAdaptedColor);
        }
        updateClock();

    }
    public boolean setClockCustomColor() {
        LeoSysUiManages(mContext);
        return setLeoStatusBarClockCustomColorEnabled==1;
    }


    public void onDensityOrFontScaleChanged() {
        updateClockColor();
    }

    private int mClockColor = mLightModeFillColor;
    @Override
    public void onDarkChanged(Rect area, float darkIntensity, int tint) {
        mNonAdaptedColor = DarkIconDispatcher.getTint(area, this, tint);
        if (setClockCustomColor()) {
            setTextColor(mClockColor);
        } else {
            setTextColor(mNonAdaptedColor);
        }


    }


    private void updateClockFontStyle() {
        mClockFontStyle=setLeoStatusBarClockFont;
        setTypeface(setLeoTextFont(mContext,mClockFontStyle,"sec-roboto-light",Typeface.NORMAL));
        updateClock();
    }


}
