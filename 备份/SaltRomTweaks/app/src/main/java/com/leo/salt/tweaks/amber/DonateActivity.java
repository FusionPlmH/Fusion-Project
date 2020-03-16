package com.leo.salt.tweaks.amber;

import android.Manifest;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;

import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;


import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BaseCollapsingToolbarActivity;
import com.leo.salt.tweaks.donate.AlipayDonate;
import com.leo.salt.tweaks.donate.WeiXinDonate;
import com.leo.salt.tweaks.resource.Resource;

import java.io.File;
import java.io.InputStream;

import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.resource.Resource.isChineseMainlandLanguage;
import static com.leo.salt.tweaks.resource.Resource.openUrl;
import static com.leo.salt.tweaks.view.widget.DialogView.Giving_Notice;
import static com.leo.salt.tweaks.view.widget.DialogView.joinQQGroup;
import static com.leo.salt.utils.PrefUtils.DayNight;


public class DonateActivity extends BaseCollapsingToolbarActivity implements View.OnClickListener, RadioGroup.OnCheckedChangeListener {

    public static final int REQUEST_CODE = 2233;

    public static final String Donate_USER_INPUT = "fkx08101iaromskiwv4nhdc";

    private TextView btAlipayFree;
    private TextView conversationA;
    private TextView conversationB;
    private TextView conversationC;
    private TextView conversationTelegram;
    public final  static  String Donate_CN="捐赠";
    public final  static  String Donate_EN="Donate ";
    public final  static  String ChinaDonate="\n即可升级到捐赠VIP版本,届时你将获得OTA更新以及更多个性化功能\n\n1.捐赠后将捐赠记录截图发送至我们提供两个QQ中的任意一个\n2.如果两个QQ没有及时回复请加入QQ群寻问群内管理员我们将会在看到信息后联系你\n3.如果没有立即回复请耐心等待(大家都有工作)";
    public final  static  String ChinaDonateEN="to upgrade to the donation version! At that time you will have all the features of the donation version and personalized features such as OTA updates.";
    private TextView Info;
    private TextView WeiXin;
    private LinearLayout AlipayFree;
    private TextView paypal;
    private TextView ListDonate;
    private ImageView DonateIMG;

    public View QQ;
    public View Telegram;
    public static String  DonateMoney(Context context){
        String str;
         if(isChineseLanguage()){
             str=Donate_CN+context.getString(R.string.money_donate)+ChinaDonate;
         }else {
             str=Donate_EN+context.getString(R.string.money_donate)+ChinaDonateEN;
         }
        return str;
    };
    @Override
    protected int initLayout() {
        return R.layout.activity_donate;

    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }


