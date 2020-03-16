package com.android.systemui.statusbar.policy;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import android.text.Spannable;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.text.style.RelativeSizeSpan;
import android.util.Log;
import android.view.Gravity;

import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.settingslib.salt.LeoLunar;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Observable;
import java.util.Observer;
import java.util.TimeZone;
import libcore.icu.LocaleData;

import static com.android.settingslib.salt.SaltConfigCenter.getLeoChineseWeekStyle;
import static com.android.settingslib.salt.SaltConfigCenter.getLeoDateStyle;
import static com.android.settingslib.salt.SaltConfigCenter.getLeoSymbolStyle;
import static com.android.settingslib.salt.SaltConfigCenter.getLeoTimeStyle;
import static com.android.settingslib.salt.SaltConfigCenter.leoSizeSpan;
import static com.android.settingslib.salt.SaltConfigFrame.isChineseLanguage;
import static com.android.settingslib.salt.SaltValues.Values15;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailScaling;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailSymbolStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailZoomEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderClockChinaTimeDetailsEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateLunarDisplayEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateLunarFestivalSymbolEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateLunarMonthStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateLunarStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateLunarZodiacSymbolEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateWeekDisplayEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQSheaderDateWeekStyle;



public class QSClockBellTower implements DemoMode {
    private HashMap<String, TimeAudience> mAudienceList = new HashMap();
    /* access modifiers changed from: private */
    public Calendar mCalendar;
    /* access modifiers changed from: private */
    public SimpleDateFormat mClockFormat;
    /* access modifiers changed from: private */
    public String mClockFormatString;
    /* access modifiers changed from: private */
    public SimpleDateFormat mContentDescriptionFormat;
    /* access modifiers changed from: private */
    public Context mContext;
    private final Date mCurrentDate = new Date();
    private final Date mCurrentShortenDate = new Date();
    /* access modifiers changed from: private */
    public String mDateStringFormat;
    private String mDateStringPattern;
    public boolean mDemoMode;
    /* access modifiers changed from: private */
    public Handler mHandler;
    /* access modifiers changed from: private */
    public Locale mLocale;
    private final Observer mScreenObserver = new Observer() {
        @Override
        public void update(Observable o, Object arg) {

        }

        public void onScreenTurnedOn() {
            if (QSClockBellTower.this.mHandler != null) {
                QSClockBellTower.this.mHandler.post(QSClockBellTower.this.mUpdateNotifyNewClockTime);
            }
        }
    };
    /* access modifiers changed from: private */
    public String mShortenDateStringFormat;
    private String mShortenDateStringPattern;
    protected TimeBroadcastReceiver mTimeBroadcastReceiver = new TimeBroadcastReceiver(this, null);
    /* access modifiers changed from: private */
    public Runnable mUpdateNotifyNewClockTime = new Runnable() {
        public void run() {
            long currentTimeMillis = System.currentTimeMillis();
            QSClockBellTower.this.mCalendar.setTimeInMillis(currentTimeMillis);
            QSClockBellTower.this.lambda$dispatchDemoCommand$0$QSClockBellTower();
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Everyone heard the bell. run(currentTime:");
            stringBuilder.append(currentTimeMillis);
            stringBuilder.append(",   getTime():");
            stringBuilder.append(QSClockBellTower.this.mCalendar.getTime());
            stringBuilder.append(",   getTimeZone():");
            stringBuilder.append(QSClockBellTower.this.mCalendar.getTimeZone());
            stringBuilder.append(")");
            Log.d("QSClockBellTower", stringBuilder.toString());
        }
    };

    public interface TimeAudience {
        void notifyTimeChanged(String str, String str2, boolean z, String str3, String str4);
    }

    private final class TimeBroadcastReceiver extends BroadcastReceiver {
        private TimeBroadcastReceiver(QSClockBellTower qsClockBellTower, Object o) {
        }


        /* access modifiers changed from: private */
        /* renamed from: resetClockFormatLocale */
        public void lambda$onReceive$1$QSClockBellTower$TimeBroadcastReceiver() {
            Locale locale = QSClockBellTower.this.mContext.getResources().getConfiguration().locale;
            if (!locale.equals(QSClockBellTower.this.mLocale)) {
                QSClockBellTower.this.mLocale = locale;
                QSClockBellTower.this.mClockFormatString = "";
                QSClockBellTower.this.mDateStringFormat = null;
                QSClockBellTower.this.mShortenDateStringFormat = null;
            }
        }

        /* access modifiers changed from: private */
        /* renamed from: updateTimeZone */
        public void lambda$onReceive$0$QSClockBellTower$TimeBroadcastReceiver(String str) {
            QSClockBellTower.this.mCalendar = Calendar.getInstance(TimeZone.getTimeZone(str));
            TimeZone timeZone = QSClockBellTower.this.mCalendar.getTimeZone();
            if (QSClockBellTower.this.mClockFormat != null) {
                QSClockBellTower.this.mClockFormat.setTimeZone(timeZone);
            }
            if (QSClockBellTower.this.mContentDescriptionFormat != null) {
                QSClockBellTower.this.mContentDescriptionFormat.setTimeZone(timeZone);
            }
            QSClockBellTower.this.mDateStringFormat = null;
            QSClockBellTower.this.mShortenDateStringFormat = null;
        }

        public void onReceive(Context context, Intent intent) {
            if (QSClockBellTower.this.mHandler != null) {
                String action = intent.getAction();
                if (action.equals("android.intent.action.TIMEZONE_CHANGED")) {

                } else if (action.equals("android.intent.action.CONFIGURATION_CHANGED") || action.equals("android.intent.action.LOCALE_CHANGED")) {

                }
                QSClockBellTower.this.mHandler.post(QSClockBellTower.this.mUpdateNotifyNewClockTime);
            }
        }

        public void register() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_TICK");
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
            intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
            intentFilter.addAction("android.intent.action.USER_SWITCHED");
            if (QSClockBellTower.this.mContext != null) {

            }
        }
    }

