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

package com.android.settingslib.salt;


import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.graphics.Typeface;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

import com.android.settingslib.salt.animation.AnimationParking;
import com.android.settingslib.salt.utils.LeoReceiver;
import com.android.settingslib.salt.widget.MeterBack;
import com.android.settingslib.salt.widget.MeterBase;
import com.android.settingslib.salt.widget.MeterFlashlight;
import com.android.settingslib.salt.widget.MeterHome;
import com.android.settingslib.salt.widget.MeterRecent;
import com.android.settingslib.salt.widget.Until;

import static com.android.settingslib.salt.SaltIcon.getLeoStatusBarIcons;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoMiniPopEnabled;


public  class SaltSystemUI {

    public SaltSystemUI(){

    }
    public void refreshSaltSystemUI(){
        Context context=SaltConfigFrame.mSaltContext;
        LeoSysUiManages(context);
        getLeoStatusBarIcons();
        Until.initialPop(context);
        new MeterFlashlight(context);
        new MeterRecent(context);
        new MeterBack(context);
        new MeterHome(context);
        new SaltFloatBall(context);
        refreshSaltMinipop();
        refreshSaltFloat();
    }
    public  void refreshSaltMinipop(){
        setMinipopVisibility(setLeoMiniPopEnabled);
    }
    public  void refreshSaltFloat(){
        setFloatVisibility(SaltConfigFrame.mSaltContext,setLeoFloatBallEnabled);
    }

    public  void setFloatVisibility(Context context,boolean Enabled) {
        if (Enabled) {
            SaltFloatWindowManager.addBallView(context);
        } else {
            SaltFloatWindowManager.removeBallView(context);
        }
    }
    public  void setMinipopVisibility(boolean Enabled) {
        if (Enabled) {
            AnimationParking.stop();
            AnimationParking.mOriginSide = AnimationParking.LEFT;
            AnimationParking.baseX = -1;
            AnimationParking.updateAll(-1, MeterHome.baseY);
            MeterBase.MeterMap.get(MeterHome.NAME).setVisibility(View.VISIBLE);
            MeterBase.MeterMap.get(MeterBack.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterRecent.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterFlashlight.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterHome.NAME).setAlpha(0.4f);
            AnimationParking.shrinkStart();
        } else {
            MeterBase.MeterMap.get(MeterBack.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterRecent.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterFlashlight.NAME).setVisibility(View.GONE);
            MeterBase.MeterMap.get(MeterHome.NAME).setVisibility(View.GONE);
        }
    }

}