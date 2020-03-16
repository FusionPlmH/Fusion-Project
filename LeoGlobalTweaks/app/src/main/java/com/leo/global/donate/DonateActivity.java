package com.leo.global.donate;

import android.Manifest;
import android.app.AlertDialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;

import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import com.leo.global.tweaks.R;
import com.leo.global.tweaks.base.BaseActivity;
import com.leo.global.tweaks.base.BaseCollapsingToolbarActivity;
import com.leo.global.view.widget.DialogView;

import java.io.File;
import java.io.InputStream;

import static com.leo.global.utils.Build.isLunarCN;
import static com.leo.global.utils.Build.openUrl;


public class DonateActivity extends BaseCollapsingToolbarActivity implements View.OnClickListener, RadioGroup.OnCheckedChangeListener {

    public static final int REQUEST_CODE = 2233;

    public static final String Donate_USER_INPUT = "fkx08101iaromskiwv4nhdc";

    private TextView btAlipayFree;
    private Button conversationA;
    private Button conversationB;
    private String ChinaDonate="捐赠大于或者等于35人民币，即可升级到捐赠VIP版本,届时你将获得OTA更新以及更多个性化功能";
    private TextView Info;
    private TextView WeiXin;
    private LinearLayout AlipayFree;
    private LinearLayout Contact;
    private LinearLayout ContactTelegram;
    private TextView paypal;
    @Override
    protected int initLayout() {
        return R.layout.activity_donate;

    }

    @Override
    protected int initAppBarLayout() {
        return R.id.app_bar;
    }


    @Override
    protected int initCollapsingTextText() {
        return R.string.nav_donate;
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        paypal=((TextView)findViewById(R.id.bt_paypal));
        WeiXin=((TextView)findViewById(R.id.bt_weixin));
        AlipayFree=((LinearLayout)findViewById(R.id.wei_zhi));
        Contact=((LinearLayout)findViewById(R.id.contact));
        btAlipayFree = ((TextView) findViewById(R.id.bt_alipay_free));
        conversationA = ((Button) findViewById(R.id.qq_1));
        conversationB = ((Button) findViewById(R.id.qq_2));
        ContactTelegram= ((LinearLayout) findViewById(R.id.telegramLayout));
        Info= ((TextView) findViewById(R.id.donate_info));
        Info.setText(mContext.getResources().getString(R.string.donate_why_sumarry));
        WeiXin.setOnClickListener(this);
            btAlipayFree.setOnClickListener(this);
            conversationA.setOnClickListener(this);
            conversationB.setOnClickListener(this);
        paypal.setOnClickListener(this);
            mCollapsingLinearLayout.setVisibility(View.GONE);
        if(isLunarCN()){
            AlipayFree.setVisibility(View.VISIBLE);
            Contact.setVisibility(View.VISIBLE);
            ContactTelegram.setVisibility(View.GONE);
        }else {
            AlipayFree.setVisibility(View.GONE);
            Contact.setVisibility(View.GONE);
            ContactTelegram.setVisibility(View.VISIBLE);
        }
    }



    @Override
    public void onClick(View v) {
        int id = v.getId();
      //  if (isGooglePlay) {
            // 支付限制，改为图片展示
          //  doGoogle(id);
       // } else {
            // 正常情况下
            doNormal(id);
       // }

    }

  //  private String endString = "图片只做演示参考,以实际场景为准。";

   //private void doGoogle(int id) {
      //  switch (id) {
         //   case R.id.bt_weixin:
                //微信捐赠
            //    showDonateTipDialog();
               // break;
         //   case R.id.bt_alipay:
                // 自定义价格
            //    gotoTipShowActivity("支付宝捐赠--自定义价格", "在实际操作中用户选中相应的价格即可，无需手动输入，用户体验最好。");
             //   break;
         //   case R.id.bt_alipay_free:
                // 用户手动输入金额
            ///    gotoTipShowActivity("支付宝捐赠--用户填写", "在实际操作中用户必须手动输入金额。灵活度高，用户可以捐赠随意金额。");
            //    break;

      //  }
 //   }

   // private void gotoTipShowActivity(String title, String tip) {
     //   Intent tipIntent = new Intent(this, TipActivity.class);
       // tipIntent.putExtra("title", title);
      //  tipIntent.putExtra("tip", tip);
    //    tipIntent.putExtra("res", bgRes);
       // startActivity(tipIntent);
  //  }

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
                try {
                    String url3521 = "mqqwpa://im/chat?chat_type=wpa&uin=821371473";
                    startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url3521)));
                } catch (Exception e) {
                    Toast.makeText(mContext, R.string.no_qq,
                            Toast.LENGTH_SHORT).show();
                }
                break;
            case R.id.qq_2:
                try {
                    String url35212 = "mqqwpa://im/chat?chat_type=wpa&uin=1543422039";
                    startActivity(new Intent(Intent.ACTION_VIEW, Uri.parse(url35212)));
                } catch (Exception e) {
                    Toast.makeText(mContext, R.string.no_qq,
                            Toast.LENGTH_SHORT).show();
                }

                break;
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
            Toast.makeText(this, mContext.getResources().getString(R.string.wechat_not_installed), Toast.LENGTH_SHORT).show();
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
        new AlertDialog.Builder(mContext)
                .setTitle(R.string.alipay_custom)
                .setMessage(ChinaDonate)
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        donateAlipay(Donate_USER_INPUT);
                    }
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();

    }
    private void showDonateTelegramDialog() {
        new AlertDialog.Builder(mContext)
                .setTitle("Telegram")
                .setMessage(R.string.global_actions_donation)
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        //   if (isGooglePlay){
                        //gotoTipShowActivity("微信捐赠", "在实际操作中用户必须手动输入金额。");
                        //    }else {
                        openUrl("https://www.paypal.me/plmh",mContext);;
                        //   }

                    }
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();


    }
    private void showDonateTi2pDialog() {
        new AlertDialog.Builder(mContext)
                .setTitle(R.string.wechat_pay)
                .setMessage(ChinaDonate)
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        //   if (isGooglePlay){
                        //gotoTipShowActivity("微信捐赠", "在实际操作中用户必须手动输入金额。");
                        //    }else {
                        showDonateTipDialog();
                        //   }

                    }
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();


    }
    private void showDonateTipDialog() {
        new AlertDialog.Builder(this)
                .setTitle(R.string.wechat_pay_step)
                .setMessage(R.string.wechat_pay_step_sumarry)
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
