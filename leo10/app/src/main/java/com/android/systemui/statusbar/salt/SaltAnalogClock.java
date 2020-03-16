/*
 * Copyright (C) 2006 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.systemui.statusbar.salt;

import android.annotation.SuppressLint;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.ContentObserver;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.format.DateUtils;
import android.text.format.Time;
import android.util.AttributeSet;

import android.view.View;

import com.salt.config.R;

import java.util.TimeZone;

import static com.android.settingslib.salt.SaltConfigFrame.getCustomDrawable;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltAnalogClock extends View {
    private Time mCalendar;

    private Drawable mHourHand;
    private Drawable mMinuteHand;

    private Drawable mDial;

    private int mDialWidth;
    private int mDialHeight;

    private boolean mAttached;

    private float mMinutes;
    private float mHour;
    private boolean mChanged;

    public SaltAnalogClock(Context context) {
        this(context, null);
    }

    public SaltAnalogClock(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public SaltAnalogClock(Context context, AttributeSet attrs, int defStyleAttr) {
        this(context, attrs, defStyleAttr, 0);
    }

    private Context mContext;
    private TypedArray mTypedArray;

    public SaltAnalogClock(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);
        mContext = context;

        mTypedArray  = context.obtainStyledAttributes(
                attrs, R.styleable.LeoAnalogClock, defStyleAttr, defStyleRes);

        updateAnalogClock();
        mCalendar = new Time();
        mDialWidth = mDial.getIntrinsicWidth();
        mDialHeight = mDial.getIntrinsicHeight();
        final ContentObserver contentObserver= new ContentObserver(new Handler()) {
            public void onChange(boolean z) {
                updateAnalogClock();
                onTimeChanged();
                invalidate();
            }
        };
        new Thread(() -> {
            ContentResolver contentResolver = getContext().getContentResolver();
            for (String uriFor :NotificationPanel) {
                contentResolver.registerContentObserver(Settings.System.getUriFor(uriFor), false, contentObserver);
            }
        }).start();
    }
   public void updateAnalogClock() {
       LeoSysUiManages( mContext );

     int  mLeoDialStyle=setLeoNotificationPanelAnalogClockDial;
       mDial =mTypedArray.getDrawable(0);
       mHourHand = mTypedArray.getDrawable(1);
       mMinuteHand =mTypedArray.getDrawable(2);
        if (mDial == null) {
            if (mLeoDialStyle== 1) {
                mDial = AnalogClockDrawable("analogclock_custom_dial");

            } else if (mLeoDialStyle ==2) {
                mDial = AnalogClockDrawable("analogclock_dot_dial");

            } else if (mLeoDialStyle == 3) {
                mDial = AnalogClockDrawable("analogclock_baii_dial");

            } else if (mLeoDialStyle == 4) {
                mDial = AnalogClockDrawable("analogclock_spectrum_dial");

            } else if (mLeoDialStyle ==5) {
                mDial = AnalogClockDrawable("analogclock_spidey_dial");

            } else if (mLeoDialStyle== 6) {
                mDial = AnalogClockDrawable("analogclock_hit_dial");

            } else if (mLeoDialStyle ==7) {
                mDial = AnalogClockDrawable("analogclock_num_dial");
            } else if (mLeoDialStyle== 8) {
                mDial = AnalogClockDrawable("analogclock_kaleidoscope_dial");
            } else if (mLeoDialStyle ==9) {
                mDial = AnalogClockDrawable("analogclock_dian_dial");
            } else if (mLeoDialStyle==10) {
                mDial = AnalogClockDrawable("analogclock_yuan_dial");
            } else if (mLeoDialStyle== 0) {
                mDial = AnalogClockDrawable("analogclock_sneeky_dial");
            }
        }
        if(mLeoDialStyle<7){
            mDial.clearColorFilter();
        }else{
            mDial.setColorFilter(setLeoNotificationPanelAnalogClockDialColor, PorterDuff.Mode.SRC_IN);
        }


        if (mHourHand == null) {
            mHourHand = AnalogClockDrawable("analogclock_hour");
        }
      //  mLeoHourColor=Color.CYAN;
        mHourHand.setColorFilter(setLeoNotificationPanelAnalogClockHourColor, PorterDuff.Mode.SRC_IN);
        if (mMinuteHand == null) {
            mMinuteHand =AnalogClockDrawable("analogclock_min");
        }
      //  mLeoMinuteColor=Color.CYAN;
        mMinuteHand.setColorFilter(setLeoNotificationPanelAnalogClockMinuteColor, PorterDuff.Mode.SRC_IN);
    }


    public Drawable AnalogClockDrawable(String str){
        return getCustomDrawable(getContext(), str);
    }
    @Override
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

        if (!mAttached) {
            mAttached = true;
            IntentFilter filter = new IntentFilter();

            filter.addAction(Intent.ACTION_TIME_TICK);
            filter.addAction(Intent.ACTION_TIME_CHANGED);
            filter.addAction(Intent.ACTION_TIMEZONE_CHANGED);

            // OK, this is gross but needed. This class is supported by the
            // remote views machanism and as a part of that the remote views
            // can be inflated by a context for another user without the app
            // having interact users permission - just for loading resources.
            // For exmaple, when adding widgets from a user profile to the
            // home screen. Therefore, we register the receiver as the current
            // user not the one the context is for.
            getContext().registerReceiver(mIntentReceiver,
                   filter, null, getHandler());
        }

        // NOTE: It's safe to do these after registering the receiver since the receiver always runs
        // in the main thread, therefore the receiver can't run before this method returns.

        // The time zone may have changed while the receiver wasn't registered, so update the Time
        mCalendar = new Time();

        // Make sure we update to the current time
        onTimeChanged();
    }

    @Override
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (mAttached) {
            getContext().unregisterReceiver(mIntentReceiver);
            mAttached = false;
        }
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {

        int widthMode = MeasureSpec.getMode(widthMeasureSpec);
        int widthSize =  MeasureSpec.getSize(widthMeasureSpec);
        int heightMode = MeasureSpec.getMode(heightMeasureSpec);
        int heightSize =  MeasureSpec.getSize(heightMeasureSpec);

        float hScale = 1.0f;
        float vScale = 1.0f;

        if (widthMode != MeasureSpec.UNSPECIFIED && widthSize < mDialWidth) {
            hScale = (float) widthSize / (float) mDialWidth;
        }

        if (heightMode != MeasureSpec.UNSPECIFIED && heightSize < mDialHeight) {
            vScale = (float )heightSize / (float) mDialHeight;
        }

        float scale = Math.min(hScale, vScale);

        setMeasuredDimension(resolveSizeAndState((int) (mDialWidth * scale), widthMeasureSpec, 0),
                resolveSizeAndState((int) (mDialHeight * scale), heightMeasureSpec, 0));
    }

    @Override
    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        super.onSizeChanged(w, h, oldw, oldh);
        mChanged = true;
    }

    @Override
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);

        boolean changed = mChanged;
        if (changed) {
            mChanged = false;
        }


        int availableWidth  = getRight() - getLeft();
        int availableHeight= getBottom() - getTop();
        int x = availableWidth / 2;
        int y = availableHeight / 2;

        final Drawable dial = mDial;
        int w = dial.getIntrinsicWidth();
        int h = dial.getIntrinsicHeight();

        boolean scaled = false;

        if (availableWidth < w || availableHeight < h) {
            scaled = true;
            float scale = Math.min((float) availableWidth / (float) w,
                    (float) availableHeight / (float) h);
            canvas.save();
            canvas.scale(scale, scale, x, y);
        }

        if (changed) {
            dial.setBounds(x - (w / 2), y - (h / 2), x + (w / 2), y + (h / 2));
        }
        dial.draw(canvas);

        canvas.save();
        canvas.rotate(mHour / 12.0f * 360.0f, x, y);
        final Drawable hourHand = mHourHand;
        if (changed) {
            w = hourHand.getIntrinsicWidth();
            h = hourHand.getIntrinsicHeight();
            hourHand.setBounds(x - (w / 2), y - (h / 2), x + (w / 2), y + (h / 2));
        }
        hourHand.draw(canvas);
        canvas.restore();

        canvas.save();
        canvas.rotate(mMinutes / 60.0f * 360.0f, x, y);

        final Drawable minuteHand = mMinuteHand;
        if (changed) {
            w = minuteHand.getIntrinsicWidth();
            h = minuteHand.getIntrinsicHeight();
            minuteHand.setBounds(x - (w / 2), y - (h / 2), x + (w / 2), y + (h / 2));
        }
        minuteHand.draw(canvas);
        canvas.restore();

        if (scaled) {
            canvas.restore();
        }
    }

    private void onTimeChanged() {
        mCalendar.setToNow();

        int hour = mCalendar.hour;
        int minute = mCalendar.minute;
        int second = mCalendar.second;

        mMinutes = minute + second / 60.0f;
        mHour = hour + mMinutes / 60.0f;
        mChanged = true;

        updateContentDescription(mCalendar);
    }

    private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
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

    private void updateContentDescription(Time time) {
        final int flags = DateUtils.FORMAT_SHOW_TIME | DateUtils.FORMAT_24HOUR;
        String contentDescription = DateUtils.formatDateTime(getContext(),
                time.toMillis(false), flags);
        setContentDescription(contentDescription);
    }
}