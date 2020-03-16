package com.samsung.android.calendar.secfeature;

import android.os.Build.VERSION;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter;
import java.text.DateFormatSymbols;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Locale;
import java.util.Locale.Category;
import java.util.TimeZone;

public class DateToStringConvertor {
    protected static final int DAY = 3;
    protected static final int MONTH = 2;
    protected static final int STRING_END = -2;
    protected static final char[] TOKENS = new char[]{'E', 'y', 'M', 'd'};
    protected static final int TOKENS_LEN = TOKENS.length;
    protected static final int UNDEFINED = -1;
    protected static final int WEEK_DAY = 0;
    protected static final int YEAR = 1;

    public static String convert(String dateFormat, SolarLunarConverter converter, long timeMillis, boolean lunar, boolean numericMonth, String lunarAttr, String leapAttr) {
        Locale defaultLocale;
        if (VERSION.SDK_INT >= 24) {
            defaultLocale = Locale.getDefault(Category.FORMAT);
        } else {
            defaultLocale = Locale.getDefault();
        }
        return convert(dateFormat, converter, defaultLocale, timeMillis, lunar, numericMonth, lunarAttr, leapAttr);
    }

    public static String convert(String dateFormat, SolarLunarConverter converter, @NonNull Locale locale, long timeMillis, boolean lunar, boolean numericMonth, String lunarAttr, String leapAttr) {
        StringBuilder buffer = new StringBuilder();
        StringBuilder result = new StringBuilder();
        if (TextUtils.isEmpty(dateFormat) || converter == null) {
            return result.toString();
        }
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(timeMillis);
        int year = calendar.get(1);
        int month = calendar.get(2);
        int day = calendar.get(5);
        boolean isLeapMonth = false;
        if (lunar) {
            converter.convertSolarToLunar(year, month, day);
            year = converter.getYear();
            month = converter.getMonth();
            day = converter.getDay();
            isLeapMonth = converter.isLeapMonth();
        }
        int len = dateFormat.length();
        int prevCharClass = compareChar(dateFormat.charAt(0));
        buffer.append(dateFormat.charAt(0));
        for (int currPos = 1; currPos <= len; currPos++) {
            char currChar;
            int charClass;
            if (currPos < len) {
                currChar = dateFormat.charAt(currPos);
                charClass = compareChar(currChar);
            } else {
                currChar = 0;
                charClass = STRING_END;
            }
            if (charClass != prevCharClass) {
                switch (prevCharClass) {
                    case -1:
                        result.append(buffer);
                        break;
                    case 0:
                        result.append(getWeekDay(locale, buffer.toString(), timeMillis));
                        break;
                    case 1:
                        result.append(getYear(buffer.toString(), year));
                        break;
                    case 2:
                        result.append(getMonth(locale, buffer.toString(), month, numericMonth));
                        break;
                    case 3:
                        result.append(getDay(buffer.toString(), day));
                        break;
                }
                buffer.delete(0, buffer.length());
                prevCharClass = charClass;
            }
            buffer.append(currChar);
        }
        result.append(getLunarAttr(lunar, isLeapMonth, lunarAttr, leapAttr));
        return result.toString();
    }

    private static String getLunarAttr(boolean lunar, boolean leap, String lunarAttr, String leapAttr) {
        String lunarDateAttribute = BuildConfig.FLAVOR;
        if (!lunar || lunarAttr == null || leapAttr == null) {
            return lunarDateAttribute;
        }
        if (leap) {
            return " (" + leapAttr + ")";
        }
        return " (" + lunarAttr + ")";
    }

    private static String getWeekDay(@NonNull Locale locale, @NonNull String weekDayFormat, long timeMillis) {
        Calendar calendar = Calendar.getInstance(TimeZone.getTimeZone("UTC"));
        calendar.setTimeInMillis(timeMillis);
        return new SimpleDateFormat(weekDayFormat, locale).format(calendar.getTime());
    }

    private static String getYear(String yearFormat, int year) {
        String result = BuildConfig.FLAVOR + year;
        if (yearFormat.length() == 2 && result.length() == 4) {
            return result.substring(3, 4);
        }
        return result;
    }

    private static String getMonth(@NonNull Locale locale, String monthFormat, int month, boolean isNumeric) {
        String result;
        int len = monthFormat.length();
        if (len == 2) {
            isNumeric = true;
        }
        if (isNumeric) {
            result = BuildConfig.FLAVOR + (month + 1);
        } else {
            DateFormatSymbols symbols = new DateFormatSymbols(locale);
            String[] monthNamesShr = symbols.getShortMonths();
            String[] monthNamesLng = symbols.getMonths();
            if (len == 3) {
                result = monthNamesShr[month];
            } else {
                result = monthNamesLng[month];
            }
        }
        if (isChinese()) {
            if (isNumeric && result.length() == 1) {
                return "0" + result;
            }
            return result;
        } else if (result.length() == 1) {
            return "0" + result;
        } else {
            return result;
        }
    }

    private static String getDay(String dayFormat, int day) {
        String result = BuildConfig.FLAVOR + day;
        if (dayFormat.length() == 2 && result.length() == 1) {
            return "0" + result;
        }
        return result;
    }

    private static int compareChar(char toCompare) {
        for (int t = 0; t < TOKENS_LEN; t++) {
            if (TOKENS[t] == toCompare) {
                return t;
            }
        }
        return -1;
    }

    private static boolean isChinese() {
        return Locale.getDefault().getLanguage().equals(Locale.CHINESE.getLanguage());
    }
}
