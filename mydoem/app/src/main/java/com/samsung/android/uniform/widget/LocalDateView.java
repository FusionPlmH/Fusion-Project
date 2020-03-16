package com.samsung.android.uniform.widget;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.text.TextUtils;
import android.util.AttributeSet;

import com.dome.leo.R;
import com.samsung.android.calendar.secfeature.SECCalendarFeatures;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter;

import com.samsung.android.uniform.feature.Rune;
import com.samsung.android.uniform.utils.ACLog;
import com.samsung.android.uniform.utils.Constants;
import com.samsung.android.uniform.utils.LocaleUtils;
import com.samsung.android.uniform.utils.calendar.Time;
import java.util.Calendar;
import java.util.Locale;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;

import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarColor;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarFont;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarMultiSize;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarSingle;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarSingleSize;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarStringMulti;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarStringSingle;
import static com.os.leo.utils.LeoUserSettings.getLeoCarrierStatusBarStyle;

import static com.os.leo.utils.LeoUserString.getLeoRomLunarStyle;
import static com.os.leo.utils.LeoUserString.getSymbol;
import static com.os.leo.utils.LeoUtils.getLeoUri;
import static com.os.leo.utils.Lunar.ConstellationString;

public class LocalDateView extends MaxLargeTextView {
    private static final String TAG = LocalDateView.class.getSimpleName();
    public static final int TYPE_CALENDAR = 1;
    public static final int TYPE_DEFAULT = 0;
    private static SolarLunarConverter sSolarLunarConverter = null;
    private int mType;

    public LocalDateView(Context context) {
        this(context, null);
    }

