package android.view2;

import android.graphics.Rect;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import android.util.Log;
import android.view.Display;
import android.view.KeyboardShortcutGroup;
import android.view.View;
import android.view.ViewDebug.ExportedProperty;
import android.view.ViewDebug.FlagToString;
import android.view.ViewDebug.IntToString;
import android.view.ViewHierarchyEncoder;
import android.view.ViewManager;

import java.util.List;
import java.util.Objects;

public interface WindowManager extends ViewManager {
    public static final int DOCKED_BOTTOM = 4;
    public static final int DOCKED_INVALID = -1;
    public static final int DOCKED_LEFT = 1;
    public static final int DOCKED_RIGHT = 3;
    public static final int DOCKED_TOP = 2;
    public static final String INPUT_CONSUMER_NAVIGATION = "nav_input_consumer";
    public static final String INPUT_CONSUMER_PIP = "pip_input_consumer";
    public static final String INPUT_CONSUMER_WALLPAPER = "wallpaper_input_consumer";
    public static final String PARCEL_KEY_SHORTCUTS_ARRAY = "shortcuts_array";
    public static final int TAKE_SCREENSHOT_FULLSCREEN = 1;
    public static final int TAKE_SCREENSHOT_SELECTED_REGION = 2;

    public static class BadTokenException extends RuntimeException {
        public BadTokenException(String str) {
            super(str);
        }
    }

    public static class InvalidDisplayException extends RuntimeException {
        public InvalidDisplayException(String str) {
            super(str);
        }
    }

    public interface KeyboardShortcutsReceiver {
        void onKeyboardShortcutsReceived(List<KeyboardShortcutGroup> list);
    }

