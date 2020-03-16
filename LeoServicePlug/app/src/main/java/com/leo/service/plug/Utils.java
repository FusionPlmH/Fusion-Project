package com.leo.service.plug;

import android.annotation.TargetApi;
import android.app.AAActivityManager;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.ActivityManagerNative;
import android.app.AlertDialog;
import android.app.IActivityManager;
import android.app.ProgressDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.media.AudioManager;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.os.Handler;
import android.os.PowerManager;

import android.os.RemoteException;
import android.os.ServiceManager;
import android.provider.Settings;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import android.util.Base64;
import android.util.Log;
import android.view.ContextThemeWrapper;
import android.view.Gravity;
import android.view.Surface;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;


import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.TimeoutException;

import static android.content.Context.ACTIVITY_SERVICE;
import static com.leo.service.plug.LeoApp.getContext;
import static com.leo.service.plug.Resource.PACKAGE_SYSTEMUI;
import static com.leo.service.plug.Resource.appICON;
import static com.leo.service.plug.Resource.appNAME;
import static com.leo.service.plug.Resource.getCustomArray;
import static com.leo.service.plug.Resource.getCustomArrayDrawable;
import static com.leo.service.plug.Resource.getStringIdentifier;

public class Utils {


    public static void setLeoNavKeypressAction(Context context,int style ) {
        Intent intent = new Intent();
        intent.setAction("com.leo.global.action");
        intent.putExtra("leo_action", style);
        context.sendBroadcast(intent);
    }
    public static String appNAME(String string){


        try {

            ApplicationInfo applicationInfo = getContext().getPackageManager().getApplicationInfo(string, 0);

            appLabel= applicationInfo.loadLabel(getContext().getPackageManager()).toString();
        } catch (PackageManager.NameNotFoundException e) {
            Toast.makeText(getContext(),String.format(Locale.getDefault(),"［"+appLabel+"］"+getStringIdentifier(getContext(),"activity_no")), Toast.LENGTH_SHORT).show();
        }
        return appLabel;
    }
    public static  void PowerMenuAction(Activity context, int Style, boolean z){
        switch (Style) {
            case 0:// 关机
                if(z){
                    setLeoNavKeypressAction(context,2006);
                    context. finish();
                }else{
                    ConfirmationDialog(context,getCustomArrayDrawable("android","tw_ic_do_poweroff"),
                            getStringIdentifier(getContext(),"confi_rmthe_choice_title")+getStringIdentifier(getContext(),"confirm_choice_shutdown")+"?",
                            2006);

                }
                break;
            case 1:// 重新启动
                if(z){
                    setLeoNavKeypressAction(context,2002);
                    context. finish();
                }else{
                    ConfirmationDialog(context,getCustomArrayDrawable("android","tw_ic_do_restart"),
                            getStringIdentifier(getContext(),"confi_rmthe_choice_title")+getStringIdentifier(getContext(),"confirm_choice_restart")+"?",
                       2002);

                }

                break;
            case 2:// 快速重启
                if(z){
                    setLeoNavKeypressAction(context,2005);
                    context. finish();
                }else{
                    ConfirmationDialog(context,Resource.getCustomDrawable(getContext(),"tw_leo_quickboot"),
                            getStringIdentifier(getContext(),"confi_rmthe_choice_title")+getStringIdentifier(getContext(),"confirm_choice_quickboot")+"?",
                            2005);
                }


                break;
            case 3:// 线刷模式


                if(z){
                    setLeoNavKeypressAction(context,2003);
                    context. finish();
                }else{
                    ConfirmationDialog(context, Resource.getCustomDrawable(getContext(),"tw_leo_download"),
                            getStringIdentifier(getContext(),"confi_rmthe_choice_message")+getStringIdentifier(getContext(),"confirm_choice_download")+"?",
                            2003);
                }
                break;
            case 4:// 卡刷模式


                if(z){
                    setLeoNavKeypressAction(context,2004);
                    context. finish();
                }else{
                    ConfirmationDialog(context,Resource.getCustomDrawable(getContext(),"tw_leo_recovery"),
                            getStringIdentifier(getContext(),"confi_rmthe_choice_message")+getStringIdentifier(getContext(),"confirm_choice_rec")+"?",
                            2004);
                }
                break;
            case 5:// 重启UI
                showSystemUIrestartDialog(context);
                break;
            case 6:// 移动数据
                setLeoNavKeypressAction(context,233);
              //  context. finish();
                break;
            case 7:// 飞行模式
                setLeoNavKeypressAction(context,216);
            //    context. finish();
                break;
            case 8:// 手电筒
                setLeoNavKeypressAction(context,214);
              //  context. finish();
                break;
            case 9:// 户外模式
                setLeoNavKeypressAction(context,218);
              //  context. finish();
                break;
            case 10:// 悬浮球
                setLeoNavKeypressAction(context,217);
                break;
            case 11:// 屏幕助手
                setLeoNavKeypressAction(context,219);
              //  context. finish();
                break;
            case 12:// 屏幕截图
                screenshot(context);
               //context. finish();
                break;
            case 13:// 屏幕录制
                setLeoNavKeypressAction(context,207);
              //  context. finish();
                break;
            case 14:// LEO设置
                setLeoNavKeypressAction(context,211);
                context. finish();
                break;
            case 15:// WALN
                setLeoNavKeypressAction(context,215);
              //  context. finish();
                break;
            case 16:// 锁屏
                setLeoNavKeypressAction(context,202);
                context. finish();
                break;
            case 17:// 清理
                setLeoNavKeypressAction(context,231);
                context. finish();
                break;

        }
    }
    public static void screenshot(final Activity context){
        AlertDialog dialog = new AlertDialog.Builder(new ContextThemeWrapper(context, R.style.DialogStyleLight))
                .setTitle(getStringIdentifier(getContext(),"screenshot_title"))//设置对话框的标题
                .setItems(getCustomArray("screenshot_style_values"), new DialogInterface.OnClickListener() {
                    @TargetApi(Build.VERSION_CODES.O)
                    @Override
                    public void onClick(DialogInterface dialog, int which) {

                                switch (which) {
                                    case 0:
                                        new Handler().postDelayed(() -> setLeoNavKeypressAction(context,208), 600);
                                        break;
                                    case 1:
                                        new Handler().postDelayed(() -> setLeoNavKeypressAction(context,209), 600);
                                        break;

                                }
                        context. finish();

                        dialog.dismiss();
                    }

                })
                .create();
        dialog.show();
    }