    @Override
    protected String initCollapsingTextText() {
        return "leo_slide_meun_donate";
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        DonateIMG=((ImageView)findViewById(R.id.donate_icon));

        Giving_Notice(mContext);
       QQ=((RelativeLayout)findViewById(R.id.view_qq));
        Telegram=((LinearLayout)findViewById(R.id.view_telegram));
        conversationTelegram=((TextView)findViewById(R.id.qq_telegram));
        conversationTelegram.setOnClickListener(this);
        paypal=((TextView)findViewById(R.id.bt_paypal));
        paypal.setText("Paypal");
        Drawable paypalDrawable= Resource.getCustomDrawable(mContext,"ic_paypal");
        paypalDrawable.setBounds(0,0,paypalDrawable.getMinimumWidth(),paypalDrawable.getMinimumHeight());
        paypal.setCompoundDrawables(paypalDrawable, null, null, null);
        WeiXin=((TextView)findViewById(R.id.bt_weixin));
        WeiXin.setText(getStringIdentifier(mContext,"wechat_pay"));
        Drawable WeiXinDrawable= Resource.getCustomDrawable(mContext,"ic_weixin");
        WeiXinDrawable.setBounds(0,0,WeiXinDrawable.getMinimumWidth(),WeiXinDrawable.getMinimumHeight());
        WeiXin.setCompoundDrawables(WeiXinDrawable, null, null, null);
        AlipayFree=((LinearLayout)findViewById(R.id.wei_zhi));


        btAlipayFree = ((TextView) findViewById(R.id.bt_alipay_free));
        btAlipayFree.setText(getStringIdentifier(mContext,"alipay_custom"));
        Drawable btAlipayFreeDrawable= Resource.getCustomDrawable(mContext,"ic_zhifubao");
        btAlipayFreeDrawable.setBounds(0,0,btAlipayFreeDrawable.getMinimumWidth(),btAlipayFreeDrawable.getMinimumHeight());
        btAlipayFree.setCompoundDrawables(btAlipayFreeDrawable, null, null, null);
        conversationA = ((TextView) findViewById(R.id.qq_1));
        conversationB = ((TextView) findViewById(R.id.qq_2));
        conversationB.setText("QQ群咨询");
        conversationC = ((TextView) findViewById(R.id.qq_3));

        Info= ((TextView) findViewById(R.id.donate_info));
        Info.setText(getStringIdentifier(mContext,"donate_why")+"\n"+getStringIdentifier(mContext,"donate_why_sumarry"));
        ListDonate=((TextView) findViewById(R.id.donate_listtitle));
        ListDonate.setText(getStringIdentifier(mContext,"alipay_wechat"));
        WeiXin.setOnClickListener(this);
            btAlipayFree.setOnClickListener(this);
            conversationA.setOnClickListener(this);
            conversationB.setOnClickListener(this);
            conversationC.setOnClickListener(this);
            paypal.setOnClickListener(this);
            //mCollapsingLinearLayout.setVisibility(View.GONE);
       if(isChineseLanguage()){
            AlipayFree.setVisibility(View.VISIBLE);
           if(isChineseMainlandLanguage()){
               paypal.setVisibility(View.GONE);
               QQ.setVisibility(View.VISIBLE);
               Telegram.setVisibility(View.GONE);
           }else {
               Telegram.setVisibility(View.VISIBLE);
           }
           DonateIMG.setVisibility(View.VISIBLE);
           if(DayNight(getApplicationContext())){
               DonateIMG.setImageDrawable(Resource.getCustomDrawable(mContext,"donate_icon2"));
               // reload();
           }else {
               DonateIMG.setImageDrawable(Resource.getCustomDrawable(mContext,"donate_icon"));
           }

        }else {
           AlipayFree.setVisibility(View.GONE);
           QQ.setVisibility(View.GONE);
           Telegram.setVisibility(View.VISIBLE);
        }
    }



    @Override
    public void onClick(View v) {
        int id = v.getId();
            doNormal(id);
    }


