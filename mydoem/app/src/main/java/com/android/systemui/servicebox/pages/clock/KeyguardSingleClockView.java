package com.android.systemui.servicebox.pages.clock;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.os.Build;
import android.os.SystemProperties;
import android.support.annotation.RequiresApi;
import android.text.TextUtils;
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
import static com.os.leo.utils.LeoUserSettings.mContext;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockAllColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderTextClockColorAll;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockALLColorEnabled;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserString.getClockDetails;
import static com.os.leo.utils.LeoUserString.getLeoDateStyle;
import static com.os.leo.utils.LeoUserString.getLeoRomLunarStyle;
import static com.os.leo.utils.LeoUserString.getSymbol;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;


public class KeyguardSingleClockView extends LinearLayout implements KeyguardClockBase {
    private String mCacheKey;
    private SystemUITextView mDateShamsiView;
    private KeyguardTextClock mDateView;
   private SystemUITextView mChinaTimeDetail;
    private BroadcastReceiver mIntentReceiver;
    private PersianCalendarUtil mPCalUtil;
    protected KeyguardTextClockForUser mTimeColonView;
    private KeyguardTextClockForUser mTimeHourView;
    private KeyguardTextClockForUser mTimeMinView;
    protected LinearLayout mTimeSet;
  private SystemUITextView mLeoChinaLunarView;
    public KeyguardSingleClockView(Context context) {
        this(context, null);
    }

