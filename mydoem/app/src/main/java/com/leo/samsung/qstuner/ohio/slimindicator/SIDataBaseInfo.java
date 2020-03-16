package com.leo.samsung.qstuner.ohio.slimindicator;

import android.util.ArrayMap;

public class SIDataBaseInfo {
    public static final ArrayMap DB_ENABLE_TABLE = new ArrayMap();

    public static final int DB_KEY_CDMA_ERI = 907;

    public static final int DB_KEY_DATA_CONNECTION = 908;
    public static final int DB_KEY_DATA_SAVER = 801;

    public static final int DB_KEY_HEADSET = 102;

    public static final int DB_KEY_IME = 901;

    public static final int DB_KEY_LOCATION = 802;

    public static final int DB_KEY_MANAGED_PROFILE = 106;

    public static final int DB_KEY_MUTE = 906;

    public static final int DB_KEY_PHONE_EVDO_SIGNAL = 909;
    public static final int DB_KEY_PHONE_SIGNAL = 910;
    public static final int DB_KEY_POWER_SAVER = 803;
    public static final int DB_KEY_ROATE = 101;
    public static final int DB_KEY_SECURE = 911;
    public static final int DB_KEY_SPEAKERPHONE = 905;
    public static final int DB_KEY_SYNC_ACTIVE = 903;
    public static final int DB_KEY_SYNC_FAILING = 902;
    public static final ArrayMap DB_KEY_TABLE = new ArrayMap();
    public static final int DB_KEY_TTY = 104;

    public static final int DB_KEY_WORKPROFILE = 103;
    public static final int DB_KEY_ZEN = 105;

    public static final ArrayMap MAIN_TITLE_TABLE = new ArrayMap();

    public static final ArrayMap SUB_TITLE_TABLE = new ArrayMap();
    public static final String TAG = "SlimIndicator";
    public static final int VERSION = 1003;