    public static class LayoutParams extends android.view.ViewGroup.LayoutParams implements Parcelable {
        public static final int ACCESSIBILITY_ANCHOR_CHANGED = 16777216;
        public static final int ACCESSIBILITY_TITLE_CHANGED = 33554432;
        public static final int ALPHA_CHANGED = 128;
        public static final int ANIMATION_CHANGED = 16;
        public static final float BRIGHTNESS_OVERRIDE_FULL = 1.0f;
        public static final float BRIGHTNESS_OVERRIDE_NONE = -1.0f;
        public static final float BRIGHTNESS_OVERRIDE_OFF = 0.0f;
        public static final int BUTTON_BRIGHTNESS_CHANGED = 8192;
        public static final int COVER_MODE_CHANGED = 536870912;
        public static final int COVER_MODE_HIDE_SVIEW_ONCE = 2;
        public static final int COVER_MODE_NONE = 0;
        public static final int COVER_MODE_SVIEW = 1;
        public static final int COVER_MODE_SVIEW_SUB_WINDOW = 10;
        public static final Creator<LayoutParams> CREATOR = new Creator<LayoutParams>() {
            public LayoutParams createFromParcel(Parcel parcel) {
                return new LayoutParams(parcel);
            }

            public LayoutParams[] newArray(int i) {
                return new LayoutParams[i];
            }
        };
        public static final int DIM_AMOUNT_CHANGED = 32;
        public static final int EVERYTHING_CHANGED = -1;
        public static final int FIRST_APPLICATION_WINDOW = 1;
        public static final int FIRST_SUB_WINDOW = 1000;
        public static final int FIRST_SYSTEM_WINDOW = 2000;
        public static final int FLAGS_CHANGED = 4;
        public static final int FLAG_ALLOW_LOCK_WHILE_SCREEN_ON = 1;
        public static final int FLAG_ALT_FOCUSABLE_IM = 131072;
        @Deprecated
        public static final int FLAG_BLUR_BEHIND = 4;
        public static final int FLAG_DIM_BEHIND = 2;
        @Deprecated
        public static final int FLAG_DISMISS_KEYGUARD = 4194304;
        @Deprecated
        public static final int FLAG_DITHER = 4096;
        public static final int FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS = Integer.MIN_VALUE;
        public static final int FLAG_FORCE_NOT_FULLSCREEN = 2048;
        public static final int FLAG_FULLSCREEN = 1024;
        public static final int FLAG_HARDWARE_ACCELERATED = 16777216;
        public static final int FLAG_IGNORE_CHEEK_PRESSES = 32768;
        public static final int FLAG_KEEP_SCREEN_ON = 128;
        public static final int FLAG_LAYOUT_ATTACHED_IN_DECOR = 1073741824;
        public static final int FLAG_LAYOUT_INSET_DECOR = 65536;
        public static final int FLAG_LAYOUT_IN_OVERSCAN = 33554432;
        public static final int FLAG_LAYOUT_IN_SCREEN = 256;
        public static final int FLAG_LAYOUT_NO_LIMITS = 512;
        public static final int FLAG_LOCAL_FOCUS_MODE = 268435456;
        public static final int FLAG_NOT_FOCUSABLE = 8;
        public static final int FLAG_NOT_TOUCHABLE = 16;
        public static final int FLAG_NOT_TOUCH_MODAL = 32;
        public static final int FLAG_SCALED = 16384;
        public static final int FLAG_SECURE = 8192;
        public static final int FLAG_SHOW_WALLPAPER = 1048576;
        public static final int FLAG_SHOW_WHEN_LOCKED = 524288;
        public static final int FLAG_SLIPPERY = 536870912;
        public static final int FLAG_SPLIT_TOUCH = 8388608;
        @Deprecated
        public static final int FLAG_TOUCHABLE_WHEN_WAKING = 64;
        public static final int FLAG_TRANSLUCENT_NAVIGATION = 134217728;
        public static final int FLAG_TRANSLUCENT_STATUS = 67108864;
        public static final int FLAG_TURN_SCREEN_ON = 2097152;
        public static final int FLAG_WATCH_OUTSIDE_TOUCH = 262144;
        public static final int FORMAT_CHANGED = 8;
        public static final int INPUT_FEATURES_CHANGED = 65536;
        public static final int INPUT_FEATURE_DISABLE_POINTER_GESTURES = 1;
        public static final int INPUT_FEATURE_DISABLE_USER_ACTIVITY = 4;
        public static final int INPUT_FEATURE_NO_INPUT_CHANNEL = 2;
        public static final int INVALID_WINDOW_TYPE = -1;
        public static final int LAST_APPLICATION_WINDOW = 99;
        public static final int LAST_SUB_WINDOW = 1999;
        public static final int LAST_SYSTEM_WINDOW = 2999;
        public static final int LAYOUT_CHANGED = 1;
        public static final int MEMORY_TYPE_CHANGED = 256;
        @Deprecated
        public static final int MEMORY_TYPE_GPU = 2;
        @Deprecated
        public static final int MEMORY_TYPE_HARDWARE = 1;
        @Deprecated
        public static final int MEMORY_TYPE_NORMAL = 0;
        @Deprecated
        public static final int MEMORY_TYPE_PUSH_BUFFERS = 3;
        public static final int NEEDS_MENU_KEY_CHANGED = 4194304;
        public static final int NEEDS_MENU_SET_FALSE = 2;
        public static final int NEEDS_MENU_SET_TRUE = 1;
        public static final int NEEDS_MENU_UNSET = 0;
        public static final int PREFERRED_DISPLAY_MODE_ID = 8388608;
        public static final int PREFERRED_REFRESH_RATE_CHANGED = 2097152;
        public static final int PRIVATE_FLAGS_CHANGED = 131072;
        public static final int PRIVATE_FLAG_COMPATIBLE_WINDOW = 128;
        public static final int PRIVATE_FLAG_DISABLE_WALLPAPER_TOUCH_EVENTS = 2048;
        public static final int PRIVATE_FLAG_FAKE_HARDWARE_ACCELERATED = 1;
        public static final int PRIVATE_FLAG_FORCE_DECOR_VIEW_VISIBILITY = 16384;
        public static final int PRIVATE_FLAG_FORCE_DRAW_STATUS_BAR_BACKGROUND = 131072;
        public static final int PRIVATE_FLAG_FORCE_HARDWARE_ACCELERATED = 2;
        public static final int PRIVATE_FLAG_FORCE_STATUS_BAR_VISIBLE_TRANSPARENT = 4096;
        public static final int PRIVATE_FLAG_HIDE_NON_SYSTEM_OVERLAY_WINDOWS = 524288;
        public static final int PRIVATE_FLAG_INHERIT_TRANSLUCENT_DECOR = 512;
        public static final int PRIVATE_FLAG_KEYGUARD = 1024;
        public static final int PRIVATE_FLAG_LAYOUT_CHILD_WINDOW_IN_PARENT_FRAME = 65536;
        public static final int PRIVATE_FLAG_NO_MOVE_ANIMATION = 64;
        public static final int PRIVATE_FLAG_PRESERVE_GEOMETRY = 8192;
        public static final int PRIVATE_FLAG_SHARED_DEVICE_KEYGUARD = 8388608;
        public static final int PRIVATE_FLAG_SHOW_FOR_ALL_USERS = 16;
        public static final int PRIVATE_FLAG_SUSTAINED_PERFORMANCE_MODE = 262144;
        public static final int PRIVATE_FLAG_SYSTEM_ERROR = 256;
        public static final int PRIVATE_FLAG_WANTS_OFFSET_NOTIFICATIONS = 4;
        public static final int PRIVATE_FLAG_WILL_NOT_REPLACE_ON_RELAUNCH = 32768;
        public static final int ROTATION_ANIMATION_CHANGED = 4096;
        public static final int ROTATION_ANIMATION_CROSSFADE = 1;
        public static final int ROTATION_ANIMATION_JUMPCUT = 2;
        public static final int ROTATION_ANIMATION_ROTATE = 0;
        public static final int ROTATION_ANIMATION_SEAMLESS = 3;
        public static final int SAMSUNG_FLAGS_CHANGED = 268435456;
        public static final int SAMSUNG_FLAG_DECOR_CAPTION_WINDOW = 256;
        public static final int SAMSUNG_FLAG_FORCE_HIDE_FLOATING_MULTIWINDOW = 67108864;
        public static final int SCREEN_BRIGHTNESS_CHANGED = 2048;
        public static final int SCREEN_DIM_DURATION_CHANGED = 67108864;
        public static final int SCREEN_ORIENTATION_CHANGED = 1024;
        public static final int SEM_EXTENSION_FLAG_CHANGE_DIM_EFFECT_TO_BLUR = 64;
        public static final int SEM_EXTENSION_FLAG_CONTENT_RESIZE_ANIMATION = 16384;
        public static final int SEM_EXTENSION_FLAG_DELAY_RESIZE_ON_SOFT_INPUT = 512;
        public static final int SEM_EXTENSION_FLAG_DELIVER_OUTSIDE_TOUCH = 134217728;
        public static final int SEM_EXTENSION_FLAG_DOZE_MODE = 262144;
        public static final int SEM_EXTENSION_FLAG_FAKE_FOCUS = 65536;
        public static final int SEM_EXTENSION_FLAG_FIXED_ORIENTATION_LANDSCAPE = 4;
        public static final int SEM_EXTENSION_FLAG_FIXED_ORIENTATION_PORTRAIT = 8;
        public static final int SEM_EXTENSION_FLAG_FORCE_HIDE_DEX_LOADING_SCREEN = 4096;
        public static final int SEM_EXTENSION_FLAG_FORCE_HIDE_FLOATING_MULTIWINDOW = 67108864;
        public static final int SEM_EXTENSION_FLAG_FORCE_TRUSTED_OVERLAY = 131072;
        public static final int SEM_EXTENSION_FLAG_INTERNAL_PRESENTATION_ONLY = Integer.MIN_VALUE;
        public static final int SEM_EXTENSION_FLAG_MOBILE_KEYBOARD_INPUT_METHOD = 2048;
        public static final int SEM_EXTENSION_FLAG_NO_RESIZE_ANIMATION_INCLUDE_CHILD = 16;
        public static final int SEM_EXTENSION_FLAG_NO_SURFACE_BUFFER = 128;
        public static final int SEM_EXTENSION_FLAG_OVERRIDE_SYSTEM_UI_POLICY = 32;
        public static final int SEM_EXTENSION_FLAG_RESIZE_FULLSCREEN_WINDOW_ON_SOFT_INPUT = 1;
        public static final int SEM_EXTENSION_FLAG_SVIEW_COVER = 268435456;
        public static final int SEM_INPUT_FEATURE_ENABLE_PARTIAL_TOUCH = 1073741824;
        public static final int SEM_INPUT_FEATURE_ROTATE_COORDINATE_180_DEGREE = 536870912;
        public static final int SEM_INPUT_FEATURE_ROTATE_COORDINATE_90_DEGREE = 268435456;
        public static final int SEM_PRIVATE_FLAG_FORCE_LIGHT_NAVIGATION_BAR = 16777216;
        public static final int SEM_PRIVATE_FLAG_NO_MOVE_ANIMATION = 64;
        public static final int SEM_PRIVATE_FLAG_SHOW_FOR_ALL_USERS = 16;
        public static final int SEM_TYPE_AIR_COMMAND = 2401;
        public static final int SEM_TYPE_AIR_TRANSLATOR = 2442;
        public static final int SEM_TYPE_AOD = 2225;
        public static final int SEM_TYPE_BIXBY_CLIENT = 2414;
        public static final int SEM_TYPE_CARMODE_BAR = 2270;
        public static final int SEM_TYPE_CARMODE_BAR_OVERLAY = 2271;
        public static final int SEM_TYPE_CLIPBOARD = 2400;
        public static final int SEM_TYPE_COCKTAIL_BAR = 2220;
        public static final int SEM_TYPE_COCKTAIL_BAR_BACKGROUND = 2221;
        public static final int SEM_TYPE_COCKTAIL_BAR_OVERLAY = 2222;
        public static final int SEM_TYPE_CONVENTIONAL_RATIO_CHANGE_GUIDE = 2272;
        public static final int SEM_TYPE_DEX_INTERNAL_PRESENTATION = 2421;
        public static final int SEM_TYPE_DOZE_DREAM = 2410;
        public static final int SEM_TYPE_EDGE_OVERLAY = 2226;
        public static final int SEM_TYPE_FLOATING_APPLICATION_WINDOW = 2413;
        public static final int SEM_TYPE_GAME_TOOL = 2430;
        public static final int SEM_TYPE_GAME_TOOL_OVERLAY = 2431;
        public static final int SEM_TYPE_GLOBAL_ACTION = 2411;
        public static final int SEM_TYPE_INPUT_METHOD_PANEL = 1100;
        public static final int SEM_TYPE_INTERNAL_PRESENTATION = 2407;
        public static final int SEM_TYPE_KNOX_KEYGUARD = 2404;
        public static final int SEM_TYPE_NAVIBAR_TOUCH_INTERCEPT_OVERLAY = 2273;
        public static final int SEM_TYPE_NAVIGATION_BAR_OVERLAY = 2024;
        public static final int SEM_TYPE_NIGHT_CLOCK_BACKGROUND = 2228;
        public static final int SEM_TYPE_NIGHT_CLOCK_OVERLAY = 2227;
        public static final int SEM_TYPE_PENTASTIC_ANIM = 2403;
        public static final int SEM_TYPE_PENTASTIC_ICON = 2402;
        public static final int SEM_TYPE_POPUP_PLAYER = 2406;
        public static final int SEM_TYPE_SCREENSHOT_EFFECT = 2408;
        public static final int SEM_TYPE_SCROLL_CAPTURE = 2441;
        public static final int SEM_TYPE_SHARED_DEVICE_KEYGUARD = 2409;
        public static final int SEM_TYPE_SMART_SELECT = 2440;
        public static final int SEM_TYPE_STATUS_BAR_OVERLAY = 2280;
        public static final int SEM_TYPE_STATUS_BAR_PANEL_USER = 2281;
        public static final int SEM_TYPE_STATUS_BAR_WIDGET = 2415;
        public static final int SEM_TYPE_SVIEW_COVER_DIALOG = 2099;
        public static final int SEM_TYPE_SYSTEM_DIALOG = 2412;
        public static final int SEM_TYPE_TOUCH_PAD = 2420;
        public static final int SEM_TYPE_WINDOW_FOR_UNIVERSAL_VIEW = 2405;
        public static final int SOFT_INPUT_ADJUST_NOTHING = 48;
        public static final int SOFT_INPUT_ADJUST_PAN = 32;
        public static final int SOFT_INPUT_ADJUST_RESIZE = 16;
        public static final int SOFT_INPUT_ADJUST_UNSPECIFIED = 0;
        public static final int SOFT_INPUT_IS_FORWARD_NAVIGATION = 256;
        public static final int SOFT_INPUT_MASK_ADJUST = 240;
        public static final int SOFT_INPUT_MASK_STATE = 15;
        public static final int SOFT_INPUT_MODE_CHANGED = 512;
        public static final int SOFT_INPUT_STATE_ALWAYS_HIDDEN = 3;
        public static final int SOFT_INPUT_STATE_ALWAYS_VISIBLE = 5;
        public static final int SOFT_INPUT_STATE_HIDDEN = 2;
        public static final int SOFT_INPUT_STATE_UNCHANGED = 1;
        public static final int SOFT_INPUT_STATE_UNSPECIFIED = 0;
        public static final int SOFT_INPUT_STATE_VISIBLE = 4;
        public static final int SURFACE_INSETS_CHANGED = 1048576;
        public static final int SYSTEM_UI_LISTENER_CHANGED = 32768;
        public static final int SYSTEM_UI_VISIBILITY_CHANGED = 16384;
        public static final int TITLE_CHANGED = 64;
        public static final int TRANSLUCENT_FLAGS_CHANGED = 524288;
        public static final int TYPE_ACCESSIBILITY_OVERLAY = 2032;
        public static final int TYPE_APPLICATION = 2;
        public static final int TYPE_APPLICATION_ABOVE_SUB_PANEL = 1005;
        public static final int TYPE_APPLICATION_ATTACHED_DIALOG = 1003;
        public static final int TYPE_APPLICATION_MEDIA = 1001;
        public static final int TYPE_APPLICATION_MEDIA_OVERLAY = 1004;
        public static final int TYPE_APPLICATION_OVERLAY = 2038;
        public static final int TYPE_APPLICATION_PANEL = 1000;
        public static final int TYPE_APPLICATION_STARTING = 3;
        public static final int TYPE_APPLICATION_SUB_PANEL = 1002;
        public static final int TYPE_BASE_APPLICATION = 1;
        public static final int TYPE_BOOT_PROGRESS = 2021;
        public static final int TYPE_CHANGED = 2;
        public static final int TYPE_DISPLAY_OVERLAY = 2026;
        public static final int TYPE_DOCK_DIVIDER = 2034;
        public static final int TYPE_DRAG = 2016;
        public static final int TYPE_DRAWN_APPLICATION = 4;
        public static final int TYPE_DREAM = 2023;
        public static final int TYPE_EASYONEHAND_CONTROLLER = 2250;
        public static final int TYPE_EASYONEHAND_HANDLER = 2254;
        public static final int TYPE_INPUT_CONSUMER = 2022;
        public static final int TYPE_INPUT_METHOD = 2011;
        public static final int TYPE_INPUT_METHOD_DIALOG = 2012;
        public static final int TYPE_KEYGUARD = 2004;
        public static final int TYPE_KEYGUARD_DIALOG = 2009;
        public static final int TYPE_MAGNIFICATION_OVERLAY = 2027;
        public static final int TYPE_MULTIWINDOW_DOCK_DIVIDER_CLOSE_PANEL = 2306;
        public static final int TYPE_MULTIWINDOW_DOCK_DIVIDER_PANEL = 2302;
        public static final int TYPE_MULTIWINDOW_DOCK_DIVIDER_PANEL_DIM_LAYER = 2307;
        public static final int TYPE_MULTIWINDOW_GESTURE_GUIDE = 2301;
        public static final int TYPE_MULTIWINDOW_MINIMIZE_CONTAINER = 2303;
        public static final int TYPE_MULTIWINDOW_RESIZE_GUIDE = 2305;
        public static final int TYPE_MULTIWINDOW_SNAP_VIEW = 2304;
        public static final int TYPE_NAVIGATION_BAR = 2019;
        public static final int TYPE_NAVIGATION_BAR_ON_SECONDARY_DISPLAY = 2308;
        public static final int TYPE_NAVIGATION_BAR_PANEL = 2024;
        @Deprecated
        public static final int TYPE_PHONE = 2002;
        public static final int TYPE_POINTER = 2018;
        public static final int TYPE_PRESENTATION = 2037;
        @Deprecated
        public static final int TYPE_PRIORITY_PHONE = 2007;
        public static final int TYPE_PRIVATE_PRESENTATION = 2030;
        public static final int TYPE_QS_DIALOG = 2035;
        public static final int TYPE_RECENTS_PANEL = 2095;
        public static final int TYPE_SCREENSHOT = 2036;
        public static final int TYPE_SEARCH_BAR = 2001;
        public static final int TYPE_SECURE_SYSTEM_OVERLAY = 2015;
        public static final int TYPE_STATUS_BAR = 2000;
        public static final int TYPE_STATUS_BAR_PANEL = 2014;
        public static final int TYPE_STATUS_BAR_SUB_PANEL = 2017;
        @Deprecated
        public static final int TYPE_SYSTEM_ALERT = 2003;
        public static final int TYPE_SYSTEM_DIALOG = 2008;
        @Deprecated
        public static final int TYPE_SYSTEM_ERROR = 2010;
        @Deprecated
        public static final int TYPE_SYSTEM_OVERLAY = 2006;
        @Deprecated
        public static final int TYPE_TOAST = 2005;
        public static final int TYPE_VOICE_INTERACTION = 2031;
        public static final int TYPE_VOICE_INTERACTION_STARTING = 2033;
        public static final int TYPE_VOLUME_OVERLAY = 2020;
        public static final int TYPE_VR_BACKGROUND = 2102;
        public static final int TYPE_VR_MODE_TRANSITION = 2101;
        public static final int TYPE_VR_POPUP = 2100;
        public static final int TYPE_WALLPAPER = 2013;
        public static final int USER_ACTIVITY_TIMEOUT_CHANGED = 262144;
        public int accessibilityIdOfAnchor;
        public CharSequence accessibilityTitle;
        public float alpha;
        public float buttonBrightness;
        public int coverMode;
        public float dimAmount;
        public long dimDuration;
        @ExportedProperty(flagMapping = {@FlagToString(equals = 1, mask = 1, name = "FLAG_ALLOW_LOCK_WHILE_SCREEN_ON"), @FlagToString(equals = 2, mask = 2, name = "FLAG_DIM_BEHIND"), @FlagToString(equals = 4, mask = 4, name = "FLAG_BLUR_BEHIND"), @FlagToString(equals = 8, mask = 8, name = "FLAG_NOT_FOCUSABLE"), @FlagToString(equals = 16, mask = 16, name = "FLAG_NOT_TOUCHABLE"), @FlagToString(equals = 32, mask = 32, name = "FLAG_NOT_TOUCH_MODAL"), @FlagToString(equals = 64, mask = 64, name = "FLAG_TOUCHABLE_WHEN_WAKING"), @FlagToString(equals = 128, mask = 128, name = "FLAG_KEEP_SCREEN_ON"), @FlagToString(equals = 256, mask = 256, name = "FLAG_LAYOUT_IN_SCREEN"), @FlagToString(equals = 512, mask = 512, name = "FLAG_LAYOUT_NO_LIMITS"), @FlagToString(equals = 1024, mask = 1024, name = "FLAG_FULLSCREEN"), @FlagToString(equals = 2048, mask = 2048, name = "FLAG_FORCE_NOT_FULLSCREEN"), @FlagToString(equals = 4096, mask = 4096, name = "FLAG_DITHER"), @FlagToString(equals = 8192, mask = 8192, name = "FLAG_SECURE"), @FlagToString(equals = 16384, mask = 16384, name = "FLAG_SCALED"), @FlagToString(equals = 32768, mask = 32768, name = "FLAG_IGNORE_CHEEK_PRESSES"), @FlagToString(equals = 65536, mask = 65536, name = "FLAG_LAYOUT_INSET_DECOR"), @FlagToString(equals = 131072, mask = 131072, name = "FLAG_ALT_FOCUSABLE_IM"), @FlagToString(equals = 262144, mask = 262144, name = "FLAG_WATCH_OUTSIDE_TOUCH"), @FlagToString(equals = 524288, mask = 524288, name = "FLAG_SHOW_WHEN_LOCKED"), @FlagToString(equals = 1048576, mask = 1048576, name = "FLAG_SHOW_WALLPAPER"), @FlagToString(equals = 2097152, mask = 2097152, name = "FLAG_TURN_SCREEN_ON"), @FlagToString(equals = 4194304, mask = 4194304, name = "FLAG_DISMISS_KEYGUARD"), @FlagToString(equals = 8388608, mask = 8388608, name = "FLAG_SPLIT_TOUCH"), @FlagToString(equals = 16777216, mask = 16777216, name = "FLAG_HARDWARE_ACCELERATED"), @FlagToString(equals = 268435456, mask = 268435456, name = "FLAG_LOCAL_FOCUS_MODE"), @FlagToString(equals = 67108864, mask = 67108864, name = "FLAG_TRANSLUCENT_STATUS"), @FlagToString(equals = 134217728, mask = 134217728, name = "FLAG_TRANSLUCENT_NAVIGATION"), @FlagToString(equals = Integer.MIN_VALUE, mask = Integer.MIN_VALUE, name = "FLAG_DRAWS_SYSTEM_BAR_BACKGROUNDS")}, formatToHexString = true)
        public int flags;
        public int format;
        public int gravity;
        public boolean hasManualSurfaceInsets;
        public boolean hasSystemUiListeners;
        public long hideTimeoutMilliseconds;
        public float horizontalMargin;
        @ExportedProperty
        public float horizontalWeight;
        public int inputFeatures;
        private int mColorMode;
        private int[] mCompatibilityParamsBackup;
        private CharSequence mTitle;
        @Deprecated
        public int memoryType;
        public int navigationBarIconColor;
        public int needsMenuKey;
        public String packageName;
        public int preferredDisplayModeId;
        @Deprecated
        public float preferredRefreshRate;
        public boolean preservePreviousSurfaceInsets;
        public int privateFlags;
        public int rotationAnimation;
        public int samsungFlags;
        public float screenBrightness;
        public long screenDimDuration;
        public int screenOrientation;
        public int softInputMode;
        public int subtreeSystemUiVisibility;
        public Rect surfaceInsets;
        public int systemUiVisibility;
        public IBinder token;
        @ExportedProperty(mapping = {@IntToString(from = 1, to = "TYPE_BASE_APPLICATION"), @IntToString(from = 2, to = "TYPE_APPLICATION"), @IntToString(from = 3, to = "TYPE_APPLICATION_STARTING"), @IntToString(from = 4, to = "TYPE_DRAWN_APPLICATION"), @IntToString(from = 1000, to = "TYPE_APPLICATION_PANEL"), @IntToString(from = 1001, to = "TYPE_APPLICATION_MEDIA"), @IntToString(from = 1002, to = "TYPE_APPLICATION_SUB_PANEL"), @IntToString(from = 1005, to = "TYPE_APPLICATION_ABOVE_SUB_PANEL"), @IntToString(from = 1003, to = "TYPE_APPLICATION_ATTACHED_DIALOG"), @IntToString(from = 1004, to = "TYPE_APPLICATION_MEDIA_OVERLAY"), @IntToString(from = 2000, to = "TYPE_STATUS_BAR"), @IntToString(from = 2001, to = "TYPE_SEARCH_BAR"), @IntToString(from = 2002, to = "TYPE_PHONE"), @IntToString(from = 2003, to = "TYPE_SYSTEM_ALERT"), @IntToString(from = 2005, to = "TYPE_TOAST"), @IntToString(from = 2006, to = "TYPE_SYSTEM_OVERLAY"), @IntToString(from = 2007, to = "TYPE_PRIORITY_PHONE"), @IntToString(from = 2008, to = "TYPE_SYSTEM_DIALOG"), @IntToString(from = 2009, to = "TYPE_KEYGUARD_DIALOG"), @IntToString(from = 2010, to = "TYPE_SYSTEM_ERROR"), @IntToString(from = 2011, to = "TYPE_INPUT_METHOD"), @IntToString(from = 2012, to = "TYPE_INPUT_METHOD_DIALOG"), @IntToString(from = 2013, to = "TYPE_WALLPAPER"), @IntToString(from = 2014, to = "TYPE_STATUS_BAR_PANEL"), @IntToString(from = 2015, to = "TYPE_SECURE_SYSTEM_OVERLAY"), @IntToString(from = 2016, to = "TYPE_DRAG"), @IntToString(from = 2017, to = "TYPE_STATUS_BAR_SUB_PANEL"), @IntToString(from = 2018, to = "TYPE_POINTER"), @IntToString(from = 2019, to = "TYPE_NAVIGATION_BAR"), @IntToString(from = 2020, to = "TYPE_VOLUME_OVERLAY"), @IntToString(from = 2021, to = "TYPE_BOOT_PROGRESS"), @IntToString(from = 2022, to = "TYPE_INPUT_CONSUMER"), @IntToString(from = 2023, to = "TYPE_DREAM"), @IntToString(from = 2024, to = "TYPE_NAVIGATION_BAR_PANEL"), @IntToString(from = 2026, to = "TYPE_DISPLAY_OVERLAY"), @IntToString(from = 2027, to = "TYPE_MAGNIFICATION_OVERLAY"), @IntToString(from = 2037, to = "TYPE_PRESENTATION"), @IntToString(from = 2030, to = "TYPE_PRIVATE_PRESENTATION"), @IntToString(from = 2031, to = "TYPE_VOICE_INTERACTION"), @IntToString(from = 2033, to = "TYPE_VOICE_INTERACTION_STARTING"), @IntToString(from = 2034, to = "TYPE_DOCK_DIVIDER"), @IntToString(from = 2035, to = "TYPE_QS_DIALOG"), @IntToString(from = 2036, to = "TYPE_SCREENSHOT"), @IntToString(from = 2038, to = "TYPE_APPLICATION_OVERLAY")})
        public int type;
        public long userActivityTimeout;
        public float verticalMargin;
        @ExportedProperty
        public float verticalWeight;
        public int windowAnimations;
        @ExportedProperty
        public int x;
        @ExportedProperty
        public int y;

