package com.android.systemui.servicebox.pages.clock;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.LinearLayout;
import com.android.systemui.Rune;

import com.android.systemui.widget.KeyguardTextClock;
import com.android.systemui.widget.KeyguardTextClockForUser;
import com.android.systemui.widget.SystemUITextView;
import com.dome.leo.R;


import static com.android.systemui.UId.UID56;

import static com.android.systemui.UId.UID57;
import static com.android.systemui.UId.getLeoRandomColor;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockDetailStyle;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockALLColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockALLColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockChinaTimeDetailColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockColonColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockColorCustom;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockDateColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockHourColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockLunarColor;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserString.getClockDetails;
import static com.os.leo.utils.LeoUserString.getLeoDateStyle;
import static com.os.leo.utils.LeoUserString.getLeoRomLunarStyle;
import static com.os.leo.utils.LeoUserString.getSymbol;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;

public class KeyguardSingleVerticalClockView extends LinearLayout implements KeyguardClockBase {
    private String mCacheKey;
    private SystemUITextView mDateShamsiView;
    private KeyguardTextClock mDateView;
    private PersianCalendarUtil mPCalUtil;
    private KeyguardTextClockForUser mTimeHourView;
    private KeyguardTextClockForUser mTimeMinView;
    private LinearLayout mTimeSet;
   // private SystemUITextView mLeoChinaLunarView;
   // private SystemUITextView mChinaTimeDetail;
    public KeyguardSingleVerticalClockView(Context context) {
        this(context, null);
    }

