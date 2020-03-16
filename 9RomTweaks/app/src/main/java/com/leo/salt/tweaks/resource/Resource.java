package com.leo.salt.tweaks.resource;


import android.app.Activity;
import android.app.PendingIntent;
import android.app.ProgressDialog;
import android.app.usage.UsageEvents;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ShortcutInfo;
import android.content.pm.ShortcutManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.drawable.AdaptiveIconDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.LayerDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Build;
import android.os.Environment;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.support.annotation.ColorInt;
import android.support.annotation.IntDef;
import android.support.annotation.RequiresApi;
import android.support.annotation.StringRes;
import android.support.v4.widget.DrawerLayout;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import android.view.WindowManager;
import android.widget.Toast;

import com.leo.salt.tools.constants.KeepShellPublic;
import com.leo.salt.tools.service.ShortCutReceiver;
import com.leo.salt.tweaks.R;
import com.leo.salt.utils.Consts;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.HttpURLConnection;
import java.net.InetAddress;
import java.net.MalformedURLException;
import java.net.NetworkInterface;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Locale;

import static android.app.AlertDialog.THEME_DEVICE_DEFAULT_LIGHT;
import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.view.widget.DialogView.showNormalDialog;


public class Resource{


    public static void createSDCardDirimg(){
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){

            File sdcardDir =Environment.getExternalStorageDirectory();

            String path=sdcardDir.getPath()+"/LeoGHO";
            File path1 = new File(path);
            if (!path1.exists()) {
                path1.mkdirs();
            }
        }
        else{
            return;
        }

    }
    @ColorInt
    public static int getColorAttr(Context context, int attr) {
        TypedArray ta = context.obtainStyledAttributes(new int[]{attr});
        @ColorInt int colorAccent = ta.getColor(0, 0);
        ta.recycle();
        return colorAccent;
    }
    private static final String UNKNOWN = "unknown";
    public static String getProperty(String str) {
        String str3 =UNKNOWN;
        try {
            Class cls = Class.forName("android.os.SystemProperties");
            return (String) cls.getMethod("get", new Class[]{String.class, String.class}).invoke(cls, new Object[]{str, UNKNOWN});
        } catch (Exception e) {
            e.printStackTrace();
            return str3;
        } catch (Throwable th) {
            return str3;
        }
    }

    public static String getLeoBuild(String srt) {
        return  getProperty(srt);
    }
    public static String Urlr;
    public static String getLeoSafetyID() {
        return  getProperty("ril.serialnumber");
    }
  public static String getIpAddress(boolean ipv4) {
        try {
            List<NetworkInterface> interfaces = Collections.list(NetworkInterface.getNetworkInterfaces());
            for (NetworkInterface intf : interfaces) {
                List<InetAddress> addrs = Collections.list(intf.getInetAddresses());
                for (InetAddress addr : addrs) {
                    if (!addr.isLoopbackAddress()) {
                        String sAddr = addr.getHostAddress();
                        boolean isIPv4 = sAddr.indexOf(':') < 0;
                        if (ipv4) {
                            if (isIPv4) {
                                return sAddr;
                            }
                        } else {
                            if (!isIPv4) {
                                // drop ip6 zone suffix
                                int delim = sAddr.indexOf('%');
                                return delim < 0 ? sAddr.toUpperCase() : sAddr.substring(0, delim).toUpperCase();
                            }
                        }
                    }
                }
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return "";
    }

    public static String safety="JXU2Nzk3JXU1NjA5JXU1MDI5JTIwJXU2MjExJXU1NTlDJXU2QjIyJXU0RjYwJXU1MDVBJXU2MjExJXU1OTczJXU2NzBCJXU1M0NCJXU1OTdEJXU0RTBEJXU1OTdELiV1NjIxMSV1NjBGMyV1NEUwMCV1NzZGNCV1NUI4OCV1NjJBNCV1NTcyOCV1NEY2MCV1NzY4NCV1OEVBQiV1OEZCOQ==";
    public  static  String getDevice() {
        return getProperty("ro.boot.em.model");
    }
    public static String getBasicsSystemVersion() {
        return  getProperty("ro.build.PDA");
    }

    public static Drawable getCustomDrawable(Context context,String rec) {
        Drawable d;
        try {
            Context otherAppContext =context.createPackageContext(LEOFRAMEWORK, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",LEOFRAMEWORK));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
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
        String toastMsg;
        int ident;
        try {
            Resources packRes = getResourcesForPackage(context, LEOFRAMEWORK);
            ident = packRes.getIdentifier(RECnME,"string", LEOFRAMEWORK);
            toastMsg = packRes.getString(ident, pkgName);
        } catch (Exception e) {
            e.printStackTrace();
            toastMsg="";
        }

        return toastMsg;
    }
    public static boolean DonatePermission(){

        return Resource.getDonationData().equals(mDonateCode);
    };
    public final static String mDonateCode="LeoROM［Donate］";
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
    public static void blur(DrawerLayout v, Bitmap bkg) {



        float scaleFactor = 10;
        float radius = 25;


        Bitmap overlay = Bitmap.createBitmap((int) (v.getMeasuredWidth() / scaleFactor),
                (int) (v.getMeasuredHeight() / scaleFactor), Bitmap.Config.ARGB_8888);

        Canvas canvas = new Canvas(overlay);

        canvas.translate(-v.getLeft() / scaleFactor, -v.getTop() / scaleFactor);
        canvas.scale(1 / scaleFactor, 1 / scaleFactor);
        Paint paint = new Paint();
        paint.setFlags(Paint.FILTER_BITMAP_FLAG);
        canvas.drawBitmap(bkg, 0, 0, paint);

        RenderScript rs = RenderScript.create(getContext());

        Allocation overlayAlloc = Allocation.createFromBitmap(
                rs, overlay);

        ScriptIntrinsicBlur blur = ScriptIntrinsicBlur.create(
                rs, overlayAlloc.getElement());

        blur.setInput(overlayAlloc);

        blur.setRadius(radius);

        blur.forEach(overlayAlloc);

        overlayAlloc.copyTo(overlay);

        v.setBackground(new BitmapDrawable(getContext().getResources(), overlay));
        // setBackgroundColor(Color.BLUE);
        rs.destroy();

    }

    public static  String LEOFRAMEWORK= "com.leo.framework";
    public static boolean isChineseLanguage() {
        return Resources.getSystem().getConfiguration().locale.getLanguage().startsWith(
                Locale.CHINESE.getLanguage());
    }

    public static void ActionToastSring(Context context,String REC){
        String string=getStringIdentifier(context,REC);
        Context ctx = getPackageContext(context,PACKAGE_SYSTEMUI);
        Toast.makeText(ctx != null ? ctx : context, string, Toast.LENGTH_SHORT)
                .show();
    }
    public static  String PACKAGE_SYSTEMUI = "com.android.systemui";
    public   static Context getPackageContext(Context context, String packageName) {
        Context pkgContext = null;
        if (context.getPackageName().equals(packageName)) {
            pkgContext = context;
        } else {
            try {
                pkgContext = context.createPackageContext(packageName,
                        Context.CONTEXT_IGNORE_SECURITY
                                | Context.CONTEXT_INCLUDE_CODE);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return pkgContext;
    }

    public static boolean isChineseMainlandLanguage() {
        String language = getLanguageEnv();
        if (language != null
                && (language.trim().equals("zh-CN")))
            return true;
        else
            return false;
    }
    static String getLanguageEnv() {
        Locale l = Locale.getDefault();
        String language = l.getLanguage();
        String country = l.getCountry().toLowerCase();
        if ("zh".equals(language)) {
            if ("cn".equals(country)) {
                language = "zh-CN";//中国大陆
            }else if ("hk".equals(country)) {
                language = "zh-HK";//中国香港
            } else if ("mo".equals(country)) {
                language = "zh-MO";//中国澳门
            }else if ("tw".equals(country)) {
                language = "zh-TW";//中国台湾省
            }
        }
        return language;
    }

    public static String getLeoSafety() {
        return  getProperty("ro.build.leo");
    }

    public static String customization(Context context){
        String NAME;
        String Test=" (Test)";
        String leo=" (FusionLeo)";
        if (getLeoSafetyID().equals("R28K136VAZJ")) {
            NAME="不咸的盐巴"+leo;
        }else if(getLeoSafetyID().equals("R58J44F6B3D")){
            NAME="深見　ひとみ"+Test;
        }else if(getLeoSafetyID().equals("RF8J52ELJFR")){
            NAME="深見　ひとみ"+Test;
        }else if(getLeoSafetyID().equals("R28J51NJ0FD")){
            NAME="夏天"+Test;
        }else if(getLeoSafetyID().equals("R39J704L9T")){
            NAME="Bright"+Test;
        }else if(getLeoSafetyID().equals("R39J40L2DS")){
            NAME="打酱油的"+Test;
        }else if(getLeoSafetyID().equals("R28JC20F09T")){
            NAME="咸鱼"+leo;
        }else if(getLeoSafetyID().equals("R28J51PLHQW")){
            NAME="Plmh"+leo;
        }else if(getLeoSafetyID().equals("R39JA001JT")){
            NAME="罒_▁肥籽"+Test;
        }else if(getLeoSafetyID().equals("R28K70TWASN")){
            NAME="不咸的盐巴"+leo;
        }else if(getLeoSafetyID().equals("R58J5740T7E")){
            NAME="单眼皮黄皮肤"+Test;
        }else if(getLeoSafetyID().equals("R39K40GYBV")){
            NAME="沉默"+leo;
        }else if(getLeoSafetyID().equals("R58K616X6HD")){
            NAME="庭前梧桐落"+Test;
        }else if(getLeoSafetyID().equals("R39K20K8ZL")){
            NAME="郁闷的饭团"+Test;
        }else if(getLeoSafetyID().equals("R39K808AZR")){
            NAME="佳奕"+Test;
        }else{
            NAME=context.getString(R.string.donate_versions);
        }
        return NAME;

    }
    public static String LicenseInfo(){
        String INFON ;
        if (isChineseLanguage()==true) {
            INFON="file:///android_asset/License.html";
        }else {
            INFON="file:///android_asset/License_en.html";
        }
        return INFON;
    }
    public static void openUrl(String url,Context context) {

        Intent intent = new Intent(Intent.ACTION_VIEW);
        intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
        intent.setData(Uri.parse(url));
        context.startActivity(intent);
    }



    public static String OTAUrlView(String STR){
        return getStringIdentifier(getContext(),STR);
    }
    /**
     * 复制asset文件到指定目录
     * @param oldPath  asset下的路径
     * @param newPath  SD卡下保存路径
     */
    public static void CopyAssets(Context context, String oldPath, String newPath) {
        try {
            String fileNames[] = context.getAssets().list(oldPath);// 获取assets目录下的所有文件及目录名
            if (fileNames.length > 0) {// 如果是目录
                File file = new File(newPath);
                file.mkdirs();// 如果文件夹不存在，则递归
                for (String fileName : fileNames) {
                    CopyAssets(context, oldPath + "/" + fileName, newPath + "/" + fileName);
                }
            } else {// 如果是文件
                InputStream is = context.getAssets().open(oldPath);
                FileOutputStream fos = new FileOutputStream(new File(newPath));
                byte[] buffer = new byte[1024];
                int byteCount = 0;
                while ((byteCount = is.read(buffer)) != -1) {// 循环从输入流读取
                    // buffer字节
                    fos.write(buffer, 0, byteCount);// 将读取的输入流写入到输出流
                }
                fos.flush();// 刷新缓冲区
                is.close();
                fos.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }



    public static String executeCommandWithOutput(boolean root, String command) {
        DataOutputStream dos;
        InputStream is;
        try {
            Process process;
            process = root ? Runtime.getRuntime().exec("su") : Runtime.getRuntime().exec("sh");
            if (process == null) return "";
            dos = new DataOutputStream(process.getOutputStream());
            dos.write(command.getBytes("UTF-8"));
            dos.writeBytes("\nexit \n");
            dos.flush();
            dos.close();
            if (process.waitFor() == 0) {
                is = process.getInputStream();
                StringBuilder builder = new StringBuilder();
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String line;
                while ((line = br.readLine()) != null)
                    builder.append(line.trim()).append("\n");
                return builder.toString().trim();
            } else {
                is = process.getErrorStream();
                BufferedReader br = new BufferedReader(new InputStreamReader(is));
                String line;
                while ((line = br.readLine()) != null) Log.d("error", line);
            }

        } catch (IOException | InterruptedException | IllegalArgumentException e) {
            e.printStackTrace();
        }
        return "";
    }
    @RequiresApi(api = Build.VERSION_CODES.O)
    public static void addShortCut(Context context,final Class<? extends Activity> cls,Drawable ixcon,String Label,String Action,String id) {
        ShortcutManager shortcutManager = (ShortcutManager) context.getSystemService(Context.SHORTCUT_SERVICE);

        if (shortcutManager.isRequestPinShortcutSupported()) {
            Intent shortcutInfoIntent = new Intent(context,cls);
            shortcutInfoIntent.setAction(Action); //action必须设置，不然报错
            Bitmap icon = drawableToBitmap(ixcon);
            ShortcutInfo info = new ShortcutInfo.Builder(context,id)
                    .setIcon( Icon.createWithBitmap(icon))
                    .setShortLabel(Label)
                    .setIntent(shortcutInfoIntent)
                    .build();

            //当添加快捷方式的确认弹框弹出来时，将被回调
            PendingIntent shortcutCallbackIntent = PendingIntent.getBroadcast(context, 0, new Intent(context, ShortCutReceiver.class), PendingIntent.FLAG_UPDATE_CURRENT);

            shortcutManager.requestPinShortcut(info, shortcutCallbackIntent.getIntentSender());
        }

    }
    static Bitmap drawableToBitmap(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return ((BitmapDrawable) drawable).getBitmap();
        } else if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.O && drawable instanceof AdaptiveIconDrawable) {
            Drawable backgroundDr = ((AdaptiveIconDrawable) drawable).getBackground();
            Drawable foregroundDr = ((AdaptiveIconDrawable) drawable).getForeground();

            Drawable[] drr = new Drawable[2];
            drr[0] = backgroundDr;
            drr[1] = foregroundDr;

            LayerDrawable layerDrawable = new LayerDrawable(drr);

            int width = layerDrawable.getIntrinsicWidth();
            int height = layerDrawable.getIntrinsicHeight();

            Bitmap bitmap = Bitmap.createBitmap(width, height, Bitmap.Config.ARGB_8888);

            Canvas canvas = new Canvas(bitmap);

            layerDrawable.setBounds(0, 0, canvas.getWidth(), canvas.getHeight());
            layerDrawable.draw(canvas);

            return bitmap;
        }
        return null;
    }

    public static  Drawable getCustomArrayDrawable(String Package,String rec) {
        Drawable d;
        try {
            Context otherAppContext =getContext().createPackageContext(Package, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",Package));
            return d.getCurrent();
        } catch (Exception e) {
            d = getContext().getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }

    public static String[] getCustomArray(String rec) {
        String[] str;
        Context otherAppContext = null;
        try {
            otherAppContext =getContext().createPackageContext(LEOFRAMEWORK, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), "array",LEOFRAMEWORK));


        return str;
    }
    static Drawable appIcon;
    static String appLabel;
    public static Drawable appICON(String string){


        try {

            ApplicationInfo applicationInfo = getContext().getPackageManager().getApplicationInfo(string, 0);
            appIcon = applicationInfo.loadIcon(getContext().getPackageManager());
            appLabel= applicationInfo.loadLabel(getContext().getPackageManager()).toString();
        } catch (PackageManager.NameNotFoundException e) {
            Toast.makeText(getContext(),String.format(Locale.getDefault(),"［"+appLabel+"］"+getStringIdentifier(getContext(),"activity_no")), Toast.LENGTH_SHORT).show();
        }
        return appIcon;
    }



    public static Drawable getCustomDrawableUI(Context context,String rec) {
        Drawable d;
        try {
            Context otherAppContext =context.createPackageContext(PACKAGE_SYSTEMUI, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",PACKAGE_SYSTEMUI));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }
    public static String getDonationData() {
        String sb=(getLeoBuild("ro.build.display.id"));
        String string;
        String str = sb.substring(sb.indexOf("L"), sb.indexOf("V"));
        if (str == null ||str.equals("")) {
            string="";
        }else{
            string=str;
        }
        return  string;
    }
    public static String getKernelCodeData() {
        String sb=(System.getProperty("os.version"));

        String str = sb.substring(8,14);

        return  str;
    }


    public static String FusionLeo100(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }
    public static String mSDCardPath;
    public static final String APP_FOLDER_NAME = "LeoTweaks";
    public static boolean initDirs() {
        mSDCardPath = Environment.getExternalStorageDirectory().toString();
        if (mSDCardPath == null) {
            return false;
        }
        File f = new File(mSDCardPath, APP_FOLDER_NAME);
        if (!f.exists()) {
            try {
                f.mkdirs();
            } catch (Exception e) {
                e.printStackTrace();
                return false;
            }
        }
        return true;
    }
    public static void createSDCardDupdateirimg(){
        if(Environment.MEDIA_MOUNTED.equals(Environment.getExternalStorageState())){

            File sdcardDir =Environment.getExternalStorageDirectory();

            String path=sdcardDir.getPath()+"/LeoTweaks/update";
            File path1 = new File(path);
            if (!path1.exists()) {
                path1.mkdirs();
            }
        }
        else{
            return;
        }

    }
}