        public LayoutParams() {
            super(-1, -1);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1;
            this.mColorMode = 0;
            this.dimDuration = -1;
            this.screenDimDuration = -1;
            this.navigationBarIconColor = 0;
            this.coverMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = 2;
            this.format = -1;
        }

        public LayoutParams(int i) {
            super(-1, -1);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1;
            this.mColorMode = 0;
            this.dimDuration = -1;
            this.screenDimDuration = -1;
            this.navigationBarIconColor = 0;
            this.coverMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = i;
            this.format = -1;
        }

        public LayoutParams(int i, int i2) {
            super(-1, -1);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1;
            this.mColorMode = 0;
            this.dimDuration = -1;
            this.screenDimDuration = -1;
            this.navigationBarIconColor = 0;
            this.coverMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = i;
            this.flags = i2;
            this.format = -1;
        }

        public LayoutParams(int i, int i2, int i3) {
            super(-1, -1);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1;
            this.mColorMode = 0;
            this.dimDuration = -1;
            this.screenDimDuration = -1;
            this.navigationBarIconColor = 0;
            this.coverMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = i;
            this.flags = i2;
            this.format = i3;
        }

        public LayoutParams(int i, int i2, int i3, int i4, int i5) {
            super(i, i2);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1;
            this.mColorMode = 0;
            this.dimDuration = -1;
            this.screenDimDuration = -1;
            this.navigationBarIconColor = 0;
            this.coverMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.type = i3;
            this.flags = i4;
            this.format = i5;
        }