    public KeyguardSingleClockView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public KeyguardSingleClockView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mIntentReceiver = new BroadcastReceiver() {
            public void onReceive(Context context, Intent intent) {
                if ("android.intent.action.TIMEZONE_CHANGED".equals(intent.getAction())) {
                    String timeZone = intent.getStringExtra("time-zone");
                    if (timeZone != null) {
                        if (!(KeyguardSingleClockView.this.mTimeHourView == null || KeyguardSingleClockView.this.mTimeMinView == null)) {
                            KeyguardSingleClockView.this.mTimeHourView.setTimeZone(timeZone);
                            KeyguardSingleClockView.this.mTimeMinView.setTimeZone(timeZone);
                            Log.d("KeyguardSingleClockView", "Timezone updated to " + timeZone + ", update Keyguard Singleclock View");
                        }
                        if (KeyguardSingleClockView.this.mDateView != null) {
                            KeyguardSingleClockView.this.mDateView.setTimeZone(timeZone);
                        }
                    }
                }
            }
        };
        if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
         this.mPCalUtil = new PersianCalendarUtil(context);
        }
    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoKeyguardSingleClock();
    }
    public void setLeoKeyguardSingleClock() {
        LeoSettings(getContext());
      mChinaTimeDetail = (SystemUITextView) findViewById(UID56);
       mLeoChinaLunarView= (SystemUITextView) findViewById(UID57);
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
                 mChinaTimeDetail.setLeoCustomColor(setLeoUesrKeyguardSingleClockChinaTimeDetailColor);
                 mLeoChinaLunarView.setLeoCustomColor(setLeoUesrKeyguardSingleClockLunarColor);
                    mTimeColonView.setLeoCustomColor(setLeoUesrKeyguardSingleClockColonColor);
                }else if(colorstyle==1){
                    mTimeHourView.setLeoCustomColor(colorrandom);
                    mTimeMinView.setLeoCustomColor(colorrandom);
                    mDateView.setLeoCustomColor(colorrandom);
                   mChinaTimeDetail.setLeoCustomColor(colorrandom);
                  mLeoChinaLunarView.setLeoCustomColor(colorrandom);
                    mTimeColonView.setLeoCustomColor(colorrandom);
                }
            }else if ( all == 1) {
              mLeoChinaLunarView.setLeoCustomColor(allcolor);
                mTimeHourView.setLeoCustomColor(allcolor);
                mTimeMinView.setLeoCustomColor(allcolor);
                mDateView.setLeoCustomColor(allcolor);
               mChinaTimeDetail.setLeoCustomColor(allcolor);
                mTimeColonView.setLeoCustomColor(allcolor);

            }

        }else {
            Log.v(AUTHOR, CORYRIGHT+ China );
            mTimeHourView.setLeoRemoveCustomColor();
            mTimeMinView.setLeoRemoveCustomColor();
            mDateView.setLeoRemoveCustomColor();
          mChinaTimeDetail.setLeoRemoveCustomColor();
       mLeoChinaLunarView.setLeoRemoveCustomColor();
            mTimeColonView.setLeoRemoveCustomColor();

        }
        Log.v(AUTHOR, CORYRIGHT+ China );
        mTimeHourView.setLeoCustomFont(setLeoUesrKeyguardSingleClockHourFont);
        mTimeMinView.setLeoCustomFont(setLeoUesrKeyguardSingleClockMinFont);
        mDateView.setLeoCustomFont(setLeoUesrKeyguardSingleClockDateFont);
      mLeoChinaLunarView.setLeoCustomFont(setLeoUesrKeyguardSingleClockLunarFont);
       mChinaTimeDetail.setLeoCustomFont(setLeoUesrKeyguardSingleClockChinaTimeDetailFont);
      int LunarStyle=setLeoUesrKeyguardSingleClockDateLunarStyle;
     int constellationlocationStyle=setLeoUesrKeyguardSingleClockDateConstellationLocationStyle;
      int constellationsymbolStyle=setLeoUesrKeyguardSingleClockDateConstellationSymbolStyle;
       boolean constellation=setLeoUesrKeyguardSingleClockDateConstellationDisplay;
       String str=setLeoUesrKeyguardSingleClockDateLunarString;
       int Lunar=setLeoUesrKeyguardSingleClockLunarDisplay;
       mLeoChinaLunarView.setText(" "+getLeoRomLunarStyle(LunarStyle,constellationlocationStyle,constellationsymbolStyle,true,constellation,str,false));
        mDateView.setTextSize(setLeoUesrKeyguardSingleClockDateSize);
       mLeoChinaLunarView.setTextSize(setLeoUesrKeyguardSingleClockLunarSize);
        mTimeHourView.setTextSize( setLeoUesrKeyguardSingleClockHourSize);
        mTimeMinView.setTextSize(setLeoUesrKeyguardSingleClockMinSize);
    mChinaTimeDetail.setTextSize(setLeoUesrKeyguardSingleClockChinaTimeDetailSize);
        mTimeColonView.setTextSize( setLeoUesrKeyguardSingleClockColonSize);
      int Details=setLeoUesrKeyguardSingleClockDetailsStyle;
     mChinaTimeDetail.setText(getClockDetails(Details,true));
        Log.v(AUTHOR, CORYRIGHT+ China );
        getLeoDateFormat();

        int clock=setLeoUesrKeyguardSingleClockDisplay;
        if(clock==1){
            mTimeHourView.setVisibility(VISIBLE);
            mTimeMinView.setVisibility(VISIBLE);
            mTimeColonView.setVisibility(VISIBLE);
        }else {
            mTimeHourView.setVisibility(GONE);
            mTimeMinView.setVisibility(GONE);
            mTimeColonView.setVisibility(GONE);
        }
        Log.v(AUTHOR, CORYRIGHT+ China );
        int date=setLeoUesrKeyguardSingleClockDateDisplay;
        if(date==1){
            mDateView.setVisibility(VISIBLE);
        }else {
            mDateView.setVisibility(GONE);
        }

        if( setLeoUesrKeyguardSingleClockTimeDetailDisplay==1){
            mChinaTimeDetail.setVisibility(VISIBLE);
        }else {
            mChinaTimeDetail.setVisibility(GONE);
        }
       if(Lunar==1){
          mLeoChinaLunarView.setVisibility(VISIBLE);
        }else {
            mLeoChinaLunarView.setVisibility(GONE);
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
    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    protected void onFinishInflate() {
        super.onFinishInflate();
        setLeoKeyguardSingleClock();
        this.mTimeHourView = (KeyguardTextClockForUser) findViewById(R.id.keyguard_single_time_hour_view);
        this.mTimeColonView = (KeyguardTextClockForUser) findViewById(R.id.keyguard_single_time_colon_view);
        this.mTimeMinView = (KeyguardTextClockForUser) findViewById(R.id.keyguard_single_time_min_view);
        this.mDateView = (KeyguardTextClock) findViewById(R.id.keyguard_single_date_view);
        this.mTimeSet = (LinearLayout) findViewById(R.id.keyguard_single_time_set);
        if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
            mDateShamsiView = (SystemUITextView) findViewById(R.id.keyguard_single_shamsi_date_view);
          mDateShamsiView.setVisibility(0);
        }
        String zoneName = SystemProperties.get("persist.sys.timezone");
        if (!TextUtils.isEmpty(zoneName)) {
            this.mTimeHourView.setTimeZone(zoneName);
            this.mTimeMinView.setTimeZone(zoneName);
        }
        this.mTimeHourView.setElegantTextHeight(false);
        this.mTimeColonView.setElegantTextHeight(false);
        this.mTimeMinView.setElegantTextHeight(false);
        if (!Rune.KEYWI_SUPPORT_SERVICEBOX) {
            this.mDateView.setTypeface(Typeface.create("sans-serif", 0));
            this.mDateView.setAllCaps(true);
            if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
                this.mDateShamsiView.setTypeface(Typeface.create("sans-serif", 0));
                this.mDateShamsiView.setAllCaps(true);
            }
        }
        this.mTimeColonView.setFormat12Hour(":");
        this.mTimeColonView.setFormat24Hour(":");
        if (!Rune.KEYWI_SUPPORT_SERVICEBOX) {
            setLayoutTransition(null);
            this.mTimeSet.setLayoutTransition(null);
            this.mTimeHourView.setTransitionName(null);
            this.mTimeColonView.setTransitionName(null);
            this.mTimeMinView.setTransitionName(null);
            this.mDateView.setTransitionName(null);
            if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
                this.mDateShamsiView.setTransitionName(null);
            }
        }
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();
        IntentFilter filter = new IntentFilter();
        filter.addAction("android.intent.action.TIMEZONE_CHANGED");
        mContext.registerReceiver(this.mIntentReceiver, filter);
        String zoneName = SystemProperties.get("persist.sys.timezone");
        if (!TextUtils.isEmpty(zoneName)) {
            this.mTimeHourView.setTimeZone(zoneName);
            this.mTimeMinView.setTimeZone(zoneName);
        }
    }

    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
       mContext.unregisterReceiver(this.mIntentReceiver);
    }
