package com.android.leo;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.ActivityOptions;
import android.app.UiModeManager;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.media.AudioManager;
import android.media.ToneGenerator;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.os.Vibrator;
import android.provider.Settings;

import android.text.TextUtils;
import android.util.Log;
import android.view.WindowManagerGlobal;
import android.widget.Button;
import android.view.View;
import android.view.Menu;
import android.view.MenuItem;
import android.widget.Toast;


import java.net.URISyntaxException;


public class MainActivity extends Activity {
    private UiModeManager mUiModeManager = null;
    private Context mContext;
    @SuppressLint("WrongConstant")
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mContext =this;
        Button button=findViewById(R.id.llllllllll);
        button.setText(getStringIdentifier(this,"waln_name"));
        button.setOnClickListener(new View.OnClickListener() {

            @Override
            public void onClick(View v) {
                //   customAppLaunch(mContext,"KEY_BACK_LONG_PRESS_CUSTOM_APP");
                // StartAppLication(mContext,Settings.System.getString(mContext.getContentResolver(),"action_app"));
                // customAppLaunch(mContext,"leorom");

               // WeChatScanDirect(mContext);
                toAliPayScan();
            }

        });


    }
    private void toAliPayScan() {
        try {
            //利用Intent打开支付宝
            //支付宝跳过开启动画打开扫码和付款码的urlscheme分别是：
            //alipayqr://platformapi/startapp?saId=10000007
//alipayqr://platformapi/startapp?saId=20000056
            Uri uri = Uri.parse("alipayqr://platformapi/startapp?saId=20000056");
            Intent intent = new Intent(Intent.ACTION_VIEW, uri);
            startActivity(intent);
        } catch (Exception e) {
            //若无法正常跳转，在此进行错误处理
           // Toast.makeText(context, "打开失败，请检查是否安装了支付宝", Toast.LENGTH_SHORT).show();
        }
    }
    public static void WeChatScanDirect(Context context) {
        try {
            Intent intent = new Intent();
            intent.setComponent(new ComponentName("com.tencent.mm", "com.tencent.mm.ui.LauncherUI"));
            intent.putExtra("LauncherUI.From.Scaner.Shortcut", true);
            intent.setFlags(335544320);
            intent.setAction("android.intent.action.VIEW");
            context.startActivity(intent);
        } catch (Exception e) {
        }
    }
    public static Intent getIntent(String uri) {
        if (uri == null || uri.startsWith("555")) {
            return null;
        }

        Intent intent = null;
        try {
            intent = Intent.parseUri(uri, 0);
        } catch (URISyntaxException e) {
            e.printStackTrace();
        }
        return intent;
    }
    private void startActivity(String str) {
        String str2=str;
        String string = Settings.System.getString(this.mContext.getContentResolver(), str+"_apps");
        String string2 = Settings.System.getString(this.mContext.getContentResolver(), str2);
        if (string2 != null && string != null && !string2.equals("") && !string.equals("")) {
            Intent intent;
            try {
                intent = new Intent("android.intent.action.MAIN");
                intent.setComponent(new ComponentName(string, string2));
                this.mContext.startActivity(intent);
            } catch (Exception e) {
                try {
                    Intent className = new Intent("android.intent.action.MAIN").setClassName(string, string2);
                    className.setFlags(268435456);

                    this.mContext.startActivity(className);
                } catch (Exception e2) {
                    intent = new Intent("android.intent.action.VIEW", Uri.parse(string2));
                    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                    this.mContext.startActivity(intent);
                }
            }
        }
    }

    public static void launchActivity(Context context,String appName) {
            Intent intent;
            String packageName = Settings.System.getString(context.getContentResolver(), appName+"_apps");
            String activity = Settings.System.getString(context.getContentResolver(), appName+"_activity");
            boolean launchActivity = activity != null && !TextUtils.equals("NONE", activity);
            try {
                if (launchActivity) {
                    intent = new Intent(Intent.ACTION_MAIN);
                    intent.setClassName(packageName, activity);
                } else {
                    intent = context.getPackageManager().getLaunchIntentForPackage(packageName);
                }
                if (intent != null) {
                    intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
                }
                context.startActivity(intent);
            } catch (Exception e) {

                Log.i("", "Unable to launch activity " + e);
            }


    }
    private static void launchShortcut(Context context, Intent intent) {
        try {
            intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            context.startActivity(intent);
        } catch (Exception e) {
            Log.i("", "Unable to launch activity " + e);
        }
    }
    private static void customAppLaunch(Context context, String appName) {

        Intent intent;
        String packageName = Settings.System.getString(context.getContentResolver(), appName);
        String activity = Settings.System.getString(context.getContentResolver(), appName);
        boolean launchActivity = activity != null && !TextUtils.equals("NONE", activity);
        try {
            if (launchActivity) {
                intent = new Intent(Intent.ACTION_MAIN);
                intent.setClassName(packageName, activity);
            } else {
                intent = context.getPackageManager().getLaunchIntentForPackage(packageName);
            }
            if (intent != null) {
                intent.setFlags(Intent.FLAG_ACTIVITY_NEW_TASK | Intent.FLAG_ACTIVITY_CLEAR_TOP);
            }
            context.startActivity(intent);
        } catch (Exception e) {


        }

    }




            Vibrator mVibrator;
    public void Vibrate(int off,int style) {
        if (off== 1) {
            mVibrator = (Vibrator) mContext.getSystemService(Context.VIBRATOR_SERVICE);
            mVibrator.vibrate(style);
        }
    }
    @Override
    public boolean onCreateOptionsMenu(Menu menu) {
        // Inflate the menu; this adds items to the action bar if it is present.
        getMenuInflater().inflate(R.menu.menu_main, menu);
        return true;
    }

    @Override
    public boolean onOptionsItemSelected(MenuItem item) {
        // Handle action bar item clicks here. The action bar will
        // automatically handle clicks on the Home/Up button, so long
        // as you specify a parent activity in AndroidManifest.xml.
        int id = item.getItemId();

        //noinspection SimplifiableIfStatement
        if (id == R.id.action_settings) {
            return true;
        }

        return super.onOptionsItemSelected(item);
    }


    public static Resources getResourcesForPackage(Context ctx, String pkg) {
        try {
            Resources res = ctx.getPackageManager()
                    .getResourcesForApplication(pkg);
            return res;
        } catch (Exception e) {
            return ctx.getResources();
        }
    }
    public static String  getStringIdentifier(Context context , String RECnME){
        String pkgName=null;
        int ident;
        Resources packRes = getResourcesForPackage(context, LEOFRAMEWORK);
        ident = packRes.getIdentifier(RECnME,"string", LEOFRAMEWORK);
        String toastMsg = packRes.getString(ident, pkgName);
        return toastMsg;
    }
    public static int getIdentifier(Context context, String resName, String resType, String pkg) {
        try {
            Resources res = context.getPackageManager()
                    .getResourcesForApplication(pkg);
            int ident = res.getIdentifier(resName, resType, pkg);
            return ident;
        } catch (Exception e) {
            return -1;
        }
    }


    public static  String LEOFRAMEWORK= "com.leo.framework";


}
