/*
 * Copyright (C) 2012 - 2015 The MoKee OpenSource Project
 * Copyright (C) 2015 The SudaMod Project 
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.sec.LeoAmber;


import android.content.res.Resources;
import android.icu.util.Calendar;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import java.util.Locale;

import static com.android.fusionleo.global.LeoGlobalValues.mNewline;


public class LeoGlobalLunar {

    private int year;
    private int month;
    private int day;
    private boolean leap;
    private Calendar mCalendar ;
    private String[] chineseNumber;
    private String[] lunarMonthName;
    private SimpleDateFormat chineseDateFormat;

    private final static long[] lunarInfo = new long[] {
            0x04bd8, 0x04ae0, 0x0a570,
            0x054d5, 0x0d260, 0x0d950, 0x16554, 0x056a0, 0x09ad0, 0x055d2,
            0x04ae0, 0x0a5b6, 0x0a4d0, 0x0d250, 0x1d255, 0x0b540, 0x0d6a0,
            0x0ada2, 0x095b0, 0x14977, 0x04970, 0x0a4b0, 0x0b4b5, 0x06a50,
            0x06d40, 0x1ab54, 0x02b60, 0x09570, 0x052f2, 0x04970, 0x06566,
            0x0d4a0, 0x0ea50, 0x06e95, 0x05ad0, 0x02b60, 0x186e3, 0x092e0,
            0x1c8d7, 0x0c950, 0x0d4a0, 0x1d8a6, 0x0b550, 0x056a0, 0x1a5b4,
            0x025d0, 0x092d0, 0x0d2b2, 0x0a950, 0x0b557, 0x06ca0, 0x0b550,
            0x15355, 0x04da0, 0x0a5d0, 0x14573, 0x052d0, 0x0a9a8, 0x0e950,
            0x06aa0, 0x0aea6, 0x0ab50, 0x04b60, 0x0aae4, 0x0a570, 0x05260,
            0x0f263, 0x0d950, 0x05b57, 0x056a0, 0x096d0, 0x04dd5, 0x04ad0,
            0x0a4d0, 0x0d4d4, 0x0d250, 0x0d558, 0x0b540, 0x0b5a0, 0x195a6,
            0x095b0, 0x049b0, 0x0a974, 0x0a4b0, 0x0b27a, 0x06a50, 0x06d40,
            0x0af46, 0x0ab60, 0x09570, 0x04af5, 0x04970, 0x064b0, 0x074a3,
            0x0ea50, 0x06b58, 0x055c0, 0x0ab60, 0x096d5, 0x092e0, 0x0c960,
            0x0d954, 0x0d4a0, 0x0da50, 0x07552, 0x056a0, 0x0abb7, 0x025d0,
            0x092d0, 0x0cab5, 0x0a950, 0x0b4a0, 0x0baa4, 0x0ad50, 0x055d9,
            0x04ba0, 0x0a5b0, 0x15176, 0x052b0, 0x0a930, 0x07954, 0x06aa0,
            0x0ad50, 0x05b52, 0x04b60, 0x0a6e6, 0x0a4e0, 0x0d260, 0x0ea65,
            0x0d530, 0x05aa0, 0x076a3, 0x096d0, 0x04bd7, 0x04ad0, 0x0a4d0,
            0x1d0b6, 0x0d250, 0x0d520, 0x0dd45, 0x0b5a0, 0x056d0, 0x055b2,
            0x049b0, 0x0a577, 0x0a4b0, 0x0aa50, 0x1b255, 0x06d20, 0x0ada0
    };

    private int yearDays(int y) {
        int i, sum = 348;
        for (i = 0x8000; i > 0x8; i >>= 1) {
            if ((lunarInfo[y - 1900] & i) != 0)
                sum += 1;
        }
        return (sum + leapDays(y));
    }

    private int leapDays(int y) {
        if (leapMonth(y) != 0) {
            if ((lunarInfo[y - 1900] & 0x10000) != 0)
                return 30;
            else
                return 29;
        } else
            return 0;
    }

    private int leapMonth(int y) {
        return (int) (lunarInfo[y - 1900] & 0xf);
    }

    private int monthDays(int y, int m) {
        if ((lunarInfo[y - 1900] & (0x10000 >> m)) == 0)
            return 29;
        else
            return 30;
    }

    public String animalsYear() {
        final String[] Animals = Constant.getAnimals();
        return Animals[(year - 4) % 12];
    }


    private String cyclicalm(int num) {
        final String[] Gan = Constant.GAN_CN;
        final String[] Zhi = Constant.ZHI_CN;
        return (Gan[num % 10] + Zhi[num % 12]);
    }

    public String cyclical() {
        int num = year - 1900 + 36;
        return (cyclicalm(num));
    }

    public LeoGlobalLunar(Calendar cal) {
        int yearCyl, monCyl, dayCyl;
        int leapMonth = 0;
        mCalendar = cal;
        chineseNumber = Constant.CHINESE_NUMBER_CN;
        lunarMonthName = Constant.LUNAR_MONTH_NAME_CN;
        String format1 = Constant.STATUS_FORMAT_1_CN;
        chineseDateFormat = new SimpleDateFormat(format1);
        Date baseDate = null;
        try {
            String format2 = Constant.STATUS_FORMAT_2_CN;
            baseDate = chineseDateFormat.parse(format2);
        } catch (ParseException e) {
            e.printStackTrace();
        }
        int offset = (int) ((cal.getTime().getTime() - baseDate.getTime()) / 86400000L);
        dayCyl = offset + 40;
        monCyl = 14;
        int iYear, daysOfYear = 0;
        for (iYear = 1900; iYear < 2050 && offset > 0; iYear++) {
            daysOfYear = yearDays(iYear);
            offset -= daysOfYear;
            monCyl += 12;
        }
        if (offset < 0) {
            offset += daysOfYear;
            iYear--;
            monCyl -= 12;
        }
        year = iYear;
        yearCyl = iYear - 1864;
        leapMonth = leapMonth(iYear);
        leap = false;
        int iMonth, daysOfMonth = 0;
        for (iMonth = 1; iMonth < 13 && offset > 0; iMonth++) {
            if (leapMonth > 0 && iMonth == (leapMonth + 1) && !leap) {
                --iMonth;
                leap = true;
                daysOfMonth = leapDays(year);
            } else
                daysOfMonth = monthDays(year, iMonth);
            offset -= daysOfMonth;
            if (leap && iMonth == (leapMonth + 1))
                leap = false;
            if (!leap)
                monCyl++;
        }
        if (offset == 0 && leapMonth > 0 && iMonth == leapMonth + 1) {
            if (leap) {
                leap = false;
            } else {
                leap = true;
                --iMonth;
                --monCyl;
            }
        }
        if (offset < 0) {
            offset += daysOfMonth;
            --iMonth;
            --monCyl;
        }
        month = iMonth;
        day = offset + 1;
    }

    public String getChinaDayString(int day) {
        String chineseTen[] = Constant.CHINESE_TEN_CN ;
        int n = day % 10 == 0 ? 9 : day % 10 - 1;
        if (day > 30)
            return "";
        else if (day == 10)
            return  Constant.STATUS_CHUSHI_CN;
        else if (day == 20)
            return Constant.STATUS_ERSHI_CN;
        else if (day == 30)
            return Constant.STATUS_SANSHI_CN;
        else
            return chineseTen[day / 10] + chineseNumber[n];
    }
    // 时辰 属相 年 月 日
    public String toLunarChineseZodiacTimeMultiSrting() {
        String year1 = Constant.STATUS_YEAR_CN;
        String run1 =  Constant. getLeap();
        String month1 = Constant.STATUS_MONTH_CN;
        return cyclical()+  animalsYear() + year1 + mNewline +(leap ? run1 : "") + lunarMonthName[month - 1]+
                month1+
                getChinaDayString(day);
    }
    // 干支 属相 年 月 日
    public String toLunarChineseZodiacTimeSrting() {
        String year1 = Constant.STATUS_YEAR_CN;
        String run1 =  Constant. getLeap();
        String month1 = Constant.STATUS_MONTH_CN;
        return cyclical() + animalsYear() + year1 +(leap ? run1 : "") + lunarMonthName[month - 1]+
                month1+
                getChinaDayString(day);
    }
    // 时辰  年月日
    public String toLunarChineseTimeSrting() {
        String year1 = Constant.STATUS_YEAR_CN;
        String run1 =  Constant. getLeap();
        String month1 = Constant.STATUS_MONTH_CN;
        return cyclical() + year1 + (leap ? run1 : "") + lunarMonthName[month - 1]+
                month1+
                getChinaDayString(day);
    }
    //属性 年 月 日
    public String toLunarChineseZodiacSrting() {
        String year1 = Constant.STATUS_YEAR_CN;
        String run1 =  Constant. getLeap();
        String month1 = Constant.STATUS_MONTH_CN;
        return  animalsYear()+  year1 + (leap ? run1 : "") + lunarMonthName[month - 1]+
                month1+
                getChinaDayString(day);
    }

    //月 日
    public String toLunarChineseSrting() {
        String run1 =  Constant. getLeap();
        String month1 = Constant.STATUS_MONTH_CN;
        return (leap ? run1 : "") + lunarMonthName[month - 1]+
                month1+
                getChinaDayString(day);
    }

    public boolean isBigMonth(String lunarFestivalStr) {
        if (monthDays(year, month) == 30) {
            return true;
        } else {
            return false;
        }
    }
    public static class Constant {

        public static final String STATUS_LEAP_CN = "闰";
        public static final String STATUS_LEAP_HK_TW = "閏";
        public static final String STATUS_YEAR_CN= "年";
        public static final String STATUS_MONTH_CN= "月";
        public static final String STATUS_DAY_CN= "日";
        public static final String STATUS_CHUSHI_CN = "初十";
        public static final String STATUS_ERSHI_CN = "二十";
        public static final String STATUS_SANSHI_CN = "三十";
        public static final String STATUS_FORMAT_1_CN = "yyyy年MM月dd日";
        public static final String STATUS_FORMAT_2_CN = "1900年1月31日";
        public static final String[] GAN_CN = {"甲", "乙", "丙", "丁", "戊", "己", "庚", "辛", "壬", "癸"};
        public static final String[] ZHI_CN = {"子", "丑", "寅", "卯", "辰", "巳", "午", "未", "申", "酉", "戌", "亥"};
        public static final String[] CHINESE_NUMBER_CN = {"一", "二", "三", "四", "五", "六", "七", "八", "九", "十", "十一", "十二"};
        public static final String[] CHINESE_TEN_CN = {"初", "十", "廿", "卅"};
        public static final String[] SOLAR_TERM_CN = {"", "小寒", "大寒", "立春", "雨水", "惊蛰", "春分", "清明", "谷雨", "立夏", "小满", "芒种", "夏至", "小暑", "大暑", "立秋", "处暑", "白露", "秋分", "寒露", "霜降", "立冬", "小雪", "大雪", "冬至"};
        public static final String[] LUNAR_MONTH_NAME_CN = {"正", "二", "三", "四", "五", "六", "七", "八", "九", "十", "冬", "腊"};

        public static final String[] ANIMALS_CN = {"鼠", "牛", "虎", "兔", "龙", "蛇", "马", "羊", "猴", "鸡", "狗", "猪"};
        public static final String[] ANIMALS_HK_TW = {"鼠", "牛", "虎", "兔", "龍", "蛇", "馬", "羊", "猴", "雞", "狗", "豬"};

        public static final String[] LUNAR_FESTIVAL_CN = {"腊月廿九 除夕", "腊月三十 除夕", "正月初一 春节", "正月十五 元宵节", "五月初五 端午节", "七月初七 七夕节", "七月十五 中元节", "八月十五 中秋节", "九月初九 重阳节", "腊月初八 腊八节", "腊月廿三 小年"};
        public static final String[] LUNAR_FESTIVAL_HK_TW = {"臘月廿九 除夕", "臘月三十 除夕", "正月初一 春節", "正月十五 元宵節", "五月初五 端午節", "七月初七 七夕節", "七月十五 中元節", "八月十五 中秋節", "九月初九 重陽節", "腊月初八 臘八節", "臘月廿三 小年"};

        public static final String[] HOLIDAY_CN = {"0101 元旦", "0214 情人节", "0308 妇女节", "0312 植树节",
                "0315 消费日", "0401 愚人节", "0413 泼水节", "0501 劳动节", "0504 青年节", "0601 儿童节",
                "0701 建党日", "0801 建军节", "0903 抗战胜利", "0910 教师节", "1001 国庆节", "1031 万圣节",
                "1111 光棍节", "1224 平安夜", "1225 圣诞节"};

        public static final String[] HOLIDAY_HK = {"0101 元旦", "0214 情人節", "0308 婦女節", "0401 愚人節",
                "0501 勞動節", "0701 特區紀念", "0910 教師節", "1001 國慶節", "1031 萬聖節", "1224 平安夜",
                "1225 聖誕節"};

        public static final String[] HOLIDAY_TW = {"0101 元旦", "0214 情人節", "0228 和平紀念", "0308 婦女節",
                "0312 國父逝世", "0314 反侵略日", "0329 先烈紀念", "0401 愚人節", "0404 兒童節", "0501 勞動節",
                "0715 解放紀念", "0808 父親節", "0903 軍人節", "0928 孔子誕辰", "1010 國慶節", "1024 聯合國日", "1025 臺灣光復",
                "1112 國父誕辰", "1031 萬聖節", "1224 平安夜", "1225 聖誕節"};

        public static final String[] SPEC_DAY_CN = {"5,2,0,母亲节", "6,3,0,父亲节", "11,4,4,感恩节"};
        public static final String[] SPEC_DAY_HK = {"5,2,0,母親節", "6,3,0,父親節", "11,4,4,感恩節"};
        public static final String[] SPEC_DAY_TW = {"5,2,0,母親節", "11,4,4,感恩節"};

        public static String[] getAnimals() {
            Locale locale = Resources.getSystem().getConfiguration().locale;
            if (locale.getCountry().equals("CN")) {
                return ANIMALS_CN;
            }
            return ANIMALS_HK_TW;
        }

        public static String[] getLunarFestival() {
            Locale locale = Resources.getSystem().getConfiguration().locale;
            if (locale.getCountry().equals("CN")) {
                return LUNAR_FESTIVAL_CN;
            }
            return LUNAR_FESTIVAL_HK_TW;
        }

        public static String[] getSolarHoliday() {
            Locale locale = Resources.getSystem().getConfiguration().locale;
            if (locale.getCountry().equals("CN")) {
                return HOLIDAY_CN;
            } else if (locale.getCountry().equals("HK")) {
                return HOLIDAY_HK;
            } else if (locale.getCountry().equals("TW")) {
                return HOLIDAY_TW;
            }
            return HOLIDAY_CN;
        }

        public static String[] getSpecday() {
            Locale locale = Resources.getSystem().getConfiguration().locale;
            if (locale.getCountry().equals("CN")) {
                return SPEC_DAY_CN;
            } else if (locale.getCountry().equals("HK")) {
                return SPEC_DAY_HK;
            } else if (locale.getCountry().equals("TW")) {
                return SPEC_DAY_TW;
            }
            return SPEC_DAY_CN;
        }

        public static String getLeap(){
            Locale locale = Resources.getSystem().getConfiguration().locale;
            if (locale.getCountry().equals("CN")) {
                return STATUS_LEAP_CN;
            }
            return STATUS_LEAP_HK_TW;
        }

    }
    public static final String[] ConstellationArray = { "水瓶座", "双鱼座", "白羊座",
            "金牛座", "双子座", "巨蟹座", "狮子座", "处女座", "天秤座", "天蝎座", "射手座", "魔羯座" };

    public static final int[] ConstellationEdgeDay = { 20, 19, 21, 21, 21, 22,
            23, 23, 23, 23, 22, 22 };

    public static String ConstellationString(Calendar time) {
        int month = time.get(Calendar.MONTH);
        int day = time.get(Calendar.DAY_OF_MONTH);
        if (day < ConstellationEdgeDay[month]) {
            month = month - 1;
        }
        if (month >= 0) {
            return ConstellationArray[month];
        }
        // default to return 魔羯
        return ConstellationArray[11];
    }

}