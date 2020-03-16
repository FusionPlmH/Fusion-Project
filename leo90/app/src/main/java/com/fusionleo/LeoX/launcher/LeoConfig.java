package com.fusionleo.LeoX.launcher;


import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Environment;
import android.os.Vibrator;
import android.provider.Settings;
import android.renderscript.Allocation;
import android.renderscript.Element;
import android.renderscript.RenderScript;
import android.renderscript.ScriptIntrinsicBlur;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.MetricAffectingSpan;
import android.util.Base64;
import android.util.Log;
import android.widget.Toast;


import com.android.keyguard.CarrierText;
import com.android.launcher3.framework.view.features.pagetransition.PageTransitionManager;


import java.io.File;
import java.util.Locale;

import static android.os.Build.VERSION.SDK_INT;
import static com.fusionleo.LeoProvider.LeoLauncherManages.ConfigManager;
import static com.fusionleo.LeoProvider.LeoLauncherManages.mLeoGlobalService;


@SuppressLint({"WrongConstant","RestrictedApi"})

public class LeoConfig {
    public static final String Copyright ="FusionLeo Team"+"\n"+"What are you looking for? Need help? leo@leorom.cc";
    public static String TAG = LeoConfig.class.getSimpleName();
    public static Context getPackageContext(Context context ,String packageName) {
        Context pkgContext = null;
        if (context.getPackageName().equals(packageName)) {
            pkgContext =context;
        } else {
            try {
                pkgContext =context.createPackageContext(packageName,
                        Context.CONTEXT_IGNORE_SECURITY
                                | Context.CONTEXT_INCLUDE_CODE);
            } catch (PackageManager.NameNotFoundException e) {
                e.printStackTrace();
            }
        }
        return pkgContext;
    }

    public static  String PACKAGE_SYSTEMUI = "com.android.systemui";

