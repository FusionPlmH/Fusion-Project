package com.android.server;

import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.hardware.Sensor;
import android.hardware.SensorEvent;
import android.hardware.SensorEventListener;
import android.hardware.SensorManager;
import android.hardware.TriggerEvent;
import android.hardware.TriggerEventListener;
import android.net.Uri;
import android.os.Handler;
import android.os.PowerManager;
import android.os.PowerManager.WakeLock;
import android.os.SystemClock;
import android.os.SystemProperties;
import android.os.SystemService;
import android.os.Trace;
import android.provider.Settings.Secure;
import android.util.MutableBoolean;
import android.util.Slog;
import android.view.KeyEvent;
import android.view.WindowManagerInternal;

import androidx.annotation.VisibleForTesting;

import com.android.internal.logging.MetricsLogger;
import com.android.server.statusbar.StatusBarManagerInternal;


public class GestureLauncherService extends SystemService {
    @VisibleForTesting
    static final long CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS = 300;
    private static final boolean DBG = false;
    private static final boolean DBG_CAMERA_LIFT = false;
    @VisibleForTesting
    static final long POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS = 500;
    private static final String TAG = "GestureLauncherService";
    private boolean mCameraDoubleTapPowerEnabled;
    /* access modifiers changed from: private */
    public long mCameraGestureLastEventTime;
    /* access modifiers changed from: private */
    public long mCameraGestureOnTimeMs;
    /* access modifiers changed from: private */
    public long mCameraGestureSensor1LastOnTimeMs;
    /* access modifiers changed from: private */
    public long mCameraGestureSensor2LastOnTimeMs;
    /* access modifiers changed from: private */
    public int mCameraLaunchLastEventExtra;
    /* access modifiers changed from: private */
    public boolean mCameraLaunchRegistered;
    /* access modifiers changed from: private */
    public Sensor mCameraLaunchSensor;
    /* access modifiers changed from: private */
    public boolean mCameraLiftRegistered;
    /* access modifiers changed from: private|final */
    public final CameraLiftTriggerEventListener mCameraLiftTriggerListener;
    /* access modifiers changed from: private */
    public Sensor mCameraLiftTriggerSensor;
    /* access modifiers changed from: private */
    public Context mContext;
    private final GestureEventListener mGestureListener;
    private long mLastPowerDown;
    /* access modifiers changed from: private|final */
    public final MetricsLogger mMetricsLogger;
    private int mPowerButtonConsecutiveTaps;
    /* access modifiers changed from: private */
    public PowerManager mPowerManager;
    /* access modifiers changed from: private|final */
    public final ContentObserver mSettingObserver;
    /* access modifiers changed from: private */
    public int mUserId;
    private final BroadcastReceiver mUserReceiver;
    private WakeLock mWakeLock;
    /* access modifiers changed from: private */
    public WindowManagerInternal mWindowManagerInternal;

    private final class CameraLiftTriggerEventListener extends TriggerEventListener {
        private CameraLiftTriggerEventListener(GestureLauncherService gestureLauncherService, Object o) {
        }




        public void onTrigger(TriggerEvent triggerEvent) {
            if (GestureLauncherService.this.mCameraLiftRegistered && triggerEvent.sensor == GestureLauncherService.this.mCameraLiftTriggerSensor) {
                Resources resources = GestureLauncherService.this.mContext.getResources();
                SensorManager sensorManager = (SensorManager) GestureLauncherService.this.mContext.getSystemService("sensor");
               // boolean isKeyguardShowingAndNotOccluded = GestureLauncherService.this.mWindowManagerInternal.isKeyguardShowingAndNotOccluded();
                boolean isInteractive = GestureLauncherService.this.mPowerManager.isInteractive();

                GestureLauncherService gestureLauncherService = GestureLauncherService.this;
                gestureLauncherService.mCameraLiftRegistered = sensorManager.requestTriggerSensor(gestureLauncherService.mCameraLiftTriggerListener, GestureLauncherService.this.mCameraLiftTriggerSensor);
            }
        }
    }

    private final class GestureEventListener implements SensorEventListener {
        private GestureEventListener(GestureLauncherService gestureLauncherService, Object o) {
        }



        private void trackCameraLaunchEvent(SensorEvent sensorEvent) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long access$1000 = elapsedRealtime - GestureLauncherService.this.mCameraGestureOnTimeMs;
            float[] fArr = sensorEvent.values;
            long j = (long) (((double) access$1000) * ((double) fArr[0]));
            long j2 = (long) (((double) access$1000) * ((double) fArr[1]));
            int i = (int) fArr[2];
            long access$1100 = elapsedRealtime - GestureLauncherService.this.mCameraGestureLastEventTime;
            long access$1200 = j - GestureLauncherService.this.mCameraGestureSensor1LastOnTimeMs;
            long access$1300 = j2 - GestureLauncherService.this.mCameraGestureSensor2LastOnTimeMs;
            int access$1400 = i - GestureLauncherService.this.mCameraLaunchLastEventExtra;
            if (access$1100 >= 0 && access$1200 >= 0 && access$1300 >= 0) {

                GestureLauncherService.this.mCameraGestureLastEventTime = elapsedRealtime;
                GestureLauncherService.this.mCameraGestureSensor1LastOnTimeMs = j;
                GestureLauncherService.this.mCameraGestureSensor2LastOnTimeMs = j2;
                GestureLauncherService.this.mCameraLaunchLastEventExtra = i;
            }
        }

