package com.android.systemui.statusbar.policy;


import com.android.systemui.Rune;
import com.android.systemui.statusbar.policy.MobileSignalController.MobileIconGroup;


import static com.android.settingslib.salt.SaltConfigFrame.mSaltContext;
import static com.android.settingslib.salt.SaltIcon.getLeoResource;

import static com.android.settingslib.salt.SaltIcon.mSalt5GConnected;
import static com.android.settingslib.salt.SaltIcon.mSalt5GConnected10;
import static com.android.settingslib.salt.SaltIcon.mSalt5GConnectedstyle;
import static com.android.settingslib.salt.SaltIcon.mSalt5GConnectedstyle10;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoStatusBar5GStyle;


class TelephonyIcons {

    static final int[] DATA_ACTIVITY_5G_VZW = new int[]{2131232540, 2131232518, 2131232549, 2131232532};
    static final int[] DATA_ACTIVITY_ATT = new int[]{0, 2131232523, 2131232554, 2131232534};
    static final int[] DATA_ACTIVITY_DEFAULT = new int[]{2131232539, 2131232517, 2131232548, 2131232531};
    static final int[] DATA_ACTIVITY_FIVE_G_ATT = new int[]{0, 2131232522, 2131232553, 2131232533};
    static final int[] DATA_ACTIVITY_LTE_PLUS = new int[]{2131232541, 2131232527, 2131232558, 2131232535};
    static final int[] DATA_ACTIVITY_LTE_PLUS_KT = new int[]{2131232542, 2131232528, 2131232559, 2131232536};
    static final int[] DATA_ACTIVITY_SIMPLIFIED = new int[]{2131232543, 2131232529, 2131232560, 2131232537};
    static final int[] DATA_ACTIVITY_TMO = new int[]{2131232544, 2131232530, 2131232561, 2131232538};
    static final int[][] TELEPHONY_5_LEVEL_SIGNAL_STRENGTH = new int[][]{new int[]{2131232494, 2131232498, 2131232502, 2131232506, 2131232510, 2131232514}, new int[]{2131232494, 2131232498, 2131232502, 2131232506, 2131232510, 2131232514}};
    static final int[][] TELEPHONY_5_LEVEL_SIGNAL_STRENGTH_SIMPLIFIED = new int[][]{new int[]{2131232496, 2131232500, 2131232504, 2131232508, 2131232512, 2131232516}, new int[]{2131232496, 2131232500, 2131232504, 2131232508, 2131232512, 2131232516}};

