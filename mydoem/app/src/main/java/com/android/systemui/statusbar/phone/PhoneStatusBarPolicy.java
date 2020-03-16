package com.android.systemui.statusbar.phone;

import android.app.AlarmManager;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.util.Log;

import com.android.systemui.statusbar.policy.BluetoothController;

import static com.android.systemui.SystemUIApplication.getContext;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockDetail;
import static com.os.leo.utils.LeoUserSettings.getLeoHeaderTextClockSecond;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarPolicyAlarm;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarPolicyBluetooth;
import static com.os.leo.utils.LeoUserSettings.getLeoStatusBarPolicySound;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarPolicyAlarm;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarPolicyBluetooth;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarPolicySound;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class PhoneStatusBarPolicy  {
    private static final boolean DEBUG = Log.isLoggable("PhoneStatusBarPolicy", 3);

    private NotificationManager mNotificationManager = null;


    private final String mSlotAlarmClock;
    private final String mSlotBluetooth;
    private final String mSlotCast;
    private final String mSlotDataSaver;
    private final String mSlotHeadset;
    private final String mSlotHotspot;
    private final String mSlotLocation;
    private final String mSlotManagedProfile;
    private final String mSlotPowerSaver = "power_saver";
    private final String mSlotRotate;
    private final String mSlotTty;
    private final String mSlotVolume;
    private final String mSlotZen;
    private final Context mContext;
    private final AlarmManager mAlarmManager;

    public PhoneStatusBarPolicy(String mSlotAlarmClock, String mSlotBluetooth, String mSlotCast, String mSlotDataSaver, String mSlotHeadset, String mSlotHotspot, String mSlotLocation, String mSlotManagedProfile, String mSlotRotate, String mSlotTty, String mSlotVolume, String mSlotZen, Context mContext, AlarmManager mAlarmManager, StatusBarIconController mIconController) {
        this.mSlotAlarmClock = mSlotAlarmClock;
        this.mSlotBluetooth = mSlotBluetooth;
        this.mSlotCast = mSlotCast;
        this.mSlotDataSaver = mSlotDataSaver;
        this.mSlotHeadset = mSlotHeadset;
        this.mSlotHotspot = mSlotHotspot;
        this.mSlotLocation = mSlotLocation;
        this.mSlotManagedProfile = mSlotManagedProfile;
        this.mSlotRotate = mSlotRotate;
        this.mSlotTty = mSlotTty;
        this.mSlotVolume = mSlotVolume;
        this.mSlotZen = mSlotZen;
        this.mContext = mContext;
        this.mAlarmManager = mAlarmManager;

        this.mIconController = mIconController;
    }
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {

            ContentResolver contentResolver= getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarPolicyAlarm()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarPolicyBluetooth()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoStatusBarPolicySound()), false, this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateSettings();
        }

    }
    public void initLeo(){
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        updateSettings();
    }

    public void updateSettings() {
        LeoSettings(mContext);
        updateVolumeZenTW();
        updateAlarm();
        updateBluetooth();
    }
    private boolean mCurrentUserSetup;

    private final StatusBarIconController mIconController;

        private void updateAlarm() {


                AlarmManager.AlarmClockInfo nextAlarmClock = this.mAlarmManager.getNextAlarmClock(-2);
                boolean z = nextAlarmClock != null && nextAlarmClock.getTriggerTime() > 0;
                this.mIconController.setIcon(this.mSlotAlarmClock, 2131232219, this.mContext.getString(2131888673));
                StatusBarIconController statusBarIconController = this.mIconController;
                String str = this.mSlotAlarmClock;
                if (!this.mCurrentUserSetup) {
                    z = false;
                }
                if (!setLeoUesrStatusBarPolicyAlarm) {
                    z = false;
                }
                statusBarIconController.setIconVisibility(str, z);


    }
    private final void updateBluetooth() {
        int i = 2131232228;
        CharSequence string = this.mContext.getString(2131886245);
        boolean z = false;
        if (this.mBluetooth != null) {
            z = this.mBluetooth.isBluetoothEnabled();
            if (this.mBluetooth.isBluetoothConnected()) {
                i = 2131232229;
                string = this.mContext.getString(2131886134);
            }
        }
        this.mIconController.setIcon(this.mSlotBluetooth, i, string);
        StatusBarIconController statusBarIconController = this.mIconController;
        String str = this.mSlotBluetooth;
        if (! setLeoUesrStatusBarPolicyBluetooth) {
            z = false;
        }
        statusBarIconController.setIconVisibility(str, z);
    }

    private BluetoothController mBluetooth;
    public void updateVolumeZenTW() {
        boolean z = false;
        int i = 0;
        String str = null;

        if (z && this.mIconController != null) {
            this.mIconController.setIcon(this.mSlotVolume, i, str);
        }
        if (z != this.mVolumeVisible) {
            if (this.mIconController != null) {
                this.mIconController.setIconVisibility(this.mSlotVolume, z);
            }
            this.mVolumeVisible = z;
        }
        StatusBarIconController statusBarIconController = this.mIconController;
        String str3 = this.mSlotVolume;
        boolean z2 = z;
        if (setLeoUesrStatusBarPolicySound) {
            z2 = false;
        }
        statusBarIconController.setIconVisibility(str3, z2);
    }
    private boolean mVolumeVisible;

}
