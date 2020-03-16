package com.android.systemui.statusbar.salt;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.os.BatteryManager;
import android.animation.ArgbEvaluator;

import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.ImageView;
import com.android.systemui.Dependency;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.DarkIconDispatcher;

import static com.android.settingslib.salt.SaltConfigCenter.getLeoMianBatteryStyle;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.setLeoImagePadding;

import static com.android.settingslib.salt.SaltValues.Values17;
import static com.android.settingslib.salt.SaltValues.mDarkModeFillColor;
import static com.android.settingslib.salt.SaltValues.mLightModeFillColor;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltMainBattery extends ImageView implements DarkIconDispatcher.DarkReceiver, ConfigurationController.ConfigurationListener {
    public int mBatteryChargeColor,mBatteryStandbyColor;
    private Context mContext;
    public static final String BATTERY_TAG="leo_battery_view";

    private String ACTION_BATTERY= Intent.ACTION_BATTERY_CHANGED;
    private Drawable mCustomBattery;
    private Drawable mCustomBatteryCharge;
    private String mCustomBatteryPKG;

    public SaltMainBattery(Context context) {
        this(context, null);
    }

    public SaltMainBattery(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SaltMainBattery(Context context, AttributeSet attributeSet, int level) {
        super(context, attributeSet, level);
        init(context);
    }
    private boolean mBatteryCharging;
   public int mBatteryLevel;
    public int mNonAdaptedColor;
    private void init(Context context) {
        mContext=context;

    }

    private final BroadcastReceiver mBatteryReceiver= new BroadcastReceiver() {
        @Override
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if (ACTION_BATTERY.equals(action)) {
                mBatteryLevel = intent.getIntExtra(BatteryManager.EXTRA_LEVEL, 0);
                mBatteryCharging= intent.getIntExtra(BatteryManager.EXTRA_STATUS, 0) == BatteryManager.BATTERY_STATUS_CHARGING;
                handleBatteryChange();
            }
        }
    };


    private void getCustomBattery(String str) {
        if (isCustomBatteryInstalled(str)) {
            try {
                Context createPackageContext =getContext().createPackageContext(str, 3);
                mCustomBattery = createPackageContext.getResources().getDrawable(createPackageContext.getResources().getIdentifier("stat_sys_battery", "drawable",str));
                mCustomBatteryCharge = createPackageContext.getResources().getDrawable(createPackageContext.getResources().getIdentifier("stat_sys_battery_charge", "drawable", str));
            return;
            } catch (Exception e) {
                e.printStackTrace();
                return;
            }
        }
      mCustomBattery = null;
       mCustomBatteryCharge = null;
    }


    private void handleBatteryChange() {
        LeoSysUiManages(mContext);
       setImageDrawable(null);
       setImageDrawable(mBatteryCharging?mCustomBatteryCharge:mCustomBattery);
       setImageLevel(mBatteryLevel);
    }
    private boolean isCustomBatteryInstalled(String str) {
        try {
            return (TextUtils.isEmpty(str) || this.mContext.getPackageManager().getApplicationInfo(str, 0) == null) ? false : true;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
    public void updateSettings() {
        LeoSysUiManages(mContext);
        setLeoImagePadding(this,setLeoStatusBarMainBatteryStartPadding,setLeoStatusBarMainBatteryEndPadding);
        mCustomBatteryPKG =getLeoMianBatteryStyle (setLeoStatusbarMainBatteryPackage);
        getCustomBattery(mCustomBatteryPKG);
        handleBatteryChange();
        mBatteryStandbyColor=setLeoStatusBarMainBatteryColor;
        mBatteryChargeColor=setLeoStatusBarMainBatteryChargeColor;
        updateVisibility(setLeoStatusbarMainBatteryEnabled);
        if (BATTERY_TAG.equals(getTag())) {
            if (setBatteryCustomColor()) {
                setColorFilter(mBatteryCharging ?
                        mBatteryChargeColor : mBatteryStandbyColor);
            } else {
                setColorFilter(mNonAdaptedColor,PorterDuff.Mode.SRC_ATOP);
            }
        }


    }

    private void updateVisibility(int leobatt){
        if(leobatt== 0){
          setVisibility(GONE);
        }else if(leobatt== 1){
            setVisibility(VISIBLE);
        }else if(leobatt== 2){
          setVisibility(GONE);
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        mCustomBattery = null;
        mCustomBatteryCharge = null;
        mBatteryLevel= -1;
        IntentFilter filter = new IntentFilter();
        filter.addAction(ACTION_BATTERY);
        filter.setPriority(1000);
        getContext().registerReceiver( mBatteryReceiver, filter, null, getHandler());
        Dependency.get(ConfigurationController.class).addCallback(this);
        Dependency.get(DarkIconDispatcher.class).addDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
        updateSettings();
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
         mContext.unregisterReceiver(mBatteryReceiver);
         Dependency.get(ConfigurationController.class).removeCallback(this);
        Dependency.get(DarkIconDispatcher.class).removeDarkReceiver((DarkIconDispatcher.DarkReceiver) this);
    }
    public boolean setBatteryCustomColor() {
        LeoSysUiManages(mContext);
        return setLeoStatusBarMainBatteryCustomColorEnabled==1;
    }


    public void onDarkChanged(Rect area, float darkIntensity, int tint) {

        if (BATTERY_TAG.equals(getTag())) {
            mNonAdaptedColor = DarkIconDispatcher.getTint(area, this, tint);
            if (setBatteryCustomColor()) {
                setColorFilter(mBatteryCharging ?
                        mBatteryChargeColor : mBatteryStandbyColor);
            } else {
                setColorFilter(mNonAdaptedColor,PorterDuff.Mode.SRC_ATOP);
            }
        }else if (Values17 .equals(getTag())) {
            qsIntColor(area,darkIntensity);
        }

    }
    private boolean mIsForceTintColor = false;
    private boolean mShouldUseQsTintColor = false;


    private int mNonAdaptedForegroundColor;
   private void qsIntColor(Rect area,float f){
       boolean isInArea = DarkIconDispatcher.isInArea(area, this);
       float f3 = this.mIsForceTintColor ? 1.0f : isInArea ? f : 0.0f;
       if (this.mShouldUseQsTintColor) {
           f3 = this.mQsTintIntensity;
       }

       if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled() && this.mShouldUseQsTintColor) {
           this.mNonAdaptedForegroundColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(31);
       } else {
           this.mNonAdaptedForegroundColor = getColorForDarkIntensity(f3, mDarkModeFillColor,  mLightModeFillColor);
       }
       setColorFilter(mNonAdaptedForegroundColor,PorterDuff.Mode.SRC_ATOP);

   }
    private int getColorForDarkIntensity(float f, int i, int i2) {
        return ((Integer) ArgbEvaluator.getInstance().evaluate(f, Integer.valueOf(i), Integer.valueOf(i2))).intValue();
    }
    private float mQsTintIntensity;

    public void setForceQsTintColor(boolean z, float f) {
        this.mShouldUseQsTintColor = z;
        this.mQsTintIntensity = f;
        onDarkChanged(new Rect(), 0.0f, -1107296257);
    }



}
