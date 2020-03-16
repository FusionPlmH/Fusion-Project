package com.salt.config.tweaks.activity;

import android.Manifest;
import android.app.Activity;

import android.content.ClipData;
import android.content.ClipboardManager;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

import android.content.pm.PackageManager;

import android.graphics.BitmapFactory;

import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;

import android.text.InputType;
import android.view.View;
import android.view.WindowManager;

import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.Toast;


import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AlertDialog;
import androidx.cardview.widget.CardView;
import androidx.core.app.ActivityCompat;
import androidx.core.content.ContextCompat;

import com.salt.base.SaltActivity;
import com.salt.config.R;
import com.salt.script.DialogHelper;
import com.salt.utils.donate.AlipayDonate;
import com.salt.utils.donate.WeiXinDonate;

import java.io.File;
import java.io.InputStream;

import static com.salt.frame.LeadFrame.getCustomDrawable;
import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.frame.LeadFrame.isChineseLanguage;
import static com.salt.utils.SaltProper.SystemUrl.Phonebootloader;
import static com.salt.utils.SaltProper.getApksStringInt;
import static com.salt.utils.SaltProper.getColorInt;
import static com.salt.utils.SaltProper.getLeoBuild;

import static com.salt.utils.SaltProper.shareMsg;
import static com.salt.utils.startUtils.startQQGroup;
import static com.salt.utils.startUtils.startURL;
import static com.salt.utils.utils.APP_FOLDER_NAME;
import static com.salt.utils.utils.qrWeChat;


public class DonateActivity extends SaltActivity implements View.OnClickListener, RadioGroup.OnCheckedChangeListener {

    public static final int REQUEST_CODE = 2233;

    public static final String Donate_USER_INPUT = "fkx08101iaromskiwv4nhdc";
    public static final String Donate_Bright = "fkx07030yfr0kmc85j8vud9";
    public static final String Donate_xianyu = "fkx097076imrdrjjepdh4f9";
    private TextView btAlipayFree;
    private TextView conversationA;
    private TextView conversationB;
    private TextView conversationC;

    private TextView WeiXin;
    private LinearLayout AlipayFree;
    private TextView ListDonate;
    private ImageView DonateIMG;
    public View QQ;
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
    protected String initAppName() {
        return getApksStringInt("leo_slide_meun_donate");
    }

