package com.samsung.android.uniform.utils;

import java.util.Locale;

public class LocaleUtils {
    private static String getDefaultLanguage() {
        return Locale.getDefault().getLanguage();
    }

    private static String getDefaultCountry() {
        return Locale.getDefault().getCountry();
    }

    public static boolean isKorean() {
        return getDefaultLanguage().equals(Locale.KOREA.getLanguage());
    }

    public static boolean isChina() {
        return getDefaultLanguage().equals(Locale.CHINA.getLanguage());
    }

    public static boolean isChinese() {
        return getDefaultLanguage().equals(Locale.CHINESE.getLanguage());
    }

    public static boolean isSimplifiedChinese() {
        return getDefaultLanguage().equals(Locale.SIMPLIFIED_CHINESE.getLanguage()) && getDefaultCountry().equals(Locale.SIMPLIFIED_CHINESE.getCountry());
    }

    public static boolean isJapanese() {
        return getDefaultLanguage().equals(Locale.JAPAN.getLanguage());
    }

    public static boolean isEnglish() {
        return getDefaultLanguage().equals(Locale.ENGLISH.getLanguage());
    }

    public static boolean isUSEnglish() {
        return Locale.getDefault().toString().equals(Locale.US.toString());
    }

    public static boolean isFinnish() {
        return "fi".equals(getDefaultLanguage());
    }

    public static boolean isDanish() {
        return "da".equals(getDefaultLanguage());
    }

    public static boolean isArabic() {
        return "ar".equals(getDefaultLanguage());
    }

    public static boolean isNorwegian() {
        return "nb".equals(getDefaultLanguage());
    }

    public static boolean isSwedish() {
        return "sv".equals(getDefaultLanguage());
    }

    public static boolean isGerman() {
        return "de".equals(getDefaultLanguage());
    }

    public static boolean isFarsi() {
        return "fa".equals(getDefaultLanguage());
    }

    public static boolean isHebrew() {
        return "iw".equals(getDefaultLanguage());
    }

    public static boolean isThai() {
        return "th".equals(getDefaultLanguage());
    }

    public static boolean isKannada() {
        return "kn".equals(getDefaultLanguage());
    }

    public static boolean isMalayalam() {
        return "ml".equals(getDefaultLanguage());
    }

    public static boolean isMalay() {
        return "ms".equals(getDefaultLanguage());
    }

    public static boolean isCambodian() {
        return "km".equals(getDefaultLanguage());
    }

    public static boolean isVietnamese() {
        return "vi".equals(getDefaultLanguage());
    }

    public static boolean isBurmese() {
        return "my".equals(getDefaultLanguage());
    }

    public static boolean isGreek() {
        return "el".equals(getDefaultLanguage());
    }

    public static boolean isUrdu() {
        return "ur".equals(getDefaultLanguage());
    }

    public static boolean isPersian() {
        return "fa".equals(getDefaultLanguage());
    }

    public static boolean isTamil() {
        return "ta".equals(getDefaultLanguage());
    }

    public static boolean isRTLFromFirstChar(char firstChar) {
        switch (Character.getDirectionality(firstChar)) {
            case (byte) 1:
            case (byte) 2:
                return true;
            default:
                return false;
        }
    }

    public static boolean isArabicFromFirstChar(char firstChar) {
        switch (Character.getDirectionality(firstChar)) {
            case (byte) 2:
            case (byte) 6:
                return true;
            default:
                return false;
        }
    }
}
