package com.android.systemui.servicebox.pages.clock;

import android.content.Context;
import android.icu.util.Calendar;
import android.icu.util.ULocale;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.util.Log;


import com.dome.leo.R;

import java.util.Date;
import java.util.Locale;

@RequiresApi(api = Build.VERSION_CODES.N)
public class PersianCalendarUtil {
    private String[] mMonthNames;
    private final Calendar mPersianCalendar = Calendar.getInstance(new ULocale("fa_IR@calendar=persian"));

    public PersianCalendarUtil(Context context) {
        this.mMonthNames = context.getResources().getStringArray(R.array.month_name);
    }

    public String getDateInPersianCalendar() {
        Date date = Calendar.getInstance().getTime();
        this.mPersianCalendar.setTime(date);
        int m = this.mPersianCalendar.get(2);
        int d = this.mPersianCalendar.get(5);
        String result = " ";
        if (this.mMonthNames.length > 0) {
            String day = String.format(Locale.getDefault(), "%d", new Object[]{Integer.valueOf(d)});
            String curLanguage = "";
            Locale locale = Locale.getDefault();
            if (locale != null) {
                curLanguage = locale.getLanguage();
            }
            if (curLanguage == null) {
                return result;
            }
            if (curLanguage.equals(Locale.ENGLISH.getLanguage())) {
                result = " (" + this.mMonthNames[m] + " " + day + ")";
            } else if ("fa".equals(curLanguage)) {
                result = " (" + day + " " + this.mMonthNames[m] + ")";
            }
        }
        Log.v("KeyguardClockPage/fa_IR", "date(" + date + ") in fa_IR: " + result);
        return result;
    }
}
