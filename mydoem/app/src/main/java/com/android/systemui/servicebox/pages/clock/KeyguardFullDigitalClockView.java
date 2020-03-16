package com.android.systemui.servicebox.pages.clock;

import android.content.Context;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;

import com.android.systemui.widget.KeyguardTextClockForUser;
import com.dome.leo.R;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockALLColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockALLColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockColorCustom;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockTimeSecondColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockTimeSecondDisplay;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockTimeSecondFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardSingleClockTimeSecondSize;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;

public class KeyguardFullDigitalClockView extends KeyguardSingleClockView implements KeyguardClockBase {
    private KeyguardTextClockForUser mTimeSecView;

    public KeyguardFullDigitalClockView(Context context) {
        this(context, null);
    }

    public KeyguardFullDigitalClockView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public KeyguardFullDigitalClockView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mTimeSecView = (KeyguardTextClockForUser) findViewById(getLeoResource("id/keyguard_single_time_second"));
        this.mTimeSecView.setElegantTextHeight(false);
        this.mTimeSecView.setFormat12Hour(":ss");
        this.mTimeSecView.setFormat24Hour(":ss");
        setLeoKeyguardSingleClock();
    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoKeyguardSingleClock();
    }
    public void setLeoKeyguardSingleClock() {
        LeoSettings(getContext());
        boolean color=setLeoUesrKeyguardSingleClockColorCustom;
        if(color) {
            int allcolor=setLeoUesrKeyguardSingleClockALLColor;
            int all=setLeoUesrKeyguardSingleClockALLColorEnabled;
            int colorstyle=setLeoUesrKeyguardSingleClockRandomColor;
            int colorrandom=getLeoRandomColor(mContext);
            if (all==0) {
                Log.v(AUTHOR, CORYRIGHT+ China );
                if(colorstyle==0){
                    mTimeSecView.setLeoCustomColor(setLeoUesrKeyguardSingleClockTimeSecondColor);
                }else if(colorstyle==1){
                    mTimeSecView.setLeoCustomColor(colorrandom);
                }
            }else if ( all == 1) {
                mTimeSecView.setLeoCustomColor(allcolor);
            }
        }else {
            Log.v(AUTHOR, CORYRIGHT+ China );
            mTimeSecView.setLeoRemoveCustomColor();
        }
        mTimeSecView.setLeoCustomFont(setLeoUesrKeyguardSingleClockTimeSecondFont);
        mTimeSecView.setTextSize(setLeoUesrKeyguardSingleClockTimeSecondSize);
        int date=setLeoUesrKeyguardSingleClockTimeSecondDisplay;
        if(date==1){
            mTimeSecView.setVisibility(VISIBLE);
        }else {
            mTimeSecView.setVisibility(GONE);
        }
    }
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 0) {
            float x = motionEvent.getX();
            float y = motionEvent.getY();
            int[] iArr = new int[2];
            this.mTimeSet.getLocationOnScreen(iArr);
            if (((float) iArr[0]) < x && x < ((float) (iArr[0] + this.mTimeSet.getWidth())) && ((float) iArr[1]) < y && y < ((float) (iArr[1] + this.mTimeSet.getHeight()))) {
                return true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public void setClockVisibility(int i) {
        super.setClockVisibility(i);
        this.mTimeSecView.setVisibility(i);
    }
}
