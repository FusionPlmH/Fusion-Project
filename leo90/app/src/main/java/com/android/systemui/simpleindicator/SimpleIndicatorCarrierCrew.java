package com.android.systemui.simpleindicator;


public class SimpleIndicatorCarrierCrew {
    private static int CACHED_VALUE_FALSE = -1;
    private static int CACHED_VALUE_RAW = 0;
    private static int CACHED_VALUE_TRUE = 1;
    private int mIsHomeCarrierDisabled = CACHED_VALUE_RAW;
    private int mIsLockCarrierDisabled = CACHED_VALUE_RAW;
    private int mIsPanelCarrierDisabled = CACHED_VALUE_RAW;

    public boolean isHomeCarrierDisabled() {
        return this.mIsHomeCarrierDisabled == CACHED_VALUE_TRUE;
    }

    public boolean isLockCarrierDisabled() {
        return this.mIsLockCarrierDisabled == CACHED_VALUE_TRUE;
    }

    public boolean isPanelCarrierDisabled() {
        return this.mIsPanelCarrierDisabled == CACHED_VALUE_TRUE;
    }

    public void updateAllData(String str, String str2) {

    }
}
