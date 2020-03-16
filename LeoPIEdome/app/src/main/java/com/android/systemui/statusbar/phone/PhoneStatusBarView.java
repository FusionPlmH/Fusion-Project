package com.android.systemui.statusbar.phone;

import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.hardware.radio.RadioMetadata;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.provider.Settings;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.util.Slog;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;



import java.util.ArrayList;
import java.util.Iterator;


import static com.android.fusionleo.statusbar.LeoStatusbarUtils.QSonColor;
import static com.android.systemui.Rune.STATBAR_CONFIG_DEVICE_CORNER_ROUND;

/**
 * Created by Anna Berkovitch on 28/05/2016.
 */
public class PhoneStatusBarView extends  FrameLayout {

    StatusBar mBar;
    private FrameLayout mLeoPhoneStatusBarView;
    public PhoneStatusBarView(Context context) {
        super(context);
    }

    public PhoneStatusBarView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public PhoneStatusBarView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
    }
    public Context mContext;
    @RequiresApi(api = Build.VERSION_CODES.LOLLIPOP)
    public PhoneStatusBarView(Context context, AttributeSet attrs, int defStyleAttr, int defStyleRes) {
        super(context, attrs, defStyleAttr, defStyleRes);



    }
    public void setBgColor(int color) {
        if (this.mBackgroundView != null) {

            this.mBackgroundView.invalidate();
        }
    }



    ;
    private TextView StatusBarCarrierTextRight;

    public void onFinishInflate() {


        super.onFinishInflate();
        updateSidePadding();


    }


    private View mBackgroundView;

    private View mCustomBackgroundView;

    public void go(int anInt) {
    }





    public void  setLeoRomStatusBarBackground() {


    }

    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoRomStatusBarBackground();
    }




    //   }
    private MarqueeModel mMarquee = new MarqueeModel();
    private ViewGroup mStatusBarContents;

    public void updateSidePadding() {
        int dimensionPixelSize;
        int dimensionPixelSize2;
        Resources resources = getResources();
        if (STATBAR_CONFIG_DEVICE_CORNER_ROUND == 0.0f) {
          // dimensionPixelSize = resources.getDimensionPixelSize(getLeoResource("dimen/status_bar_padding_start"));
            dimensionPixelSize2 = (int) (((float)style) * resources.getDisplayMetrics().density);
        } else {

            dimensionPixelSize2 = (int) (((float)12) * resources.getDisplayMetrics().density);

          //  dimensionPixelSize = dimensionPixelSize2 - resources.getDimensionPixelSize(getLeoResource("dimen/status_bar_padding_start"));
        }
       // this.mStatusBarContents.setPaddingRelative(dimensionPixelSize, 0, dimensionPixelSize2, 0);
       mMarquee.dpStart = this.mStatusBarContents.getPaddingStart();
        this.mMarquee.dpEnd = this.mStatusBarContents.getPaddingEnd();
        this.mMarquee.dpTop = this.mStatusBarContents.getPaddingTop();
        this.mMarquee.dpBottom = this.mStatusBarContents.getPaddingBottom();
        this.mMarquee.cpStart = this.mMarquee.dpStart;
        this.mMarquee.cpEnd = this.mMarquee.dpEnd;
    }


    private class MarqueeModel {
        private int cpEnd;
        private int cpStart;
        private int direction = 1;
        private int dpBottom;
        private int dpEnd;
        private int dpStart;
        private int dpTop;
        private int horizontalShift = 0;
        private int maxShiftSize;
        private int verticalShift = 0;
    }
    public static int style;
    public void updateLeoSidePadding() {
        boolean a=true;
     float st=12.0f;


        if(a){
            style=((int) ((STATBAR_CONFIG_DEVICE_CORNER_ROUND * (st - STATBAR_CONFIG_DEVICE_CORNER_ROUND)) - 1.0f));

        }else{
         //   style=STATBAR_CONFIG_STATUSBAR_SIDE_PADDING;
        }


    }
}
