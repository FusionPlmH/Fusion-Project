/*
 * Copyright (C) 2010 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.systemui;


import android.content.ContentResolver;
import android.content.Context;
import android.provider.Settings;

;

import static com.os.leo.utils.LeoUserSettings.*;
import static com.android.systemui.UId.SignalOFF;

import static com.android.systemui.UId.signalAIconStyle;

public class Rune{

    public static boolean KEYWI_USE_EXTERNAL_CLOCK_PACKAGE =true;

    public static final String NAVBAR_FLOATING_FEATURES ="SEC_FLOATING_FEATURE_FRAMEWORK_CONFIG_NAVIGATION_BAR_THEME";
    public static final boolean NAVBAR_ENABLED =true;
    public static final boolean NAVBAR_SUPPORT_LIGHT_NAVIGATIONBAR = NAVBAR_FLOATING_FEATURES.contains("SupportLightNavigationBar");

    public static final boolean NAVBAR_SUPPORT_STABLE_LAYOUT = NAVBAR_ENABLED;
    public static final boolean NAVBAR_SUPPORT_FORCE_IMMERSIVE = NAVBAR_ENABLED;

    public static final boolean STATBAR_SUPPORT_SIMPLIFIED_SIGNAL_CLUSTER = false;
    public static final boolean KEYWI_SUPPORT_PERSIAN_CALENDAR =  false;
    public static final boolean KEYWI_SUPPORT_SERVICEBOX =  false;
    public static final String KEYWI_VALUE_CLOCK_FONT_STYLE = "";

    public static final int STATBAR_MAX_SIGNAL_LEVEL = 4;
    public static final boolean STATBAR_SUPPORT_PURE_SIGNAL_ICON = false;

    public static final float STATBAR_CONFIG_DEVICE_CORNER_ROUND = 0;
    public static final int STATBAR_CONFIG_STATUSBAR_SIDE_PADDING = ((int) ((STATBAR_CONFIG_DEVICE_CORNER_ROUND * (updateLeoSidePadding() - STATBAR_CONFIG_DEVICE_CORNER_ROUND)) - 1.0f));
    public static float updateLeoSidePadding() {
        float style;
        if(setLeoUesrStatsusBarIconPaddingEnable){
            style=setLeoUesrStatsusBarIconPadding;
        }
        else{
            style=10.0f;
        }
        return style;
    }
    public static final String STATBAR_ICON_BRANDING = SignalOFF();
    public static boolean shouldEnableKeyguardScreenRotation(Context context) {
        return setLeoUesrLockScreenRotation;
    }

}