    public LocalDateView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public LocalDateView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mType = 0;
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        updateLocaleDate();
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
    }

    private LeoRomObserver mLeoRomObserver;
    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
        public  ContentResolver contentResolver ;
        void observe() {
            contentResolver= getContext().getContentResolver();


        }

        @Override
        public void onChange(boolean selfChange) {
            updateLocaleDate();
        }


    }
    public boolean updateLocaleDate() {
        if (Rune.SUPPORT_PERSIAN_CALENDAR) {
            String persianCalendar = getPersianCalendar();
            if (!TextUtils.isEmpty(persianCalendar)) {
                setText(persianCalendar.toUpperCase());
                if (this.mType == 1) {
                    setText(persianCalendar.toUpperCase());
                } else {
                    setText("(" + persianCalendar.toUpperCase() + ")");
                }
                setVisibility(0);
                return true;
            }
        }
        if (Rune.SUPPORT_LUNAR_IN_CHINA && LocaleUtils.isChinese()) {
         String lunarCalendarInChina = setChineseLunar(getContext());
            if (!TextUtils.isEmpty( lunarCalendarInChina)) {
               // setText(lunarCalendarInChina.toUpperCase());
                if (this.mType == 1) {
                //    setText(lunarCalendarInChina);
                } else {
                    //setText("" + setChineseLunar()+ "");
                }
                setVisibility(0);
                return true;
            }
        }
        setVisibility(8);
        return false;
    }

    private String setChineseLunar(Context c) {
        LeoSettings(c);
        String lunar="";


        return lunar;
    }
    public void setType(int type) {
        ACLog.d(TAG, "setType() " + type);
        this.mType = type;
    }

    private String getPersianCalendar() {
        int date;
        int month;
        int year;
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(System.currentTimeMillis());
        Calendar adjustPrimaryCalendarStart = Calendar.getInstance();
        Calendar adjustPrimaryCalendarEnd = Calendar.getInstance();
        Calendar adjustSecondaryCalendarStart = Calendar.getInstance();
        Calendar adjustSecondaryCalendarEnd = Calendar.getInstance();
        adjustPrimaryCalendarStart.set(2029, 2, 19);
        adjustPrimaryCalendarEnd.set(2030, 2, 20);
        adjustSecondaryCalendarStart.set(2033, 2, 19);
        adjustSecondaryCalendarEnd.set(2034, 2, 20);
        boolean isFakeCalendar = false;
        if ((calendar.after(adjustPrimaryCalendarStart) && calendar.before(adjustPrimaryCalendarEnd)) || (calendar.after(adjustSecondaryCalendarStart) && calendar.before(adjustSecondaryCalendarEnd))) {
            calendar.add(5, 1);
            isFakeCalendar = true;
        }
        Calendar today = Calendar.getInstance();
        today.setTimeInMillis(calendar.getTimeInMillis());
        int todayYear = today.get(1) + 1900;
        int todayMonth = today.get(2) + 1;
        int todayDate = today.get(5);
        int[] cal1 = new int[12];
        int[] cal2 = new int[]{0, 31, 59, 90, 120, 151, 181, 212, 243, 273, 304, 334};
        cal2[0] = 0;
        cal2[1] = 31;
        cal2[2] = 60;
        cal2[3] = 91;
        cal2[4] = 121;
        cal2[5] = 152;
        cal2[6] = 182;
        cal2[7] = 213;
        cal2[8] = 244;
        cal2[9] = 274;
        cal2[10] = 305;
        cal2[11] = 335;
        int ld;
        if (todayYear % 4 != 0) {
            date = cal1[todayMonth - 1] + todayDate;
            if (date > 79) {
                date -= 79;
                if (date <= 186) {
                    switch (date % 31) {
                        case 0:
                            month = date / 31;
                            date = 31;
                            break;
                        default:
                            month = (date / 31) + 1;
                            date %= 31;
                            break;
                    }
                    year = todayYear - 621;
                } else {
                    date -= 186;
                    switch (date % 30) {
                        case 0:
                            month = (date / 30) + 6;
                            date = 30;
                            break;
                        default:
                            month = (date / 30) + 7;
                            date %= 30;
                            break;
                    }
                    year = todayYear - 621;
                }
            } else {
                if (todayYear <= 1996 || todayYear % 4 != 1) {
                    ld = 10;
                } else {
                    ld = 11;
                }
                date += ld;
                switch (date % 30) {
                    case 0:
                        month = (date / 30) + 9;
                        date = 30;
                        break;
                    default:
                        month = (date / 30) + 10;
                        date %= 30;
                        break;
                }
                year = todayYear - 622;
            }
        } else {
            date = cal2[todayMonth - 1] + todayDate;
            if (todayYear >= 1996) {
                ld = 79;
            } else {
                ld = 80;
            }
            if (date > ld) {
                date -= ld;
                if (date <= 186) {
                    switch (date % 31) {
                        case 0:
                            month = date / 31;
                            date = 31;
                            break;
                        default:
                            month = (date / 31) + 1;
                            date %= 31;
                            break;
                    }
                    year = todayYear - 621;
                } else {
                    date -= 186;
                    switch (date % 30) {
                        case 0:
                            month = (date / 30) + 6;
                            date = 30;
                            break;
                        default:
                            month = (date / 30) + 7;
                            date %= 30;
                            break;
                    }
                    year = todayYear - 621;
                }
            } else {
                date += 10;
                switch (date % 30) {
                    case 0:
                        month = (date / 30) + 9;
                        date = 30;
                        break;
                    default:
                        month = (date / 30) + 10;
                        date %= 30;
                        break;
                }
                year = todayYear - 622;
            }
        }
        if (!isFakeCalendar && ((todayYear == 2030 || todayYear == 2034) && todayMonth == 3 && todayDate == 20)) {
            date++;
        }
        ACLog.d(TAG, "getPersianCalendar : year = " + year + " month = " + month + " date = " + date);
        String Day = String.format(Locale.getDefault(), "%d", new Object[]{Integer.valueOf(date)});
        if (LocaleUtils.isEnglish()) {
            return Constants.PERSIAN_CALENDAR_ENG[month] + " " + Day;
        } else if (!LocaleUtils.isPersian()) {
            return null;
        } else {
            return Day + " " + Constants.PERSIAN_CALENDAR_PER[month];
        }
    }

    private String getLunarCalendarInChina(Context context) {
        if (sSolarLunarConverter == null) {
            sSolarLunarConverter = SECCalendarFeatures.getInstance().getSolarLunarConverter();
            if (sSolarLunarConverter == null) {
                return "";
            }
        }
        Time time = new Time();
        time.set(Calendar.getInstance().getTimeInMillis());
        sSolarLunarConverter.convertSolarToLunar(time.getYear(), time.getMonth(), time.getMonthDay());
        String[] months = context.getResources().getStringArray(R.array.common_LunarMonth);
        String[] days = context.getResources().getStringArray(R.array.common_LunarDay);
        int convertMonth = sSolarLunarConverter.getMonth();
        int convertDay = sSolarLunarConverter.getDay() - 1;
        ACLog.d(TAG, "Lunar month and day : " + convertMonth + ", " + convertDay);
        if (convertMonth < 0 || convertMonth >= months.length || convertDay < 0 || convertDay >= days.length) {
            ACLog.e(TAG, "getLunarCalendarInChina, array out of bound month = " + months.length + ", days = " + days.length);
            return "";
        }
        return (sSolarLunarConverter.isLeapMonth() ? context.getResources().getString(R.string.common_date_leap_month) + months[convertMonth] : months[convertMonth]) + days[convertDay];
    }
}