        public LayoutParams(int i, int i2, int i3, int i4, int i5, int i6, int i7) {
            super(i, i2);
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1;
            this.mColorMode = 0;
            this.dimDuration = -1;
            this.screenDimDuration = -1;
            this.navigationBarIconColor = 0;
            this.coverMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.x = i3;
            this.y = i4;
            this.type = i5;
            this.flags = i6;
            this.format = i7;
        }

        public LayoutParams(Parcel parcel) {
            this();

            boolean z = true;
            this.needsMenuKey = 0;
            this.surfaceInsets = new Rect();
            this.preservePreviousSurfaceInsets = true;
            this.alpha = 1.0f;
            this.dimAmount = 1.0f;
            this.screenBrightness = -1.0f;
            this.buttonBrightness = -1.0f;
            this.rotationAnimation = 0;
            this.token = null;
            this.packageName = null;
            this.screenOrientation = -1;
            this.userActivityTimeout = -1;
            this.accessibilityIdOfAnchor = -1;
            this.hideTimeoutMilliseconds = -1;
            this.mColorMode = 0;
            this.dimDuration = -1;
            this.screenDimDuration = -1;
            this.navigationBarIconColor = 0;
            this.coverMode = 0;
            this.mCompatibilityParamsBackup = null;
            this.mTitle = null;
            this.width = parcel.readInt();
            this.height = parcel.readInt();
            this.x = parcel.readInt();
            this.y = parcel.readInt();
            this.type = parcel.readInt();
            this.flags = parcel.readInt();
            this.privateFlags = parcel.readInt();
            this.softInputMode = parcel.readInt();
            this.gravity = parcel.readInt();
            this.horizontalMargin = parcel.readFloat();
            this.verticalMargin = parcel.readFloat();
            this.format = parcel.readInt();
            this.windowAnimations = parcel.readInt();
            this.alpha = parcel.readFloat();
            this.dimAmount = parcel.readFloat();
            this.screenBrightness = parcel.readFloat();
            this.buttonBrightness = parcel.readFloat();
            this.rotationAnimation = parcel.readInt();
            this.token = parcel.readStrongBinder();
            this.packageName = parcel.readString();
            this.mTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.screenOrientation = parcel.readInt();
            this.preferredRefreshRate = parcel.readFloat();
            this.preferredDisplayModeId = parcel.readInt();
            this.systemUiVisibility = parcel.readInt();
            this.subtreeSystemUiVisibility = parcel.readInt();
            this.hasSystemUiListeners = parcel.readInt() != 0;
            this.inputFeatures = parcel.readInt();
            this.userActivityTimeout = parcel.readLong();
            this.surfaceInsets.left = parcel.readInt();
            this.surfaceInsets.top = parcel.readInt();
            this.surfaceInsets.right = parcel.readInt();
            this.surfaceInsets.bottom = parcel.readInt();
            this.hasManualSurfaceInsets = parcel.readInt() != 0;
            if (parcel.readInt() == 0) {
                z = false;
            }
            this.preservePreviousSurfaceInsets = z;
            this.needsMenuKey = parcel.readInt();
            this.accessibilityIdOfAnchor = parcel.readInt();
            this.accessibilityTitle = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.hideTimeoutMilliseconds = parcel.readLong();
            this.dimDuration = parcel.readLong();
            this.screenDimDuration = parcel.readLong();
            this.navigationBarIconColor = parcel.readInt();
            this.samsungFlags = parcel.readInt();
            this.coverMode = parcel.readInt();
        }

