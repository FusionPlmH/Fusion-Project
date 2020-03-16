package com.fusionleo.salt.donate;

import android.Manifest;
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
import android.support.v7.app.AlertDialog;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.Toolbar;
import android.view.MenuItem;
import android.view.View;
import android.widget.Button;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

import com.fusionleo.salt.R;
import com.fusionleo.salt.base.BaseActivity;
import com.fusionleo.salt.theme.Utils;


import java.io.File;
import java.io.InputStream;

import static com.fusionleo.salt.utils.Constants.mNewline;
import static com.fusionleo.salt.utils.Utils.isLunarSetting;
import static com.fusionleo.salt.widget.DialogUtil.dddddd;

public class DonateActivity extends BaseActivity implements View.OnClickListener, RadioGroup.OnCheckedChangeListener {

    public static final int REQUEST_CODE = 2233;

    public static final String Donate_USER_INPUT = "fkx034257ajwk4vbj26ebf0";
    public static final String Donate_35 = "fkx03711rhb9yavkern4za4";
    public static final String Donate_60 = "fkx00262db99wt5lrxptc54";
    public static final String Donate_80 = "fkx04588rpmcgjjlgtyux78";
    public static final String Donate_100 = "fkx05874lnxjwlyehrxn22f";

    private RadioGroup radioGroup;
    private Button btAlipayCustom;
    private Button btAlipayFree;
    private Button conversationA;
    private Button conversationB;
    private TextView Info;
    @Override
    protected int initLayout() {
        return R.layout.activity_donate;

    }

    @Override
    protected boolean initStatusBarColor() {
        return true;
    }

    private int currentMoney = 0;
  //  private boolean isGooglePlay = true;
 //   private TextView noticeTextView;


    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        findViewById(R.id.bt_weixin).setOnClickListener(this);
       // noticeTextView = ((TextView) findViewById(R.id.notice));
        btAlipayCustom = ((Button) findViewById(R.id.bt_alipay));
        btAlipayFree = ((Button) findViewById(R.id.bt_alipay_free));
        conversationA = ((Button) findViewById(R.id.qq_1));
        conversationB = ((Button) findViewById(R.id.qq_2));
        radioGroup = ((RadioGroup) findViewById(R.id.radio_group));
        Info= ((TextView) findViewById(R.id.donate_info));
        Info.setText(mContext.getResources().getString(R.string.donate_why_sumarry));
        if (isLunarSetting()==true){
            radioGroup.setOnCheckedChangeListener(this);
            radioGroup.getChildAt(0).performClick();
            btAlipayCustom.setOnClickListener(this);
            btAlipayFree.setOnClickListener(this);
            conversationA.setOnClickListener(this);
            conversationB.setOnClickListener(this);
            dddddd(mContext);
        } else {
            radioGroup.setVisibility(View.GONE);

            btAlipayCustom.setVisibility(View.GONE);
            btAlipayFree.setVisibility(View.GONE);
            conversationA.setVisibility(View.GONE);
            conversationB.setVisibility(View.GONE);
            ddd();
        }

        getToolbarViews();
       // checkPlatfrom();
    }
    private void getToolbarViews(){
        Utils.StatusBarColor(this);
        Toolbar toolbar = (Toolbar) findViewById(R.id.toolbar);
        setSupportActionBar(toolbar);
        getSupportActionBar().setTitle(R.string.nav_donate);
        getSupportActionBar().setDisplayHomeAsUpEnabled(true);
    }
    private  void  ddd(){
        AlertDialog dialog = new AlertDialog.Builder(this)
                .setTitle("Upgrades")//设置对话框的标题
                .setMessage("hello!\n Pay 15 dollar to have fully customize and OTA update.Buy us a cup of coffe to support our job,after pay please contact developer ")//设置对话框的内容
                .setNegativeButton("no", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        finish();
                        dialog.dismiss();
                    }
                })
                .setPositiveButton("Pay", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        finish();
                        openUrl("https://www.paypal.me/plmh");
                        dialog.dismiss();
                    }
                }).create();
        dialog.show();
        dialog.setCanceledOnTouchOutside(false);
        dialog.setCancelable(false);
        dialog.getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
    }


    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        /* 获取菜单项的ID */
        int id = item.getItemId();
        switch (id) {
            case android.R.id.home:
                onBackPressed();
                break;

        }
        /* 响应消息 方法回调 */
        return super.onOptionsItemSelected(item);
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
    private void openUrl(String url) {
        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.setData(Uri.parse(url));
        startActivity(intent);
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
            case R.id.bt_weixin:
                //微信捐赠
                checkPermissionAndDonateWeixin();
                break;
            case R.id.bt_alipay:
                // 自定义价格
                if (currentMoney == 35) {
                    donateAlipay(Donate_35);
                } else if (currentMoney == 60) {
                    donateAlipay(Donate_60);
                } else if (currentMoney == 80) {
                    donateAlipay(Donate_80);
                } else if (currentMoney == 100) {
                    donateAlipay(Donate_100);
                }
                break;
            case R.id.bt_alipay_free:
                // 用户手动输入金额
                donateAlipay(Donate_USER_INPUT);
                break;
            case R.id.qq_1:
                try {
                    String url3521 = "mqqwpa://im/chat?chat_type=wpa&uin=303834502";
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
        if (isLunarSetting()==true){
            currentMoney = Integer.valueOf(text.replace("RMB", "").trim());
            btAlipayCustom.setText(mContext.getResources().getString(R.string.alipay_default2)+"(" + currentMoney + " RMB)");
        }else {
            currentMoney = Integer.valueOf(text.replace("USD", "").trim());
            btAlipayCustom.setText(mContext.getResources().getString(R.string.alipay_default2)+"(" + currentMoney + " USD)");
        }

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
            showDonateTipDialog();
        } else {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_CODE);
        }
    }

    private void showDonateTipDialog() {
        new AlertDialog.Builder(this)
                .setTitle(R.string.wechat_pay_step)
                .setMessage(R.string.wechat_pay_step_sumarry)
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                     //   if (isGooglePlay){
                            //gotoTipShowActivity("微信捐赠", "在实际操作中用户必须手动输入金额。");
                    //    }else {
                            donateWeixin();
                     //   }

                    }
                })
                .setNegativeButton(android.R.string.cancel, null)
                .show();
                getWindow().setBackgroundDrawableResource(R.drawable.dialog_bg);
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
