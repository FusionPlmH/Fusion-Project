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
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;




import com.android.systemui.Rune;
import com.android.systemui.qs.QSContainerImpl;

import java.io.File;
import java.util.ArrayList;
import java.util.Iterator;


import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.*;

import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.LeoGradientDrawable;
import static com.os.leo.utils.LeoUtils.getLeoBasicColor;
import static com.os.leo.utils.LeoUtils.getLeoUri;
import static com.os.leo.utils.LeoUtils.getLeoWallpaperAlpha;
import static com.os.leo.utils.LeoUtils.getLeoWallpaperColor;
import static com.android.systemui.Rune.STATBAR_CONFIG_DEVICE_CORNER_ROUND;
import static com.android.systemui.Rune.STATBAR_CONFIG_STATUSBAR_SIDE_PADDING;
import static com.android.systemui.UId.UId43;


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



    public void onLeoString(String str) {
        if (getLeoStatsusBarShowBG().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarBgGradientBgStyle().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarGradientBgType().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarGradientBackGroundCornerRadius().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarGradientBackGroundColorRadius().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarBgWallpaper().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarWallpaperColorEnable().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarWallpaperColor().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarBGStyle().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarBgBasicColor().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarGradientBgStartColor().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarGradientBgCenterColor().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarGradientBgEndColor().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarGradientEnableCenterColor().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarBlurBgDegree().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if ( getLeoStatsusBarBgWallpaperAlphaEnable().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarBgWallpaperAlpha().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarBlurWallpaperColor().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarGradientBgType().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarStrokeDashColor().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarStrokeThickness().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarStrokeDashWidth().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarStrokeDashGap().equals(str)) {
            setLeoRomStatusBarBackground();
        } else if (getLeoStatsusBarStrokeEnabled().equals(str)) {
            setLeoRomStatusBarBackground();
        }
    }

    void registerObserver() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(getLeoStatsusBarStrokeEnabled());
        arrayList.add(getLeoStatsusBarStrokeDashWidth());
        arrayList.add(getLeoStatsusBarStrokeDashGap());
        arrayList.add(getLeoStatsusBarStrokeThickness());
        arrayList.add(getLeoStatsusBarStrokeDashColor());
        arrayList.add(getLeoStatsusBarBlurWallpaperColor());
        arrayList.add(getLeoStatsusBarBgWallpaperAlpha());
        arrayList.add(getLeoStatsusBarBgWallpaperAlphaEnable());
        arrayList.add(getLeoStatsusBarBlurBgDegree());
        arrayList.add(getLeoStatsusBarGradientEnableCenterColor());
        arrayList.add(getLeoStatsusBarGradientBgEndColor());
        arrayList.add(getLeoStatsusBarGradientBgCenterColor());
        arrayList.add(getLeoStatsusBarGradientBgStartColor());
        arrayList.add(getLeoStatsusBarBgBasicColor());
        arrayList.add( getLeoStatsusBarBGStyle());
        arrayList.add(getLeoStatsusBarWallpaperColor());
        arrayList.add(getLeoStatsusBarWallpaperColorEnable());;
        arrayList.add(getLeoStatsusBarBgWallpaper());
        arrayList.add(getLeoStatsusBarGradientBackGroundColorRadius());
        arrayList.add(getLeoStatsusBarGradientBackGroundCornerRadius());
        arrayList.add(getLeoStatsusBarGradientBgType());
        arrayList.add(getLeoStatsusBarBgGradientBgStyle());
        arrayList.add(getLeoStatsusBarShowBG());

        Slog.d(AUTHOR, "global settings observer");
        ContentResolver contentResolver = mContext.getContentResolver();
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {

        }


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

            dimensionPixelSize = dimensionPixelSize2 - resources.getDimensionPixelSize(getLeoResource("dimen/status_bar_padding_start"));
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
            style=STATBAR_CONFIG_STATUSBAR_SIDE_PADDING;
        }


    }
}
