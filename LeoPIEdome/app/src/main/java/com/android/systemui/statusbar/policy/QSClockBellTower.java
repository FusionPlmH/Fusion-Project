package com.android.systemui.statusbar.policy;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;

import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.DemoMode;

import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;

import libcore.icu.LocaleData;

import static com.android.fusionleo.global.LeoGlobalUtils.getLeoGlobalClockDetails;

public class QSClockBellTower implements DemoMode {
 //   private static final boolean DEBUG = Rune.QPANEL_CHECK_MHSDBG;
    private static QSClockBellTower sInstance;
    private HashMap<String, TimeAudience> mAudienceList = new HashMap();
    private Calendar mCalendar;
    private SimpleDateFormat mClockFormat;
    private String mClockFormatString;
    private SimpleDateFormat mContentDescriptionFormat;
    private Context mContext;
    private final Date mCurrentDate = new Date();
    private String mDateStringFormat;
    private String mDateStringPattern;
    public boolean mDemoMode;
    private Handler mHandler;
    private Locale mLocale;

    private final BroadcastReceiver mTimeIntentReceiver = new BroadcastReceiver() {


        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.TIMEZONE_CHANGED")) {
            //    QSClockBellTower.this.mHandler.post(new -$$Lambda$QSClockBellTower$3$MU50PBxGBN4y8Oe7aGxtgD5Xi98(this, intent.getStringExtra("time-zone")));
            } else if (action.equals("android.intent.action.CONFIGURATION_CHANGED") || action.equals("android.intent.action.LOCALE_CHANGED")) {
               // QSClockBellTower.this.mHandler.post(new -$$Lambda$QSClockBellTower$3$4jtxYIKZnCy1FrPqKg8fPbZhiqk(this));
            }
            QSClockBellTower.this.mHandler.post(QSClockBellTower.this.mUpdateNotifyNewClockTime);
        }
    };
    private Runnable mUpdateNotifyNewClockTime = new Runnable() {
        public void run() {
            long currentTimeMillis = System.currentTimeMillis();
            QSClockBellTower.this.mCalendar.setTimeInMillis(currentTimeMillis);
            QSClockBellTower.this.ringBellOfTower();
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
        void notifyTimeChanged(String str, String str2, boolean z, String str3);
    }

    private QSClockBellTower(Context context, Handler handler) {
        this.mContext = context;
        this.mHandler = handler;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.TIME_TICK");
        intentFilter.addAction("android.intent.action.TIME_SET");
        intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
        intentFilter.addAction("android.intent.action.CONFIGURATION_CHANGED");
        intentFilter.addAction("android.intent.action.LOCALE_CHANGED");
        intentFilter.addAction("android.intent.action.USER_SWITCHED");


        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("QSClockBellTower()   (((timeText:");

        stringBuilder.append(", demo:");
        stringBuilder.append(this.mDemoMode);
        stringBuilder.append(", dateText:");
        stringBuilder.append(getDateViewText());
        stringBuilder.append(")))");
        Log.d("QSClockBellTower", stringBuilder.toString());
        updateLeoChinaClock();
    }

    public static QSClockBellTower getInstance(Context context, Handler handler) {
        if (sInstance == null) {
            sInstance = new QSClockBellTower(context, handler);
        }
        return sInstance;
    }
    private static final boolean DEBUG =true;
    public int mLeoChinaClock;
    public boolean mLeoChinaClockStart;
     public void updateLeoChinaClock(){
         LeoChinaClock(mLeoChinaClock,mLeoChinaClockStart);
     }
    public String  LeoChinaClock(int b,boolean Q){
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(getLeoGlobalClockDetails(b,Q));
        stringBuilder.append("");
       return stringBuilder.toString();
     }
    private void ringBellOfTower() {
        ringBellOfTower(this.mDemoMode);
    }

    private void ringBellOfTower(boolean z) {

        String dateViewText = getDateViewText();
        String contentDescription = getContentDescription();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("He is ready to ring the bell. (((timeText:");

        stringBuilder.append(", skipUpdateForDemo:");
        stringBuilder.append(z);
        stringBuilder.append(", dateText:");
        stringBuilder.append(dateViewText);
        stringBuilder.append(")))");
        Log.d("QSClockBellTower", stringBuilder.toString());
        for (String str : this.mAudienceList.keySet()) {
            if (!TextUtils.isEmpty(str)) {
          //      ((TimeAudience) this.mAudienceList.get(str)).notifyTimeChanged(smallTime, contentDescription, z, dateViewText);
            }
        }
    }

    @Override
    public void disable(int state1, int state2, boolean animate) {

    }

    public void dispatchDemoCommand(String str, Bundle bundle) {


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
        return this.mContentDescriptionFormat.format(this.mCalendar.getTime());
    }

    protected String getDateViewText() {
        if (TextUtils.isEmpty(this.mDateStringFormat)) {
            this.mDateStringPattern = this.mContext.getString(2131889039);
            try {
                this.mDateStringFormat = DateFormat.getBestDateTimePattern(Locale.getDefault(), this.mDateStringPattern).trim();
            } catch (ExceptionInInitializerError e) {
                this.mDateStringFormat = null;
                return "";
            }
        }
        this.mCurrentDate.setTime(System.currentTimeMillis());
        String charSequence = DateFormat.format(this.mDateStringFormat, this.mCurrentDate).toString();

        return charSequence;
    }
    public String getSmallTime() {
        SimpleDateFormat simpleDateFormat;
        boolean is24HourFormat =false;

        LocaleData localeData = LocaleData.get(this.mLocale);
        String str = is24HourFormat ? localeData.timeFormat_Hm : localeData.timeFormat_hm;
        if (str.equals(this.mClockFormatString)) {
            simpleDateFormat = this.mClockFormat;
        } else {
            int i;
            if (DEBUG) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("getSmallTime recalulate time format (mClockFormatString:");
                stringBuilder.append(this.mClockFormatString);
                stringBuilder.append(", format:+");
                stringBuilder.append(str);
                stringBuilder.append(")");
                Log.d("QSClockBellTower", stringBuilder.toString());
            }
            this.mContentDescriptionFormat = new SimpleDateFormat(str);
            int i2 = -1;
            int i3 = 0;
            for (i = 0; i < str.length(); i++) {
                char charAt = str.charAt(i);
                if (charAt == '\'') {
                    i3 = i3 == 0 ? 1 : 0;
                }
                if (i3 == 0 && charAt == 'a') {
                    i2 = i;
                    break;
                }
            }
            if (i2 >= 0) {
                i = i2;
                while (i > 0 && Character.isWhitespace(str.charAt(i - 1))) {
                    i--;
                }
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append(str.substring(0, i));
                stringBuilder2.append(61184);
                stringBuilder2.append(str.substring(i, i2));
                stringBuilder2.append("a");
                stringBuilder2.append(61185);
                stringBuilder2.append(str.substring(i2 + 1));
                str = stringBuilder2.toString();
                i2 = i;
            }
            SimpleDateFormat simpleDateFormat2 = new SimpleDateFormat(str);
            simpleDateFormat = simpleDateFormat2;
            this.mClockFormat = simpleDateFormat2;
            this.mClockFormatString = is24HourFormat ? localeData.timeFormat_Hm : localeData.timeFormat_hm;
        }
      String format = simpleDateFormat.format(this.mCalendar.getTime());
        int indexOf = format.indexOf(61184);
        int indexOf2 = format.indexOf(61185);
        if (indexOf < 0 || indexOf2 <= indexOf) {
            return format;
        }
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder(format);
        spannableStringBuilder.delete(indexOf, indexOf2 + 1);
        if (Character.isWhitespace(spannableStringBuilder.charAt(0))) {
            int i4 = 0;
            while (spannableStringBuilder.length() > i4 && Character.isWhitespace(spannableStringBuilder.charAt(i4))) {
                i4++;
            }
            spannableStringBuilder.delete(0, i4);
        }
        return spannableStringBuilder.toString();
    }


    public String getPersianCalendar() {

        return null;
    }

    public void registerAudience(String str, TimeAudience timeAudience) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("registerAudience() ticket:");
        stringBuilder.append(str);
        Log.d("QSClockBellTower", stringBuilder.toString());
        this.mAudienceList.put(str, timeAudience);
    }

    public void unregisterAudience(String str) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("unregisterAudience() ticket:");
        stringBuilder.append(str);
        Log.d("QSClockBellTower", stringBuilder.toString());
        this.mAudienceList.remove(str);
    }
}