    static {
        DB_ENABLE_TABLE.put(Integer.valueOf(0), Integer.valueOf(-1));
        DB_ENABLE_TABLE.put(Integer.valueOf(4), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(5), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(1), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(11), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(70), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(65), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(11), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(66), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(13), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(14), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_POWER_SAVER), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(12), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_ROATE), Integer.valueOf(-1));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_HEADSET), Integer.valueOf(-1));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_WORKPROFILE), Integer.valueOf(-1));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_TTY), Integer.valueOf(-1));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_ZEN), Integer.valueOf(-1));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_MANAGED_PROFILE), Integer.valueOf(-1));
        DB_ENABLE_TABLE.put(Integer.valueOf(65), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(69), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(68), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(67), Integer.valueOf(2));

        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_LOCATION), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_IME), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_SYNC_FAILING), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_SYNC_ACTIVE), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_SPEAKERPHONE), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(61), Integer.valueOf(1));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_MUTE), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_CDMA_ERI), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_DATA_CONNECTION), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_PHONE_EVDO_SIGNAL), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_PHONE_SIGNAL), Integer.valueOf(2));
        DB_ENABLE_TABLE.put(Integer.valueOf(DB_KEY_SECURE), Integer.valueOf(2));
        DB_KEY_TABLE.put(Integer.valueOf(0), Integer.valueOf(2131165367));

        DB_KEY_TABLE.put(Integer.valueOf(4), Integer.valueOf(2131165360));
        DB_KEY_TABLE.put(Integer.valueOf(68), Integer.valueOf(2131165349));
        DB_KEY_TABLE.put(Integer.valueOf(69), Integer.valueOf(2131165358));
        DB_KEY_TABLE.put(Integer.valueOf(70), Integer.valueOf(2131165348));
        DB_KEY_TABLE.put(Integer.valueOf(65), Integer.valueOf(2131165354));
        DB_KEY_TABLE.put(Integer.valueOf(11), Integer.valueOf(2131165377));
        DB_KEY_TABLE.put(Integer.valueOf(66), Integer.valueOf(2131165378));
        DB_KEY_TABLE.put(Integer.valueOf(67), Integer.valueOf(2131165355));
        DB_KEY_TABLE.put(Integer.valueOf(1), Integer.valueOf(2131165364));
        DB_KEY_TABLE.put(Integer.valueOf(13), Integer.valueOf(2131165345));
        DB_KEY_TABLE.put(Integer.valueOf(14), Integer.valueOf(2131165347));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_POWER_SAVER), Integer.valueOf(2131165370));
        DB_KEY_TABLE.put(Integer.valueOf(5), Integer.valueOf(2131165346));
        DB_KEY_TABLE.put(Integer.valueOf(12), Integer.valueOf(2131165351));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_ROATE), Integer.valueOf(2131165371));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_HEADSET), Integer.valueOf(2131165356));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_WORKPROFILE), Integer.valueOf(2131165379));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_TTY), Integer.valueOf(2131165376));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_ZEN), Integer.valueOf(2131165380));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_MANAGED_PROFILE), Integer.valueOf(2131165363));

        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_LOCATION), Integer.valueOf(2131165361));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_IME), Integer.valueOf(2131165359));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_SYNC_FAILING), Integer.valueOf(2131165374));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_SYNC_ACTIVE), Integer.valueOf(2131165375));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_SPEAKERPHONE), Integer.valueOf(2131165373));
        DB_KEY_TABLE.put(Integer.valueOf(61), Integer.valueOf(2131165366));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_MUTE), Integer.valueOf(2131165365));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_CDMA_ERI), Integer.valueOf(2131165350));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_DATA_CONNECTION), Integer.valueOf(2131165352));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_PHONE_EVDO_SIGNAL), Integer.valueOf(2131165368));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_PHONE_SIGNAL), Integer.valueOf(2131165369));
        DB_KEY_TABLE.put(Integer.valueOf(DB_KEY_SECURE), Integer.valueOf(2131165372));
        MAIN_TITLE_TABLE.put(Integer.valueOf(0), Integer.valueOf(2131165292));

        MAIN_TITLE_TABLE.put(Integer.valueOf(4), Integer.valueOf(2131165285));
        MAIN_TITLE_TABLE.put(Integer.valueOf(68), Integer.valueOf(2131165274));
        MAIN_TITLE_TABLE.put(Integer.valueOf(69), Integer.valueOf(2131165283));
        MAIN_TITLE_TABLE.put(Integer.valueOf(70), Integer.valueOf(2131165273));
        MAIN_TITLE_TABLE.put(Integer.valueOf(65), Integer.valueOf(2131165279));
        MAIN_TITLE_TABLE.put(Integer.valueOf(11), Integer.valueOf(2131165302));
        MAIN_TITLE_TABLE.put(Integer.valueOf(66), Integer.valueOf(2131165303));
        MAIN_TITLE_TABLE.put(Integer.valueOf(67), Integer.valueOf(2131165280));
        MAIN_TITLE_TABLE.put(Integer.valueOf(1), Integer.valueOf(2131165289));
        MAIN_TITLE_TABLE.put(Integer.valueOf(13), Integer.valueOf(2131165270));
        MAIN_TITLE_TABLE.put(Integer.valueOf(14), Integer.valueOf(2131165272));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_POWER_SAVER), Integer.valueOf(2131165295));
        MAIN_TITLE_TABLE.put(Integer.valueOf(5), Integer.valueOf(2131165271));
        MAIN_TITLE_TABLE.put(Integer.valueOf(12), Integer.valueOf(2131165276));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_ROATE), Integer.valueOf(2131165296));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_HEADSET), Integer.valueOf(2131165281));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_WORKPROFILE), Integer.valueOf(2131165304));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_TTY), Integer.valueOf(2131165301));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_ZEN), Integer.valueOf(2131165305));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_MANAGED_PROFILE), Integer.valueOf(2131165288));

        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_LOCATION), Integer.valueOf(2131165286));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_IME), Integer.valueOf(2131165284));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_SYNC_FAILING), Integer.valueOf(2131165299));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_SYNC_ACTIVE), Integer.valueOf(2131165300));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_SPEAKERPHONE), Integer.valueOf(2131165298));
        MAIN_TITLE_TABLE.put(Integer.valueOf(61), Integer.valueOf(2131165291));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_MUTE), Integer.valueOf(2131165290));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_CDMA_ERI), Integer.valueOf(2131165275));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_DATA_CONNECTION), Integer.valueOf(2131165277));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_PHONE_EVDO_SIGNAL), Integer.valueOf(2131165293));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_PHONE_SIGNAL), Integer.valueOf(2131165294));
        MAIN_TITLE_TABLE.put(Integer.valueOf(DB_KEY_SECURE), Integer.valueOf(2131165297));
        SUB_TITLE_TABLE.put(Integer.valueOf(0), Integer.valueOf(2131165320));

        SUB_TITLE_TABLE.put(Integer.valueOf(4), Integer.valueOf(2131165316));
        SUB_TITLE_TABLE.put(Integer.valueOf(68), Integer.valueOf(2131165382));
        SUB_TITLE_TABLE.put(Integer.valueOf(69), Integer.valueOf(2131165387));
        SUB_TITLE_TABLE.put(Integer.valueOf(70), Integer.valueOf(2131165311));
        SUB_TITLE_TABLE.put(Integer.valueOf(65), Integer.valueOf(2131165314));
        SUB_TITLE_TABLE.put(Integer.valueOf(11), Integer.valueOf(2131165322));
        SUB_TITLE_TABLE.put(Integer.valueOf(66), Integer.valueOf(2131165323));
        SUB_TITLE_TABLE.put(Integer.valueOf(67), Integer.valueOf(2131165385));
        SUB_TITLE_TABLE.put(Integer.valueOf(1), Integer.valueOf(2131165318));
        SUB_TITLE_TABLE.put(Integer.valueOf(13), Integer.valueOf(2131165308));
        SUB_TITLE_TABLE.put(Integer.valueOf(14), Integer.valueOf(2131165310));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_POWER_SAVER), Integer.valueOf(2131165321));
        SUB_TITLE_TABLE.put(Integer.valueOf(5), Integer.valueOf(2131165309));
        SUB_TITLE_TABLE.put(Integer.valueOf(12), Integer.valueOf(2131165312));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_ROATE), Integer.valueOf(2131165394));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_HEADSET), Integer.valueOf(2131165386));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_WORKPROFILE), Integer.valueOf(2131165400));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_TTY), Integer.valueOf(2131165400));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_ZEN), Integer.valueOf(2131165401));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_MANAGED_PROFILE), Integer.valueOf(2131165390));

        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_LOCATION), Integer.valueOf(2131165389));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_IME), Integer.valueOf(2131165389));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_SYNC_FAILING), Integer.valueOf(2131165397));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_SYNC_ACTIVE), Integer.valueOf(2131165398));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_SPEAKERPHONE), Integer.valueOf(2131165396));
        SUB_TITLE_TABLE.put(Integer.valueOf(61), Integer.valueOf(2131165319));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_MUTE), Integer.valueOf(2131165391));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_CDMA_ERI), Integer.valueOf(2131165383));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_DATA_CONNECTION), Integer.valueOf(2131165384));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_PHONE_EVDO_SIGNAL), Integer.valueOf(2131165392));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_PHONE_SIGNAL), Integer.valueOf(2131165393));
        SUB_TITLE_TABLE.put(Integer.valueOf(DB_KEY_SECURE), Integer.valueOf(2131165395));

    }
}
