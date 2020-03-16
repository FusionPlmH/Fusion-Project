package com.android.systemui.statusbar.policy;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.UserHandle;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.format.DateFormat;
import android.util.Log;
import com.android.keyguard.KeyguardUpdateMonitor;
import com.android.systemui.DemoMode;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.SystemUiIntent;
import com.android.systemui.keyguard.ScreenLifecycle;
import com.android.systemui.keyguard.ScreenLifecycle.Observer;
import com.android.systemui.util.LogUtil;
import com.samsung.systemui.splugins.lockstar.PluginLockStar;
import com.samsung.systemui.splugins.lockstar.PluginLockStarFaceWidgetManager;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import libcore.icu.LocaleData;

public class QSClockBellTower implements DemoMode {
    private static final boolean DEBUG = Rune.QPANEL_CHECK_MHSDBG;
    private static QSClockBellTower sInstance;
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
    /* access modifiers changed from: private */
    public String mDateStringFormat;
    private String mDateStringPattern;
    public boolean mDemoMode;
    /* access modifiers changed from: private */
    public Handler mHandler;
    /* access modifiers changed from: private */
    public Locale mLocale;
    private final Observer mScreenObserver = new Observer() {
        public void onScreenTurnedOn() {
            if (QSClockBellTower.this.mHandler != null) {
                QSClockBellTower.this.mHandler.post(QSClockBellTower.this.mUpdateNotifyNewClockTime);
            }
        }
    };
    private final BroadcastReceiver mTimeIntentReceiver = new BroadcastReceiver() {
        public static /* synthetic */ void lambda$onReceive$0(AnonymousClass3 anonymousClass3, String str) {
            QSClockBellTower.this.mCalendar = Calendar.getInstance(TimeZone.getTimeZone(str));
            TimeZone timeZone = QSClockBellTower.this.mCalendar.getTimeZone();
            if (QSClockBellTower.this.mClockFormat != null) {
                QSClockBellTower.this.mClockFormat.setTimeZone(timeZone);
            }
            if (QSClockBellTower.this.mContentDescriptionFormat != null) {
                QSClockBellTower.this.mContentDescriptionFormat.setTimeZone(timeZone);
            }
            QSClockBellTower.this.mDateStringFormat = null;
        }

        public static /* synthetic */ void lambda$onReceive$1(AnonymousClass3 anonymousClass3) {
            Locale locale = QSClockBellTower.this.mContext.getResources().getConfiguration().locale;
            if (!locale.equals(QSClockBellTower.this.mLocale)) {
                QSClockBellTower.this.mLocale = locale;
                QSClockBellTower.this.mClockFormatString = "";
                QSClockBellTower.this.mDateStringFormat = null;
            }
        }

        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals("android.intent.action.TIMEZONE_CHANGED")) {
                QSClockBellTower.this.mHandler.post(new $$Lambda$QSClockBellTower$3$MU50PBxGBN4y8Oe7aGxtgD5Xi98(this, intent.getStringExtra("time-zone")));
            } else if (action.equals("android.intent.action.CONFIGURATION_CHANGED") || action.equals("android.intent.action.LOCALE_CHANGED")) {
                QSClockBellTower.this.mHandler.post(new $$Lambda$QSClockBellTower$3$4jtxYIKZnCy1FrPqKg8fPbZhiqk(this));
            }
            QSClockBellTower.this.mHandler.post(QSClockBellTower.this.mUpdateNotifyNewClockTime);
        }
    };
    /* access modifiers changed from: private */
    public Runnable mUpdateNotifyNewClockTime = new Runnable() {
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
        if (LogUtil.isDebugLevelMid()) {
            intentFilter.addAction(SystemUiIntent.getUserTaggedAction("QSClockBellTower"));
        }
        this.mContext.registerReceiverAsUser(this.mTimeIntentReceiver, UserHandle.ALL, intentFilter, null, (Handler) Dependency.get(Dependency.TIME_TICK_HANDLER));
        this.mCalendar = Calendar.getInstance(TimeZone.getDefault());
        this.mLocale = this.mContext.getResources().getConfiguration().getLocales().get(0);
        ((ScreenLifecycle) Dependency.get(ScreenLifecycle.class)).addObserver(this.mScreenObserver);
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("QSClockBellTower()   (((timeText:");
        stringBuilder.append(getSmallTime());
        stringBuilder.append(", demo:");
        stringBuilder.append(this.mDemoMode);
        stringBuilder.append(", dateText:");
        stringBuilder.append(getDateViewText());
        stringBuilder.append(")))");
        Log.d("QSClockBellTower", stringBuilder.toString());
    }

    public static QSClockBellTower getInstance(Context context, Handler handler) {
        if (sInstance == null) {
            sInstance = new QSClockBellTower(context, handler);
        }
        return sInstance;
    }

    /* access modifiers changed from: private */
    public void ringBellOfTower() {
        ringBellOfTower(this.mDemoMode);
    }

    /* access modifiers changed from: private */
    public void ringBellOfTower(boolean z) {
        String smallTime = getSmallTime();
        String dateViewText = getDateViewText();
        String contentDescription = getContentDescription();
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("He is ready to ring the bell. (((timeText:");
        stringBuilder.append(smallTime);
        stringBuilder.append(", skipUpdateForDemo:");
        stringBuilder.append(z);
        stringBuilder.append(", dateText:");
        stringBuilder.append(dateViewText);
        stringBuilder.append(")))");
        Log.d("QSClockBellTower", stringBuilder.toString());
        for (String str : this.mAudienceList.keySet()) {
            if (!TextUtils.isEmpty(str)) {
                ((TimeAudience) this.mAudienceList.get(str)).notifyTimeChanged(smallTime, contentDescription, z, dateViewText);
            }
        }
    }

    public void dispatchDemoCommand(String str, Bundle bundle) {
        if (!this.mDemoMode && str.equals("enter")) {
            this.mDemoMode = true;
        } else if (this.mDemoMode && str.equals("exit")) {
            this.mDemoMode = false;
            this.mCalendar.setTimeInMillis(System.currentTimeMillis());
            this.mHandler.post(new $$Lambda$QSClockBellTower$7BYoCD_ZD62TbAnrfEFRjqzp19E(this));
        } else if (this.mDemoMode && str.equals(PluginLockStarFaceWidgetManager.TYPE_CLOCK)) {
            String string = bundle.getString("millis");
            String string2 = bundle.getString("hhmm");
            if (string != null) {
                this.mCalendar.setTimeInMillis(Long.parseLong(string));
            } else if (string2 != null && string2.length() == 4) {
                int parseInt = Integer.parseInt(string2.substring(0, 2));
                int parseInt2 = Integer.parseInt(string2.substring(2));
                if (DateFormat.is24HourFormat(this.mContext, KeyguardUpdateMonitor.getCurrentUser())) {
                    this.mCalendar.set(11, parseInt);
                } else {
                    this.mCalendar.set(10, parseInt);
                }
                this.mCalendar.set(12, parseInt2);
            }
            this.mHandler.post(new $$Lambda$QSClockBellTower$oKzHctszh30j50_txp0egvHVz84(this));
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
        return this.mContentDescriptionFormat.format(this.mCalendar.getTime());
    }

    /* access modifiers changed from: protected */
    public String getDateViewText() {
        if (TextUtils.isEmpty(this.mDateStringFormat)) {
            this.mDateStringPattern = this.mContext.getString(2131889169);
            try {
                this.mDateStringFormat = DateFormat.getBestDateTimePattern(Locale.getDefault(), this.mDateStringPattern).trim();
            } catch (ExceptionInInitializerError e) {
                this.mDateStringFormat = null;
                return "";
            }
        }
        this.mCurrentDate.setTime(System.currentTimeMillis());
        String charSequence = DateFormat.format(this.mDateStringFormat, this.mCurrentDate).toString();
        if (Rune.QPANEL_SUPPORT_SUPPORT_PERSIAN_CALENDAR) {
            StringBuilder stringBuilder = new StringBuilder(charSequence);
            stringBuilder.append(getPersianCalendar());
            charSequence = stringBuilder.toString();
        }
        return charSequence;
    }

    public String getPersianCalendar() {
        int i;
        int i2;
        int i3;
        int i4;
        String stringBuilder;
        String str;
        Calendar instance = Calendar.getInstance();
        instance.setTimeInMillis(System.currentTimeMillis());
        Calendar instance2 = Calendar.getInstance();
        Calendar instance3 = Calendar.getInstance();
        Calendar instance4 = Calendar.getInstance();
        Calendar instance5 = Calendar.getInstance();
        instance2.set(2029, 2, 19);
        instance3.set(2030, 2, 20);
        instance4.set(2033, 2, 19);
        instance5.set(PluginLockStar.VERSION, 2, 20);
        Object obj = null;
        if ((instance.after(instance2) && instance.before(instance3)) || (instance.after(instance4) && instance.before(instance5))) {
            instance.add(5, 1);
            obj = 1;
        }
        Calendar instance6 = Calendar.getInstance();
        instance6.setTimeInMillis(instance.getTimeInMillis());
        int i5 = instance6.get(1) + 1900;
        int i6 = instance6.get(2) + 1;
        int i7 = instance6.get(5);
        r14 = new int[12];
        int[] iArr = new int[]{0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334};
        iArr[0] = 0;
        iArr[1] = 31;
        iArr[2] = 60;
        iArr[3] = 91;
        iArr[4] = 121;
        iArr[5] = 152;
        iArr[6] = 182;
        iArr[7] = 213;
        iArr[8] = 244;
        iArr[9] = 274;
        iArr[10] = 305;
        iArr[11] = 335;
        if (i5 % 4 != 0) {
            i = r14[i6 - 1] + i7;
            if (i > 79) {
                i -= 79;
                if (i <= 186) {
                    if (i % 31 != 0) {
                        i2 = (i / 31) + 1;
                        i %= 31;
                    } else {
                        i2 = i / 31;
                        i = 31;
                    }
                    i3 = i5 - 621;
                } else {
                    i -= 186;
                    if (i % 30 != 0) {
                        i2 = (i / 30) + 7;
                        i %= 30;
                    } else {
                        i2 = (i / 30) + 6;
                        i = 30;
                    }
                    i3 = i5 - 621;
                }
                i4 = i3;
                i3 = i2;
            } else {
                i2 = (i5 <= 1996 || i5 % 4 != 1) ? 10 : 11;
                i += i2;
                if (i % 30 != 0) {
                    i3 = (i / 30) + 10;
                    i %= 30;
                } else {
                    i3 = (i / 30) + 9;
                    i = 30;
                }
                i4 = i5 - 622;
            }
        } else {
            i = iArr[i6 - 1] + i7;
            i2 = i5 >= 1996 ? 79 : 80;
            if (i > i2) {
                i -= i2;
                if (i <= 186) {
                    if (i % 31 != 0) {
                        i3 = (i / 31) + 1;
                        i %= 31;
                    } else {
                        i3 = i / 31;
                        i = 31;
                    }
                    i4 = i5 - 621;
                } else {
                    i -= 186;
                    if (i % 30 != 0) {
                        i3 = (i / 30) + 7;
                        i %= 30;
                    } else {
                        i3 = (i / 30) + 6;
                        i = 30;
                    }
                    i4 = i5 - 621;
                }
            } else {
                i += 10;
                if (i % 30 != 0) {
                    i3 = (i / 30) + 10;
                    i %= 30;
                } else {
                    i3 = (i / 30) + 9;
                    i = 30;
                }
                i4 = i5 - 622;
            }
        }
        i2 = i4;
        if (obj == null && ((i5 == 2030 || i5 == PluginLockStar.VERSION) && i6 == 3 && i7 == 20)) {
            i++;
        }
        Calendar calendar = instance;
        StringBuilder stringBuilder2 = new StringBuilder();
        Calendar calendar2 = instance2;
        stringBuilder2.append("getPersianCalendar : year = ");
        stringBuilder2.append(i2);
        stringBuilder2.append(" month = ");
        stringBuilder2.append(i3);
        stringBuilder2.append(" date = ");
        stringBuilder2.append(i);
        Log.d("QSClockBellTower", stringBuilder2.toString());
        String format = String.format(Locale.getDefault(), "%d", new Object[]{Integer.valueOf(i)});
        String str2 = this.mContext.getResources().getStringArray(2130903102)[i3];
        Calendar calendar3 = instance3;
        StringBuilder stringBuilder3;
        if (Locale.getDefault().getLanguage().equals(Locale.ENGLISH.getLanguage())) {
            stringBuilder3 = new StringBuilder();
            stringBuilder3.append(str2);
            stringBuilder3.append(" ");
            stringBuilder3.append(format);
            stringBuilder = stringBuilder3.toString();
        } else if (Locale.getDefault().getLanguage().equals("fa")) {
            stringBuilder3 = new StringBuilder();
            stringBuilder3.append(format);
            stringBuilder3.append(" ");
            stringBuilder3.append(str2);
            stringBuilder = stringBuilder3.toString();
        } else {
            str = format;
            return null;
        }
        StringBuilder stringBuilder4 = new StringBuilder();
        str = format;
        stringBuilder4.append(" (");
        stringBuilder4.append(stringBuilder.toUpperCase());
        stringBuilder4.append(")");
        return stringBuilder4.toString();
    }

    public String getSmallTime() {
        SimpleDateFormat simpleDateFormat;
        boolean is24HourFormat = DateFormat.is24HourFormat(this.mContext, KeyguardUpdateMonitor.getCurrentUser());
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