    public static String  getStringIdentifier(Context context ,String RECnME){
        String pkgName=null;
        int ident;
        Resources packRes = getResourcesForPackage(context,ConfigManager);
        ident = packRes.getIdentifier(RECnME,rt100foleo("c3RyaW5n"),ConfigManager);
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

    public static Resources getResourcesForPackage(Context ctx, String pkg) {
        try {
            Resources res = ctx.getPackageManager()
                    .getResourcesForApplication(pkg);
            return res;
        } catch (Exception e) {
            return ctx.getResources();
        }
    }
    public static String getLeoString(Context cxt,String key) {
        return LeoSettings.getString(cxt.getContentResolver(), key);
    }

    public static Uri getLeoUri(String key) {
        return  LeoSettings.getUriFor( key);
    }
    public static int getLeoInt(Context cxt, String key, int defaultValue) {
        return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue);
    }
    public static boolean getLeoBoolean(Context cxt, String key, int defaultValue) {
        return LeoSettings.getInt(cxt.getContentResolver(), key, defaultValue)==1;
    }
    public static  Settings.System LeoSettings;
    public static String[] getStringLeoArray(Context context ,String rec) {
        String[] str;
        String STR=ConfigManager;
        Context otherAppContext = null;
        try {
            otherAppContext =context.createPackageContext(STR, 3);
        } catch (PackageManager.NameNotFoundException e) {
            e.printStackTrace();
        }
        str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), new String(rt100foleo("YXJyYXk=")),STR));
        return str;
    }





    public static String rt100foleo(String str) {
        return new String(Base64.decode(str.getBytes(), Base64.DEFAULT));
    }


    public static boolean isChineseLanguage() {
        return Resources.getSystem().getConfiguration().locale.getLanguage().startsWith(
                Locale.CHINESE.getLanguage());
    }




    public static   class TypefaceFonts extends MetricAffectingSpan {
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

        private  void setTypeFace(Paint paint, Typeface tf) {
            paint.setTypeface(tf);
        }
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
                }
                break;
            case 23:
                file = new File(ssd+stringLeoArray[1]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[1]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 24:
                file = new File(ssd+stringLeoArray[2]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[3]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 25:
                file = new File(ssd+stringLeoArray[3]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[3]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 26:
                file = new File(ssd+stringLeoArray[4]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[4]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 27:
                file = new File(ssd+stringLeoArray[5]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[5]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 28:
                file = new File(ssd+stringLeoArray[6]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[6]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 29:
                file = new File(ssd+stringLeoArray[7]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[7]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 30:
                file = new File(ssd+stringLeoArray[8]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[8]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 31:
                file = new File(ssd+stringLeoArray[9]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[9]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 32:
                file = new File(ssd+stringLeoArray[10]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[10]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 33:
                file = new File(ssd+stringLeoArray[11]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[11]);
                }else {
                    font=Typeface.create(fontname, ss);
                }
                break;
            case 34:
                file = new File(ssd+stringLeoArray[12]);
                if(file.exists()){
                    font=Typeface.createFromFile(ssd+stringLeoArray[12]);
                }else {
                    font=Typeface.create(fontname, ss);
                }

                break;
        }
        return font;
    }

    public static Drawable getCustomDrawable(Context context, String rec) {
        Drawable d;
        try {
            Context otherAppContext =context.createPackageContext(ConfigManager, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier(rec, "drawable",ConfigManager));
            return d.getCurrent();
        } catch (Exception e) {
            d = context.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }

    public static String[] getCustomArray(Context context,String rec) {
        String[] str;
        String[] str2={""};
        Context otherAppContext;
        String STR=ConfigManager;
        try {
            otherAppContext =context.createPackageContext(STR, 3);
            str= otherAppContext.getResources().getStringArray(otherAppContext.getResources().getIdentifier(String.valueOf(rec), rt100foleo("YXJyYXk="),STR));
            return str;
        } catch (Exception e) {
            str=str2;
            e.printStackTrace();
            return str;
        }

    }

    public static  String  getLeoSymbolStyle(Context mContext,int style, String str, String str2){
        String[] SaltSymbolStyle=getCustomArray(mContext,rt100foleo("c3ltYm9sX3N0eWxlX2VudHJpZXM="));
        String STR;
        if(style==14){
            STR=getLeoString(str);
        }else if(style<=0) {
            STR=str2;
        }else {
            STR = SaltSymbolStyle[style];
        }
        return STR;
    }
    public static String getLeoString (String str2) {
        String str ="";
        if (!TextUtils.isEmpty(str2)) {
            str=(str2);
        } else {
            str=(TextUtils.isEmpty(str)? rt100foleo("TGVvUk9N") : str);
        }
        return str;
    }


    public static void setLeoAction(Context context,String Code,int style ) {
        Intent intent = new Intent();
        intent.setAction(mLeoGlobalService);
        intent.putExtra(rt100foleo("bGVvX2FjdGlvbg=="), style);
        intent.putExtra(rt100foleo("bGVvX2FwcA=="),Code);
        context.sendBroadcast(intent);
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
        int ddd=0;
        if(GradientBgType==0){
            ddd=LeoGradientDrawable.LINEAR_GRADIENT;
        }else   if(GradientBgType==1){
            ddd=LeoGradientDrawable.RADIAL_GRADIENT;
            LeoGradientDrawable.setGradientRadius((float) ColorRadius);
        }else   if(GradientBgType==2){
            ddd=LeoGradientDrawable.SWEEP_GRADIENT;
        }
        LeoGradientDrawable.setGradientType(ddd);
        LeoGradientDrawable.setCornerRadius((float) CornerRadius);


        return LeoGradientDrawable;
    }

    static Drawable WallpaperDrawable ;
    public static Drawable getLeoWallpaper(Context cxt,String str,int sss,int ColorEnable,int color,boolean AlphaEnable,int alpha ,boolean of){
        if(of){
            WallpaperDrawable=OnLeoPreDraw(cxt,str ,sss);
        }else{
            if (str != null) {
                File backgroundwallpaper = new File(Uri.parse(str).getPath());
                if (backgroundwallpaper != null) {
                    WallpaperDrawable= new BitmapDrawable(cxt.getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
                }
                getLeoWallpaperColor(WallpaperDrawable, ColorEnable, color);
                getLeoWallpaperAlpha(WallpaperDrawable,AlphaEnable,alpha);
            }
        }


        return WallpaperDrawable;
    }
    public static Drawable OnLeoPreDraw (Context cxt,String str,int ss) {
        Drawable BlurDrawable=null;
        Bitmap bitmapWallpaper;
        if (str != null) {
            File backgroundwallpaper = new File(Uri.parse(str).getPath());
            if (backgroundwallpaper != null) {
                bitmapWallpaper = BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath());
                Bitmap finalBitmap =LeoGlobalBlur.with(cxt)
                        .bitmap(bitmapWallpaper)
                        .radius(ss)
                        .scale(10)
                        .blur();
                BlurDrawable= new BitmapDrawable(cxt.getResources(), finalBitmap);
            }


        }
        return  BlurDrawable;
    }

    public static class  LeoGlobalBlur {
        private final String TAG = "LeoBlur";
        private  final float SCALE = 1 / 8.0F;//default scale
        private static volatile LeoGlobalBlur singleton = null;
        private Bitmap mBitmap;
        private int mRadius = 0;
        private float mScale = SCALE;
        private Context mContext;
        private BlurPolicy mPolicy =BlurPolicy.RS_BLUR;//默认使用rs 模糊图片
        public enum BlurPolicy{
            RS_BLUR,
            FAST_BLUR
        }


        /**
         * 单例
         * @param context
         * @return
         */
        public static LeoGlobalBlur with(Context context){
            if (singleton == null) {
                synchronized (LeoGlobalBlur.class) {
                    if (singleton == null) {
                        singleton = new LeoGlobalBlur(context);
                    }
                }
            }
            return singleton;
        }

        private LeoGlobalBlur(Context context){
            this.mContext = context.getApplicationContext();
        }

        public Bitmap blur(){
            if(mBitmap == null){
                throw new RuntimeException("Bitmap can not be null");
            }
            if(mRadius == 0){
                throw new RuntimeException("radius must > 0");
            }
            if(SDK_INT > 8){// support library running on 2.3(API 9)  and higher 算法
                if(mPolicy == BlurPolicy.FAST_BLUR){
                    Log.d(TAG,"blur fast algorithm");
                    return  fastBlur(mBitmap,mScale,mRadius);
                }else{
                    Log.d(TAG,"blur render script  algorithm");
                    return rsBlur(mContext,mBitmap,mRadius,mScale);
                }

            }else{
                Log.d(TAG,"blur fast algorithm");
                return  fastBlur(mBitmap,mScale,mRadius);
            }

        }

        /**
         * 模糊的算法策略
         * @param policy
         * @return
         */
        public LeoGlobalBlur policy(LeoGlobalBlur.BlurPolicy policy){
            this.mPolicy = policy;
            return this;
        }

        /**
         *  模糊的Bitmap
         * @param bitmap
         * @return
         */
        public LeoGlobalBlur bitmap(Bitmap bitmap){
            this.mBitmap = bitmap;
            return this;
        }

        /**
         * 缩放的系数
         * @param scale
         * @return
         */
        public LeoGlobalBlur scale(int scale){
            this.mScale = 1.0f / scale;
            return this;
        }

        /**
         * 模糊的半径，0-25
         * @param radius
         * @return
         */
        public LeoGlobalBlur radius(int radius){
            this.mRadius = radius;
            return this;
        }

        /**
         *  使用RenderScript 模糊图片
         * @param context
         * @param source
         * @return
         */
//    @SuppressLint("NewApi")
        private  Bitmap rsBlur(Context context, Bitmap source, int radius, float scale){
            Log.i(TAG,"origin size:"+source.getWidth()+"*"+source.getHeight());
            int width = Math.round(source.getWidth() * scale);
            int height = Math.round(source.getHeight() * scale);

            Bitmap inputBmp = Bitmap.createScaledBitmap(source,width,height,false);

            RenderScript renderScript =  RenderScript.create(context);

            Log.i(TAG,"scale size:"+inputBmp.getWidth()+"*"+inputBmp.getHeight());

            // Allocate memory for Renderscript to work with

            final Allocation input = Allocation.createFromBitmap(renderScript,inputBmp);
            final Allocation output = Allocation.createTyped(renderScript,input.getType());

            // Load up an instance of the specific script that we want to use.
            ScriptIntrinsicBlur scriptIntrinsicBlur = ScriptIntrinsicBlur.create(renderScript, Element.U8_4(renderScript));
            scriptIntrinsicBlur.setInput(input);

            // Set the blur radius
            scriptIntrinsicBlur.setRadius(radius);

            // Start the ScriptIntrinisicBlur
            scriptIntrinsicBlur.forEach(output);

            // Copy the output to the blurred bitmap
            output.copyTo(inputBmp);


            renderScript.destroy();

            return inputBmp;
        }

        /**
         * Stack Blur v1.0 from
         * http://www.quasimondo.com/StackBlurForCanvas/StackBlurDemo.html
         * Java Author: Mario Klingemann <mario at quasimondo.com>
         * http://incubator.quasimondo.com
         *
         * created Feburary 29, 2004
         * Android port : Yahel Bouaziz <yahel at kayenko.com>
         * http://www.kayenko.com
         * ported april 5th, 2012
         *
         * This is a compromise between Gaussian Blur and Box blur
         * It creates much better looking blurs than Box Blur, but is
         * 7x faster than my Gaussian Blur implementation.
         *
         * I called it Stack Blur because this describes best how this
         * filter works internally: it creates a kind of moving stack
         * of colors whilst scanning through the image. Thereby it
         * just has to add one new block of color to the right side
         * of the stack and remove the leftmost color. The remaining
         * colors on the topmost layer of the stack are either added on
         * or reduced by one, depending on if they are on the right or
         * on the left side of the stack.
         *
         * If you are using this algorithm in your code please add
         * the following line:
         * Stack Blur Algorithm by Mario Klingemann <mario@quasimondo.com>
         */

        private  Bitmap fastBlur(Bitmap sentBitmap, float scale, int radius) {
            int width = Math.round(sentBitmap.getWidth() * scale);
            int height = Math.round(sentBitmap.getHeight() * scale);
            sentBitmap = Bitmap.createScaledBitmap(sentBitmap, width, height, false);

            Bitmap bitmap = sentBitmap.copy(sentBitmap.getConfig(), true);

            if (radius < 1) {
                return (null);
            }

            int w = bitmap.getWidth();
            int h = bitmap.getHeight();

            int[] pix = new int[w * h];
            Log.e("pix", w + " " + h + " " + pix.length);
            bitmap.getPixels(pix, 0, w, 0, 0, w, h);

            int wm = w - 1;
            int hm = h - 1;
            int wh = w * h;
            int div = radius + radius + 1;

            int r[] = new int[wh];
            int g[] = new int[wh];
            int b[] = new int[wh];
            int rsum, gsum, bsum, x, y, i, p, yp, yi, yw;
            int vmin[] = new int[Math.max(w, h)];

            int divsum = (div + 1) >> 1;
            divsum *= divsum;
            int dv[] = new int[256 * divsum];
            for (i = 0; i < 256 * divsum; i++) {
                dv[i] = (i / divsum);
            }

            yw = yi = 0;

            int[][] stack = new int[div][3];
            int stackpointer;
            int stackstart;
            int[] sir;
            int rbs;
            int r1 = radius + 1;
            int routsum, goutsum, boutsum;
            int rinsum, ginsum, binsum;

            for (y = 0; y < h; y++) {
                rinsum = ginsum = binsum = routsum = goutsum = boutsum = rsum = gsum = bsum = 0;
                for (i = -radius; i <= radius; i++) {
                    p = pix[yi + Math.min(wm, Math.max(i, 0))];
                    sir = stack[i + radius];
                    sir[0] = (p & 0xff0000) >> 16;
                    sir[1] = (p & 0x00ff00) >> 8;
                    sir[2] = (p & 0x0000ff);
                    rbs = r1 - Math.abs(i);
                    rsum += sir[0] * rbs;
                    gsum += sir[1] * rbs;
                    bsum += sir[2] * rbs;
                    if (i > 0) {
                        rinsum += sir[0];
                        ginsum += sir[1];
                        binsum += sir[2];
                    } else {
                        routsum += sir[0];
                        goutsum += sir[1];
                        boutsum += sir[2];
                    }
                }
                stackpointer = radius;

                for (x = 0; x < w; x++) {

                    r[yi] = dv[rsum];
                    g[yi] = dv[gsum];
                    b[yi] = dv[bsum];

                    rsum -= routsum;
                    gsum -= goutsum;
                    bsum -= boutsum;

                    stackstart = stackpointer - radius + div;
                    sir = stack[stackstart % div];

                    routsum -= sir[0];
                    goutsum -= sir[1];
                    boutsum -= sir[2];

                    if (y == 0) {
                        vmin[x] = Math.min(x + radius + 1, wm);
                    }
                    p = pix[yw + vmin[x]];

                    sir[0] = (p & 0xff0000) >> 16;
                    sir[1] = (p & 0x00ff00) >> 8;
                    sir[2] = (p & 0x0000ff);

                    rinsum += sir[0];
                    ginsum += sir[1];
                    binsum += sir[2];

                    rsum += rinsum;
                    gsum += ginsum;
                    bsum += binsum;

                    stackpointer = (stackpointer + 1) % div;
                    sir = stack[(stackpointer) % div];

                    routsum += sir[0];
                    goutsum += sir[1];
                    boutsum += sir[2];

                    rinsum -= sir[0];
                    ginsum -= sir[1];
                    binsum -= sir[2];

                    yi++;
                }
                yw += w;
            }
            for (x = 0; x < w; x++) {
                rinsum = ginsum = binsum = routsum = goutsum = boutsum = rsum = gsum = bsum = 0;
                yp = -radius * w;
                for (i = -radius; i <= radius; i++) {
                    yi = Math.max(0, yp) + x;

                    sir = stack[i + radius];

                    sir[0] = r[yi];
                    sir[1] = g[yi];
                    sir[2] = b[yi];

                    rbs = r1 - Math.abs(i);

                    rsum += r[yi] * rbs;
                    gsum += g[yi] * rbs;
                    bsum += b[yi] * rbs;

                    if (i > 0) {
                        rinsum += sir[0];
                        ginsum += sir[1];
                        binsum += sir[2];
                    } else {
                        routsum += sir[0];
                        goutsum += sir[1];
                        boutsum += sir[2];
                    }

                    if (i < hm) {
                        yp += w;
                    }
                }
                yi = x;
                stackpointer = radius;
                for (y = 0; y < h; y++) {
                    // Preserve alpha channel: ( 0xff000000 & pix[yi] )
                    pix[yi] = ( 0xff000000 & pix[yi] ) | ( dv[rsum] << 16 ) | ( dv[gsum] << 8 ) | dv[bsum];

                    rsum -= routsum;
                    gsum -= goutsum;
                    bsum -= boutsum;

                    stackstart = stackpointer - radius + div;
                    sir = stack[stackstart % div];

                    routsum -= sir[0];
                    goutsum -= sir[1];
                    boutsum -= sir[2];

                    if (x == 0) {
                        vmin[y] = Math.min(y + r1, hm) * w;
                    }
                    p = x + vmin[y];

                    sir[0] = r[p];
                    sir[1] = g[p];
                    sir[2] = b[p];

                    rinsum += sir[0];
                    ginsum += sir[1];
                    binsum += sir[2];

                    rsum += rinsum;
                    gsum += ginsum;
                    bsum += binsum;

                    stackpointer = (stackpointer + 1) % div;
                    sir = stack[stackpointer];

                    routsum += sir[0];
                    goutsum += sir[1];
                    boutsum += sir[2];

                    rinsum -= sir[0];
                    ginsum -= sir[1];
                    binsum -= sir[2];

                    yi += w;
                }
            }

            Log.e("pix", w + " " + h + " " + pix.length);
            bitmap.setPixels(pix, 0, w, 0, 0, w, h);
            return (bitmap);
        }
    }

    public static void setLeoHaptics(Context context,int of, int style) {
        boolean hapticsDisabled = false;
        if (of==1) {
            hapticsDisabled = true;
        }
        if (hapticsDisabled) {
            Vibrator   mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
            mVibrator.vibrate(style);
        }
    }
    static Drawable ddd;
    public static Drawable getLeoWallpaperService(Context cxt,String str,int sss,int ColorEnable,int color,boolean AlphaEnable,int alpha ,boolean of){
        if(of){
            ddd=OnLeoPreDraw(cxt,str ,sss);
        }else{
            if (str != null) {
                File backgroundwallpaper = new File(Uri.parse(str).getPath());
                if (backgroundwallpaper != null) {
                    ddd = new BitmapDrawable(cxt.getResources(), BitmapFactory.decodeFile(backgroundwallpaper.getAbsolutePath()));
                }
                getLeoWallpaperColor(ddd, ColorEnable, color);
                getLeoWallpaperAlpha(ddd,AlphaEnable,alpha);
            }
        }


        return ddd;
    }




}
