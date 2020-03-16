package com.android.systemui.shared.system;

import android.content.Context;
import android.view.ViewConfiguration;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.StringJoiner;

public class QuickStepContract {

    @Retention(RetentionPolicy.SOURCE)
    public @interface SystemUiStateFlags {
    }

    public static final float getQuickStepTouchSlopPx(Context context) {
        return ((float) ViewConfiguration.get(context).getScaledTouchSlop()) * 3.0f;
    }

    public static String getSystemUiStateString(int i) {
        StringJoiner stringJoiner = new StringJoiner("|");
        CharSequence charSequence = "";
        stringJoiner.add((i & 1) != 0 ? "screen_pinned" : charSequence);
        stringJoiner.add((i & 128) != 0 ? "overview_disabled" : charSequence);
        stringJoiner.add((i & 256) != 0 ? "home_disabled" : charSequence);
        stringJoiner.add((i & 2) != 0 ? "navbar_hidden" : charSequence);
        stringJoiner.add((i & 4) != 0 ? "notif_visible" : charSequence);
        stringJoiner.add((i & 64) != 0 ? "keygrd_visible" : charSequence);
        stringJoiner.add((i & 512) != 0 ? "keygrd_occluded" : charSequence);
        stringJoiner.add((i & 8) != 0 ? "bouncer_visible" : charSequence);
        stringJoiner.add((i & 16) != 0 ? "a11y_click" : charSequence);
        stringJoiner.add((i & 32) != 0 ? "a11y_long_click" : charSequence);
        stringJoiner.add((i & 1024) != 0 ? "back_disabled" : charSequence);
        stringJoiner.add((i & 2048) != 0 ? "navbar_gone" : charSequence);
        stringJoiner.add((i & 4096) != 0 ? "requested_recent_key" : charSequence);
        stringJoiner.add((i & 8192) != 0 ? "requested_home_key" : charSequence);
        stringJoiner.add((i & 16384) != 0 ? "knox_hard_key_intent" : charSequence);
        if ((i & 32768) != 0) {
            charSequence = "game_tools_showing";
        }
        stringJoiner.add(charSequence);
        return stringJoiner.toString();
    }

    public static boolean isAssistantGestureDisabled(int i) {
        return (i & 2059) != 0 ? true : (i & 4) != 0 && (i & 64) == 0;
    }

    public static boolean isBackGestureDisabled(int i) {
        boolean z = false;
        if ((i & 8) != 0) {
            return false;
        }
        if ((i & 3074) != 0) {
            z = true;
        }
        return z;
    }

    public static boolean isGesturalMode(int i) {
        return i == 2 || i == 3;
    }

    public static boolean isLegacyMode(int i) {
        return i == 0;
    }

    public static boolean isSwipeUpMode(int i) {
        return i == 1;
    }
}
