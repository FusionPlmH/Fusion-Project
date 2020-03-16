package com.android.systemui.bar;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.provider.Settings;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;

import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;



public class BrightnessBar extends QSBarItem implements QSColoringServiceObject{
    public static final String BNR_QS_BRIGHTNESS_ON_TOP = "brightness_on_top";
    public static final String BNR_QS_TAG = "BrightnessOnTop";
    public static final String BRIGHTNESS_ON_TOP = "brightness_on_top";
    private static final String TAG = "BrightnessBar";

    private ImageView mBrightnessDetailIcon;

    private boolean mBrightnessMirrorVisible;

    /* access modifiers changed from: private */
    private Context mContext;
    /* access modifiers changed from: private */
    public boolean mIsBrightnessOnTop = false;
    private boolean mListening;

    public BrightnessBar(Context context) {
        super(context);
        this.mContext = context;

    }

    @Override
    public void refreshQsBar() {

    }


    @Override
    public int getBarHeight() {
        return 0;
    }


    @Override
    public void destroy() {

    }

    public View inflateViews(ViewGroup viewGroup, boolean z) {
        this.mBarRootView = (ViewGroup) LayoutInflater.from(this.mContext).inflate(null, viewGroup, false);

        return this.mBarRootView;
    }


    public void onColorChanged(Configuration configuration) {


    }

    @Override
    public boolean isAvailable() {
        return false;
    }

    public void updateQSColoringResources(View view) {
        if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            int qSColoringColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);
            mBrightnessDetailIcon.setColorFilter(qSColoringColor);
        }
    }

}