        public static boolean isSystemAlertWindowType(int i) {
            switch (i) {
                case TYPE_PHONE /*2002*/:
                case TYPE_SYSTEM_ALERT /*2003*/:
                case TYPE_SYSTEM_OVERLAY /*2006*/:
                case TYPE_PRIORITY_PHONE /*2007*/:
                case TYPE_SYSTEM_ERROR /*2010*/:
                case TYPE_APPLICATION_OVERLAY /*2038*/:
                case SEM_TYPE_SVIEW_COVER_DIALOG /*2099*/:
                    return true;
                default:
                    return false;
            }
        }

        public static boolean mayUseInputMethod(int i) {
            switch (131080 & i) {
                case 0:
                case 131080:
                    return true;
                default:
                    return false;
            }
        }

        void backup() {
            int[] iArr = this.mCompatibilityParamsBackup;
            if (iArr == null) {
                iArr = new int[4];
                this.mCompatibilityParamsBackup = iArr;
            }
            iArr[0] = this.x;
            iArr[1] = this.y;
            iArr[2] = this.width;
            iArr[3] = this.height;
        }

        public final int copyFrom(LayoutParams layoutParams) {
            int i = 0;
            if (this.width != layoutParams.width) {
                this.width = layoutParams.width;
                i = 1;
            }
            if (this.height != layoutParams.height) {
                this.height = layoutParams.height;
                i |= 1;
            }
            if (this.x != layoutParams.x) {
                this.x = layoutParams.x;
                i |= 1;
            }
            if (this.y != layoutParams.y) {
                this.y = layoutParams.y;
                i |= 1;
            }
            if (this.horizontalWeight != layoutParams.horizontalWeight) {
                this.horizontalWeight = layoutParams.horizontalWeight;
                i |= 1;
            }
            if (this.verticalWeight != layoutParams.verticalWeight) {
                this.verticalWeight = layoutParams.verticalWeight;
                i |= 1;
            }
            if (this.horizontalMargin != layoutParams.horizontalMargin) {
                this.horizontalMargin = layoutParams.horizontalMargin;
                i |= 1;
            }
            if (this.verticalMargin != layoutParams.verticalMargin) {
                this.verticalMargin = layoutParams.verticalMargin;
                i |= 1;
            }
            if (this.type != layoutParams.type) {
                this.type = layoutParams.type;
                i |= 2;
            }
            if (this.flags != layoutParams.flags) {
                if ((201326592 & (this.flags ^ layoutParams.flags)) != 0) {
                    i |= 524288;
                }
                this.flags = layoutParams.flags;
                i |= 4;
            }

            if (this.softInputMode != layoutParams.softInputMode) {
                this.softInputMode = layoutParams.softInputMode;
                i |= 512;
            }
            if (this.gravity != layoutParams.gravity) {
                this.gravity = layoutParams.gravity;
                i |= 1;
            }
            if (this.format != layoutParams.format) {
                this.format = layoutParams.format;
                i |= 8;
            }
            if (this.windowAnimations != layoutParams.windowAnimations) {
                this.windowAnimations = layoutParams.windowAnimations;
                i |= 16;
            }
            if (this.token == null) {
                this.token = layoutParams.token;
            }
            if (this.packageName == null) {
                this.packageName = layoutParams.packageName;
            }

            if (this.alpha != layoutParams.alpha) {
                this.alpha = layoutParams.alpha;
                i |= 128;
            }
            if (this.dimAmount != layoutParams.dimAmount) {
                this.dimAmount = layoutParams.dimAmount;
                i |= 32;
            }
            if (this.screenBrightness != layoutParams.screenBrightness) {
                this.screenBrightness = layoutParams.screenBrightness;
                i |= 2048;
            }
            if (this.buttonBrightness != layoutParams.buttonBrightness) {
                this.buttonBrightness = layoutParams.buttonBrightness;
                i |= 8192;
            }
            if (this.rotationAnimation != layoutParams.rotationAnimation) {
                this.rotationAnimation = layoutParams.rotationAnimation;
                i |= 4096;
            }
            if (this.screenOrientation != layoutParams.screenOrientation) {
                this.screenOrientation = layoutParams.screenOrientation;
                i |= 1024;
            }
            if (this.preferredRefreshRate != layoutParams.preferredRefreshRate) {
                this.preferredRefreshRate = layoutParams.preferredRefreshRate;
                i |= 2097152;
            }
            if (this.preferredDisplayModeId != layoutParams.preferredDisplayModeId) {
                this.preferredDisplayModeId = layoutParams.preferredDisplayModeId;
                i |= 8388608;
            }

            return i | 536870912;
        }

