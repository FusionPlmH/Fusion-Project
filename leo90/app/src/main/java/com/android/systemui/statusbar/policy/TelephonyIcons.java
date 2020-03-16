package com.android.systemui.statusbar.policy;

import com.android.systemui.Rune;
import com.android.systemui.statusbar.policy.MobileSignalController.MobileIconGroup;

import static com.android.systemui.util.LeoDrawable.*;


class TelephonyIcons {
    static final int TELEPHONY_NO_NETWORK = getTelephonyNoServiceIcon();
    static final int[][] TELEPHONY_5_LEVEL_SIGNAL_STRENGTH = mLeoStatusBarSignal5IconStyle;
    static final int[][] TELEPHONY_5_LEVEL_SIGNAL_STRENGTH_SIMPLIFIED =mLeoStatusBarSignal5IconStyle;

    static final int[][] TELEPHONY_PURE_SIGNAL_STRENGTH = new int[][]{new int[]{2131232580, 2131232582, 2131232584, 2131232586, 2131232588, 2131232590}, new int[]{2131232566, 2131232568, 2131232570, 2131232572, 2131232574, 2131232576}};
    static final int[][] TELEPHONY_SIGNAL_STRENGTH = new int[][]{new int[]{2131232487, 2131232489, 2131232491, 2131232493, 2131232495}, new int[]{2131232487, 2131232489, 2131232491, 2131232493, 2131232495}};
    static final MobileIconGroup CARRIER_NETWORK_CHANGE = new MobileIconGroup("CARRIER_NETWORK_CHANGE", null, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, 0, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886624, 0, false);
    static final int[] DATA_ACTIVITY_5G_VZW = new int[]{2131232543, 2131232521, 2131232552, 2131232535};
    static final int[] DATA_ACTIVITY_ATT = new int[]{0, 2131232526, 2131232557, 2131232537};
    static final int[] DATA_ACTIVITY_DEFAULT = new int[]{2131232542, 2131232520, 2131232551, 2131232534};
    static final int[] DATA_ACTIVITY_FIVE_G_ATT = new int[]{0, 2131232525, 2131232556, 2131232536};
    static final int[] DATA_ACTIVITY_LTE_PLUS = new int[]{2131232544, 2131232530, 2131232561, 2131232538};
    static final int[] DATA_ACTIVITY_LTE_PLUS_KT = new int[]{2131232545, 2131232531, 2131232562, 2131232539};
    static final int[] DATA_ACTIVITY_SIMPLIFIED = new int[]{2131232546, 2131232532, 2131232563, 2131232540};
    static final int[] DATA_ACTIVITY_TMO = new int[]{2131232547, 2131232533, 2131232564, 2131232541};
    static final MobileIconGroup DATA_DISABLED = new MobileIconGroup("DataDisabled", null, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, 0, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886628, 0, false);
    static final MobileIconGroup DC = new MobileIconGroup("DC", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886685, 2131232358, false, 2131232460);
    static final MobileIconGroup E = new MobileIconGroup("E", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886692, 2131232359, false, 2131232461);
    static final MobileIconGroup FIVE_G_ATT = new MobileIconGroup("5G_ATT", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886707, 2131232351, false, 2131232465);
    static final MobileIconGroup FIVE_G_VZW = new MobileIconGroup("5G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886690, 2131232350, true, 2131232458);
    static final MobileIconGroup FOUR_G = new MobileIconGroup("4G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232343, true, 2131232458);
    static final MobileIconGroup FOUR_G_ATT = new MobileIconGroup("4G_ATT", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232344, false, 2131232458);
    static final MobileIconGroup FOUR_G_LTE_LTN = new MobileIconGroup("4G_LTE_LTN", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886707, 2131232345, false, 2131232407);
    static final MobileIconGroup FOUR_G_PLUS = new MobileIconGroup("4G+", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886689, 2131232346, true, 2131232459);
    static final MobileIconGroup FOUR_G_TMO = new MobileIconGroup("4G_TMO", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232347, false, 2131232458);
    static final MobileIconGroup FOUR_G_USCC = new MobileIconGroup("4G_USCC", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232348, false, 2131232458);
    static final MobileIconGroup FOUR_G_VZW = new MobileIconGroup("4G_VZW", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232349, false, 2131232458);
    static final MobileIconGroup FOUR_HALF_G = new MobileIconGroup("4.5G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232342, true, 2131232457);
    static final MobileIconGroup FOUR_HALF_G_AMX = new MobileIconGroup("4.5G_AMX", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232405, true, 2131232457);
    static final MobileIconGroup FOUR_HALF_G_PLUS_AMX = new MobileIconGroup("4.5G_Plus_AMX", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232406, true, 2131232457);
    static final MobileIconGroup G = new MobileIconGroup("G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886705, 2131232360, false, 2131232462);
    static final MobileIconGroup H = new MobileIconGroup("H", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886706, 2131232362, false, 2131232463);
    static final MobileIconGroup H_PLUS = new MobileIconGroup("H_Plus", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886706, 2131232363, false, 2131232464);
    static final MobileIconGroup LTE = new MobileIconGroup("LTE", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886707, 2131232365, true, 2131232465);
    static final MobileIconGroup LTE_ATT = new MobileIconGroup("LTE_ATT", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886707, 2131232366, false, 2131232465);
    static final MobileIconGroup LTE_KT = new MobileIconGroup("LTE_KT", TELEPHONY_SIGNAL_STRENGTH, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886707, 2131232367, false, 2131232465);
    static final MobileIconGroup LTE_PLUS = new MobileIconGroup("LTE+", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886708, 2131232368, true, 2131232467);
    static final MobileIconGroup LTE_PLUS_KT = new MobileIconGroup("LTE_Plus_KT", TELEPHONY_SIGNAL_STRENGTH, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886707, 2131232369, true, 2131232467);
    static final MobileIconGroup LTE_TMO = new MobileIconGroup("LTE_TMO", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886707, 2131232371, false, 2131232465);
    static final MobileIconGroup ONE_X = new MobileIconGroup("1X", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886684, 2131232334, true, 2131232453);
    static final MobileIconGroup SIMPLIFIED_E = new MobileIconGroup("E", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886692, 2131232385, false, 2131232461);
    static final MobileIconGroup SIMPLIFIED_FOUR_G = new MobileIconGroup("4G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886688, 2131232383, true, 2131232458);
    static final MobileIconGroup SIMPLIFIED_FOUR_G_PLUS = new MobileIconGroup("4G+", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886689, 2131232384, true, 2131232459);
    static final MobileIconGroup SIMPLIFIED_G = new MobileIconGroup("G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886705, 2131232386, false, 2131232462);
    static final MobileIconGroup SIMPLIFIED_H = new MobileIconGroup("H", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886685, 2131232387, false, 2131232463);
    static final MobileIconGroup SIMPLIFIED_H_PLUS = new MobileIconGroup("H_Plus", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886685, 2131232388, false, 2131232464);
    static final MobileIconGroup SIMPLIFIED_ONE_X = new MobileIconGroup("1X", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886691, 2131232379, true, 2131232453);
    static final MobileIconGroup SIMPLIFIED_THREE_G = new MobileIconGroup("3G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886687, 2131232381, true, 2131232455);
    static final MobileIconGroup SIMPLIFIED_THREE_G_PLUS = new MobileIconGroup("3G_Plus", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886687, 2131232382, false, 2131232456);
    static final MobileIconGroup SIMPLIFIED_TWO_G = new MobileIconGroup("2G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886691, 2131232380, false, 2131232454);

    static final MobileIconGroup THREE_G = new MobileIconGroup("3G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886687, 2131232337, true, 2131232455);
    static final MobileIconGroup THREE_G_KT = new MobileIconGroup("3G_KT", TELEPHONY_SIGNAL_STRENGTH, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886687, 2131232338, false, 2131232455);
    static final MobileIconGroup THREE_G_PLUS = new MobileIconGroup("3G_Plus", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886687, 2131232339, false, 2131232456);
    static final MobileIconGroup THREE_G_TMO = new MobileIconGroup("3G_TMO", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886687, 2131232341, false, 2131232455);
    static final MobileIconGroup TWO_G = new MobileIconGroup("2G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886691, 2131232335, false, 2131232454);
    static final MobileIconGroup TWO_G_KT = new MobileIconGroup("2G_KT", TELEPHONY_SIGNAL_STRENGTH, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 2131886705, 2131232336, false, 2131232462);
    static final MobileIconGroup UNKNOWN = new MobileIconGroup("Unknown", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 0, 0, false, 2131232468);
    static final MobileIconGroup WFC = new MobileIconGroup("WFC", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], 0, 0, false, 0);
    static final MobileSignalController.MobileIconGroup SIMPLIFIED_FOUR_5G = new MobileSignalController.MobileIconGroup("4G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH[0], getLeoResource("string/data_connection_4g"), mG5LeoIConnected, true,getLeoResource("drawable/stat_sys_nwbooster_data_4g"));
    TelephonyIcons() {
    }

    static int getTelephonyNoServiceIcon() {
        return Rune.STATBAR_SUPPORT_PURE_SIGNAL_ICON ? 2131232578 : "VZW".equals(Rune.STATBAR_ICON_BRANDING) ? 2131232550 : ("TMB".equals(Rune.STATBAR_ICON_BRANDING) || "MTR".equals(Rune.STATBAR_ICON_BRANDING)) ? 2131232549 : 2131232548;
    }

    static int[] getTelephonySignalContentDesc() {
        return Rune.STATBAR_MAX_SIGNAL_LEVEL == 5 ? AccessibilityContentDescriptions.PHONE_5_LEVEL_SIGNAL_STRENGTH : AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH;
    }

    static int[][] getTelephonySignalStrength() {
        return Rune.STATBAR_SUPPORT_PURE_SIGNAL_ICON ? TELEPHONY_PURE_SIGNAL_STRENGTH : Rune.STATBAR_SUPPORT_SIMPLIFIED_SIGNAL_CLUSTER ? TELEPHONY_5_LEVEL_SIGNAL_STRENGTH_SIMPLIFIED : Rune.STATBAR_MAX_SIGNAL_LEVEL == 5 ? TELEPHONY_5_LEVEL_SIGNAL_STRENGTH : TELEPHONY_SIGNAL_STRENGTH;
    }
}