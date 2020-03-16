package com.android.systemui.globalactions.presentation.features;

import android.content.Context;

import com.android.fusionleo.leoglobalactions.presentation.features.Features;
import com.android.systemui.Rune;
import com.samsung.android.feature.SemCscFeature;
import com.samsung.android.feature.SemFloatingFeature;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;



public class GlobalActionFeatures implements Features {
    Context mContext;


    public GlobalActionFeatures(Context context) {
        this.mContext = context;

    }

    private boolean isBikeModeSupported() {
        return SemCscFeature.getInstance().getString("CscFeature_Common_ConfigBikeMode").contains("bikemode") && SemCscFeature.getInstance().getString("CscFeature_Common_ConfigBikeMode").contains("globalaction");
    }

    private boolean isBixbyOnPowerKeySupported() {
        return SemFloatingFeature.getInstance().getString("SEC_FLOATING_FEATURE_BIXBY_CONFIG_HWKEY").equals("pwrkey");
    }

    private boolean isCoverSupported() {
        return true;
    }

    private boolean isDataModeSupported() {

        return false;
    }
    private boolean isNaviBarSupported() {
        return false;
    }

    private boolean isDemoModeSupported() {
        return false;
    }

    private boolean isDesktopModeSupported() {
        return true;
    }

    private boolean isEffectSupported() {
        return true;
    }

    private boolean isFingerPrintInDisplay() {
        return false;
    }

    private boolean isForceRestartMessageSupported() {
        return SemCscFeature.getInstance().getBoolean("CscFeature_Framework_SupportForceRestartGlobalAction");
    }

    private boolean isGraceRModel() {
        return false;
    }

    private boolean isKnoxContainerSupported() {
        return true;
    }

    private boolean isKnoxMDMSupported() {
        return true;
    }

    private boolean isKnoxSDKSupported() {
        return true;
    }



    private boolean isSafetyCareSupported() {
        return SemFloatingFeature.getInstance().getBoolean("SEC_FLOATING_FEATURE_COMMON_SUPPORT_SAFETYCARE");
    }

    public boolean isEnabled(String str) {
        boolean z = false;
        if (str.equals("SF_EFFECT")) {
            z = isEffectSupported();
        } else if (str.equals("NAV_BAR")) {
            z = isNaviBarSupported();
        } else if (str.equals("DESKTOP_MODE")) {
            z = isDesktopModeSupported();
        } else if (str.equals("KNOX_SDK")) {
            z = isKnoxSDKSupported();
        } else if (str.equals("SAFETY_CARE")) {
            z = isSafetyCareSupported();
        } else if (str.equals("KNOX_CONTAINER")) {
            z = isKnoxContainerSupported();
        } else if (str.equals("BIKE_MODE")) {
            z = isBikeModeSupported();
        } else if (str.equals("SCOVER")) {
            z = isCoverSupported();
        } else if (str.equals("DATA_MODE")) {
            z = isDataModeSupported();
        } else if (str.equals("DEMO_MODE")) {
            z = isDemoModeSupported();
        } else if (str.equals("KNOX_DEVICE_MANAGER")) {
            z = isKnoxMDMSupported();
        } else if (str.equals("LOCK_DOWN_MODE")) {
            z = true;
        } else if (str.equals("GRACE_BOTTOM_ICON")) {
            z = isGraceRModel();
        } else if (str.equals("FORCE_RESTART_MESSAGE")) {
            z = isForceRestartMessageSupported();
        } else if (str.equals("FINGERPRINT_IN_DISPLAY")) {
            z = isFingerPrintInDisplay();
        } else if (str.equals("SUPPORT_BIXBY_POWER_KEY")) {
            z = isBixbyOnPowerKeySupported();
        }
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("[");
        stringBuilder.append(str);
        stringBuilder.append("] ");
        stringBuilder.append(z);

        return z;
    }
}
