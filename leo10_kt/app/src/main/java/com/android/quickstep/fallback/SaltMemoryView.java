package com.android.quickstep.fallback;


import android.app.ActivityManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.Typeface;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.StatFs;
import android.os.SystemClock;
import android.os.Vibrator;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.Base64;
import android.util.Log;
import android.view.Display;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;

import com.android.internal.util.MemInfoReader;

import java.io.BufferedReader;
import java.io.FileReader;

import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.android.launcher3.salt.SaltLauncher.*;
import static com.android.launcher3.salt.SaltServerFrame.Provider.getLeoUri;
import static com.android.launcher3.salt.SaltServerFrame.*;



public class SaltMemoryView extends TextView implements View.OnClickListener {
    public Context  mContext;
    public SaltMemoryView(Context context) {
        super(context);
    }

    public SaltMemoryView(Context context, AttributeSet attrs) {
        super(context, attrs);
            mContext=context;
        mActivityManager = (ActivityManager)mContext.getSystemService(Context.ACTIVITY_SERVICE);
    }
    private ActivityManager mActivityManager;
    public MemInfoReader memInfoReader = new MemInfoReader();
    public ActivityManager.MemoryInfo memoryInfo ;
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


    public String storageName(int style){
        String total="";
        if(style==0){
            total=getStringIdentifier(getContext(),"storage_ram");
        }else if(style==1){
            total=getStringIdentifier(getContext(),"storage_swap");
        }
        return total;
    }

    private void intView(){
        setText("");
        setSaltMemoryView(mContext);
        int style=setLeoStorageInfoType;
        if(SaltStorageTitleDisabled){
            Log.v(TAG, "Hide title");
        }else{
            SpannableString name = new SpannableString(storageName(style));
            name.setSpan(new ForegroundColorSpan(SaltStorageTitleColor), 0,name.length(), 33);
            name.setSpan(new TypefaceFonts(setLeoTextFont(mContext,SaltStorageTitleFont,"sec-roboto-light",Typeface.NORMAL)), 0, name.length(), 33);
            append(name);
            append(" ");
            append(" ");
            append(" ");
        }
        SpannableString spannableString3 = new SpannableString(getStringIdentifier(getContext(),"storage_total")+":"+storageTotal(style));
        spannableString3.setSpan(new ForegroundColorSpan(SaltStorageTotalColor), 0, spannableString3.length(), 33);
        spannableString3.setSpan(new TypefaceFonts(setLeoTextFont(mContext,SaltStorageTotalFont,"sec-roboto-light",Typeface.NORMAL)), 0,spannableString3.length(), 33);
        append(spannableString3);
      intervalView();
        SpannableString spannableString1 = new SpannableString(getStringIdentifier(getContext(),"storage_available")+":"+storageAvaialbe(style));
        spannableString1.setSpan(new ForegroundColorSpan(SaltStorageAvailableColor), 0, spannableString1.length(), 33);
        spannableString1.setSpan(new TypefaceFonts(setLeoTextFont(mContext,SaltStorageAvailableFont,"sec-roboto-light",Typeface.NORMAL)), 0,spannableString1.length(), 33);
        append(spannableString1);
        intervalView();
        SpannableString spannableString = new SpannableString(getStringIdentifier(getContext(),"storage_used")+":"+storageUsed(style));
        spannableString.setSpan(new ForegroundColorSpan( SaltStorageUsedColor), 0, spannableString.length(), 33);
        spannableString.setSpan(new TypefaceFonts(setLeoTextFont(mContext,SaltStorageUsedFont,"sec-roboto-light", Typeface.NORMAL)), 0,spannableString.length(), 33);
        append(spannableString);
        setMem();

    }
    private void intervalView(){
        append(" ");
        SpannableString symbol1 = new SpannableString(getLeoSymbolStyle(getContext(),setLeoStorageInfoSymbolStyle,setLeoStorageInfoSymbolString," "));
        symbol1.setSpan(new ForegroundColorSpan(setLeoStorageInfoSymbolColor), 0, symbol1.length(), 33);
        append( symbol1);
        append(" ");
    }


    public boolean SaltStorageTitleDisabled;
    public int SaltStorageTitleColor;
    public int SaltStorageTitleFont;
    public int SaltStorageTotalColor;
    public int SaltStorageTotalFont;
    public int SaltStorageAvailableColor;
    public int SaltStorageAvailableFont;
    public int SaltStorageUsedColor;
    public int SaltStorageUsedFont;