        public String debug(String str) {
            Log.d("Debug", str + "Contents of " + this + ":");
           // Log.d("Debug", super.debug(""));
            Log.d("Debug", "");
            Log.d("Debug", "WindowManager.LayoutParams={title=" + this.mTitle + "}");
            return "";
        }

        public int describeContents() {
            return 0;
        }

        protected void encodeProperties(ViewHierarchyEncoder viewHierarchyEncoder) {
            //super.encodeProperties(viewHierarchyEncoder);
            viewHierarchyEncoder.addProperty("x", this.x);
            viewHierarchyEncoder.addProperty("y", this.y);
            viewHierarchyEncoder.addProperty("horizontalWeight", this.horizontalWeight);
            viewHierarchyEncoder.addProperty("verticalWeight", this.verticalWeight);
            viewHierarchyEncoder.addProperty("type", this.type);
            viewHierarchyEncoder.addProperty("flags", this.flags);
        }

        public int getColorMode() {
            return this.mColorMode;
        }

        public final CharSequence getTitle() {
            return this.mTitle != null ? this.mTitle : "";
        }

        public final long getUserActivityTimeout() {
            return this.userActivityTimeout;
        }

        void restore() {
            int[] iArr = this.mCompatibilityParamsBackup;
            if (iArr != null) {
                this.x = iArr[0];
                this.y = iArr[1];
                this.width = iArr[2];
                this.height = iArr[3];
            }
        }

