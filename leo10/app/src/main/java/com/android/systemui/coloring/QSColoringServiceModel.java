package com.android.systemui.coloring;


public class QSColoringServiceModel {
    public boolean mNotificationColoringEnabled;
    public int mQSColoringAppVersion;
    public float mQSColoringBlurAmount;
    public boolean mQSColoringBlurEffectEnabled;
    public float mQSColoringDimAmount;
    public boolean mQSColoringDimEffectEnabled;
    public boolean mQSColoringEnabled;

    public void readAllResources() {

    }

    public void resetAllResources() {
        this.mQSColoringEnabled = false;
        this.mQSColoringBlurEffectEnabled = true;
        this.mQSColoringDimEffectEnabled = true;
        this.mQSColoringBlurAmount = 0.0f;
        this.mQSColoringDimAmount = 0.0f;
        this.mNotificationColoringEnabled = false;
    }
}