    static void ConfirmationDialog(Context context, Drawable drawable, String str,int style){
        final TextView textView = new TextView(new ContextThemeWrapper(context, R.style.DialogStyleLight));
        textView.setText(str);
        textView.setGravity(Gravity.CENTER);
        textView.setTextSize(18);
        textView.setPadding(0,30,0,30);
        final ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(drawable);
        imageView.setScaleX(0.8f);
        imageView. setScaleY(0.8f);
        LinearLayout layout = new LinearLayout(context);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(60,60,60,20);
        layout.addView(imageView);
        layout.addView(textView);
        AlertDialog   mAlert= new AlertDialog.Builder(context)
                // .setView(layout);
                .setView(layout)
                //设置对话框的按钮
                .setNegativeButton(android.R.string.cancel, (dialog, which) -> dialog.dismiss())
                .setPositiveButton(android.R.string.ok, (dialog, which) -> {
                    setLeoNavKeypressAction(context,style);
                    dialog.dismiss();
                }).create();
        mAlert.show();
    }
    public static String getLeoString(Context cxt,String key) {

        return Settings.System.getString(cxt.getContentResolver(), key);
    }

    public static int getLeoInt(Context cxt, String key, int defaultValue) {

        return Settings.System.getInt(cxt.getContentResolver(), key, defaultValue);
    }

    public static void getLeoGradientStroke(GradientDrawable leoDrawable, boolean StrokeEnabled, int StrokeThickness, int DashWidth, int DashGap, int DashColor , int ColorRadius){
        int mCustomStrokeThickness=StrokeThickness;
        int mCustomDashWidth=DashWidth;
        int mCustomDashGap=DashGap;
        int mCustomDashColor=DashColor;
        boolean mCustomEnabled= StrokeEnabled;
        // leoDrawable. setColor(color);
        if (mCustomEnabled) {
            leoDrawable.setStroke(mCustomStrokeThickness, mCustomDashColor, mCustomDashWidth, mCustomDashGap);
            leoDrawable.setCornerRadius((float) ColorRadius);
        }
    }
    public static GradientDrawable getLeoBasicColor(boolean StrokeEnabled,int StrokeThickness, int DashWidth,int DashGap,int DashColor ,int ColorRadius,int bgColor){
        GradientDrawable LeoGradientDrawable= new GradientDrawable();
        int mCustomStrokeThickness=StrokeThickness;
        int mCustomDashWidth=DashWidth;
        int mCustomDashGap=DashGap;
        int mCustomDashColor=DashColor;
        boolean mCustomEnabled= StrokeEnabled;
        LeoGradientDrawable. setColor(bgColor);
        if (mCustomEnabled) {

            LeoGradientDrawable.setStroke(mCustomStrokeThickness, mCustomDashColor, mCustomDashWidth, mCustomDashGap);
            LeoGradientDrawable.setCornerRadius((float) ColorRadius);
        }
        return LeoGradientDrawable;
    }
    public static void getLeoWallpaperColor(Drawable ddd, int coloron, int color){
        if (coloron==1) {
            ddd.setColorFilter(color, PorterDuff.Mode.MULTIPLY);
        }
    }
    public static void getLeoWallpaperAlpha(Drawable ddd,boolean Alpha,int getAlpha){
        if (Alpha) {
            ddd.setAlpha(getAlpha);
        }
    }