    public void updateSettings(){
        setSaltMemoryView(mContext);
        setVisibility(setLeoStorageInfoEnabled? VISIBLE : GONE);
        SaltStorageTitleColor=setLeoStorageInfoTitleColor;
        SaltStorageTitleFont=setLeoStorageInfoTitleFont;
        SaltStorageTotalColor=setLeoStorageInfoTotalColor;
        SaltStorageTotalFont=setLeoStorageInfoTotalFont;
        SaltStorageAvailableColor=setLeoStorageInfoAvailableColor;
        SaltStorageAvailableFont=setLeoStorageInfoAvailableFont;
        SaltStorageUsedColor=setLeoStorageInfoUsedColor;
        SaltStorageUsedFont=setLeoStorageInfoUsedFont;
        updateClock=setLeoStorageInfoRefresh;
        if (setLeoStorageInfoOnClickEnabled) {
            setOnClickListener(this);
        } else {
            setClickable(false);
        }
        int size=setLeoStorageInfoSize;
        if(size >=16){
            SaltStorageTitleDisabled=true;
        }else {
            SaltStorageTitleDisabled=setLeoStorageInfoTitleEnabled;
        }
        setTextSize(size);
        intView();

        getLeoGradientStroke(setLeoStorageInfoBgEnabled,setLeoStorageInfoBgColor,setLeoStorageInfoBGDashed,setLeoStorageInfoBgDashedThickness,setLeoStorageInfoBgDashedWidth,setLeoStorageInfoBgDashedGop,setLeoStorageInfoBgDashedColor,setLeoStorageInfoBgDashedRadius);
        setBackground(mLeoGradientDrawable);
;    }

    @Override
    public void onClick(View v) {
        setSaltMemoryView(mContext);
        Context context=mContext;
        setLeoHaptics(context,setLeoStorageInfoVibratorEnabled,setLeoStorageInfoVibratorLevel);
        CleanProcesse(context);
    }



    public String storageTotal(int style){
        String total="";
        if(style==0){
            total=getTotalRam();
        }else if(style==1){
            total=SwapTotal();
        }
        return total;
    }
    public String storageAvaialbe(int style){
        String total="";
        if(style==0){
            total=getSystemMemoryUsableSize();
        }else if(style==1){
            total=SwapFree();
        }
        return total;
    }

    public String storageUsed(int style){
        String total="";
        if(style==0){
            total=RamTotalUsed();
        }else if(style==1){
            total=SwapUsed();
        }
        return total;
    }
    private void  setMem(){
        if (mHandler == null && getDisplay() != null) {
            mHandler = new Handler();
            if (getDisplay().getState() == Display.STATE_ON) {
                mHandler.postAtTime(mMemoryInfoTick,
                        SystemClock.uptimeMillis() / updateClock * updateClock + updateClock);
            }
            IntentFilter filter = new IntentFilter(Intent.ACTION_SCREEN_OFF);
            filter.addAction(Intent.ACTION_SCREEN_ON);
            getContext().registerReceiver(mMemoryInfoReceiver, filter);
        }

    }
    public long updateClock=1500;
    private Handler mHandler;
    private final BroadcastReceiver mMemoryInfoReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (Intent.ACTION_SCREEN_OFF.equals(action)) {
                if (mHandler != null) {
                    mHandler.removeCallbacks(mMemoryInfoTick);
                }
            } else if (Intent.ACTION_SCREEN_ON.equals(action)) {
                if (mHandler != null) {
                    mHandler.postAtTime(mMemoryInfoTick,
                            SystemClock.uptimeMillis() / updateClock* updateClock + updateClock);
                }
            }
        }
    };

    private final Runnable mMemoryInfoTick = new Runnable() {
        @Override
        public void run() {
            updateSettings();
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / updateClock * updateClock + updateClock);
        }
    };
    public static final String TAG =SaltMemoryView.class.getSimpleName();
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        memInfoReader.readMemInfo();
        mRamTotal = this.memInfoReader.getTotalSize();

        updateSettings();
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(SALTTASK);
        getContext().registerReceiver(mSaltRefreshMemoryInfoReceiver,intentFilter);
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mHandler != null) {
            getContext().unregisterReceiver(mMemoryInfoReceiver);
            mHandler.removeCallbacks(mMemoryInfoTick);
            mHandler = null;
            updateSettings();
            getContext().unregisterReceiver(mSaltRefreshMemoryInfoReceiver);
        }
    }
    public GradientDrawable mLeoGradientDrawable = new GradientDrawable();
    public  void getLeoGradientStroke( boolean obgcolor, int bgcolor,int StrokeEnabled, int StrokeThickness, int DashWidth, int DashGap, int DashColor , int ColorRadius){
        mLeoGradientDrawable.setCornerRadius((float) ColorRadius);
        if(obgcolor){
            mLeoGradientDrawable.setColor(bgcolor);
        }else{
            mLeoGradientDrawable.setColor(defaultLeoStorageInfoBgColor);
        }
      if (StrokeEnabled==1) {
            mLeoGradientDrawable.setStroke(StrokeThickness,DashColor,DashWidth, DashGap);

      }
    }


    public  void CleanProcesse(Context context) {
        try {
            Intent intent = new Intent();
            intent.setFlags(FLAG_ACTIVITY_NEW_TASK);
            intent.setAction(new String(Base64.decode("Y29tLmxlby5BQ1RJT05fQ0xFQU4=".getBytes(), Base64.DEFAULT)));
            context.startActivity(intent);
        } catch (Exception e) {
            Log.v(TAG, "error occurred");
        }
    }
    private static  final String SALTTASK=rt100foleo("U0FMVF9VUERBVEVfVEFTS0JBUl9TRVRUSU5HUw==");
    private final BroadcastReceiver mSaltRefreshMemoryInfoReceiver = new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (action.equals(SALTTASK)) {
                updateSettings();
            }
        }
    };
}