    private void doNormal(int id) {
        switch (id) {
            case R.id.bt_paypal:
                //微信捐赠
                showDonateTelegramDialog();
                break;
            case R.id.bt_weixin:
                //微信捐赠
                checkPermissionAndDonateWeixin();
             //   new DialogView(mContext,ChinaDonate,mContext.getResources().getString(R.string.wechat_pay),false);

                break;

            case R.id.bt_alipay_free:
                // 用户手动输入金额
                showDonatealipayDialog();

                break;
            case R.id.qq_1:
                startQQ("173150317");
                break;
            case R.id.qq_2:
                joinQQGroup(mContext,"4zUqpP7ZnFnqswJGwuTDkCbK6zxOZp-5");
                break;
            case R.id.qq_3:
                startQQ("821371473");
                 break;
            case R.id.qq_telegram:
                openUrl("https://t.me/joinchat/EJAScg_-vxG8Ppj2HvUifw",mContext);

                break;
        }
    }
    public void startQQ(String str){
        try {
            String url35212 = "mqqwpa://im/chat?chat_type=wpa&uin="+str;
            startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url35212)));
        } catch (Exception e) {
            Toast.makeText(mContext, getStringIdentifier(mContext,"qq_null"),
                    Toast.LENGTH_SHORT).show();
        }

    }
    @Override
    public void onCheckedChanged(RadioGroup group, @IdRes int checkedId) {
        RadioButton checkedRadioButton = (RadioButton) group.findViewById(checkedId);
        String text = checkedRadioButton.getText().toString().trim();

       //     currentMoney = Integer.valueOf(text.replace("RMB", "").trim());
         //   btAlipayCustom.setText(mContext.getResources().getString(R.string.alipay_default2)+"(" + currentMoney + " RMB)");

    }

    /**
     * 支付宝支付
     * @param payCode 收款码后面的字符串；例如：收款二维码里面的字符串为 https://qr.alipay.com/stx00187oxldjvyo3ofaw60 ，则
     *                payCode = stx00187oxldjvyo3ofaw60
     *                注：不区分大小写
     */
    private void donateAlipay(String payCode) {
        boolean hasInstalledAlipayClient = AlipayDonate.hasInstalledAlipayClient(this);
        if (hasInstalledAlipayClient) {
            AlipayDonate.startAlipayClient(this, payCode);
        }
    }

    private void checkPermissionAndDonateWeixin() {
        //检测微信是否安装
        if (!WeiXinDonate.hasInstalledWeiXinClient(this)) {
            Toast.makeText(this,getStringIdentifier(mContext,"wechat_not_installed"), Toast.LENGTH_SHORT).show();
            return;
        }
        if (ContextCompat.checkSelfPermission(this, Manifest.permission.WRITE_EXTERNAL_STORAGE) == PackageManager.PERMISSION_GRANTED) {
            //已经有权限
            showDonateTi2pDialog();
        } else {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_CODE);
        }
    }
    private void showDonatealipayDialog() {
        AlertDialog.Builder builder = new AlertDialog.Builder(mContext);
        builder.setTitle(getStringIdentifier(mContext, "alipay_custom"));
        builder.setMessage(DonateMoney(mContext));
        builder.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                donateAlipay(Donate_USER_INPUT);
            }
        });
        builder.setNegativeButton(android.R.string.cancel, null);
        builder.show();

    }
    private void showDonateTelegramDialog() {
        new AlertDialog.Builder(mContext)
                .setTitle("Telegram")
                .setMessage(DonateMoney(mContext))
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                    //   if (isGooglePlay){
                    //gotoTipShowActivity("微信捐赠", "在实际操作中用户必须手动输入金额。");
                    //    }else {
                    openUrl("https://www.paypal.me/plmh",mContext);;
                    //   }

                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();


    }
    private void showDonateTi2pDialog() {
        new AlertDialog.Builder(mContext)
                .setTitle(getStringIdentifier(mContext,"wechat_pay"))
                .setMessage(DonateMoney(mContext))
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                    //   if (isGooglePlay){
                    //gotoTipShowActivity("微信捐赠", "在实际操作中用户必须手动输入金额。");
                    //    }else {
                    showDonateTipDialog();
                    //   }

                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();


    }
    private void showDonateTipDialog() {
        new AlertDialog.Builder(this)
                .setTitle(getStringIdentifier(mContext,"wechat_pay_step"))
                .setMessage(getStringIdentifier(mContext,"wechat_pay_step_sumarry"))
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        donateWeixin();

                    }
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();

               // getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }

    /**
     * 需要提前准备好 微信收款码 照片，可通过微信客户端生成
     */
    private void donateWeixin() {
        InputStream weixinQrIs = getResources().openRawResource(R.raw.leo_weixin);
        String qrPath = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "AndroidDonateSample" + File.separator +
                "leo_weixin.png";
        WeiXinDonate.saveDonateQrImage2SDCard(qrPath, BitmapFactory.decodeStream(weixinQrIs));
        WeiXinDonate.donateViaWeiXin(this, qrPath);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            donateWeixin();
        } else {
            Toast.makeText(this, "权限被拒绝", Toast.LENGTH_LONG).show();
        }
    }

}
