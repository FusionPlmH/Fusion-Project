package com.android.systemui.qs.bar;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.os.Handler;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageView;
import android.widget.LinearLayout;
import com.android.systemui.Dependency;

import com.android.systemui.qs.QSPanel;

import com.android.systemui.settings.ToggleSliderView;
import com.android.systemui.statusbar.policy.BrightnessMirrorController;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.tuner.TunerService.Tunable;
import com.os.leo.utils.LeoUserSettings;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoBrightnessActivityColor;
import static com.os.leo.utils.LeoUserSettings.getLeoBrightnessAllColor;
import static com.os.leo.utils.LeoUserSettings.getLeoBrightnessBGColor;
import static com.os.leo.utils.LeoUserSettings.getLeoBrightnessControlColor;

import static com.os.leo.utils.LeoUserSettings.getLeoBrightnessDtailIconColor;
import static com.os.leo.utils.LeoUserSettings.getLeoBrightnessIconColor;
import static com.os.leo.utils.LeoUserSettings.getLeoBrightnessMaxColor;
import static com.os.leo.utils.LeoUserSettings.getLeoBrightnessRandomColor;
import static com.os.leo.utils.LeoUserSettings.getLeoEnabledBrightnessAllColor;
import static com.os.leo.utils.LeoUserSettings.getLeoEnabledBrightnessColorCustom;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessAllColor;

import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessDtailIconColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessIconColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrEnabledBrightnessAllColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrEnabledBrightnessColorCustom;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrKeyguardCarrierRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNetworkTrafficIconColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNetworkTrafficTextColor;
import static com.os.leo.utils.LeoUtils.getLeoUri;

public class BrightnessBar extends QSBarItem implements Tunable {
    public static final String BRIGHTNESS_AUTO = "brightness_auto";
    public static final String BRIGHTNESS_BAR_NAME = "Brightness";
    public static final String BRIGHTNESS_ON_TOP = "brightness_on_top";
    public static final String DISPLAY_OUTDOOR_MODE = "display_outdoor_mode";
    private final ContentObserver mAutoBrightnessSettingsObserver = new ContentObserver(new Handler()) {
        public void onChange(boolean z) {
            int i = 1;

            TunerService tunerService = (TunerService) Dependency.get(TunerService.class);
            String str = BrightnessBar.BRIGHTNESS_AUTO;
            if (!BrightnessBar.this.mIsAutoBrightness.booleanValue()) {
                i = 0;
            }
            tunerService.setValue(str, i);
            Log.d(BrightnessBar.this.TAG, "onChange() : BRIGHTNESS_AUTO = " + BrightnessBar.this.mIsAutoBrightness);
        }
    };

    public BrightnessBar(Context context) {
        super(context);
        Log.d(this.TAG, "BrightnessBar()");
        this.mContext = context;
        this.mContext.getContentResolver().registerContentObserver(System.getUriFor("screen_brightness_mode"), false, this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoEnabledBrightnessColorCustom()), false,this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoEnabledBrightnessAllColor()), false, this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoBrightnessAllColor()), false, this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoBrightnessIconColor()), false, this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoBrightnessDtailIconColor()), false, this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoBrightnessControlColor()), false, this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoBrightnessMaxColor()), false, this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoBrightnessActivityColor()), false,this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoBrightnessBGColor()), false,this.mAutoBrightnessSettingsObserver);
        mContext.getContentResolver().registerContentObserver(getLeoUri(getLeoBrightnessRandomColor()), false,this.mAutoBrightnessSettingsObserver);
        ((TunerService) Dependency.get(TunerService.class)).addTunable(this, BRIGHTNESS_AUTO);
        ((TunerService) Dependency.get(TunerService.class)).addTunable(this, BRIGHTNESS_ON_TOP);
        this.mIsBrightnessOnTop = Boolean.valueOf(((TunerService) Dependency.get(TunerService.class)).getValue(BRIGHTNESS_ON_TOP, 0) == 1);
    }

    private LinearLayout mBrightnessBar;

    private ImageView mBrightnessDetailIcon;
    private ImageView mBrightnessIcon;

    private Context mContext;
    private Boolean mIsAutoBrightness;
    private Boolean mIsBrightnessOnTop;
    private Boolean mIsDetail = Boolean.valueOf(false);
    private QSPanel mQSPanel;



    @Override
    public void onTuningChanged(String str, String str2) {

    }

    @Override
    public void destroy() {

    }
    private BrightnessMirrorController mBrightnessMirrorController;

    @Override
    public int getBarHeight() {
        return 0;
    }
    public void grxUpdateIconsColors() {

    }
    private void initBrightnessDetailViews() {

    }
    public void initBarViews() {

    }
    public void setLeoBrightnessStyle2() {
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        setLeoBrightnessStyle();
    }
    private LeoObserver mLeoObserver;
    private class LeoObserver extends ContentObserver {


        LeoObserver(Handler handler) {
            super(handler);
        }
        void observe() {
            ContentResolver resolver = mContext.getContentResolver();
            resolver.registerContentObserver(getLeoUri(getLeoEnabledBrightnessColorCustom()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoEnabledBrightnessAllColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoBrightnessAllColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoBrightnessIconColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoBrightnessDtailIconColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoBrightnessControlColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoBrightnessMaxColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoBrightnessActivityColor()), false, this);
            resolver.registerContentObserver(getLeoUri(getLeoBrightnessBGColor()), false, this);

        }


        @Override
        public void onChange(boolean selfChange) {
            setLeoBrightnessStyle();
        }
    }
    public void setLeoBrightnessStyle() {
        LeoSettings(mContext);
        int colordefault=mContext.getColor(getLeoResource("color/brightness_bar_icon_tint_color"));
        int tailIcon=colordefault;
        int BrightnessIcon=colordefault;
        int colorstyle=setLeoUesrBrightnessRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        int all=setLeoUesrEnabledBrightnessAllColor;
        if (setLeoUesrEnabledBrightnessColorCustom) {
            if (all==0) {
                if(colorstyle==0){
                    BrightnessIcon=setLeoUesrBrightnessIconColor;
                    tailIcon=setLeoUesrBrightnessDtailIconColor;
                }else if(colorstyle==1){
                    tailIcon= colorrandom;
                    BrightnessIcon=colorrandom;
                }
            } else if ( all == 1) {
                int allcolor=setLeoUesrBrightnessAllColor;
                tailIcon=allcolor;
                BrightnessIcon=allcolor;
            }
            mBrightnessDetailIcon.setColorFilter(BrightnessIcon);
            mBrightnessIcon.setColorFilter(tailIcon);
        } else {
            tailIcon=colordefault;
          BrightnessIcon=colordefault;

        }
        mBrightnessDetailIcon.setColorFilter( tailIcon);
        mBrightnessIcon.setColorFilter(BrightnessIcon);

        mBrightnessSlider.updateResources();

    }
    private ToggleSliderView mBrightnessSlider;


}
