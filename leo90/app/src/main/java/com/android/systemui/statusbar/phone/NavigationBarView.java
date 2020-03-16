package com.android.systemui.statusbar.phone;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Handler;
import android.os.Vibrator;
import android.util.AttributeSet;
import android.util.Log;
import android.view.GestureDetector;
import android.view.Gravity;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.LinearLayout;


import com.android.systemui.Rune;
import com.android.systemui.fusionleo.LeoStatusBarController;
import com.fusionleo.LeoX.systemui.LeoConfig;
import com.fusionleo.LeoProvider.LeoObserver;

import static com.fusionleo.LeoProvider.LeoManages.setLeoNavGestureEnabled;
import static com.fusionleo.LeoX.systemui.LeoConfig.LeoGradientDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoBasicColor;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoWallpaper;

import static com.fusionleo.LeoProvider.LeoManages.CustomNavBg;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.mLeoStatusBarMainBattery;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBGStyle;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgBasicColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgGradientBgStyle;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgWallpaper;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgWallpaperAlpha;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgWallpaperAlphaEnable;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBgWallpaperBlurEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavBlurBgDegree;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBackGroundColorRadius;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBackGroundCornerRadius;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBgCenterColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBgEndColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBgStartColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientBgType;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientColorFive;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientColorFour;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientColorSix;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavGradientEnableCenterColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavShowBG;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeDashColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeDashGap;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeDashWidth;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeEnabled;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavStrokeThickness;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavWallpaperColor;
import static com.fusionleo.LeoProvider.LeoManages.setLeoUesrNavWallpaperColorEnable;


public class NavigationBarView extends FrameLayout implements LeoObserver.ObListener{
    private View mBackgroundView;

    Context mContext;
    public LeoStatusBarController mLeoController;

    public  NavigationBarView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

    }
    public View getClockView() {
        return null;
    }


    public boolean onTouchEvent(MotionEvent motionEvent) {

        return true;
    }


    public void setDoubleTapToSleep() {
        LeoSysUiManages(getContext());
        ((NavigationBarFrame) getRootView()).setDoubleTapToSleep(setLeoNavGestureEnabled);
    }

    public void setLeoNavBar() {
        NavView();
    }

    @Override
    public void onLeoChange(String str) {
        for (String equals :CustomNavBg) {
            if (equals.equals(str)) {
                NavView();
                return;
            }
        }
    }


    public void   NavView(){
        int coooo=Color.TRANSPARENT;
        Context context=getContext();
        LeoSysUiManages(context );
        boolean off=setLeoUesrNavShowBG;
        if (off) {
            boolean StrokeEnabled=setLeoUesrNavStrokeEnabled;
            int StrokeThickness=setLeoUesrNavStrokeThickness;
            int DashWidth= setLeoUesrNavStrokeDashWidth;
            int DashGap= setLeoUesrNavStrokeDashGap;
            int DashColor= setLeoUesrNavStrokeDashColor;
            int CornerRadius=setLeoUesrNavGradientBackGroundCornerRadius;
            int WallpaperColor=setLeoUesrNavWallpaperColor;
            int Alpha=setLeoUesrNavBgWallpaperAlpha;
            String str=setLeoUesrNavBgWallpaper;
            int SPanelBGStyle=setLeoUesrNavBGStyle;
            if (SPanelBGStyle == 0) {
                setBackground(getLeoBasicColor(
                        StrokeEnabled,
                        StrokeThickness,
                        DashWidth,
                        DashGap,
                        DashColor,
                        CornerRadius,
                        setLeoUesrNavBgBasicColor
                ));

            } else if(SPanelBGStyle==1){
                setBackground(LeoGradientDrawable(
                        setLeoUesrNavGradientBgStartColor,
                        setLeoUesrNavGradientBgCenterColor,
                        setLeoUesrNavGradientBgEndColor,
                        setLeoUesrNavGradientColorFour,
                        setLeoUesrNavGradientColorFive,
                        setLeoUesrNavGradientColorSix,
                        setLeoUesrNavGradientEnableCenterColor ,
                        setLeoUesrNavBgGradientBgStyle,StrokeEnabled,StrokeThickness, DashWidth,DashGap, DashColor,CornerRadius
                        ,setLeoUesrNavGradientBgType,setLeoUesrNavGradientBackGroundColorRadius));
            }if (SPanelBGStyle == 999 &&  str != null) {
                setBackground(getLeoWallpaper(context,str,setLeoUesrNavBlurBgDegree,setLeoUesrNavWallpaperColorEnable,WallpaperColor,setLeoUesrNavBgWallpaperAlphaEnable,Alpha,setLeoUesrNavBgWallpaperBlurEnabled));
            }
        } else {
            setBackgroundColor(coooo);
        }
    }






}
