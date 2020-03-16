package com.samsung.android.weather.ui.common.util;

import com.samsung.android.weather.util.SLog;
import java.util.Locale;

public class WeatherLocale {
    private WeatherLocale() {
    }

    public static boolean compareLanguage(Locale locale, String... strArr) {
        if (locale == null || strArr == null || strArr.length == 0) {
            SLog.e("", " * error : invalid argument");
            return false;
        }
        for (String locale2 : strArr) {
            if (locale.getLanguage().toLowerCase().equals(new Locale(locale2).getLanguage().toLowerCase())) {
                return true;
            }
        }
        return false;
    }

    public static boolean isArabic(Locale locale) {
        return compareLanguage(locale, "ar");
    }

    public static boolean isBengali(Locale locale) {
        return compareLanguage(locale, "bn");
    }

    public static boolean isChinese(Locale locale) {
        return compareLanguage(locale, "zh");
    }

    public static boolean isCountDependentChar(Locale locale) {
        return isHindi(locale) || isThai(locale) || isGujarati(locale);
    }

    public static boolean isDateFormatDMPattern(Locale locale) {
        return isFinnish(locale) || isJapanese(locale);
    }

    public static boolean isDateFormatEEEEPattern(Locale locale) {
        return compareLanguage(locale, "ko", "en", "zh", "pt", "es");
    }

    public static boolean isDateFormatMMMPattern(Locale locale) {
        return isPortuguese(locale) || isSlovak(locale) || isSerbian(locale);
    }

    public static boolean isEnglish(Locale locale) {
        return compareLanguage(locale, "en");
    }

    public static boolean isFarsi(Locale locale) {
        return compareLanguage(locale, "fa");
    }

    public static boolean isFinnish(Locale locale) {
        return compareLanguage(locale, "fi");
    }

    public static boolean isGeorgian(Locale locale) {
        return compareLanguage(locale, "ka");
    }

    public static boolean isGujarati(Locale locale) {
        return compareLanguage(locale, "gu");
    }

    public static boolean isHebrew(Locale locale) {
        return compareLanguage(locale, "iw");
    }

    public static boolean isHindi(Locale locale) {
        return compareLanguage(locale, "hi");
    }

    public static boolean isJapanese(Locale locale) {
        return compareLanguage(locale, "ja");
    }

    public static boolean isKannada(Locale locale) {
        return compareLanguage(locale, "kn");
    }

    public static boolean isKorean(Locale locale) {
        return compareLanguage(locale, "ko");
    }

    public static boolean isMarathi(Locale locale) {
        return compareLanguage(locale, "mr");
    }

    public static boolean isPanjabi(Locale locale) {
        return compareLanguage(locale, "pa");
    }

    public static boolean isPortuguese(Locale locale) {
        return compareLanguage(locale, "pt");
    }

    public static boolean isRTL(Locale locale) {
        return isArabic(locale) || isTurkish(locale) || isHebrew(locale) || isFarsi(locale) || isUrdu(locale);
    }

    public static boolean isRussian(Locale locale) {
        return compareLanguage(locale, "ru");
    }

    public static boolean isSerbian(Locale locale) {
        return compareLanguage(locale, "sr");
    }

    public static boolean isSlovak(Locale locale) {
        return compareLanguage(locale, "sk");
    }

    public static boolean isTamil(Locale locale) {
        return compareLanguage(locale, "ta");
    }

    public static boolean isTelugu(Locale locale) {
        return compareLanguage(locale, "te");
    }

    public static boolean isThai(Locale locale) {
        return compareLanguage(locale, "th");
    }

    public static boolean isTurkish(Locale locale) {
        return compareLanguage(locale, "tr");
    }

    public static boolean isUrdu(Locale locale) {
        return compareLanguage(locale, "ur");
    }

    public static boolean nonHighlightLanguage(Locale locale) {
        return isArabic(locale) || isTelugu(locale) || isKannada(locale) || isBengali(locale) || isTamil(locale) || isMarathi(locale) || isPanjabi(locale);
    }
}
