package com.leo.systemui;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.os.Vibrator;
import android.provider.Settings;
import android.text.SpannableString;
import android.text.format.Formatter;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import android.widget.Toast;
import com.android.internal.util.MemInfoReader;
import com.os.leo.utils.LeoUserValues;

import static com.leo.systemui.LeoRecentsMemory.RamUpdates.TxetFont;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mRAMInfo;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mRAMInfoBGColor;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mRAMInfoRefresh;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mRAMInfoTextColor;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mRAMInfoTextFreeColor;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mRAMInfoTextSize;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mRAMInfoTextUsedColor;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mRAMString;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.mSWAPString;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.setDashColor;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.setDashGap;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.setDashRadius;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.setDashWidth;
import static com.leo.systemui.LeoRecentsMemory.RamUpdates.setStrokethickness;
import static com.os.leo.utils.LeoUtils.getLeoBasicColor;

import static com.os.leo.utils.FontsUtils.setLeoRomFonts;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.mDefaultLightTextColor;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserString.LeoAction;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.RamEN;
import static com.os.leo.utils.LeoUserValues.RamZH;
import static com.os.leo.utils.LeoUserValues.SwapEN;
import static com.os.leo.utils.LeoUserValues.SwapZH;
import static com.os.leo.utils.LeoUserValues.mSlash;
import static com.os.leo.utils.LeoUtils.getLeoGradientStroke;


public class LeoRecentsMemory extends TextView implements View.OnClickListener {

    //String Eti_Sep = " / ";

    private int activo = 1;
    private int mFreeColor;
    private int mUsedColor;
    private Handler handler;
    private MemInfoReader memInfoReader = new MemInfoReader();
    private long mRamTotal;
    private boolean setActivo;
    Runnable runnable;

    private long mSwapTotal;
    private long mRefresh;

    public LeoRecentsMemory(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

        this.memInfoReader.readMemInfo();
        mRamTotal = this.memInfoReader.getTotalSize();
        this.runnable = () ->getMemoryInfo();
        this.handler = new Handler();
        setActivo = false;
        setOnClickListener(this);
    }




    public void setRam() {
        GradientDrawable LeoGradientDrawable = new GradientDrawable();

        int i = mRAMInfo;
        activo = i;
        int i2 = 8;
        if (i != 0) {
            i2 = 0;
        }
        setVisibility(i2);
        if (i != 0) {

            setTextColor(mRAMInfoTextColor);
            getLeoGradientStroke(LeoGradientDrawable,setLeoUesrTaskRAMInfoStrokeEnabled,setStrokethickness,setDashWidth,setDashGap,setDashColor,setDashRadius);
            LeoGradientDrawable. setColor(mRAMInfoBGColor);
            LeoGradientDrawable.setCornerRadius((float) RamUpdates.setDashRadius);
            setBackground(LeoGradientDrawable);
            mUsedColor =mRAMInfoTextUsedColor;
            mFreeColor =mRAMInfoTextFreeColor;
            setTextSize((float)mRAMInfoTextSize);
            mRefresh= (long) mRAMInfoRefresh;
            setTypeface(setLeoRomFonts(0,TxetFont));
            return;
        }
      handler.removeCallbacks(this.runnable);
    }

    public void getMemoryInfo() {
        setText("");
        mSwapTotal= this.memInfoReader.getSwapTotalSizeKb();
        this.memInfoReader.readMemInfo();
        long cachedSizeLegacy = memInfoReader.getCachedSizeLegacy() + this.memInfoReader.getFreeSize();
        long swapFreeSizeKb = this.memInfoReader.getSwapFreeSizeKb();
        int round = Math.round(((((float) mRamTotal) - ((float) cachedSizeLegacy)) / ((float)mRamTotal)) * 100.0f);
        int round2 = Math.round(((((float) mSwapTotal) - ((float) swapFreeSizeKb)) / ((float)mSwapTotal)) * 100.0f);
        swapFreeSizeKb *= 1024;
        setText(mRAMString);
        SpannableString spannableString = new SpannableString(String.valueOf(round) + " % ");
        spannableString.setSpan(new ForegroundColorSpan(mUsedColor), 0, spannableString.length(), 33);
        append(spannableString);
        append(mSlash);
        SpannableString spannableString2 = new SpannableString(Formatter.formatShortFileSize(getContext(), cachedSizeLegacy));
        spannableString2.setSpan(new ForegroundColorSpan(mFreeColor), 0, spannableString2.length(), 33);
        append(spannableString2);
        append(mSWAPString);
        SpannableString spannableString3 = new SpannableString(String.valueOf(round2) + " % ");
        spannableString3.setSpan(new ForegroundColorSpan(mUsedColor), 0, spannableString3.length(), 33);
        append(spannableString3);
        append(mSlash);
        SpannableString spannableString4 = new SpannableString(Formatter.formatShortFileSize(getContext(), swapFreeSizeKb));
        spannableString4.setSpan(new ForegroundColorSpan(mFreeColor), 0, spannableString4.length(), 33);
        append(spannableString4);
        if (activo != 0) {
            this.handler.postDelayed(this.runnable, mRefresh);
        }
    }

