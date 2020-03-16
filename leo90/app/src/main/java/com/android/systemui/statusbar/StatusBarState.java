package com.android.systemui.statusbar;

public class StatusBarState {
    public static final int KEYGUARD = 1;
    public static boolean isKeyguardState(int i) {
        return i == 1;
    }

    public static boolean isShadeLockedState(int i) {
        return i == 2;
    }

    public static boolean isShadeState(int i) {
        return i == 0;
    }

    public static String toShortString(int i) {
        switch (i) {
            case 0:
                return "SHD";
            case 1:
                return "KGRD";
            case 2:
                return "SHD_LCK";
            case 3:
                return "FS_USRSW";
            default:
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("bad_value_");
                stringBuilder.append(i);
                return stringBuilder.toString();
        }
    }
}
