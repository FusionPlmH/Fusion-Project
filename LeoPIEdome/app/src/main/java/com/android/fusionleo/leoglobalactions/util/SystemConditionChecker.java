package com.android.fusionleo.leoglobalactions.util;

import com.android.fusionleo.leoglobalactions.presentation.SecGlobalActionsManager;
import com.android.fusionleo.leoglobalactions.presentation.features.Features;

public class SystemConditionChecker implements ConditionChecker {
    private static final String TAG = "SystemConditionChecker";
    private final Features mFeatures;


    /* renamed from: com.android.fusionleo.leoglobalactions.util.SystemConditionChecker$1 */
    static /* synthetic */ class AnonymousClass1 {
        static final /* synthetic */ int[] $SwitchMap$com$samsung$android$globalactions$util$SystemConditions = new int[SystemConditions.values().length];

        static {
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.GET_MOBILE_DATA_ENABLED.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_ENCRYPTION_STATUS_ACTIVE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_LOGOUT_ENABLED.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SECURE_KEYGUARD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_FMM_LOCKED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_CARRIRER_LOCK_PLUS_ENABLED.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_RMM_LOCKED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_BIKE_MODE_INSTALLED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_BIXBY_PACKAGE_ENABLED.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_KIDS_HOME_MODE.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_ATT_FOTA_CLIENT_PACKAGE_ENABLED.ordinal()] = 11;
            } catch (NoSuchFieldError e11) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.CAN_SET_MODE.ordinal()] = 12;
            } catch (NoSuchFieldError e12) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_UPSM_ENABLED.ordinal()] = 13;
            } catch (NoSuchFieldError e13) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_EMERGENCY_MODE.ordinal()] = 14;
            } catch (NoSuchFieldError e14) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_MODIFYING.ordinal()] = 15;
            } catch (NoSuchFieldError e15) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_VALID_VERSION.ordinal()] = 16;
            } catch (NoSuchFieldError e16) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_DO_PROVISIONING_MODE.ordinal()] = 17;
            } catch (NoSuchFieldError e17) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_COM_CONTAINER_MODE.ordinal()] = 18;
            } catch (NoSuchFieldError e18) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.GET_KEYGUARD_SHOW_STATE.ordinal()] = 19;
            } catch (NoSuchFieldError e19) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_BUG_REPORT_MODE.ordinal()] = 20;
            } catch (NoSuchFieldError e20) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_BIKE_MODE.ordinal()] = 21;
            } catch (NoSuchFieldError e21) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_MISSING_PHONE_LOCK.ordinal()] = 22;
            } catch (NoSuchFieldError e22) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_AIRPLANE_MODE.ordinal()] = 23;
            } catch (NoSuchFieldError e23) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_LOCK_NETWORK_AND_SECURITY.ordinal()] = 24;
            } catch (NoSuchFieldError e24) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SIM_STATE_ABSENT.ordinal()] = 25;
            } catch (NoSuchFieldError e25) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_DOMESTIC_OTA_MODE.ordinal()] = 26;
            } catch (NoSuchFieldError e26) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_TABLET_DEVICE.ordinal()] = 27;
            } catch (NoSuchFieldError e27) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_TSAFE_LOCK.ordinal()] = 28;
            } catch (NoSuchFieldError e28) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SIM_LOCK.ordinal()] = 29;
            } catch (NoSuchFieldError e29) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.HAS_ANY_SIM.ordinal()] = 30;
            } catch (NoSuchFieldError e30) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_FIRSTNET_SIM.ordinal()] = 31;
            } catch (NoSuchFieldError e31) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_ALLOWED_SAFE_BOOT.ordinal()] = 32;
            } catch (NoSuchFieldError e32) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_DESKTOP_MODE_DUAL_VIEW.ordinal()] = 33;
            } catch (NoSuchFieldError e33) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_LOCK_DOWN_IN_POWER_MENU.ordinal()] = 34;
            } catch (NoSuchFieldError e34) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_CURRENT_USER_SECURE.ordinal()] = 35;
            } catch (NoSuchFieldError e35) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_STRONG_AUTH_FOR_LOCK_DOWN.ordinal()] = 36;
            } catch (NoSuchFieldError e36) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_VOICE_ASSISTANT_MODE.ordinal()] = 37;
            } catch (NoSuchFieldError e37) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_WHITE_THEME.ordinal()] = 38;
            } catch (NoSuchFieldError e38) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_ULTRA_POWER_SAVING_MODE.ordinal()] = 39;
            } catch (NoSuchFieldError e39) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SHOP_DEMO.ordinal()] = 40;
            } catch (NoSuchFieldError e40) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_FOTA_AVAILABLE_FOR_GLOBALACTIONS.ordinal()] = 41;
            } catch (NoSuchFieldError e41) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.IS_SUPPORT_EMERGENCY_MODE.ordinal()] = 42;
            } catch (NoSuchFieldError e42) {
            }
            try {
                $SwitchMap$com$samsung$android$globalactions$util$SystemConditions[SystemConditions.PWD_CHANGE_ENFORCED.ordinal()] = 43;
            } catch (NoSuchFieldError e43) {
            }
        }
    }

    public SystemConditionChecker( Features features) {

        this.mFeatures = features;

    }

    private boolean isEnabled(SystemConditions systemConditions) {
        switch (AnonymousClass1.$SwitchMap$com$samsung$android$globalactions$util$SystemConditions[systemConditions.ordinal()]) {

            default:
                return false;
        }
    }

    public boolean isEnabled(Object obj) {
        try {
            Long valueOf = Long.valueOf(System.currentTimeMillis());
            SystemConditions valueOf2 = SystemConditions.valueOf(obj.toString());
            boolean isEnabled = isEnabled(valueOf2);
            Long valueOf3 = Long.valueOf(System.currentTimeMillis());

            String str = TAG;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("[");
            stringBuilder.append(valueOf2.name().toLowerCase());
            stringBuilder.append("] ");
            stringBuilder.append(isEnabled);
            stringBuilder.append(" (");
            stringBuilder.append(valueOf3.longValue() - valueOf.longValue());
            stringBuilder.append(")");

            return isEnabled;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
