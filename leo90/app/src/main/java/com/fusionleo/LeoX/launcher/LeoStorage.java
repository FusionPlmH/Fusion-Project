package com.fusionleo.LeoX.launcher;


import android.app.ActivityManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.os.Environment;
import android.os.Handler;
import android.os.StatFs;
import android.text.SpannableString;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.format.Formatter;
import android.text.style.MetricAffectingSpan;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.animation.LinearInterpolator;
import android.widget.ProgressBar;
import android.widget.TextView;

import com.android.internal.util.MemInfoReader;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;

import static com.fusionleo.LeoProvider.LeoLauncherManages.Config;
import static com.fusionleo.LeoX.launcher.LeoConfig.getStringIdentifier;
import static com.fusionleo.LeoX.launcher.LeoConfig.getStringLeoArray;
import static com.fusionleo.LeoX.launcher.LeoConfig.rt100foleo;


public class LeoStorage extends TextView {
   public Context  mContext;
    private ActivityManager mActivityManager;


    public MemInfoReader memInfoReader = new MemInfoReader();


    public ActivityManager.MemoryInfo memoryInfo ;
    public LeoStorage(Context context) {
        super(context);
    }

    public LeoStorage(Context context, AttributeSet attrs) {
        super(context, attrs);


            mContext=context;
        mActivityManager = (ActivityManager)mContext.getSystemService(Context.ACTIVITY_SERVICE);

    }


    public long mRamTotal;
    public long mSwapTotal;

    public String SwapUsed(){
        //  setText("");
        mSwapTotal= memInfoReader.getSwapTotalSizeKb();
        memInfoReader.readMemInfo();
        //long cachedSizeLegacy = memInfoReader.getCachedSizeLegacy() + this.memInfoReader.getFreeSize();
        long swapFreeSizeKb = this.memInfoReader.getSwapFreeSizeKb();
        // int round = Math.round(((((float) mRamTotal) - ((float) cachedSizeLegacy)) / ((float)mRamTotal)) * 100.0f);
        int round2 = Math.round(((((float) mSwapTotal) - ((float) swapFreeSizeKb)) / ((float)mSwapTotal)) * 100.0f);
        //  swapFreeSizeKb *= 1024;

        return String.valueOf(round2) + "%";
    }
    public String RamTotalUsed(){

        mSwapTotal= memInfoReader.getSwapTotalSizeKb();
        memInfoReader.readMemInfo();
        long cachedSizeLegacy = memInfoReader.getCachedSizeLegacy() + this.memInfoReader.getFreeSize();
        //long swapFreeSizeKb = this.memInfoReader.getSwapFreeSizeKb();
        int round = Math.round(((((float) mRamTotal) - ((float) cachedSizeLegacy)) / ((float)mRamTotal)) * 100.0f);
        return String.valueOf(round) + "%";
    }

    public String SwapTotal() {

        memInfoReader.readMemInfo();
        mSwapTotal= memInfoReader.getSwapTotalSizeKb();
        mSwapTotal *= 1024;
        return formateFileSize( mSwapTotal);
    }
    long mSwapFree;
    public String SwapFree() {

        memInfoReader.readMemInfo();
        mSwapFree= memInfoReader.getSwapFreeSizeKb();
        mSwapFree *= 1024;
        return formateFileSize(mSwapFree);
    }

    public  String getTotalRam(){//GB
        String path = "/proc/meminfo";
        String firstLine = null;
        int totalRam = 0 ;
        try{
            FileReader fileReader = new FileReader(path);
            BufferedReader br = new BufferedReader(fileReader,8192);
            firstLine = br.readLine().split("\\s+")[1];
            br.close();
        }catch (Exception e){
            e.printStackTrace();
        }
        if(firstLine != null){
            totalRam = (int)Math.ceil((new Float(Float.valueOf(firstLine) / (1024 * 1024)).doubleValue()));
        }

        return totalRam + " GB";//返回1GB/2GB/3GB/4GB
    }


    //调用系统函数，字符串转换 long -String KB/MB
    private String formateFileSize(long size){
        return Formatter.formatFileSize(mContext, size);
    }

    public String getSystemMemoryUsableSize(){

        //获得MemoryInfo对象
        memoryInfo = new ActivityManager.MemoryInfo() ;
        //获得系统可用内存，保存在MemoryInfo对象上
        mActivityManager.getMemoryInfo(memoryInfo) ;
        long memSize = memoryInfo.availMem;

        //字符类型转换
        String availMemStr = formateFileSize(memSize);

        return availMemStr ;
    }

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        memInfoReader.readMemInfo();
        mRamTotal = this.memInfoReader.getTotalSize();
      //  mActivityManager = (ActivityManager)mContext.getSystemService(Context.ACTIVITY_SERVICE);
       // memInfoReader = new MemInfoReader();
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();

    }
    public String storageName(int style){
        String total="";
        if(style==0){
            total=getStringIdentifier(getContext(),"storage_ram");
        }else if(style==1){
            total=getStringIdentifier(getContext(),"storage_swap");
        }
        return total;
    }


    static {
        System.loadLibrary(Config);
    }


}