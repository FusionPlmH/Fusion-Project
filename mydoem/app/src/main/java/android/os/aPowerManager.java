/*
 * Copyright (C) 2007 The Android Open Source Project
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

package android.os;






public final class aPowerManager {
    private static final String TAG = "PowerManager";

    /* NOTE: Wake lock levels were previously defined as a bit field, except that only a few
     * combinations were actually supported so the bit field was removed.  This explains
     * why the numbering scheme is so odd.  If adding a new wake lock level, any unused
     * value can be used.
     */

    /**
     * Wake lock level: Ensures that the CPU is running; the screen and keyboard
     * backlight will be allowed to go off.
     * <p>
     * If the user presses the power button, then the screen will be turned off
     * but the CPU will be kept on until all partial wake locks have been released.
     * </p>
     */
    public static final int PARTIAL_WAKE_LOCK = 0x00000001;

    /**
     * Wake lock level: Ensures that the screen is on (but may be dimmed);
     * the keyboard backlight will be allowed to go off.
     * <p>
     * If the user presses the power button, then the {@link #SCREEN_DIM_WAKE_LOCK} will be
     * implicitly released by the system, causing both the screen and the CPU to be turned off.
     * Contrast with {@link #PARTIAL_WAKE_LOCK}.
     * </p>
     *
     * @deprecated Most applications should use
     * {@link android.view.WindowManager.LayoutParams#FLAG_KEEP_SCREEN_ON} instead
     * of this type of wake lock, as it will be correctly managed by the platform
     * as the user moves between applications and doesn't require a special permission.
     */
    @Deprecated
    public static final int SCREEN_DIM_WAKE_LOCK = 0x00000006;

    /**
     * Wake lock level: Ensures that the screen is on at full brightness;
     * the keyboard backlight will be allowed to go off.
     * <p>
     * If the user presses the power button, then the {@link #SCREEN_BRIGHT_WAKE_LOCK} will be
     * implicitly released by the system, causing both the screen and the CPU to be turned off.
     * Contrast with {@link #PARTIAL_WAKE_LOCK}.
     * </p>
     *
     * @deprecated Most applications should use
     * {@link android.view.WindowManager.LayoutParams#FLAG_KEEP_SCREEN_ON} instead
     * of this type of wake lock, as it will be correctly managed by the platform
     * as the user moves between applications and doesn't require a special permission.
     */
    @Deprecated
    public static final int SCREEN_BRIGHT_WAKE_LOCK = 0x0000000a;

    /**
     * Wake lock level: Ensures that the screen and keyboard backlight are on at
     * full brightness.
     * <p>
     * If the user presses the power button, then the {@link #FULL_WAKE_LOCK} will be
     * implicitly released by the system, causing both the screen and the CPU to be turned off.
     * Contrast with {@link #PARTIAL_WAKE_LOCK}.
     * </p>
     *
     * @deprecated Most applications should use
     * {@link android.view.WindowManager.LayoutParams#FLAG_KEEP_SCREEN_ON} instead
     * of this type of wake lock, as it will be correctly managed by the platform
     * as the user moves between applications and doesn't require a special permission.
     */
    @Deprecated
    public static final int FULL_WAKE_LOCK = 0x0000001a;


    public static final int PROXIMITY_SCREEN_OFF_WAKE_LOCK = 0x00000020;


    public static final int DOZE_WAKE_LOCK = 0x00000040;


    public static final int DRAW_WAKE_LOCK = 0x00000080;


    public static final int WAKE_LOCK_LEVEL_MASK = 0x0000ffff;


    public static final int ACQUIRE_CAUSES_WAKEUP = 0x10000000;


    public static final int ON_AFTER_RELEASE = 0x20000000;

    /**
     * Wake lock flag: This wake lock is not important for logging events.  If a later
     * wake lock is acquired that is important, it will be considered the one to log.
     * @hide
     */
    public static final int UNIMPORTANT_FOR_LOGGING = 0x40000000;

    public static final int RELEASE_FLAG_WAIT_FOR_NO_PROXIMITY = 1 << 0;


    public static final int RELEASE_FLAG_TIMEOUT = 1 << 16;

    /**
     * Brightness value for fully on.
     * @hide
     */
    public static final int BRIGHTNESS_ON = 255;

    /**
     * Brightness value for fully off.
     * @hide
     */
    public static final int BRIGHTNESS_OFF = 0;

    /**
     * Brightness value for default policy handling by the system.
     * @hide
     */
    public static final int BRIGHTNESS_DEFAULT = -1;

    // Note: Be sure to update android.os.BatteryStats and PowerManager.h
    // if adding or modifying user activity event constants.

    /**
     * User activity event type: Unspecified event type.
     * @hide
     */
    public void goToSleep(long time) {
       // goToSleep(time, GO_TO_SLEEP_REASON_APPLICATION, 0);
    }
 public void shutdown(boolean confirm, String reason, boolean wait) {
        try {
            mService.shutdown(confirm, reason, wait);
        } catch (RemoteException e) {
            throw e.rethrowFromSystemServer();
        }
    }
    public void wakeUp(long time) {

    }
           public void wakeUp(long time, String reason) {

        }
}