    @SuppressLint("NewApi")
    public KeyguardSingleVerticalClockView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    public KeyguardSingleVerticalClockView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
            this.mPCalUtil = new PersianCalendarUtil(context);
        }
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mTimeHourView = (KeyguardTextClockForUser) findViewById(R.id.keyguard_single_vertical_hour_view);
        this.mTimeMinView = (KeyguardTextClockForUser) findViewById(R.id.keyguard_single_vertical_min_view);
        this.mDateView = (KeyguardTextClock) findViewById(R.id.keyguard_single_date_view);
        this.mTimeSet = (LinearLayout) findViewById(R.id.keyguard_single_time_set);
        if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
            this.mDateShamsiView = (SystemUITextView) findViewById(R.id.keyguard_single_shamsi_date_view);
            this.mDateShamsiView.setVisibility(0);
        }
        this.mTimeHourView.setElegantTextHeight(false);
        this.mTimeMinView.setElegantTextHeight(false);
        setLeoKeyguardSingleVerticalClock();
    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoKeyguardSingleVerticalClock();
    }
    public void setLeoKeyguardSingleVerticalClock() {
        LeoSettings(getContext());
      //  mChinaTimeDetail = (SystemUITextView) findViewById(UID56);
      //  mLeoChinaLunarView= (SystemUITextView) findViewById(UID57);
        boolean color=setLeoUesrKeyguardSingleClockColorCustom;
        if(color) {
            int allcolor=setLeoUesrKeyguardSingleClockALLColor;
            int all=setLeoUesrKeyguardSingleClockALLColorEnabled;
            int colorstyle=setLeoUesrKeyguardSingleClockRandomColor;
            int colorrandom=getLeoRandomColor(mContext);
            if (all==0) {
                Log.v(AUTHOR, CORYRIGHT+ China );
                if(colorstyle==0){
                    mTimeHourView.setLeoCustomColor(setLeoUesrKeyguardSingleClockHourColor);
                    mTimeMinView.setLeoCustomColor(setLeoUesrKeyguardSingleClockMinColor);
                    mDateView.setLeoCustomColor(setLeoUesrKeyguardSingleClockDateColor);
                 //   mChinaTimeDetail.setLeoCustomColor(setLeoUesrKeyguardSingleClockChinaTimeDetailColor);
        //           mLeoChinaLunarView.setLeoCustomColor(setLeoUesrKeyguardSingleClockLunarColor);
                }else if(colorstyle==1){
                    mTimeHourView.setLeoCustomColor(colorrandom);
                    mTimeMinView.setLeoCustomColor(colorrandom);
                    mDateView.setLeoCustomColor(colorrandom);
                   // mChinaTimeDetail.setLeoCustomColor(colorrandom);
             //       mLeoChinaLunarView.setLeoCustomColor(colorrandom);
                }
            }else if ( all == 1) {
           //     mLeoChinaLunarView.setLeoCustomColor(allcolor);
                mTimeHourView.setLeoCustomColor(allcolor);
                mTimeMinView.setLeoCustomColor(allcolor);
                mDateView.setLeoCustomColor(allcolor);
             //   mChinaTimeDetail.setLeoCustomColor(allcolor);

            }

        }else {
            Log.v(AUTHOR, CORYRIGHT+ China );
            mTimeHourView.setLeoRemoveCustomColor();
            mTimeMinView.setLeoRemoveCustomColor();
            mDateView.setLeoRemoveCustomColor();
         //   mChinaTimeDetail.setLeoRemoveCustomColor();
        //    mLeoChinaLunarView.setLeoRemoveCustomColor();

        }
        Log.v(AUTHOR, CORYRIGHT+ China );
        mTimeHourView.setLeoCustomFont(setLeoUesrKeyguardSingleClockHourFont);
        mTimeMinView.setLeoCustomFont(setLeoUesrKeyguardSingleClockMinFont);
        mDateView.setLeoCustomFont(setLeoUesrKeyguardSingleClockDateFont);
     //   mLeoChinaLunarView.setLeoCustomFont(setLeoUesrKeyguardSingleClockLunarFont);
      //  mChinaTimeDetail.setLeoCustomFont(setLeoUesrKeyguardSingleClockChinaTimeDetailFont);
       // int LunarStyle=setLeoUesrKeyguardSingleClockDateLunarStyle;
       // int constellationlocationStyle=setLeoUesrKeyguardSingleClockDateConstellationLocationStyle;
       // int constellationsymbolStyle=setLeoUesrKeyguardSingleClockDateConstellationSymbolStyle;
     //   boolean constellation=setLeoUesrKeyguardSingleClockDateConstellationDisplay;
     //   String str=setLeoUesrKeyguardSingleClockDateLunarString;
     //   int Lunar=setLeoUesrKeyguardSingleClockLunarDisplay;
    //    mLeoChinaLunarView.setText(" "+getLeoRomLunarStyle(LunarStyle,constellationlocationStyle,constellationsymbolStyle,true,constellation,str,false));
        mDateView.setTextSize(setLeoUesrKeyguardSingleClockDateSize);
    //    mLeoChinaLunarView.setTextSize(setLeoUesrKeyguardSingleClockLunarSize);
        mTimeHourView.setTextSize( setLeoUesrKeyguardSingleClockHourVerticalSize);
        mTimeMinView.setTextSize(setLeoUesrKeyguardSingleClockMinVerticalSize);

        getLeoDateFormat();

        int clock=setLeoUesrKeyguardSingleClockDisplay;
        if(clock==1){
            mTimeHourView.setVisibility(VISIBLE);
            mTimeMinView.setVisibility(VISIBLE);
        }else {
            mTimeHourView.setVisibility(GONE);
            mTimeMinView.setVisibility(GONE);
        }
        Log.v(AUTHOR, CORYRIGHT+ China );
        int date=setLeoUesrKeyguardSingleClockDateDisplay;
        if(date==1){
            mDateView.setVisibility(VISIBLE);
        }else {
            mDateView.setVisibility(GONE);
        }



    }
    public void getLeoDateFormat() {
        int  mWeekOrientation=setLeoUesrKeyguardSingleClockDateWeekOrientation;
        int  mDateSymbol=setLeoUesrKeyguardSingleClockDateWeekSymbol;
        int  mDateWeekStyle=setLeoUesrKeyguardSingleClockDateWeekStyle;
        boolean mDateWeekDisplay=setLeoUesrKeyguardSingleClockDateWeekDisplay;
        String mCustomDateFormat=setLeoUesrKeyguardSingleClockDateFormat;


        if(mDateSymbol<=0){
            mDateSymbol=1;
        }

        CharSequence charSequence = getLeoDateStyle(
                mWeekOrientation,
                mDateSymbol,
                mDateWeekStyle,
                mDateWeekDisplay,
                mCustomDateFormat
        );
        Log.v(AUTHOR, CORYRIGHT+ China );
        this.mDateView.setFormat12Hour(charSequence);
        this.mDateView.setFormat24Hour(charSequence);
    }
    public String getClockCacheKey() {
        return this.mCacheKey;
    }

    public void setClockCacheKey(String key) {
        this.mCacheKey = key;
    }

    public void refreshTime(String clock12, String clock24, String date) {
        String[] clock12Split = clock12.split("[^a-zA-Z]");
        String[] clock24Split = clock24.split("[^a-zA-Z]");
        String clock12Hour = clock12Split[0];
        String clock12Min = clock12Split[1];
        String clock24Hour = clock24Split[0];
        String clock24Min = clock24Split[1];
        if (!clock12Hour.contains("KK") && clock12Hour.contains("K")) {
            clock12Hour = clock12Hour.replace("K", "KK");
        } else if (!clock12Hour.contains("kk") && clock12Hour.contains("k")) {
            clock12Hour = clock12Hour.replace("k", "kk");
        } else if (!clock12Hour.contains("HH") && clock12Hour.contains("H")) {
            clock12Hour = clock12Hour.replace("H", "HH");
        } else if (!clock12Hour.contains("hh") && clock12Hour.contains("h")) {
            clock12Hour = clock12Hour.replace("h", "hh");
        }
        if (!clock24Hour.contains("KK") && clock24Hour.contains("K")) {
            clock24Hour = clock24Hour.replace("K", "KK");
        } else if (!clock24Hour.contains("kk") && clock24Hour.contains("k")) {
            clock24Hour = clock24Hour.replace("k", "kk");
        } else if (!clock24Hour.contains("HH") && clock24Hour.contains("H")) {
            clock24Hour = clock24Hour.replace("H", "HH");
        } else if (!clock24Hour.contains("hh") && clock24Hour.contains("h")) {
            clock24Hour = clock24Hour.replace("h", "hh");
        }
        this.mTimeHourView.setFormat12Hour(clock12Hour);
        this.mTimeMinView.setFormat12Hour(clock12Min);
        getLeoDateFormat();
        this.mDateView.setFormat24Hour(date);
        this.mDateView.setFormat12Hour(date);
        updateContentDescription();
        if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
            //this.mDateShamsiView.setText(this.mPCalUtil.getDateInPersianCalendar());
        }
    }

    public void changeHourFormat() {
    }
    public void grxSetDateFormat() {
        CharSequence charSequence ="yy年MMMd日";
        this.mDateView.setFormat12Hour(charSequence);
        this.mDateView.setFormat24Hour(charSequence);
        this.mDateView.setTextSize(18);
    }

    public void setClockVisibility(int visible) {
        this.mTimeHourView.setVisibility(visible);
        this.mTimeMinView.setVisibility(visible);
    }

    public void setDateVisibility(int visible) {
        this.mDateView.setVisibility(visible);
    }

    public void setCoverState(boolean isCovered) {
        this.mDateView.updateFontSizeInKeyguardBoundary();
    }

    protected void updateContentDescription() {
        this.mTimeSet.setContentDescription(this.mTimeHourView.getText().toString() + ":" + this.mTimeMinView.getText());
    }
}