        public void scale(float f) {
            this.x = (int) ((((float) this.x) * f) + 0.5f);
            this.y = (int) ((((float) this.y) * f) + 0.5f);
            if (this.width > 0) {
                this.width = (int) ((((float) this.width) * f) + 0.5f);
            }
            if (this.height > 0) {
                this.height = (int) ((((float) this.height) * f) + 0.5f);
            }
        }

        public final void semAddExtensionFlags(int i) {
            this.samsungFlags |= i;
        }

        public final void semAddPrivateFlags(int i) {
            this.privateFlags |= i;
        }

        public final void semClearExtensionFlags(int i) {
            this.samsungFlags &= ~i;
        }

        public final void semClearPrivateFlags(int i) {
            this.privateFlags &= ~i;
        }

        public final void semSetEnterDimDuration(long j) {
            this.dimDuration = j;
        }

        public final void semSetNavigationBarIconColor(int i) {
            this.navigationBarIconColor = i;
        }

        public final void semSetScreenDimDuration(long j) {
            this.screenDimDuration = j;
        }

        public final void semSetScreenTimeout(long j) {
            this.userActivityTimeout = j;
        }

        public void setColorMode(int i) {
            this.mColorMode = i;
        }

        public final void setSurfaceInsets(View view, boolean z, boolean z2) {
            int ceil = (int) Math.ceil((double) (view.getZ() * 2.0f));
            if (ceil == 0) {
                this.surfaceInsets.set(0, 0, 0, 0);
            } else {
                this.surfaceInsets.set(Math.max(ceil, this.surfaceInsets.left), Math.max(ceil, this.surfaceInsets.top), Math.max(ceil, this.surfaceInsets.right), Math.max(ceil, this.surfaceInsets.bottom));
            }
            this.hasManualSurfaceInsets = z;
            this.preservePreviousSurfaceInsets = z2;
        }

        public final void setTitle(CharSequence charSequence) {
            if (charSequence == null) {
                charSequence = "";
            }
            this.mTitle = TextUtils.stringOrSpannedString(charSequence);
        }