    public static GradientDrawable LeoGradientDrawable(int StartColor, int CenterColor, int EndColor, int FourColor, int fivecolor, int sixrColor,
                                                       int EnableCenterColor , int GradientBgStyle, boolean StrokeEnabled, int StrokeThickness,
                                                       int DashWidth, int DashGap, int DashColor , int CornerRadius , int GradientBgType , int ColorRadius){
        GradientDrawable LeoGradientDrawable= new GradientDrawable();
        int[] BackgroundGradientColor ;
        if (EnableCenterColor == 0) {
            BackgroundGradientColor = new int[3];
            BackgroundGradientColor[0] = StartColor;
            BackgroundGradientColor[1] = CenterColor;
            BackgroundGradientColor[2] = EndColor;

        } else  {
            BackgroundGradientColor = new int[6];
            BackgroundGradientColor[0] = StartColor;
            BackgroundGradientColor[1] = CenterColor;
            BackgroundGradientColor[2] = EndColor;
            BackgroundGradientColor[3] = FourColor;
            BackgroundGradientColor[4] = fivecolor;
            BackgroundGradientColor[5] = sixrColor;
        }
        switch ( GradientBgStyle) {
            case 0:
                //xia-shang
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, BackgroundGradientColor);
                break;
            case 1:
                //zuo-you
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BOTTOM_TOP, BackgroundGradientColor);
                break;
            case 2:
                //you-zuo
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.LEFT_RIGHT, BackgroundGradientColor);
                break;
            case 3:
                //you-zuo
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.RIGHT_LEFT, BackgroundGradientColor);
                break;
            case 4:
                //youxie-zuoshang
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BR_TL, BackgroundGradientColor);
                break;
            case 5:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.BL_TR, BackgroundGradientColor);
                break;
            case 6:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TL_BR, BackgroundGradientColor);
                break;
            case 7:
                //
                LeoGradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TR_BL, BackgroundGradientColor);
                break;
        }


        getLeoGradientStroke(LeoGradientDrawable,
                StrokeEnabled,
                StrokeThickness,
                DashWidth,
                DashGap,
                DashColor,
                CornerRadius);
        LeoGradientDrawable.setGradientType(GradientBgType);
        LeoGradientDrawable.setCornerRadius((float) CornerRadius);
        LeoGradientDrawable.setGradientRadius((float) ColorRadius);

        return LeoGradientDrawable;
    }
    static Drawable ddd;
    public static Drawable getLeoWallpaper(Context cxt,String str,int ColorEnable,int color,boolean AlphaEnable,int alpha ){
        //   Drawable ddd=null;
        if (str != null) {
            File backgroundwallpaper = new File(Uri.parse(str).getPath());
            if (backgroundwallpaper != null) {
                ddd = new BitmapDrawable(cxt.getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
            }
            getLeoWallpaperColor(ddd, ColorEnable, color);
            getLeoWallpaperAlpha(ddd,AlphaEnable,alpha);
        }

        return ddd;
    }
    static Drawable BlurDrawable;
    public static Drawable getLeoBlurWallpaper(Context cxt, String str , int blur,int ColorEnable,int color,boolean AlphaEnable,int alpha){
        if (str != null) {
            File backgroundwallpaper = new File(Uri.parse(str).getPath());
            if (backgroundwallpaper != null) {
                bitmapWallpaper = BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath());

                Bitmap finalBitmap =LeoGlobalBlur.with(cxt)
                        .bitmap(bitmapWallpaper)
                        .radius(blur)
                        .scale(8)
                        .blur();
                BlurDrawable= new BitmapDrawable(cxt.getResources(), finalBitmap);
            }
        }
        getLeoWallpaperColor(BlurDrawable, ColorEnable, color);
        getLeoWallpaperAlpha(BlurDrawable,AlphaEnable,alpha);
        return BlurDrawable;
    }
    static Bitmap bitmapWallpaper;

    public static String getLeoCustomString (String str2)
    {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? "Leo ROM" : str);
        }
        return str;
    }
    public static Uri getLeoUri(String key) {
        return Settings.System.getUriFor( key);
    }


    public static void showSystemUIrestartDialog(Activity a) {
        final TextView textView = new TextView(a);
        textView.setText(getStringIdentifier(a,"confi_rmthe_choice_message_ui")+appNAME(PACKAGE_SYSTEMUI )+"?");
        textView.setGravity(Gravity.CENTER);
        textView.setTextSize(18);
        textView.setPadding(0,30,0,30);
        final ImageView imageView = new ImageView(a);
        imageView.setImageDrawable(appICON(PACKAGE_SYSTEMUI ));
        imageView.setScaleX(0.8f);
        imageView. setScaleY(0.8f);
        LinearLayout layout = new LinearLayout(a);
        layout.setOrientation(LinearLayout.VERTICAL);
        layout.setPadding(60,60,60,20);
        layout.addView(imageView);
        layout.addView(textView);
        final AlertDialog.Builder builder = new AlertDialog.Builder(a);
        builder. setView(layout);
        builder.setPositiveButton(android.R.string.ok,
                new DialogInterface.OnClickListener() {
                    public void onClick(DialogInterface dialog, int id) {
                        showrestartDialog(a,"com.android.systemui");
                    }
                });
        builder.setNegativeButton(android.R.string.cancel, null);
        builder.show();
    }


    public static class TypefaceFonts extends MetricAffectingSpan {
        private final Typeface typeface;

        public TypefaceFonts(Typeface typeface) {
            this.typeface = typeface;
        }

        public void updateDrawState(TextPaint ds) {
            setTypeFace(ds, this.typeface);
        }

        public void updateMeasureState(TextPaint paint) {
            setTypeFace(paint, this.typeface);
        }

        private static void setTypeFace(Paint paint, Typeface tf) {
            paint.setTypeface(tf);
        }
    }
    public static String rt100foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }
    public static String[] getStringLeoArray(Context context ,String rec) {
        String[] str;
        String STR="com.leo.framework";
        Context otherAppContext = null;
        try {
            otherAppContext =context.createPackageContext(STR, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), new String(rt100foleo("YXJyYXk=")),STR));
        return str;
    }
    public static   Typeface setLeoFonts(Context context, int key,String fontname,int ss) {
        String ssd= Environment.getExternalStorageDirectory().toString();
        String[] stringLeoArray = getStringLeoArray(context, rt100foleo("Zm9udF9zdHlsZQ=="));
        Typeface font;
        File file;
        switch ( key) {
            case 0:
            default:
                return Typeface.create(fontname, ss);
            case 1:
                font=Typeface.create("sans-serif", Typeface.NORMAL);
                break;
            case 2:
                font=Typeface.create("sans-serif", Typeface.ITALIC);
                break;
            case 3:
                font=Typeface.create("sans-serif", Typeface.BOLD);
                break;
            case 4:
                font=Typeface.create("sec-roboto-light", Typeface.NORMAL);
                break;
            case 5:
                font=Typeface.create("sec-roboto-light", Typeface.ITALIC);
                break;
            case 6:
                font=Typeface.create("sec-roboto-light", Typeface.BOLD);
                break;
            case 7:
                font=Typeface.create("sec-roboto-light", Typeface.BOLD_ITALIC);
                break;
            case 8:
                font=Typeface.create("sans-serif-light", Typeface.NORMAL);
                break;
            case 9:
                font=Typeface.create("sans-serif-light", Typeface.ITALIC);
                break;
            case 10:
                font=Typeface.create("sans-serif-thin", Typeface.NORMAL);
                break;
            case 11:
                font=Typeface.create("sans-serif-thin", Typeface.ITALIC);
                break;
            case 12:
                font=Typeface.create("sans-serif-condensed", Typeface.NORMAL);
                break;
            case 13:
                font=Typeface.create("sans-serif-condensed", Typeface.ITALIC);
                break;
            case 14:
                font=Typeface.create("sans-serif-condensed-light", Typeface.NORMAL);
                break;
            case 15:
                font=Typeface.create("sans-serif-condensed-light", Typeface.ITALIC);
                break;
            case 16:
                font=Typeface.create("sans-serif-condensed", Typeface.BOLD);
                break;
            case 17:
                font=Typeface.create("sans-serif-condensed", Typeface.BOLD_ITALIC);
                break;
            case 18:
                font=Typeface.create("sans-serif-medium", Typeface.NORMAL);
                break;
            case 19:
                font=Typeface.create("sans-serif-medium", Typeface.ITALIC);
                break;
            case 20:
                return Typeface.create("sans-serif-black", Typeface.NORMAL);
            case 21:
                return Typeface.create("sans-serif-black", Typeface.ITALIC);
            case 22:
                file = new File(ssd+stringLeoArray[0]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[0]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 23:
                file = new File(ssd+stringLeoArray[1]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[1]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 24:
                file = new File(ssd+stringLeoArray[2]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[3]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 25:
                file = new File(ssd+stringLeoArray[3]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[3]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 26:
                file = new File(ssd+stringLeoArray[4]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[4]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 27:
                file = new File(ssd+stringLeoArray[5]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[5]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 28:
                file = new File(ssd+stringLeoArray[6]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[6]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 29:
                file = new File(ssd+stringLeoArray[7]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[7]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 30:
                file = new File(ssd+stringLeoArray[8]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[8]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 31:
                file = new File(ssd+stringLeoArray[9]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[9]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 32:
                file = new File(ssd+stringLeoArray[10]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[10]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 33:
                file = new File(ssd+stringLeoArray[11]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[11]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }
                break;
            case 34:
                file = new File(ssd+stringLeoArray[12]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[12]);
                }else {
                    font=Typeface.create(fontname, ss);
                    T(context);
                }

                break;
        }

        return font;
    }
    public static void T(Context ctx) {
        Toast.makeText(ctx,getStringIdentifier(ctx,"no_ttf"),Toast.LENGTH_SHORT).show();
    }
    public static void setAudioMode(Context ctx) {
        AudioManager audioManager = (AudioManager) ctx.getSystemService("audio");
        switch (audioManager.getRingerMode()) {
            case 0:
                audioManager.setRingerMode(2);
              //  Toast.makeText(ctx, mRINGER_MODE_NORMAL, Toast.LENGTH_LONG).show();
                return;
            case 1:
                audioManager.setRingerMode(0);
               // Toast.makeText(ctx, mRINGER_MODE_VIBRATE, Toast.LENGTH_LONG).show();
                return;
            case 2:
                audioManager.setRingerMode(1);
               // Toast.makeText(ctx, mRINGER_MODE_SILENT, Toast.LENGTH_LONG).show();
                return;
            default:
                return;
        }
    }


    public static void collapseStatusBar(Context context) {
        Object service =context.getSystemService("statusbar");
        if (null == service)
            return;
        try {
            Class<?> clazz = Class.forName("android.app.StatusBarManager");
            int sdkVersion = android.os.Build.VERSION.SDK_INT;
            Method collapse ;
            if (sdkVersion <= 16) {
                collapse = clazz.getMethod("collapse");
            } else {
                collapse = clazz.getMethod("collapsePanels");
            }
            collapse.setAccessible(true);
            collapse.invoke(service);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    public static void showrestartDialog(  Context a,String packageNameToKill) {
        RestartSystemUITask task = new RestartSystemUITask(a,packageNameToKill) {
            private ProgressDialog dialog;
            @Override
            protected void onPreExecute() {
                super.onPreExecute();
                dialog = new ProgressDialog(a);
                dialog.setMessage(getStringIdentifier(a,"execute_wait"));
                dialog.setCancelable(false);
                dialog.setIndeterminate(true);
                dialog.show();
            }
            @Override
            protected Void doInBackground(Context... params) {
                // Give the user a second to see the dialog
                try {
                    Thread.sleep(1500);
                } catch (InterruptedException e) {
                    // Ignore
                }


                super.doInBackground(params);
                return null;
            }
            @Override
            protected void onPostExecute(Void param) {
                super.onPostExecute(param);
                dialog.dismiss();
            }
        };
        task.execute(a);
    }


    private static class RestartSystemUITask extends AsyncTask<Context, Void, Void> {
        private Context mContext;
        private String mString;
        public RestartSystemUITask(Context context,String str) {
            super();
            mContext = context;
            mString=str;
        }
        @Override
        protected Void doInBackground(Context... params) {
            try {
                Intent intent = new Intent();
                intent.setAction("com.leo.global.action");
                intent.putExtra("leo_action", 2001);
                intent.putExtra("leo_processName", mString);
                mContext.sendBroadcast(intent);
            } catch (Exception e) {
                e.printStackTrace();
            }
            return null;
        }
    }
   }
