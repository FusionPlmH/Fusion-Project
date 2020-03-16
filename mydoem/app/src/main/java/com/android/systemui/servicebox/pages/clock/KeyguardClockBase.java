package com.android.systemui.servicebox.pages.clock;

public interface KeyguardClockBase {
    void changeHourFormat();

    String getClockCacheKey();

    void refreshTime(String str, String str2, String str3);

    void setClockCacheKey(String str);

    void setClockVisibility(int i);

    void setCoverState(boolean z);

    void setDateVisibility(int i);
}