        public final void setUserActivityTimeout(long j) {
            this.userActivityTimeout = j;
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder(256);
            stringBuilder.append("WM.LayoutParams{");
            stringBuilder.append("(");
            stringBuilder.append(this.x);
            stringBuilder.append(',');
            stringBuilder.append(this.y);
            stringBuilder.append(")(");
            String valueOf = this.width == -1 ? "fill" : this.width == -2 ? "wrap" : String.valueOf(this.width);
            stringBuilder.append(valueOf);
            stringBuilder.append('x');
            valueOf = this.height == -1 ? "fill" : this.height == -2 ? "wrap" : String.valueOf(this.height);
            stringBuilder.append(valueOf);
            stringBuilder.append(")");
            if (this.horizontalMargin != BRIGHTNESS_OVERRIDE_OFF) {
                stringBuilder.append(" hm=");
                stringBuilder.append(this.horizontalMargin);
            }
            if (this.verticalMargin != BRIGHTNESS_OVERRIDE_OFF) {
                stringBuilder.append(" vm=");
                stringBuilder.append(this.verticalMargin);
            }
            if (this.gravity != 0) {
                stringBuilder.append(" gr=#");
                stringBuilder.append(Integer.toHexString(this.gravity));
            }
            if (this.softInputMode != 0) {
                stringBuilder.append(" sim=#");
                stringBuilder.append(Integer.toHexString(this.softInputMode));
            }
            stringBuilder.append(" ty=");
            stringBuilder.append(this.type);
            stringBuilder.append(" fl=#");
            stringBuilder.append(Integer.toHexString(this.flags));
            if (this.privateFlags != 0) {
                if ((this.privateFlags & 128) != 0) {
                    stringBuilder.append(" compatible=true");
                }
                stringBuilder.append(" pfl=0x").append(Integer.toHexString(this.privateFlags));
            }
            if (this.format != -1) {
                stringBuilder.append(" fmt=");
                stringBuilder.append(this.format);
            }
            if (this.windowAnimations != 0) {
                stringBuilder.append(" wanim=0x");
                stringBuilder.append(Integer.toHexString(this.windowAnimations));
            }
            if (this.screenOrientation != -1) {
                stringBuilder.append(" or=");
                stringBuilder.append(this.screenOrientation);
            }
            if (this.alpha != 1.0f) {
                stringBuilder.append(" alpha=");
                stringBuilder.append(this.alpha);
            }
            if (this.screenBrightness != -1.0f) {
                stringBuilder.append(" sbrt=");
                stringBuilder.append(this.screenBrightness);
            }
            if (this.buttonBrightness != -1.0f) {
                stringBuilder.append(" bbrt=");
                stringBuilder.append(this.buttonBrightness);
            }
            if (this.rotationAnimation != 0) {
                stringBuilder.append(" rotAnim=");
                stringBuilder.append(this.rotationAnimation);
            }
            if (this.preferredRefreshRate != BRIGHTNESS_OVERRIDE_OFF) {
                stringBuilder.append(" preferredRefreshRate=");
                stringBuilder.append(this.preferredRefreshRate);
            }
            if (this.preferredDisplayModeId != 0) {
                stringBuilder.append(" preferredDisplayMode=");
                stringBuilder.append(this.preferredDisplayModeId);
            }
            if (this.systemUiVisibility != 0) {
                stringBuilder.append(" sysui=0x");
                stringBuilder.append(Integer.toHexString(this.systemUiVisibility));
            }
            if (this.subtreeSystemUiVisibility != 0) {
                stringBuilder.append(" vsysui=0x");
                stringBuilder.append(Integer.toHexString(this.subtreeSystemUiVisibility));
            }
            if (this.hasSystemUiListeners) {
                stringBuilder.append(" sysuil=");
                stringBuilder.append(this.hasSystemUiListeners);
            }
            if (this.inputFeatures != 0) {
                stringBuilder.append(" if=0x").append(Integer.toHexString(this.inputFeatures));
            }
            if (this.userActivityTimeout >= 0) {
                stringBuilder.append(" userActivityTimeout=").append(this.userActivityTimeout);
            }

            if (this.needsMenuKey != 0) {
                stringBuilder.append(" needsMenuKey=");
                stringBuilder.append(this.needsMenuKey);
            }
            stringBuilder.append(" colorMode=").append(this.mColorMode);
            if (this.dimDuration >= 0) {
                stringBuilder.append(" dimDuration=").append(this.dimDuration);
            }
            if (this.screenDimDuration >= 0) {
                stringBuilder.append(" screenDimDuration=").append(this.screenDimDuration);
            }
            if (this.navigationBarIconColor >= 0) {
                stringBuilder.append(" naviIconColor=").append(this.navigationBarIconColor);
            }
            if (this.samsungFlags != 0) {
                stringBuilder.append(" sfl=0x");
                stringBuilder.append(Integer.toHexString(this.samsungFlags));
            }
            if (this.coverMode != 0) {
                stringBuilder.append(" cm=").append(this.coverMode);
            }
            stringBuilder.append('}');
            return stringBuilder.toString();
        }

        public void writeToParcel(Parcel parcel, int i) {
            int i2 = 1;
            parcel.writeInt(this.width);
            parcel.writeInt(this.height);
            parcel.writeInt(this.x);
            parcel.writeInt(this.y);
            parcel.writeInt(this.type);
            parcel.writeInt(this.flags);
            parcel.writeInt(this.privateFlags);
            parcel.writeInt(this.softInputMode);
            parcel.writeInt(this.gravity);
            parcel.writeFloat(this.horizontalMargin);
            parcel.writeFloat(this.verticalMargin);
            parcel.writeInt(this.format);
            parcel.writeInt(this.windowAnimations);
            parcel.writeFloat(this.alpha);
            parcel.writeFloat(this.dimAmount);
            parcel.writeFloat(this.screenBrightness);
            parcel.writeFloat(this.buttonBrightness);
            parcel.writeInt(this.rotationAnimation);
            parcel.writeStrongBinder(this.token);
            parcel.writeString(this.packageName);
            TextUtils.writeToParcel(this.mTitle, parcel, i);
            parcel.writeInt(this.screenOrientation);
            parcel.writeFloat(this.preferredRefreshRate);
            parcel.writeInt(this.preferredDisplayModeId);
            parcel.writeInt(this.systemUiVisibility);
            parcel.writeInt(this.subtreeSystemUiVisibility);
            parcel.writeInt(this.hasSystemUiListeners ? 1 : 0);
            parcel.writeInt(this.inputFeatures);
            parcel.writeLong(this.userActivityTimeout);
            parcel.writeInt(this.surfaceInsets.left);
            parcel.writeInt(this.surfaceInsets.top);
            parcel.writeInt(this.surfaceInsets.right);
            parcel.writeInt(this.surfaceInsets.bottom);
            parcel.writeInt(this.hasManualSurfaceInsets ? 1 : 0);
            if (!this.preservePreviousSurfaceInsets) {
                i2 = 0;
            }
            parcel.writeInt(i2);
            parcel.writeInt(this.needsMenuKey);
            parcel.writeInt(this.accessibilityIdOfAnchor);
            TextUtils.writeToParcel(this.accessibilityTitle, parcel, i);
            parcel.writeLong(this.hideTimeoutMilliseconds);
            parcel.writeLong(this.dimDuration);
            parcel.writeLong(this.screenDimDuration);
            parcel.writeInt(this.navigationBarIconColor);
            parcel.writeInt(this.samsungFlags);
            parcel.writeInt(this.coverMode);
        }
    }

    Display getDefaultDisplay();

    void removeViewImmediate(View view);

    void requestAppKeyboardShortcuts(KeyboardShortcutsReceiver keyboardShortcutsReceiver, int i);
}
