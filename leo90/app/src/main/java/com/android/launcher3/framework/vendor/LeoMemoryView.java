package com.android.launcher3.framework.
        vendor;


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

import com.fusionleo.LeoX.launcher.LeoStorage;


import static android.content.Intent.FLAG_ACTIVITY_NEW_TASK;
import static com.fusionleo.LeoProvider.LeoLauncherManages.*;
import static com.fusionleo.LeoX.launcher.LeoConfig.*;

public class LeoMemoryView extends LeoStorage {
   public Context  mContext;



    public LeoObserver mLeoObserver;
    public LeoMemoryView(Context context) {
        super(context);
    }

    public LeoMemoryView(Context context, AttributeSet attrs) {
        super(context, attrs);
            mContext=context;
    }

    private void intView(){

        setText("");
        LeoLauncherManages(mContext);
        int style=setLeoStorageInfoType;
        if(SaltStorageTitleDisabled){
            Log.v(TAG, "Hide title");
        }else{
            SpannableString name = new SpannableString(storageName(style));
            name.setSpan(new ForegroundColorSpan(SaltStorageTitleColor), 0,name.length(), 33);
            name.setSpan(new TypefaceFonts(setLeoFonts(mContext,SaltStorageTitleFont,"sec-roboto-light",Typeface.NORMAL)), 0, name.length(), 33);
            append(name);
            append(" ");
            append(" ");
            append(" ");
        }
        SpannableString spannableString3 = new SpannableString(getStringIdentifier(getContext(),"storage_total")+":"+storageTotal(style));
        spannableString3.setSpan(new ForegroundColorSpan(SaltStorageTotalColor), 0, spannableString3.length(), 33);
        spannableString3.setSpan(new TypefaceFonts(setLeoFonts(mContext,SaltStorageTotalFont,"sec-roboto-light",Typeface.NORMAL)), 0,spannableString3.length(), 33);
        append(spannableString3);
      intervalView();
        SpannableString spannableString1 = new SpannableString(getStringIdentifier(getContext(),"storage_available")+":"+storageAvaialbe(style));
        spannableString1.setSpan(new ForegroundColorSpan(SaltStorageAvailableColor), 0, spannableString1.length(), 33);
        spannableString1.setSpan(new TypefaceFonts(setLeoFonts(mContext,SaltStorageAvailableFont,"sec-roboto-light",Typeface.NORMAL)), 0,spannableString1.length(), 33);
        append(spannableString1);
        intervalView();
        SpannableString spannableString = new SpannableString(getStringIdentifier(getContext(),"storage_used")+":"+storageUsed(style));
        spannableString.setSpan(new ForegroundColorSpan( SaltStorageUsedColor), 0, spannableString.length(), 33);
        spannableString.setSpan(new TypefaceFonts(setLeoFonts(mContext,SaltStorageUsedFont,"sec-roboto-light", Typeface.NORMAL)), 0,spannableString.length(), 33);
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
        LeoLauncherManages(mContext);
        setVisibility(setLeoStorageInfoEnabled ? GONE : VISIBLE);

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
            setOnClickListener(new OnClick());
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


    class OnClick implements  OnClickListener {
        @Override
        public void onClick(View v) {
            LeoLauncherManages(mContext);
            Context context=mContext;
            setLeoHaptics(context,setLeoStorageInfoVibratorEnabled,setLeoStorageInfoVibratorLevel);
            CleanProcesse(context);
      }
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
    public static String TAG =LeoMemoryView.class.getSimpleName();
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        updateSettings();
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mHandler != null) {
            getContext().unregisterReceiver(mMemoryInfoReceiver);
            mHandler.removeCallbacks(mMemoryInfoTick);
            mHandler = null;
            updateSettings();
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

    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            for (String uriFor :CustomStorageInfo) {
                contentResolver.registerContentObserver(getLeoUri(uriFor), false, this);
            }

        }

        @Override
        public void onChange(boolean selfChange) {
            updateSettings();
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
}