
package com.android.settingslib.salt;

import android.content.Context;
import android.view.View;
import com.android.settingslib.salt.animation.AnimationParking;

import com.android.settingslib.salt.widget.*;

import static com.android.settingslib.salt.SaltIcon.getLeoStatusBarIcons;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoFloatBallEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoMiniPopEnabled;

public  class SaltSystemUI {
    private Context mContext;
    public SaltSystemUI(Context context){
        mContext=context;
    }
    public void refreshSaltSystemUI(){
        Context context=  mContext;
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
        LeoSysUiManages(mContext);
        if (setLeoMiniPopEnabled) {
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
    public  void refreshSaltFloat(){
        LeoSysUiManages(mContext);
        setFloatVisibility(setLeoFloatBallEnabled);
    }

    public  void setFloatVisibility(boolean Enabled) {
        if (Enabled) {
            SaltFloatWindowManager.addBallView(mContext);
        } else {
            SaltFloatWindowManager.removeBallView(mContext);
        }
    }

}