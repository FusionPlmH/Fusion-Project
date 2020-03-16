package com.android.launcher3.LeoAmber;



import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.widget.TextView;

import com.android.fusionleo.statusbar.LeoStatusBarCarrier;
import com.android.internal.util.MemInfoReader;
import com.android.systemui.Dependency;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.android.launcher3.LeoAmber.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoGradientStroke;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoUri;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.setLeoRomFonts;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.AUTHOR;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getCode;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoOS;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.*;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getOCodeN;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getOnema;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.mSlash;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.LeoGlobalSetting;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.*;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrTaskRAMInfoStrokeEnabled;


public class LeoRecentsMemory extends TextView implements View.OnClickListener {


    private long mRamTotal;
    private long mSwapTotal;
    private MemInfoReader memInfoReader = new MemInfoReader();

    public LeoRecentsMemory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);


        setOnClickListener(this);

    }



    public void getMemoryInfo() {
        if (getLeoOS().equals(getOnema())) {
            if (getCode() .equals(getOCodeN())) {
                setText("");
                mSwapTotal= this.memInfoReader.getSwapTotalSizeKb();
                memInfoReader.readMemInfo();
                long cachedSizeLegacy = memInfoReader.getCachedSizeLegacy() + this.memInfoReader.getFreeSize();
                long swapFreeSizeKb = this.memInfoReader.getSwapFreeSizeKb();
                int round = Math.round(((((float) mRamTotal) - ((float) cachedSizeLegacy)) / ((float)mRamTotal)) * 100.0f);
                int round2 = Math.round(((((float) mSwapTotal) - ((float) swapFreeSizeKb)) / ((float)mSwapTotal)) * 100.0f);
                swapFreeSizeKb *= 1024;
                setText(getContext().getResources().getString(getLeoResource(getContext(),"string/leo_recents_memory_ram")));
                append(" ");
                SpannableString spannableString = new SpannableString(String.valueOf(round) + " % ");
                spannableString.setSpan(new ForegroundColorSpan(mUsedColor), 0, spannableString.length(), 33);
                append(spannableString);
                append(mSlash);
                SpannableString spannableString2 = new SpannableString(Formatter.formatShortFileSize(getContext(), cachedSizeLegacy));
                spannableString2.setSpan(new ForegroundColorSpan(mFreeColor), 0, spannableString2.length(), 33);
                append(spannableString2);
                append("  -  ");
                append(getContext().getResources().getString(getLeoResource(getContext(),"string/leo_recents_memory_swap")));
                append(" ");
                SpannableString spannableString3 = new SpannableString(String.valueOf(round2) + " % ");
                spannableString3.setSpan(new ForegroundColorSpan(mUsedColor), 0, spannableString3.length(), 33);
                append(spannableString3);
                append(mSlash);
                SpannableString spannableString4 = new SpannableString(Formatter.formatShortFileSize(getContext(), swapFreeSizeKb));
                spannableString4.setSpan(new ForegroundColorSpan(mFreeColor), 0, spannableString4.length(), 33);
                append(spannableString4);
                return;
            }
            return;
        }
    }
    public void Vibrate(int on,int style ) {
        if (on== 1) {
            this.mVibrator = (Vibrator) getContext().getSystemService(Context.VIBRATOR_SERVICE);
            this.mVibrator.vibrate(style);
        }
    }
    private Vibrator mVibrator;
    @Override
    public void onClick(View view) {
        LeoGlobalSetting(getContext());
        if(setLeoUesrTaskRAMInfoClick){
            Vibrate(setLeoUesrRecentsVibratorEnable,setLeoUesrRecentsVibrationLevel);
            LeoGlobalActiong(getContext(),113,null);
        }

    }
    public GradientDrawable LeoGradientDrawable = new GradientDrawable();
    public  boolean mDisplay;
    public long updateClock=2500;private Handler mHandler;

    public  boolean setStrokeON;
    public  int setStrokethickness;
    public  int setDashWidth;
    public  int setDashGap;
    public  int setDashColor;
    public int setDashRadius;
    public  int mRAMInfoBGColor= Color.parseColor("#6033b5e5");
    public int  mRAMInfoTextColor=whitecolor;
    public int mFreeColor=whitecolor;
    public int mUsedColor=whitecolor;

    public int  mTxetFont;
   public void updateMemoryInfo(){
       LeoGlobalSetting(getContext());
       if (getLeoOS().equals(getOnema())) {
           if (getCode() .equals(getOCodeN())) {
               setTextSize(setLeoUesrTaskRAMInfoTextSize);
               mTxetFont=setLeoUesrTaskRAMInfoFont;
               setTypeface(setLeoRomFonts(0,mTxetFont));
              // mDisplay=setLeoUesrTaskRAMInfo;
              // mDisplay=setLeoUesrTaskRAMInfo;
               mDisplay=setLeoUesrTaskRAMInfo;
               if (mDisplay){
                   setVisibility(TextView.VISIBLE);
               }else {
                   setVisibility(TextView.GONE);
               }
               mRAMInfoTextColor = setLeoUesrTaskRAMInfoTextColor;
               setTextColor(mRAMInfoTextColor);
               mFreeColor =setLeoUesrTaskRAMInfoTextUsedColor;
               mUsedColor = setLeoUesrTaskRAMInfoTextFreeColor;
               updateClock=setLeoUesrTaskRAMInfoRefresh;
               mRAMInfoBGColor=setLeoUesrTaskRAMInfoBGColor;
               setStrokeON=setLeoUesrTaskRAMInfoStrokeEnabled ;
               setStrokethickness= setLeoUesrTaskRAMInfoStrokeThickness;
               setDashWidth=setLeoUesrTaskRAMInfoStrokeDashWidth;
               setDashGap=setLeoUesrTaskRAMInfoStrokeDashGap;
               setDashColor=setLeoUesrTaskRAMInfoStrokeDashColor;
               setDashRadius=setLeoUesrTaskRAMInfoStrokeDashCornerRadius;
               getLeoGradientStroke(LeoGradientDrawable,setStrokeON,setStrokethickness,setDashWidth,setDashGap,setDashColor,setDashRadius);
               LeoGradientDrawable. setColor(mRAMInfoBGColor);
               LeoGradientDrawable.setCornerRadius((float)setDashRadius);
               Log.e(AUTHOR , "leo memory Info");
               setBackground(LeoGradientDrawable);
               getMemoryInfo();
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
               return;
           }
           return;
       }
   }

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
            getMemoryInfo();
            mHandler.postAtTime(this, SystemClock.uptimeMillis() / updateClock * updateClock + updateClock);
        }
    };

    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        memInfoReader.readMemInfo();
        mRamTotal = this.memInfoReader.getTotalSize();
        updateMemoryInfo();
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
    }
    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mHandler != null) {
            getContext().unregisterReceiver(mMemoryInfoReceiver);
            mHandler.removeCallbacks(mMemoryInfoTick);
            mHandler = null;
            getMemoryInfo();
        }
    }

    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentsVibratorEnable()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentsVibrationLevel()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMInfo()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMInfoRefresh()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMInfoBGColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMTextColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMUsedColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMFreeColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMTextSize()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMFont()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMStrokeEnabled()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMStrokeDashGap()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMStrokeDashWidth()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMStrokeThickness()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMStrokeDashColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMStrokeDashCornerRadius()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoRecentTaskRAMClick()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            updateMemoryInfo();
        }


    }
}

