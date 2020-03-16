package com.leo.salt.tweaks.amber;

import android.Manifest;
import android.app.AlertDialog;
import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.os.Environment;
import android.provider.Settings;
import android.support.annotation.IdRes;
import android.support.annotation.NonNull;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;

import android.text.Html;
import android.text.InputType;
import android.view.View;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;


import com.leo.SweetAlert.SweetAlertDialog;
import com.leo.salt.preference.SaltSettingPreference;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.base.BaseCollapsingToolbarActivity;
import com.leo.salt.tweaks.donate.AlipayDonate;
import com.leo.salt.tweaks.donate.WeiXinDonate;
import com.leo.salt.tweaks.resource.Resource;
import com.os.salt.OSBuild;

import java.io.File;
import java.io.InputStream;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.QQGroup;
import static com.leo.salt.tweaks.resource.Resource.getApksStringInt;
import static com.leo.salt.tweaks.resource.Resource.getColorInt;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getCustomDrawable;
import static com.leo.salt.tweaks.resource.Resource.getLeoBuild;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.tweaks.resource.Resource.isChineseLanguage;
import static com.leo.salt.tweaks.resource.Resource.openUrl;
import static com.leo.salt.tweaks.view.widget.DialogView.Giving_Notice;
import static com.os.salt.OSBuild.SystemProperties.getLeoSystemPropString;
import static com.os.salt.OSBuild.SystemUrl.Phonebootloader;


public class DonateActivity extends BaseCollapsingToolbarActivity implements View.OnClickListener, RadioGroup.OnCheckedChangeListener {

    public static final int REQUEST_CODE = 2233;

    public static final String Donate_USER_INPUT = "fkx08101iaromskiwv4nhdc";
    public static final String Donate_Bright = "fkx07030yfr0kmc85j8vud9";
    private TextView btAlipayFree;
    private TextView conversationA;
    private TextView conversationB;
    private TextView conversationC;
    private TextView conversationTelegram;

   // public final  static  String ChinaDonate="\n即可升级到捐赠VIP版本,届时你将获得OTA更新以及更多个性化功能\n\n1.捐赠后将捐赠记录截图发送至我们提供两个QQ中的任意一个\n2.如果两个QQ没有及时回复请加入QQ群寻问群内管理员我们将会在看到信息后联系你\n3.如果没有立即回复请耐心等待(大家都有工作)";
   // public final  static  String ChinaDonateEN="to upgrade to the donation version! At that time you will have all the features of the donation version and personalized features such as OTA updates.";
    private TextView Info;
    private TextView WeiXin;
    private LinearLayout AlipayFree;
    private TextView paypal;
    private TextView ListDonate;
    private ImageView DonateIMG;
    public View QQ;
    public View Telegram;
    public static String  DonateMoney(){
        String str;
         if(isChineseLanguage()){
             if(Phonebootloader(3).equals("G97")){
                 str=getApksStringInt(R.string.money_donate88)+getApksStringInt(R.string.donate_info_regulation);
             }else {
                 str=getApksStringInt(R.string.money_donate)+getApksStringInt(R.string.donate_info_regulation);
             }

         }else {
             if(Phonebootloader(3).equals("G97")){
                 str=getApksStringInt(R.string.money_donate88)+getApksStringInt(R.string.donate_info_regulation);
             }else {
                 str=getApksStringInt(R.string.money_donate)+getApksStringInt(R.string.donate_info_regulation);
             }

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
        Drawable paypalDrawable= getCustomDrawable(mContext,"ic_paypal");
        paypalDrawable.setBounds(0,0,150,150);
        paypal.setCompoundDrawablePadding(30);
        paypal.setCompoundDrawables(paypalDrawable, null, null, null);
        WeiXin=((TextView)findViewById(R.id.bt_weixin));
        WeiXin.setText(getStringIdentifier(mContext,"wechat_pay"));
        Drawable WeiXinDrawable= getCustomDrawable(mContext,"ic_weixin");
        WeiXinDrawable.setBounds(0,0,150,150);
        WeiXin.setCompoundDrawablePadding(30);
        WeiXin.setCompoundDrawables(WeiXinDrawable, null, null, null);
        AlipayFree=((LinearLayout)findViewById(R.id.wei_zhi));


        btAlipayFree = ((TextView) findViewById(R.id.bt_alipay_free));
        btAlipayFree.setText(getStringIdentifier(mContext,"alipay_custom"));
        Drawable btAlipayFreeDrawable= getCustomDrawable(mContext,"ic_zhifubao");
        btAlipayFree.setCompoundDrawablePadding(30);
        btAlipayFreeDrawable.setBounds(0,0,150,150);
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
               paypal.setVisibility(View.VISIBLE);
               QQ.setVisibility(View.VISIBLE);
               Telegram.setVisibility(View.VISIBLE);

           DonateIMG.setVisibility(View.VISIBLE);
           DonateIMG.setImageDrawable(getCustomDrawable(mContext,"donate_icon"));

        }else {
           AlipayFree.setVisibility(View.GONE);
           QQ.setVisibility(View.GONE);
           Telegram.setVisibility(View.VISIBLE);
        }
    }