    private void ringBellOfTower(boolean z) {
        String smallTime = getSmallTime();
        String dateViewText = getDateViewText();
        String shortenDateViewText = getShortenDateViewText();
        String contentDescription = getContentDescription();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("He is ready to ring the bell. (((timeText:");
        stringBuilder.append(smallTime);
        stringBuilder.append(", skipUpdateForDemo:");
        stringBuilder.append(z);
        stringBuilder.append(", dateText:");
        stringBuilder.append(dateViewText);
        stringBuilder.append(", shortenDateText = ");
        stringBuilder.append(shortenDateViewText);
        stringBuilder.append(")))");
        Log.d("QSClockBellTower", stringBuilder.toString());
        for (String str : this.mAudienceList.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                ((TimeAudience) this.mAudienceList.get(str)).notifyTimeChanged(smallTime, contentDescription, z, dateViewText, shortenDateViewText);
            }
        }
    }

    @Override
    public void disable(int state1, int state2, boolean animate) {

    }

    public void dispatchDemoCommand(String str, Bundle bundle) {
        boolean z = true;
        Handler handler;
        if (!this.mDemoMode && str.equals("enter")) {
            this.mDemoMode = true;
        } else if (this.mDemoMode && str.equals("exit")) {
            this.mDemoMode = false;
            this.mCalendar.setTimeInMillis(System.currentTimeMillis());
            handler = this.mHandler;
            if (handler != null) {

            }
        } else if (this.mDemoMode && str.equals("clock")) {
            str = bundle.getString("millis");
            String string = bundle.getString("hhmm");
            if (str != null) {
                this.mCalendar.setTimeInMillis(Long.parseLong(str));
            } else if (string != null && string.length() == 4) {
                int parseInt = Integer.parseInt(string.substring(0, 2));
                int parseInt2 = Integer.parseInt(string.substring(2));
                Context context = this.mContext;

                if (z) {
                    this.mCalendar.set(11, parseInt);
                } else {
                    this.mCalendar.set(10, parseInt);
                }
                this.mCalendar.set(12, parseInt2);
            }
            handler = this.mHandler;
            if (handler != null) {

            }
        }
    }

    public void dump(PrintWriter printWriter) {
        printWriter.print("   QSClockBellTower mAudienceList: ");
        for (String str : this.mAudienceList.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append(str);
                stringBuilder.append(", ");
                printWriter.print(stringBuilder.toString());
            }
        }
        printWriter.println("\n");
    }

    public String getContentDescription() {
        SimpleDateFormat simpleDateFormat = this.mContentDescriptionFormat;
        return simpleDateFormat != null ? simpleDateFormat.format(this.mCalendar.getTime()) : "";
    }


    protected String getDateViewText() {
        if (TextUtils.isEmpty(this.mDateStringFormat)) {
            this.mDateStringPattern ="EEEMMMMd";
            try {
                this.mDateStringFormat = DateFormat.getBestDateTimePattern(Locale.getDefault(), this.mDateStringPattern).trim();
            } catch (ExceptionInInitializerError unused) {
                this.mDateStringFormat = null;
                return "";
            }
        }
        this.mCurrentDate.setTime(System.currentTimeMillis());
        StringBuilder stringBuilder = new StringBuilder(DateFormat.format(this.mDateStringFormat, this.mCurrentDate).toString());
        if (Rune.STATBAR_QS_PERSIAN_CALENDAR) {

        }
        return stringBuilder.toString();
    }


    protected String getShortenDateViewText() {
        if (TextUtils.isEmpty(this.mShortenDateStringFormat)) {
            this.mShortenDateStringPattern ="EEE, MMM d";
            try {
                this.mShortenDateStringFormat = DateFormat.getBestDateTimePattern(Locale.getDefault(), this.mShortenDateStringPattern).trim();
            } catch (ExceptionInInitializerError unused) {
                this.mShortenDateStringFormat = null;
                return "";
            }
        }
        this.mCurrentShortenDate.setTime(System.currentTimeMillis());
        return DateFormat.format(this.mShortenDateStringFormat, this.mCurrentShortenDate).toString();
    }

    public String getSmallTime() {


        return null;
    }



    public /* synthetic */ void lambda$dispatchDemoCommand$1$QSClockBellTower() {
        ringBellOfTower(false);
    }

    public void registerAudience(String str, TimeAudience timeAudience) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("registerAudience() ticket:");
        stringBuilder.append(str);
        Log.d("QSClockBellTower", stringBuilder.toString());
        this.mAudienceList.put(str, timeAudience);
    }

    /* renamed from: ringBellOfTower */
    public void lambda$dispatchDemoCommand$0$QSClockBellTower() {
        ringBellOfTower(this.mDemoMode);
    }

    public void unregisterAudience(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("unregisterAudience() ticket:");
        stringBuilder.append(str);
        Log.d("QSClockBellTower", stringBuilder.toString());
        this.mAudienceList.remove(str);
    }

}