    @Override
    protected void initData() {
        DonateIMG=((ImageView)findViewById(R.id.donate_icon));
        Giving_Notice(mContext);
        QQ=((RelativeLayout)findViewById(R.id.view_qq));

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

        TextView Info= ((TextView) findViewById(R.id.donate_info));
        Info.setText(getStringIdentifier(mContext,"donate_why")+"\n"+getStringIdentifier(mContext,"donate_why_sumarry"));
        ListDonate=((TextView) findViewById(R.id.donate_listtitle));
        ListDonate.setText(getStringIdentifier(mContext,"alipay_wechat"));
        WeiXin.setOnClickListener(this);
        btAlipayFree.setOnClickListener(this);
        conversationA.setOnClickListener(this);
        conversationB.setOnClickListener(this);
        conversationC.setOnClickListener(this);

        //mCollapsingLinearLayout.setVisibility(View.GONE);
        if(isChineseLanguage()){
            AlipayFree.setVisibility(View.VISIBLE);

            QQ.setVisibility(View.VISIBLE);


            DonateIMG.setVisibility(View.VISIBLE);
            DonateIMG.setImageDrawable(getCustomDrawable(mContext,"donate_icon"));

        }else {
            AlipayFree.setVisibility(View.GONE);
            QQ.setVisibility(View.GONE);

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
        reminder.setTextColor(getColorInt(R.color.blue_btn_bg_color));
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
                showSnackn(getApksStringInt(R.string.qq_info)+getApksStringInt(R.string.pay_error),mContext);
            }
            String value2 = qqname.getText().toString();
            if (value.equals("")) {
                showSnackn(getApksStringInt(R.string.qq_name)+getApksStringInt(R.string.pay_error),mContext);
            }
            String value3 = pay.getText().toString();
            if (value.equals("")) {
                showSnackn(getApksStringInt(R.string.pay_way)+getApksStringInt(R.string.pay_error),mContext);
            }
            String  copy=ifo.getText().toString()+"\n"+value+"\n"+ifo3.getText().toString()+"\n"+value2+"\n"+ifo2.getText().toString()+"\n"+value3+"\n"+getStringIdentifier(mContext,"device_info_model")+"\n"+getLeoBuild("ro.boot.em.model")+"\n"+getStringIdentifier(mContext,"device_info_serial")+"\n"+getLeoBuild("ril.serialnumber");
            copyToClipboard(mContext,copy);
            shareMsg(mContext,"捐赠数据","【捐赠数据】\n"+copy);
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
            case R.id.bt_weixin:
                //微信捐赠
                showDonateTi2pDialog();

                break;

            case R.id.bt_alipay_free:
                // 用户手动输入金额
                showDonatealipayDialog();

                break;
            case R.id.qq_1:
                startQQ("1543422039");
                break;
            case R.id.qq_2:
                startQQGroup(mContext);
                break;
            case R.id.qq_3:
                startQQ("821371473");
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
        DialogHelper.Companion.animDialog(new AlertDialog.Builder(mContext)
                .setIcon(getCustomDrawable(mContext,"ic_zhifubao"))
                .setTitle(getStringIdentifier(mContext, "alipay_custom"))
                .setMessage(getStringIdentifier(mContext, "alipay_custom")+DonateMoney())
                .setNegativeButton(android.R.string.cancel, (dialog, which) -> {
                    dialog.dismiss();
                })
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                    dialog.dismiss();
                    if(Phonebootloader(4).equals("G975")){
                        donateAlipay(Donate_Bright);
                    }else if(Phonebootloader(4).equals("G977")){
                        donateAlipay(Donate_Bright);
                    }else if(Phonebootloader(5).equals("G9550")){
                        donateAlipay(Donate_xianyu);
                    }else if(Phonebootloader(5).equals("G9500")){
                        donateAlipay(Donate_xianyu);
                    }else if(Phonebootloader(5).equals("G9508")){
                        donateAlipay(Donate_xianyu);
                    }else if(Phonebootloader(5).equals("N9500")){
                        donateAlipay(Donate_xianyu);
                    }else {
                        donateAlipay(Donate_USER_INPUT);
                    }
                }
                ).show()
        );
    }

    private void showDonateTi2pDialog() {
        DialogHelper.Companion.animDialog(new AlertDialog.Builder(mContext)
                .setIcon(getCustomDrawable(mContext,"ic_weixin"))
                .setTitle(getStringIdentifier(mContext,"wechat_pay"))
                .setMessage(getStringIdentifier(mContext,"wechat_pay")+DonateMoney())
                .setNegativeButton(android.R.string.cancel, (dialog, which) -> {
                    dialog.dismiss();
                })
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                            dialog.dismiss();
                            Weixin();
                }).show()
        );
    }
private void Weixin(){
    DialogHelper.Companion.animDialog(new AlertDialog.Builder(mContext)
            .setIcon(getCustomDrawable(mContext,"ic_weixin"))
            .setTitle("使用方法")
            .setMessage("当跳转到微信扫一扫界面\n点击右上角的 … 按钮 \n并且选择【从相册中选取二维码】选择第一张即可支付")
            .setNegativeButton(android.R.string.cancel, (dialog, which) -> {
                dialog.dismiss();
            })
            .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                        dialog.dismiss();
                checkPermissionAndDonateWeixin();
                    }
            ).show()
    );
}
    private void donateWeixin() {
        InputStream weixinQrIs = getResources().openRawResource(R.raw.leo_weixin);

        WeiXinDonate.saveDonateQrImage2SDCard(qrWeChat, BitmapFactory.decodeStream(weixinQrIs));
        WeiXinDonate.donateViaWeiXin(this, qrWeChat);
    }

    @Override
    public void onRequestPermissionsResult(int requestCode, @NonNull String[] permissions, @NonNull int[] grantResults) {
        if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
            donateWeixin();
        } else {
            Toast.makeText(this, "权限被拒绝", Toast.LENGTH_LONG).show();
        }
    }
    public void Giving_Notice(Activity context){
        DialogHelper.Companion.animDialog(new AlertDialog.Builder(mContext)
                .setIcon(R.drawable.ic_info_icon)
                .setCancelable(false)
                .setTitle(getApksStringInt(R.string.donation_instructions))
                .setMessage(getApksStringInt(R.string.donation_instructions_info))
                .setNegativeButton(android.R.string.cancel, (dialog, which) -> {
                    dialog.dismiss();
                    context.onBackPressed();
                })
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                            dialog.dismiss();

                        }
                )
        ).show();


    }
}