    public void setActivo(boolean start) {
        setActivo = start;
        if (this.activo != 0) {
            int i = 0;
            if (start) {
                i = 8;
            }
            setVisibility(i);
        }
    }

    public void onResume() {
        if (this.activo != 0) {
            getMemoryInfo();
        }
    }

    public void onStop() {
        if (this.activo != 0) {
            this.handler.removeCallbacks(this.runnable);
        }
    }

    @Override
    public void onClick(View view) {
        LeoSettings(getContext());
        if(setLeoUesrTaskRAMInfoClick){
            LeoAction(getContext(),113,null);
            Vibrate();
        }

    }
    public void Vibrate() {
        if (setLeoUesrRecentsVibratorEnable== 1) {
            this.mVibrator = (Vibrator) getContext().getSystemService(Context.VIBRATOR_SERVICE);
            this.mVibrator.vibrate(setLeoUesrRecentsVibrationLevel);
        }
    }
    private Vibrator mVibrator;
    public  static class RamUpdates {
        public static boolean mRamError = false;
        public static int  mRAMInfoTextColor;
        public static boolean setStrokeON;
        public static int setStrokethickness;
        public static int setDashWidth;
        public static int setDashGap;
        public static int setDashColor;
        public static int setDashRadius;
        public static int mRAMInfoBGColor= Color.parseColor("#6033b5e5");
        public static int mRAMInfoTextFreeColor;
        public static int mRAMInfoTextUsedColor;
        public static int mRAMInfo = 1;
        public static int mRAMInfoRefresh = 5000;
        public static int mRAMInfoTextSize = 14;
        public static  String mRAMString;
        public static String  mSWAPString;
        public static int TxetFont=0;
        static {
            mRAMInfoTextColor = mDefaultLightTextColor;
            mRAMInfoTextUsedColor = mDefaultLightTextColor;
            mRAMInfoTextFreeColor = mDefaultLightTextColor;
        }

        public static void LeoRAMInfo(Context context) {
            updateLeoRAMInfo(context, true);
        }

        public static void updateLeoRAMInfo(Context context, boolean show) {
            LeoSettings(context);
            mRamError = false;
            if (show) {
                try {
                    mRAMInfo =setLeoUesrTaskRAMInfo;
                    mRAMInfoTextColor = setLeoUesrTaskRAMInfoTextColor;
                    mRAMInfoTextUsedColor =setLeoUesrTaskRAMInfoTextUsedColor;
                    mRAMInfoTextFreeColor = setLeoUesrTaskRAMInfoTextFreeColor;
                    mRAMInfoBGColor=setLeoUesrTaskRAMInfoBGColor;
                    mRAMInfoTextSize = setLeoUesrTaskRAMInfoTextSize;
                    mRAMInfoRefresh =setLeoUesrTaskRAMInfoRefresh;
                    mSWAPString=getTextSWAPLanguage(setLeoUesrTaskRAMInfoLanguage);
                    mRAMString=getTextRAMLanguage(setLeoUesrTaskRAMInfoLanguage);
                    TxetFont=setLeoUesrTaskRAMInfoFont;
                    setStrokeON=setLeoUesrTaskRAMInfoStrokeEnabled ;
                    setStrokethickness= setLeoUesrTaskRAMInfoStrokeThickness;
                    setDashWidth=setLeoUesrTaskRAMInfoStrokeDashWidth;
                    setDashGap=setLeoUesrTaskRAMInfoStrokeDashGap;
                    setDashColor=setLeoUesrTaskRAMInfoStrokeDashColor;
                    setDashRadius=setLeoUesrTaskRAMInfoStrokeDashCornerRadius;
                } catch (Exception e) {
                    LeoUserValues.mLeoError= e.toString();
                    Log.e(AUTHOR , "Reading memory information error");
                    mRamError = true;
                }
            }
        }
        public static String getTextRAMLanguage( int str )
        {
            String txtString="";
            //星期风格选择
            if (str == 0) {
                //格式 周
                txtString=RamEN;
            } else if (str == 1) {
                //格式 星期
                txtString=RamZH;
            }

            return txtString;
        }
        public static String getTextSWAPLanguage( int str )
        {
            String txtString="";
            //星期风格选择
            if (str == 0) {
                //格式 周
                txtString=SwapEN;
            } else if (str == 1) {
                //格式 星期
                txtString=SwapZH;
            }

            return txtString;
        }
    }
}
