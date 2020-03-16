package com.leo.salt.feedback;

import android.Manifest;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;

import android.widget.Toast;

import com.leo.SweetAlert.SweetAlertDialog;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;

import com.meiqia.meiqiasdk.activity.MQConversationActivity;
import com.meiqia.meiqiasdk.model.Agent;
import com.meiqia.meiqiasdk.model.BaseMessage;
import com.meiqia.meiqiasdk.model.TextMessage;


import static com.leo.salt.tweaks.LeoAmberApplication.getContext;

import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.utils.ExtraInfo.getKenel;


public class FeedBackChina extends MQConversationActivity {
    private final static String mLine="\n";
    private final static String mDeviceName="手机型号:"+mLine+getLeoBuild("ro.boot.em.model");
    private final static String mOSName="ROM版本:"+mLine+getLeoBuild("ro.build.display.id");
    private final static String mKenelName="内核版本:"+mLine+ getKenel(getContext());
    private final static String mSerialName="序列号:"+mLine+ getLeoBuild("ril.serialnumber");
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        PermissionHome(this);

    }

    @Override
    protected void onLoadDataComplete(MQConversationActivity mqConversationActivity, Agent agent) {
        if (agent != null) {
            BaseMessage message = new TextMessage(mDeviceName+mLine+mOSName+mLine+mKenelName+mLine+mSerialName);
            // 在打开对话界面的时候，自动发送一条消息
            mqConversationActivity.sendMessage(message);
        }
    }

    @Override
    public void onBackPressed() {
        startActivity(new Intent(this, MainActivity.class));
        finish();
    }
    public static void  PermissionHome(Context context){

            final int of= Settings.System.getInt(context.getContentResolver(), "vip_feedback", 1);
            boolean hapticsDisabled = false;
            if (of==1) {
                hapticsDisabled = true;
            }
            if (hapticsDisabled) {
                new SweetAlertDialog(context, SweetAlertDialog.NORMAL_TYPE,true)
                        .setTitleText(context.getString(R.string.vip_feedback_name))
                        .setContentText("为什么开通捐赠版反馈通道?"+mLine+mLine+"1.不想因为QQ群的信息过多导致重要的反馈信息错过\n2.作为开发者我们也希望捐赠版用户能够提出宝贵的意见\n3.大家都有工作不能随时盯着QQ群的信息.这样可能会错过很多信息,为此我们开通捐赠版反馈通道,就算我不能及时回复你的信息但是你给我们提出意见建议都在服务器中保留,待我们查看回复你能时能收到我们的信息"+mLine+mLine+"对于你给我们提出的意见,我们表示感谢.并且在技术能力范围内尽力去实现你的需求")
                        .setConfirmText(context.getString(android.R.string.ok))
                        .setConfirmClickListener(sDialog1 -> {
                            Settings.System.putInt(context.getContentResolver(), "vip_feedback", 0);
                            sDialog1.dismissWithAnimation();

                        })
                        .show();

            }


    }
}
