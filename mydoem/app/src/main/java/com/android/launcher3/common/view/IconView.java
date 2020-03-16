package com.android.launcher3.common.view;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.os.Handler;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.util.Log;
import android.widget.FrameLayout;
import android.widget.TextView;

import com.android.launcher3.Launcher;
import com.leo.systemui.LeoKeyguardCarrier;

import java.util.Random;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoAndroidResource;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDeviceInfoCustomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherTextColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherTextFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherTextRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrToggleLauncherTextColor;
import static com.os.leo.utils.LeoUserValues.AUTHOR;

public class IconView extends FrameLayout {
    protected TextView mTitleView;
    protected final Launcher mLauncher;

    public IconView(@NonNull Context context, Launcher mLauncher) {
        super(context);
        this.mLauncher = mLauncher;
    }

    public IconView(@NonNull Context context, @Nullable AttributeSet attrs, Launcher mLauncher) {
        super(context, attrs);
        this.mLauncher = mLauncher;
    }

    public IconView(@NonNull Context context, @Nullable AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        mLauncher = (Launcher) context;

    }

    protected void decorateViewComponent() {

    }

    public void setTextColor(int i) {
        LeoSettings(mLauncher);
        int colorstylea=i;
        int color=setLeoUesrToggleLauncherTextColor;
        if(color==0){
            colorstylea=i;
        }else if (color==1){
            colorstylea=setLeoUesrLauncherTextColor;
        }
        mTitleView.setTextColor(colorstylea);
        mTitleView.setTypeface(setLeoRomFonts(0,  setLeoUesrLauncherTextFont));
    }
    public void onWindowFocusChanged(boolean mBoolean) {
        decorateViewComponent();
    }
}

