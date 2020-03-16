package com.android.fusionleo;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;

import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;


import com.android.fusionleo.global.LeoGlobalUtils;
import com.android.leo.R;


import java.util.TimeZone;

import static com.android.fusionleo.global.LeoGlobalUtils.getAnalogWeek;

import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.global.LeoGlobalValues.*;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoAndroidResource;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;

public class AnalogClock extends View {
    private static final String TAG = "LeoROM不咸的盐巴";
    private boolean mAttached;
    private AttributeSet mAttributeSet;
    private Time mCalendar;
    private boolean mChanged;
    private Context mContext;
    private String mDay;
    private Drawable mDial;
    private int mDialHeight;
    private int mDialWidth;
    private final Handler mHandler;
    private float mHour;
    private Drawable mHourHand;
    private int mI;
    private TypedArray mTypedArray;
  //  private  BroadcastReceiver mIntentReceiver ;
    private Drawable mMinuteHand;
    private float mMinutes;
    private Paint mPaint;
    private float mSecond;
    private Drawable mSecondHand;
    private final String[] mSettings;
    private Runnable mTicker;
    private boolean mTickerStopped;
    private TypedArray mTypedArray;
    private String mWeek;

    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() { //监听获取时间改变action
        @Override
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals(Intent.ACTION_TIMEZONE_CHANGED)) {
                String tz = intent.getStringExtra("time-zone");
                mCalendar = new Time(TimeZone.getTimeZone(tz).getID());
            }
          onTimeChanged();
          invalidate();
        }
    };

    public AnalogClock(Context context) {
        this(context, null);
    }

    public AnalogClock(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }
    public AnalogClock(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTickerStopped = false;
        this.mSettings = new String[]{getLeoPulldownAnalogClockDateEnable(),
                getLeoPulldownAnalogClockDateColor(),
                getLeoPulldownAnalogClockDateSize(),
                getLeoPulldownAnalogClockDateFont(),
                getLeoPulldownAnalogClockDialStyle(),
                getLeoPulldownAnalogClockSize(),
                getLeoPulldownAnalogClockColorEnable(),
                getLeoPulldownAnalogClockDialColor(),
                getLeoPulldownAnalogClockHourColor(),
                getLeoPulldownAnalogClockMinutColor(),
                getLeoPulldownAnalogClockSecondColor()};
        this.mContext = context;
        this.mAttributeSet = attributeSet;
        this.mI = i;
        this.mHandler = new Handler();
        this.mTypedArray = this.mContext.obtainStyledAttributes(this.mAttributeSet, R.styleable.LeoAnalogClock, mI, 0);
        updateResources();
        this.mCalendar = new Time();
        final ContentObserver  contentObserver= new ContentObserver(new Handler()) {
            public void onChange(boolean z) {
                updateResources();
                onTimeChanged();
                invalidate();
            }
        };
        new Thread(() -> {
            ContentResolver contentResolver = mContext.getContentResolver();
            for (String uriFor :mSettings) {
                contentResolver.registerContentObserver(Settings.System.getUriFor(uriFor), false, contentObserver);
            }
        }).start();
    }

    private void onTimeChanged() {
        this.mCalendar.setToNow();
        int i = this.mCalendar.hour;
        int i2 = this.mCalendar.minute;
        int i3 = this.mCalendar.second;
        Log.v("LeoROM", "Hitomi 特别 定制");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append(String.valueOf(this.mCalendar.year));
        stringBuilder.append("-");
        stringBuilder.append(String.valueOf(this.mCalendar.month + 1));
        stringBuilder.append("-");
        stringBuilder.append(String.valueOf(this.mCalendar.monthDay));
        this.mDay = stringBuilder.toString();
        this.mWeek =getAnalogWeek(mCalendar.weekDay);
        this.mHour = (((float) i) + (this.mMinutes / 60.0f)) + (this.mSecond / 3600.0f);
        this.mMinutes = ((float) i2) + (((float) i3) / 60.0f);
        this.mSecond = (float) i3;
        this.mChanged = true;
        updateContentDescription(this.mCalendar);
    }




    private void updateContentDescription(Time time) {
        setContentDescription(DateUtils.formatDateTime(this.mContext, time.toMillis(false), 129));
    }

    private void updateResources() {
        LeoStatusSettings(mContext);
         mI = 0;
        Resources resources = this.mContext.getResources();
        boolean z =setLeoUesrPulldownAnalogClockDateEnable;
        int i = setLeoUesrPulldownAnalogClockDialStyle;
        int i2 = setLeoUesrPulldownAnalogClockDateColor;

        this.mDial =mTypedArray.getDrawable(0);
        if (this.mDial == null) {
            if (i == 0) {
                this.mDial = resources.getDrawable(getLeoAndroidResource("drawable/clock_dial"));
            } else if (i == 1) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial"));
            } else if (i == 2) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial1"));
            } else if (i == 3) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial2"));
            } else if (i == 4) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial3"));
            } else if (i == 5) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial4"));
            } else if (i == 6) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial5"));
            } else if (i == 7) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial6"));
            } else if (i == 8) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial7"));
            } else if (i == 9) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial8"));
            } else if (i == 10) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial9"));
            }else if (i == 11) {
                this.mDial = resources.getDrawable(getLeoResource("drawable/analog_clock_dial10"));
            }
        }
        this.mHourHand = this.mTypedArray.getDrawable(1);
        if (this.mHourHand == null) {
            if (i == 0) {
                this.mHourHand = resources.getDrawable(getLeoAndroidResource("drawable/clock_hand_hour"));
            } else if (i == 1) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour1"));
            } else if (i == 2) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour1"));
            } else if (i == 3) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour"));
            } else if (i == 4) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour"));
            } else if (i == 5) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour"));
            } else if (i == 6) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour"));
            } else if (i == 7) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour"));
            } else if (i == 8) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour"));
            } else if (i == 9) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour1"));
            } else if (i == 10) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour"));
            } else if (i == 11) {
                this.mHourHand = resources.getDrawable(getLeoResource("drawable/analog_clock_hour"));
            }
        }
        Log.v("LeoROM", "Hitomi 特别 定制");
        this.mMinuteHand = this.mTypedArray.getDrawable(2);
        if (this.mMinuteHand == null) {
            if (i == 0) {
                this.mMinuteHand = resources.getDrawable(getLeoAndroidResource("drawable/clock_hand_minute"));
            } else if (i == 1) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min1"));
            } else if (i == 2) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min1"));
            } else if (i == 3) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min"));
            } else if (i == 4) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min"));
            } else if (i == 5) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min"));
            } else if (i == 6) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min"));
            } else if (i == 7) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min"));
            } else if (i == 8) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min"));
            } else if (i == 9) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min1"));
            } else if (i == 10) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min"));
            }else if (i == 11) {
                this.mMinuteHand = resources.getDrawable(getLeoResource("drawable/analog_clock_min"));
            }
        }
        this.mSecondHand = this.mTypedArray.getDrawable(3);
        if (this.mSecondHand == null) {
            this.mSecondHand = resources.getDrawable(getLeoResource("drawable/analog_clock_second"));
        }

        this.mPaint = new Paint();
        this.mPaint.setColor(i2);
        this.mPaint.setAntiAlias(true);
        if (z) {
            this.mPaint.setTextSize((float)setLeoUesrPulldownAnalogClockDateSize);
        } else {
            this.mPaint.setTextSize(0.0f);
        }
        update();
        this.mDialWidth = this.mDial.getIntrinsicWidth();
        this.mDialHeight = this.mDial.getIntrinsicHeight();
    }



     public void update(){

         int i3 =setLeoUesrPulldownAnalogClockSecondColor;
         int i4 =setLeoUesrPulldownAnalogClockMinutColor;
         int i5 =setLeoUesrPulldownAnalogClockDialColor;
         int i6 =setLeoUesrPulldownAnalogClockHourColor;
         int i7 =setLeoUesrPulldownAnalogClockColorEnable;
         if ( i7 == 1) {
             this.mHourHand.setColorFilter(i6, Mode.SRC_IN);
             this.mDial.setColorFilter(i5, Mode.SRC_IN);
             this.mMinuteHand.setColorFilter(i4, Mode.SRC_IN);
             this.mSecondHand.setColorFilter(i3, Mode.SRC_IN);
         }else if (i7 == 0) {
             this.mHourHand.clearColorFilter();
             this.mDial.clearColorFilter();
             this.mMinuteHand.clearColorFilter();
             mSecondHand.clearColorFilter();
         }

         int i8 =setLeoUesrPulldownAnalogClockSize;
         float SizeD=1.0f;
         float SizeC=0.8f;
         float SizeB=0.6f;
         float SizeA=0.4f;
         float SizeE=1.2f;
         float SizeF=1.4f;
         float SizeG=1.6f;
         float SizeH=1.8f;
         float SizeI=2.0f;
         float SizeJ=2.2f;
         if (i8 == 0) {
             setScaleX(SizeA);
             setScaleY(SizeA);
         } else if (i8 == 1) {
             setScaleX(SizeB);
             setScaleY(SizeB);
         } else if (i8 == 2) {
             setScaleX(SizeC);
             setScaleY(SizeC);
         } else if (i8 == 3) {
             setScaleX(SizeD);
             setScaleY(SizeD);
         }else if (i8 == 4) {
             setScaleX(SizeE);
             setScaleY(SizeE);
         }else if (i8 == 5) {
             setScaleX(SizeF);
             setScaleY(SizeF);
         }else if (i8 == 6) {
             setScaleX(SizeG);
             setScaleY(SizeG);
         }else if (i8 == 7) {
             setScaleX(SizeH);
             setScaleY(SizeH);
         }else if (i8 == 8) {
             setScaleX(SizeI);
             setScaleY(SizeI);
         }else if (i8 == 9) {
             setScaleX(SizeJ);
             setScaleY(SizeJ);
         }
         mPaint.setTypeface(setLeoRomFonts(0, setLeoUesrPulldownAnalogClockDateFont));
     }

    protected void onAttachedToWindow() {
        this.mTickerStopped = false;
        super.onAttachedToWindow();
        onTimeChanged();
        mTicker = () -> {
            if (!mTickerStopped) {
                onTimeChanged();
                invalidate();
                long uptimeMillis = SystemClock.uptimeMillis();
               mHandler.postAtTime(mTicker, (1000 - (uptimeMillis % 1000)) + uptimeMillis);
            }
        };
        this.mTicker.run();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAttached) {
            getContext().unregisterReceiver(this.mIntentReceiver);
            this.mAttached = false;
            this.mTickerStopped = true;
        }
    }

    protected void onDraw(Canvas canvas) {
        Canvas canvas2 = canvas;
        super.onDraw(canvas);
        boolean z = this.mChanged;
        if (z) {
            this.mChanged = false;
        }
        int right = getRight() - getLeft();
        int bottom = getBottom() - getTop();
        int i = right / 2;
        int i2 = bottom / 2;
        Drawable drawable = this.mDial;
        int intrinsicWidth = drawable.getIntrinsicWidth();
        int intrinsicHeight = drawable.getIntrinsicHeight();
        this.mDial.setBounds(0, 0, intrinsicWidth, intrinsicHeight);
        int i3 = intrinsicHeight;
        Object obj = null;
        if (right < intrinsicWidth || bottom < intrinsicHeight) {
            obj = 1;
            float min = Math.min(((float) right) / ((float) intrinsicWidth), ((float) bottom) / ((float) intrinsicHeight));
            canvas.save();
            canvas2.scale(min, min, (float) i, (float) i2);
        }
        if (z) {
            drawable.setBounds(i - (intrinsicWidth / 2), i2 - (intrinsicHeight / 2), (intrinsicWidth / 2) + i, (intrinsicHeight / 2) + i2);
        }
        drawable.draw(canvas2);
        canvas.save();
        if (z) {
            canvas2.drawText(this.mWeek, (float) (i - (((int) this.mPaint.measureText(this.mWeek)) / 2)), (float) (i2 - (i3 / 6)), this.mPaint);
            canvas2.drawText(this.mDay, (float) (i - (((int) this.mPaint.measureText(this.mDay)) / 2)), (float) ((i3 / 6) + i2), this.mPaint);
        }
        canvas2.rotate((this.mHour / 12.0f) * 360.0f, (float) i, (float) i2);
        Drawable drawable2 = this.mHourHand;
        int i4;
        if (z) {
            intrinsicWidth = drawable2.getIntrinsicWidth();
            intrinsicHeight = drawable2.getIntrinsicHeight();
            i4 = i3;
            drawable2.setBounds(i - (intrinsicWidth / 2), i2 - (intrinsicHeight / 2), i + (intrinsicWidth / 2), i2 + (intrinsicHeight / 2));
        } else {
            i4 = i3;
        }
        drawable2.draw(canvas2);
        canvas.restore();
        canvas.save();
        canvas2.rotate((this.mMinutes / 60.0f) * 360.0f, (float) i, (float) i2);
        Drawable drawable3 = this.mMinuteHand;
        int i5;
        if (z) {
            intrinsicWidth = drawable3.getIntrinsicWidth();
            intrinsicHeight = drawable3.getIntrinsicHeight();
            i5 = right;
            drawable3.setBounds(i - (intrinsicWidth / 2), i2 - (intrinsicHeight / 2), i + (intrinsicWidth / 2), i2 + (intrinsicHeight / 2));
        } else {
            i5 = right;
        }
        drawable3.draw(canvas2);
        canvas.restore();
        canvas.save();
        canvas2.rotate((this.mSecond / 60.0f) * 360.0f, (float) i, (float) i2);
        Drawable drawable4 = this.mSecondHand;
        if (z) {
            intrinsicWidth = drawable4.getIntrinsicWidth();
            intrinsicHeight = drawable4.getIntrinsicHeight();
            drawable4.setBounds(i - (intrinsicWidth / 2), i2 - (intrinsicHeight / 2), (intrinsicWidth / 2) + i, i2 + (intrinsicHeight / 2));
        }
        drawable4.draw(canvas2);
        canvas.restore();
        if (obj != null) {
            canvas.restore();
        }
    }

    protected void onMeasure(int i, int i2) {
        int mode = MeasureSpec.getMode(i);
        int size = MeasureSpec.getSize(i);
        int mode2 = MeasureSpec.getMode(i2);
        int size2 = MeasureSpec.getSize(i2);
        float f = 1.0f;
        float f2 = 1.0f;
        if (mode != 0 && size < this.mDialWidth) {
            f = ((float) size) / ((float) this.mDialWidth);
        }
        if (mode2 != 0 && size2 < this.mDialHeight) {
            f2 = ((float) size2) / ((float) this.mDialHeight);
        }
        float min = Math.min(f, f2);
        setMeasuredDimension(resolveSizeAndState((int) (((float) this.mDialWidth) * min), i, 0), resolveSizeAndState((int) (((float) this.mDialHeight) * min), i2, 0));
    }

    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        this.mChanged = true;
    }
}
