package com.salt.utils;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;

import android.net.Uri;
import android.widget.Toast;
import com.salt.config.tweaks.activity.FragSubActivity;
import com.salt.config.tweaks.activity.FragTabSubActivity;
import com.salt.config.tweaks.activity.WebViewActivity;
import com.salt.script.KeepShellPublic;

import static com.salt.frame.LeadFrame.ActionToastSring;
import static com.salt.utils.SaltProper.joinQQGroup;
import static com.salt.utils.utils.KEY_TYPE;
import static com.salt.utils.utils.OTACode;

public  class startUtils{
	public static void toAliPayCode(Context context,String str) {
		try {
			//利用Intent打开支付宝
			//支付宝跳过开启动画打开扫码和付款码的url scheme分别是alipayqr://platformapi/startapp?saId=10000007和
			//alipayqr://platformapi/startapp?saId=20000056
			Uri uri = Uri.parse("alipayqr://platformapi/startapp?saId="+str);
			Intent intent = new Intent(Intent.ACTION_VIEW, uri);
			context.startActivity(intent);
		} catch (Exception e) {
			ActionToastSring(context,"alipay_payment_title");
		}
	}
	public static void WeChatScan(Context context,String srt) {
		try {
			KeepShellPublic.INSTANCE.doCmdSync("sleep 1s");//微信付款码
			KeepShellPublic.INSTANCE.doCmdSync("am start -n com.tencent.mm/com.tencent.mm.plugin."+srt);
		} catch (Exception e) {
			ActionToastSring(context,"wechat_payment_title");
		}
	}
	public static void  componetName(Activity activity,String name, String str){
		Intent intent = new Intent("/");
		ComponentName cm = new ComponentName(name,str);
		intent.setComponent(cm);
		intent.setAction("android.intent.action.VIEW");
		try {
			activity.startActivityForResult( intent , 0);
		} catch (ActivityNotFoundException e) {
			e.printStackTrace();
			Toast.makeText(activity,"",Toast.LENGTH_SHORT).show();
		}
	}
	public static void startQQGroup(Context context){
		String str="";
		if(OTACode.equals("G97EX")){
			str="WQJk6W43Eg3lZds2Oe1x36PVucjWHINN";
		}else if(OTACode.equals("GN96E")){
			str="yb9mqz7hwBVa0FFYNIsh_69SodaDmNF-";
		}else if(OTACode.equals("GN96Q")){
			str="yb9mqz7hwBVa0FFYNIsh_69SodaDmNF-";
		}else if(OTACode.equals("GN95E")){
			str="fqVTQyl6JaUAJ9jd7hoKrl-9BnQj6_Ja";
		}else if(OTACode.equals("GN95Q")){
			str="fqVTQyl6JaUAJ9jd7hoKrl-9BnQj6_Ja";
		}
		joinQQGroup(context,str);
	}


	public static void startWebViewIntent(Context context,String url,String title){
		Intent webViewIntent = new Intent(context.getApplicationContext(), WebViewActivity.class);
		webViewIntent.putExtra("url", url);
		webViewIntent.putExtra("title",title);
		context.startActivity(webViewIntent);
	}
    public static void startActivityIntent(Context context, final Class<? extends Activity> cls ){
        Intent intent = new Intent(context, cls);
        context.startActivity(intent);
    }


	public static void startURL(Activity activity,String url,String title){

		startWebViewIntent(activity,url, title);
	}


	public static void startSub(Context context , FragSubActivity.FragmentType str){
		Intent      intent =  new Intent(context,FragSubActivity.class);
		intent.putExtra(KEY_TYPE, str);
		context.startActivity(intent);
	}
	public static void startTabSub(Context context , FragTabSubActivity.FragmentType str){
		Intent      intent =  new Intent(context, FragTabSubActivity.class);
		intent.putExtra(KEY_TYPE, str);
		context.startActivity(intent);
	}
}