        public void onAccuracyChanged(Sensor sensor, int i) {
        }

        public void onSensorChanged(SensorEvent sensorEvent) {

        }
    }

    public GestureLauncherService(Context context) {
        this(context, new MetricsLogger());
    }

    @VisibleForTesting
    GestureLauncherService(Context context, MetricsLogger metricsLogger) {
        super();
        this.mGestureListener = new GestureEventListener(this, null);
        this.mCameraLiftTriggerListener = new CameraLiftTriggerEventListener(this, null);
        this.mCameraGestureOnTimeMs = 0;
        this.mCameraGestureLastEventTime = 0;
        this.mCameraGestureSensor1LastOnTimeMs = 0;
        this.mCameraGestureSensor2LastOnTimeMs = 0;
        this.mCameraLaunchLastEventExtra = 0;
        this.mUserReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if ("android.intent.action.USER_SWITCHED".equals(intent.getAction())) {
                    GestureLauncherService.this.mUserId = intent.getIntExtra("android.intent.extra.user_handle", 0);
                    GestureLauncherService.this.mContext.getContentResolver().unregisterContentObserver(GestureLauncherService.this.mSettingObserver);
                    GestureLauncherService.this.registerContentObservers();
                    GestureLauncherService.this.updateCameraRegistered();
                    GestureLauncherService.this.updateCameraDoubleTapPowerEnabled();
                }
            }
        };
        this.mSettingObserver = new ContentObserver(new Handler()) {
            public void onChange(boolean z, Uri uri, int i) {
                if (i == GestureLauncherService.this.mUserId) {
                    GestureLauncherService.this.updateCameraRegistered();
                    GestureLauncherService.this.updateCameraDoubleTapPowerEnabled();
                }
            }
        };
        this.mContext = context;
        this.mMetricsLogger = metricsLogger;
    }

    public static boolean isCameraDoubleTapPowerEnabled(Resources resources) {
        return resources.getBoolean(17891390);
    }

    public static boolean isCameraDoubleTapPowerSettingEnabled(Context context, int i) {
        return false;
    }

    public static boolean isCameraLaunchEnabled(Resources resources) {
        return false;
    }

    public static boolean isCameraLaunchSettingEnabled(Context context, int i) {
        return false;
    }

    public static boolean isCameraLiftTriggerEnabled(Resources resources) {
        return resources.getInteger(17694782) != -1;
    }

    public static boolean isCameraLiftTriggerSettingEnabled(Context context, int i) {
        return false;
    }

    public static boolean isGestureLauncherEnabled(Resources resources) {
        return false;
    }

    private void registerCameraLaunchGesture(Resources resources) {
        if (!this.mCameraLaunchRegistered) {
            this.mCameraGestureOnTimeMs = SystemClock.elapsedRealtime();
            this.mCameraGestureLastEventTime = this.mCameraGestureOnTimeMs;
            SensorManager sensorManager = (SensorManager) this.mContext.getSystemService("sensor");
            int integer = resources.getInteger(17694781);
            if (integer != -1) {
                this.mCameraLaunchRegistered = false;
                String string = resources.getString(17039881);
                this.mCameraLaunchSensor = sensorManager.getDefaultSensor(integer, true);
                Sensor sensor = this.mCameraLaunchSensor;
                if (sensor != null) {
                    if (string.equals(sensor.getStringType())) {
                        this.mCameraLaunchRegistered = sensorManager.registerListener(this.mGestureListener, this.mCameraLaunchSensor, 0);
                    } else {
                        throw new RuntimeException(String.format("Wrong configuration. Sensor type and sensor string type don't match: %s in resources, %s in the sensor.", new Object[]{string, this.mCameraLaunchSensor.getStringType()}));
                    }
                }
            }
        }
    }

    private void registerCameraLiftTrigger(Resources resources) {
        if (!this.mCameraLiftRegistered) {
            SensorManager sensorManager = (SensorManager) this.mContext.getSystemService("sensor");
            int integer = resources.getInteger(17694782);
            if (integer != -1) {
                this.mCameraLiftRegistered = false;
                String string = resources.getString(17039882);
                this.mCameraLiftTriggerSensor = sensorManager.getDefaultSensor(integer, true);
                Sensor sensor = this.mCameraLiftTriggerSensor;
                if (sensor != null) {
                    if (string.equals(sensor.getStringType())) {
                        this.mCameraLiftRegistered = sensorManager.requestTriggerSensor(this.mCameraLiftTriggerListener, this.mCameraLiftTriggerSensor);
                    } else {
                        throw new RuntimeException(String.format("Wrong configuration. Sensor type and sensor string type don't match: %s in resources, %s in the sensor.", new Object[]{string, this.mCameraLiftTriggerSensor.getStringType()}));
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void registerContentObservers() {
       // this.mContext.getContentResolver().registerContentObserver(Secure.getUriFor("camera_gesture_disabled"), false, this.mSettingObserver, this.mUserId);
      //  this.mContext.getContentResolver().registerContentObserver(Secure.getUriFor("camera_double_tap_power_gesture_disabled"), false, this.mSettingObserver, this.mUserId);
       // this.mContext.getContentResolver().registerContentObserver(Secure.getUriFor("camera_lift_trigger_enabled"), false, this.mSettingObserver, this.mUserId);
    }

    private void unregisterCameraLaunchGesture() {
        if (this.mCameraLaunchRegistered) {
            this.mCameraLaunchRegistered = false;
            this.mCameraGestureOnTimeMs = 0;
            this.mCameraGestureLastEventTime = 0;
            this.mCameraGestureSensor1LastOnTimeMs = 0;
            this.mCameraGestureSensor2LastOnTimeMs = 0;
            this.mCameraLaunchLastEventExtra = 0;
            ((SensorManager) this.mContext.getSystemService("sensor")).unregisterListener(this.mGestureListener);
        }
    }

    private void unregisterCameraLiftTrigger() {
        if (this.mCameraLiftRegistered) {
            this.mCameraLiftRegistered = false;
            ((SensorManager) this.mContext.getSystemService("sensor")).cancelTriggerSensor(this.mCameraLiftTriggerListener, this.mCameraLiftTriggerSensor);
        }
    }

    /* access modifiers changed from: private */
    public void updateCameraRegistered() {
        Resources resources = this.mContext.getResources();
        if (isCameraLaunchSettingEnabled(this.mContext, this.mUserId)) {
            registerCameraLaunchGesture(resources);
        } else {
            unregisterCameraLaunchGesture();
        }
        if (isCameraLiftTriggerSettingEnabled(this.mContext, this.mUserId)) {
            registerCameraLiftTrigger(resources);
        } else {
            unregisterCameraLiftTrigger();
        }
    }

    public boolean handleCameraGesture(int i) {
        return handleCameraGesture(false, i);
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public boolean handleCameraGesture(boolean z, int i) {

        return z;
    }

    public boolean interceptPowerKeyDown(KeyEvent keyEvent, boolean z, MutableBoolean mutableBoolean) {
        boolean z2 = false;
        if (keyEvent.isLongPress()) {
            return false;
        }
        long eventTime;
        boolean z3 = false;
        boolean z4 = false;
        synchronized (this) {
            eventTime = keyEvent.getEventTime() - this.mLastPowerDown;
            if (this.mCameraDoubleTapPowerEnabled && eventTime < CAMERA_POWER_DOUBLE_TAP_MAX_TIME_MS) {
                z3 = true;
                z4 = z;
                this.mPowerButtonConsecutiveTaps++;
            } else if (eventTime < POWER_SHORT_TAP_SEQUENCE_MAX_INTERVAL_MS) {
                this.mPowerButtonConsecutiveTaps++;
            } else {
                this.mPowerButtonConsecutiveTaps = 1;
            }
            this.mLastPowerDown = keyEvent.getEventTime();
        }
        if (z3) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Power button double tap gesture detected, launching camera. Interval=");
            stringBuilder.append(eventTime);
            stringBuilder.append("ms");
            Slog.i(TAG, stringBuilder.toString());
            z3 = handleCameraGesture(false, 1);
            if (z3) {
              //  this.mMetricsLogger.action(255, (int) eventTime);
            }
        }
       // this.mMetricsLogger.histogram("power_consecutive_short_tap_count", this.mPowerButtonConsecutiveTaps);
       // this.mMetricsLogger.histogram("power_double_tap_interval", (int) eventTime);
        mutableBoolean.value = z3;
        if (z4 && z3) {
            z2 = true;
        }
        return z2;
    }

    public void onBootPhase(int i) {

    }

    public void onStart() {
        LocalServices.addService(GestureLauncherService.class, this);
    }

    /* access modifiers changed from: 0000 */
    @VisibleForTesting
    public void updateCameraDoubleTapPowerEnabled() {
        boolean isCameraDoubleTapPowerSettingEnabled = isCameraDoubleTapPowerSettingEnabled(this.mContext, this.mUserId);
        synchronized (this) {
            this.mCameraDoubleTapPowerEnabled = isCameraDoubleTapPowerSettingEnabled;
        }
    }
}