Context  mContext;
    public String getClockCacheKey() {
        return this.mCacheKey;
    }

    public void setClockCacheKey(String key) {
        this.mCacheKey = key;
    }

    @RequiresApi(api = Build.VERSION_CODES.N)
    public void refreshTime(String clock12, String clock24, String date) {
        String[] clock12Split = clock12.split("[^a-zA-Z]");
        String[] clock24Split = clock24.split("[^a-zA-Z]");
        String clock12Hour = clock12Split[0];
        String clock12Min = clock12Split[1];
        String clock24Hour = clock24Split[0];
        String clock24Min = clock24Split[1];
        int sepIndex = clock12.indexOf(clock12Min) - 1;
        String separator = clock12.substring(sepIndex, sepIndex + 1);
        this.mTimeHourView.setFormat12Hour(clock12Hour);
        this.mTimeHourView.setFormat24Hour(clock24Hour);
        this.mTimeMinView.setFormat12Hour(clock12Min);
        this.mTimeMinView.setFormat24Hour(clock24Min);
        this.mTimeColonView.setFormat12Hour(separator);
        this.mTimeColonView.setFormat24Hour(separator);
        this.mDateView.setFormat12Hour(date);
        this.mDateView.setFormat24Hour(date);
        updateContentDescription();
        if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
            this.mDateShamsiView.setText(this.mPCalUtil.getDateInPersianCalendar());
        }
    }

    public void changeHourFormat() {
    }

    public void setClockVisibility(int visible) {
        this.mTimeHourView.setVisibility(visible);
        this.mTimeColonView.setVisibility(visible);
        this.mTimeMinView.setVisibility(visible);
    }

    public void setDateVisibility(int visible) {
        this.mDateView.setVisibility(visible);
        if (Rune.KEYWI_SUPPORT_PERSIAN_CALENDAR) {
            this.mDateShamsiView.setVisibility(visible);
        }
    }

    public void setCoverState(boolean isCovered) {
        this.mDateView.updateFontSizeInKeyguardBoundary();
    }

    protected void updateContentDescription() {
        this.mTimeSet.setContentDescription(this.mTimeHourView.getText().toString() + this.mTimeColonView.getText() + this.mTimeMinView.getText());
    }
}
