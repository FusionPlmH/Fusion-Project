package com.android.fusionleo.leoglobalactions.util;

import android.content.Context;

public class SemEmergencyManagerWrapper {
    private final Context mContext;


    public SemEmergencyManagerWrapper(Context context) {
        this.mContext = context;

    }

    public boolean canSetMode() {
        return false;
    }

    public boolean isEmergencyMode() {
        return false;
    }

    public boolean isModifying() {
        return false;
    }

    public boolean isUPSMEnabled() {
        return false;
    }
}
