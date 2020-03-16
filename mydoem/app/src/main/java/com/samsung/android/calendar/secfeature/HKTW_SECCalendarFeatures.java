package com.samsung.android.calendar.secfeature;

import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarConverter;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTables;
import com.samsung.android.calendar.secfeature.lunarcalendar.SolarLunarTablesCHN;

public class HKTW_SECCalendarFeatures extends SECCalendarFeatures {
    public int getLocale() {
        return 4;
    }

    public SolarLunarConverter getSolarLunarConverter() {
        return new SolarLunarConverter(new SolarLunarTablesCHN());
    }

    public SolarLunarTables getSolarLunarTables() {
        return new SolarLunarTablesCHN();
    }

    public boolean isLunarCalendarSupported() {
        return true;
    }
}
