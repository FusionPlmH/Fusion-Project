package com.android.systemui.statusbar.policy;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.*;

public class WifiIcons {
    static final int[] WIFI_ACTIVITY_DEFAULT = new int[]{mWifiArrows, mWifiArrows1, mWifiArrows2, mWifiArrows3};
    static final int[][] WIFI_SIGNAL_STRENGTH =new int[][]{new int[]{mWIFIA, mWIFIB,  mWIFIC, mWIFID, mWIFIE}, new int[]{mWIFIA, mWIFIB,  mWIFIC, mWIFID, mWIFIE}};
    static final int[][] NWBOOSTER_WIFI_SIGNAL_STRENGTH = new int[][]{new int[]{2131232474, 2131232475, 2131232476, 2131232477, 2131232478}, new int[]{2131232469, 2131232470, 2131232471, 2131232472, 2131232473}};
    public static final int[][] QS_WIFI_SIGNAL_STRENGTH = new int[][]{new int[]{2131232118, 2131232119, 2131232120, 2131232121, 2131232122}, new int[]{2131232118, 2131232119, 2131232120, 2131232121, 2131232122}};
    static final int[] WIFI6_SIGNAL_STRENGTH = new int[]{2131232597, 2131232598, 2131232599, 2131232600, 2131232601};

    static final int[] WIFI_ACTIVITY_KT = new int[]{2131232639, 2131232637, 2131232640, 2131232638};
    static final int[] WIFI_ACTIVITY_LGT = new int[]{2131232648, 2131232646, 2131232649, 2131232647};
    static final int[] WIFI_ACTIVITY_VZW = new int[]{2131232542, 2131232520, 2131232551, 2131232534};
    static final int[][] WIFI_CALLING_SIGNAL_STRENGTH = new int[][]{new int[]{2131232602, 2131232603, 2131232604, 2131232605, 2131232606}, new int[]{2131232602, 2131232603, 2131232604, 2131232605, 2131232606}};
    static final int WIFI_LEVEL_COUNT = WIFI_SIGNAL_STRENGTH[0].length;

    static final int[][] WIFI_SIGNAL_STRENGTH_KT = new int[][]{new int[]{2131232632, 2131232633, 2131232634, 2131232635, 2131232636}, new int[]{2131232632, 2131232633, 2131232634, 2131232635, 2131232636}};
    static final int[][] WIFI_SIGNAL_STRENGTH_LGT = new int[][]{new int[]{2131232641, 2131232642, 2131232643, 2131232644, 2131232645}, new int[]{2131232641, 2131232642, 2131232643, 2131232644, 2131232645}};
    static final int[][] WIFI_SIGNAL_STRENGTH_PURE = new int[][]{new int[]{2131232612, 2131232613, 2131232614, 2131232615, 2131232616}, new int[]{2131232618, 2131232620, 2131232622, 2131232624, 2131232626}};
    static final int[][] WIFI_SIGNAL_STRENGTH_VZW = new int[][]{new int[]{2131232607, 2131232608, 2131232609, 2131232610, 2131232611}, new int[]{2131232653, 2131232654, 2131232655, 2131232656, 2131232657}};
}