    static final int[][] TELEPHONY_PURE_SIGNAL_STRENGTH = new int[][]{new int[]{2131232577, 2131232579, 2131232581, 2131232583, 2131232585, 2131232587}, new int[]{2131232563, 2131232565, 2131232567, 2131232569, 2131232571, 2131232573}};
    static final int[][] TELEPHONY_SIGNAL_STRENGTH = new int[][]{new int[]{2131232484, 2131232486, 2131232488, 2131232490, 2131232492}, new int[]{2131232484, 2131232486, 2131232488, 2131232490, 2131232492}};
    static final int TELEPHONY_NO_NETWORK = getTelephonyNoServiceIcon();
   // static final MobileIconGroup CARRIER_NETWORK_CHANGE = new MobileIconGroup("CARRIER_NETWORK_CHANGE", null, null, TELEPHONY_NO_NETWORK, 0, 0, TELEPHONY_NO_NETWORK,0, 0,  2131886634, 0, false);
   static final MobileIconGroup SIMPLIFIED_FOUR_5G = new MobileIconGroup("4G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], getLeoResource("string/data_connection_4g"),refreshSalt5GSignal(), true, getLeoResource("drawable/stat_sys_nwbooster_data_4g"));

   // static final MobileIconGroup DATA_DISABLED = new MobileIconGroup("DataDisabled", null, null, 0, 0, 0, 0, 0, DATA_ACTIVITY_5G_VZW, 2131886638, 0, false);
    static final MobileIconGroup DC = new MobileIconGroup("DC", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0,DATA_ACTIVITY_5G_VZW[0], 2131886695, 2131232355, false, 2131232457);
    static final MobileIconGroup E = new MobileIconGroup("E", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886702, 2131232356, false, 2131232458);
    static final MobileIconGroup FIVE_G_ATT = new MobileIconGroup("5G_ATT", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886717, 2131232348, false, 2131232462);
    static final MobileIconGroup FIVE_G_VZW = new MobileIconGroup("5G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886700, 2131232347, true, 2131232455);
    static final MobileIconGroup FOUR_G = new MobileIconGroup("4G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232340, true, 2131232455);
    static final MobileIconGroup FOUR_G_ATT = new MobileIconGroup("4G_ATT", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232341, false, 2131232455);
    static final MobileIconGroup FOUR_G_LTE_LTN = new MobileIconGroup("4G_LTE_LTN", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886717, 2131232342, false, 2131232404);
    static final MobileIconGroup FOUR_G_PLUS = new MobileIconGroup("4G+", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886699, 2131232343, true, 2131232456);
    static final MobileIconGroup FOUR_G_TMO = new MobileIconGroup("4G_TMO", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232344, false, 2131232455);
    static final MobileIconGroup FOUR_G_USCC = new MobileIconGroup("4G_USCC", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232345, false, 2131232455);
    static final MobileIconGroup FOUR_G_VZW = new MobileIconGroup("4G_VZW", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0,DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232346, false, 2131232455);
    static final MobileIconGroup FOUR_HALF_G = new MobileIconGroup("4.5G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0,DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232339, true, 2131232454);
    static final MobileIconGroup FOUR_HALF_G_AMX = new MobileIconGroup("4.5G_AMX", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232402, true, 2131232454);
    static final MobileIconGroup FOUR_HALF_G_PLUS_AMX = new MobileIconGroup("4.5G_Plus_AMX", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232403, true, 2131232454);
    static final MobileIconGroup G = new MobileIconGroup("G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886715, 2131232357, false, 2131232459);
    static final MobileIconGroup H = new MobileIconGroup("H", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886716, 2131232359, false, 2131232460);
    static final MobileIconGroup H_PLUS = new MobileIconGroup("H_Plus", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886716, 2131232360, false, 2131232461);
    static final MobileIconGroup LTE = new MobileIconGroup("LTE", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886717, 2131232362, true, 2131232462);
    static final MobileIconGroup LTE_ATT = new MobileIconGroup("LTE_ATT", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886717, 2131232363, false, 2131232462);
   // static final MobileIconGroup LTE_KT = new MobileIconGroup("LTE_KT", TELEPHONY_SIGNAL_STRENGTH, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886717, 2131232364, false, 2131232462);
    static final MobileIconGroup LTE_PLUS = new MobileIconGroup("LTE+", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886718, 2131232365, true, 2131232464);
  //  static final MobileIconGroup LTE_PLUS_KT = new MobileIconGroup("LTE_Plus_KT", TELEPHONY_SIGNAL_STRENGTH, null, AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH, 0, 0, TELEPHONY_NO_NETWORK, 0,DATA_ACTIVITY_5G_VZW[0], 2131886717, 2131232366, true, 2131232464);
    static final MobileIconGroup LTE_TMO = new MobileIconGroup("LTE_TMO", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886717, 2131232368, false, 2131232462);
    static final MobileIconGroup ONE_X = new MobileIconGroup("1X", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886694, 2131232331, true, 2131232450);
    static final MobileIconGroup SIMPLIFIED_E = new MobileIconGroup("E", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886702, 2131232382, false, 2131232458);
    static final MobileIconGroup SIMPLIFIED_FOUR_G = new MobileIconGroup("4G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886698, 2131232380, true, 2131232455);
    static final MobileIconGroup SIMPLIFIED_FOUR_G_PLUS = new MobileIconGroup("4G+", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0,DATA_ACTIVITY_5G_VZW[0], 2131886699, 2131232381, true, 2131232456);
    static final MobileIconGroup SIMPLIFIED_G = new MobileIconGroup("G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886715, 2131232383, false, 2131232459);
    static final MobileIconGroup SIMPLIFIED_H = new MobileIconGroup("H", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886695, 2131232384, false, 2131232460);
    static final MobileIconGroup SIMPLIFIED_H_PLUS = new MobileIconGroup("H_Plus", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886695, 2131232385, false, 2131232461);
    static final MobileIconGroup SIMPLIFIED_ONE_X = new MobileIconGroup("1X", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886701, 2131232376, true, 2131232450);
    static final MobileIconGroup SIMPLIFIED_THREE_G = new MobileIconGroup("3G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886697, 2131232378, true, 2131232452);
    static final MobileIconGroup SIMPLIFIED_THREE_G_PLUS = new MobileIconGroup("3G_Plus", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886697, 2131232379, false, 2131232453);
    static final MobileIconGroup SIMPLIFIED_TWO_G = new MobileIconGroup("2G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886701, 2131232377, false, 2131232451);

    static final MobileIconGroup THREE_G = new MobileIconGroup("3G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886697, 2131232334, true, 2131232452);
  //  static final MobileIconGroup THREE_G_KT = new MobileSignalController.MobileIconGroup("3G_KT", TELEPHONY_SIGNAL_STRENGTH, null, TELEPHONY_NO_NETWORK[0], 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886697, 2131232335, false, 2131232452);
    static final MobileSignalController.MobileIconGroup THREE_G_PLUS = new MobileIconGroup("3G_Plus", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886697, 2131232336, false, 2131232453);
    static final MobileIconGroup THREE_G_TMO = new MobileIconGroup("3G_TMO", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886697, 2131232338, false, 2131232452);
    static final MobileIconGroup TWO_G = new MobileIconGroup("2G", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886701, 2131232332, false, 2131232451);
   // static final MobileIconGroup TWO_G_KT = new MobileIconGroup("2G_KT", TELEPHONY_SIGNAL_STRENGTH, null,TELEPHONY_NO_NETWORK, 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 2131886715, 2131232333, false, 2131232459);
    static final MobileIconGroup UNKNOWN = new MobileIconGroup("Unknown", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 0, 0, false, 2131232465);
    static final MobileIconGroup WFC = new MobileIconGroup("WFC", getTelephonySignalStrength(), null, getTelephonySignalContentDesc(), 0, 0, TELEPHONY_NO_NETWORK, 0, DATA_ACTIVITY_5G_VZW[0], 0, 0, false, 0);



    TelephonyIcons() {
    }
    static int getTelephonyNoServiceIcon() {
        return Rune.STATBAR_SUPPORT_PURE_SIGNAL_ICON ? 2131232575 : "VZW".equals(Rune.STATBAR_ICON_BRANDING) ? 2131232547 : ("TMB".equals(Rune.STATBAR_ICON_BRANDING) || "MTR".equals(Rune.STATBAR_ICON_BRANDING)) ? 2131232546 : 2131232545;
    }

    static int[] getTelephonySignalContentDesc() {
      //  return Rune.STATBAR_MAX_SIGNAL_LEVEL == 5 ? AccessibilityContentDescriptions.PHONE_5_LEVEL_SIGNAL_STRENGTH : AccessibilityContentDescriptions.PHONE_SIGNAL_STRENGTH;
        return new int[0];
    }

    static int[][] getTelephonySignalStrength() {
       // return Rune.STATBAR_SUPPORT_PURE_SIGNAL_ICON ? TELEPHONY_PURE_SIGNAL_STRENGTH : Rune.STATBAR_SUPPORT_SIMPLIFIED_SIGNAL_CLUSTER ? TELEPHONY_5_LEVEL_SIGNAL_STRENGTH_SIMPLIFIED : Rune.STATBAR_MAX_SIGNAL_LEVEL == 5 ? TELEPHONY_5_LEVEL_SIGNAL_STRENGTH : TELEPHONY_SIGNAL_STRENGTH;
        return new int[0][];
    }
    public static void  refreshSaltTelephonySignal(){
        getTelephonySignalStrength();
        LeoSysUiManages(mSaltContext);
        refreshSalt5GSignal();
    }
    public static int  refreshSalt5GSignal(){
        LeoSysUiManages(mSaltContext);
        return setLeoStatusBar5GStyle?mSalt5GConnectedstyle10:mSalt5GConnectedstyle;
    }
}