    public void onClickCopy(View v) {

        showCopyDialog();

    }
    public static void copyToClipboard(Context context, CharSequence content) {
        ClipboardManager clipboard = (ClipboardManager) context.getSystemService(Context.CLIPBOARD_SERVICE);
        if (clipboard != null) {
            clipboard.setPrimaryClip(ClipData.newPlainText(null, content));//参数一：标签，可为空，参数二：要复制到剪贴板的文本
            if (clipboard.hasPrimaryClip()) {
                clipboard.getPrimaryClip().getItemAt(0).getText();
            }
        }
    }
    public LinearLayout mLayout;
    public EditText qq;
    public EditText qqname;
    public EditText pay;
    private void showCopyDialog() {
        AlertDialog dialog;
        AlertDialog.Builder alert = new AlertDialog.Builder(mContext);
        alert.setTitle(R.string.pay_name);
        final TextView info = new TextView(mContext);
        info.setText(R.string.pay_info);
        info.setTextSize(18);
        info.setPadding(0,0,0,20);
        final TextView ifo = new TextView(mContext);
        ifo.setText(R.string.qq_info);
        ifo.setTextSize(18);
        final TextView ifo3 = new TextView(mContext);
        ifo3.setText(R.string.qq_name);
        ifo3.setTextSize(18);
        final TextView ifo2 = new TextView(mContext);
        ifo2.setText(R.string.pay_way);
        ifo2.setTextSize(18);
        final TextView model = new TextView(mContext);
        model.setText(getStringIdentifier(mContext,"device_info_model")+"\n"+getLeoBuild("ro.boot.em.model"));
        model.setTextSize(18);
        final TextView number23 = new TextView(mContext);
        number23.setText(getStringIdentifier(mContext,"device_info_serial")+"\n"+getLeoBuild("ril.serialnumber"));
        number23.setTextSize(18);
        final TextView reminder = new TextView(mContext);
        reminder.setText("﹡"+getApksStringInt(R.string.copy_info));
        reminder.setTextSize(18);
        reminder.setPadding(0,30,0,0);
        reminder.setTextColor(getColorInt(R.color.colorAccent_setting));
        reminder.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
        qq = new EditText(mContext);
        qq .setInputType( InputType.TYPE_CLASS_NUMBER);
        ifo.setPadding(10,0,0,0);
        qqname = new EditText(mContext);
        ifo3.setPadding(10,0,0,0);
        pay = new EditText(mContext);
        qq.setHint(getApksStringInt(R.string.pay_input)+getApksStringInt(R.string.qq_info));
        qqname.setHint(getApksStringInt(R.string.pay_input)+getApksStringInt(R.string.qq_name));
        pay.setHint(getApksStringInt(R.string.pay_input)+getApksStringInt(R.string.pay_way));
        mLayout = new LinearLayout(mContext);
        mLayout.setOrientation(LinearLayout.VERTICAL);
        mLayout.setPadding(60,30,60,30);
        mLayout.addView(info);
        mLayout.addView(ifo);
        mLayout.addView(qq);
        mLayout.addView(ifo3);
        mLayout.addView(qqname);
        mLayout.addView(ifo2);
        mLayout.addView(pay);
        mLayout.addView(model );
        mLayout.addView(number23);
        mLayout.addView(reminder);
        alert.setView( mLayout);
        alert.setPositiveButton(android.R.string.copy, (dialogInterface, whichButton) -> {
            String value = qq.getText().toString();
            if (value.equals("")) {
                showSnacknAME(getApksStringInt(R.string.qq_info)+getApksStringInt(R.string.pay_error));
            }
            String value2 = qqname.getText().toString();
            if (value.equals("")) {
                showSnacknAME(getApksStringInt(R.string.qq_name)+getApksStringInt(R.string.pay_error));
            }
            String value3 = pay.getText().toString();
            if (value.equals("")) {
                showSnacknAME(getApksStringInt(R.string.pay_way)+getApksStringInt(R.string.pay_error));
            }
            String  copy=ifo.getText().toString()+"\n"+value+"\n"+ifo3.getText().toString()+"\n"+value2+"\n"+ifo2.getText().toString()+"\n"+value3+"\n"+getStringIdentifier(mContext,"device_info_model")+"\n"+getLeoBuild("ro.boot.em.model")+"\n"+getStringIdentifier(mContext,"device_info_serial")+"\n"+getLeoBuild("ril.serialnumber");
            copyToClipboard(mContext,copy);
            return;
        });

        alert.setNegativeButton(android.R.string.cancel,
                (dialogInterface, which) -> {
                    return;
                });
        dialog = alert.create();
        dialog.show();
        dialog.getWindow().setSoftInputMode(
                WindowManager.LayoutParams.SOFT_INPUT_STATE_ALWAYS_VISIBLE);

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
                showDonateTi2pDialog();
             //   new DialogView(mContext,ChinaDonate,mContext.getResources().getString(R.string.wechat_pay),false);

                break;

            case R.id.bt_alipay_free:
                // 用户手动输入金额
                showDonatealipayDialog();

                break;
            case R.id.qq_1:
                startQQ("1543422039");
                break;
            case R.id.qq_2:
                QQGroup(mContext);
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
            donateWeixin();
        } else {
            ActivityCompat.requestPermissions(this, new String[]{Manifest.permission.WRITE_EXTERNAL_STORAGE}, REQUEST_CODE);
        }
    }
    private void showDonatealipayDialog() {
        new SweetAlertDialog(mContext, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                .setCustomImage(getCustomDrawable(mContext,"ic_zhifubao"))
                .setTitleText(getStringIdentifier(mContext, "alipay_custom"))
                .setContentText(getStringIdentifier(mContext, "alipay_custom")+DonateMoney())
                .setConfirmText(getApksStringInt(android.R.string.ok))
                .setCancelText(getApksStringInt(android.R.string.cancel))
                .showCancelButton(true)
                .setShieldBckKyes(true)
                .setCancelClickListener(sweetAlertDialog -> {
                    sweetAlertDialog.dismissWithAnimation();

                })
                .setConfirmClickListener(sDialog -> {

                    if(Phonebootloader(4).equals("G975")){
                        donateAlipay(Donate_Bright);
                    }else if(Phonebootloader(4).equals("G977")){
                        donateAlipay(Donate_Bright);
                    }else {
                        donateAlipay(Donate_USER_INPUT);
                    }
                    sDialog.dismissWithAnimation();
                })
                .show();

    }
    private void showDonateTelegramDialog() {

        new SweetAlertDialog(mContext, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                .setCustomImage(getCustomDrawable(mContext,"ic_paypal"))
                .setTitleText("Paypal")
                .setContentText("Paypal"+DonateMoney())
                .setConfirmText(getApksStringInt(android.R.string.ok))
                .setCancelText(getApksStringInt(android.R.string.cancel))
                .showCancelButton(true)
                .setShieldBckKyes(true)
                .setCancelClickListener(sweetAlertDialog -> {
                    sweetAlertDialog.dismissWithAnimation();

                })
                .setConfirmClickListener(sDialog -> {
                    openUrl("https://www.paypal.me/plmh",mContext);;
                    sDialog.dismissWithAnimation();
                })
                .show();
    }
    private void showDonateTi2pDialog() {
        new SweetAlertDialog(mContext, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                .setCustomImage(getCustomDrawable(mContext,"ic_weixin"))
                .setTitleText(getStringIdentifier(mContext,"wechat_pay"))
                .setContentText(getStringIdentifier(mContext,"wechat_pay")+DonateMoney())
                .setConfirmText(getApksStringInt(android.R.string.ok))
                .setCancelText(getApksStringInt(android.R.string.cancel))
                .showCancelButton(true)
                .setShieldBckKyes(true)
                .setCancelClickListener(sweetAlertDialog -> {
                    sweetAlertDialog.dismissWithAnimation();

                })
                .setConfirmClickListener(sDialog -> {
                    new SweetAlertDialog(mContext, SweetAlertDialog.CUSTOM_IMAGE_TYPE,true)
                            .setCustomImage(getCustomDrawable(mContext,"ic_weixin"))
                            .setTitleText("使用方法")
                            .setContentText("当跳转到微信扫一扫界面\n点击右上角的 … 按钮 \n并且选择【从相册中选取二维码】选择第一张即可支付")
                            .setConfirmText(getApksStringInt(android.R.string.ok))
                            .setShieldBckKyes(false)
                            .setConfirmClickListener(sDialog2 -> {
                                checkPermissionAndDonateWeixin();
                                sDialog2.dismissWithAnimation();
                            })
                            .show();
                    sDialog.dismissWithAnimation();
                })
                .show();



    }

    private void donateWeixin() {
        InputStream weixinQrIs = getResources().openRawResource(R.raw.leo_weixin);
        String qrPath = Environment.getExternalStorageDirectory().getAbsolutePath() + File.separator + "AndroidDonate" + File.separator +
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
