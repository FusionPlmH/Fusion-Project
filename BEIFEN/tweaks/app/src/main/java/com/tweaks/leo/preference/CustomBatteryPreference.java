package com.tweaks.leo.preference;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

import android.preference.Preference;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.view.View;
import android.widget.ImageView;

import com.tweaks.leo.R;


public class CustomBatteryPreference extends Preference implements Preference.OnPreferenceClickListener, CustomBatteryDialog.OnBatteryPickedListener {
    public static final String DB_CUSTOMBATTERY_PKG = "leo_tweaks_battery_custom_package";
    ImageView i;
    boolean isSaved;
    private Context mContext;
    CustomBatteryDialog mDialog;
    Drawable mSavedIcon;
    View mView;

    public CustomBatteryPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContext = context;
        setOnPreferenceClickListener(this);

        setLayoutResource(R.layout.custom_battery_preference);
    }

    private void getBatteryIcon() {
        String dbSavedBattery = System.getString(this.mContext.getContentResolver(), DB_CUSTOMBATTERY_PKG);
        if (dbSavedBattery == null || dbSavedBattery == "") {
            this.mSavedIcon = this.mContext.getResources().getDrawable(android.R.color.transparent);
            return;
        }
        this.mSavedIcon = getCustomBatteryFromPKG(dbSavedBattery);
        this.mSavedIcon = resize(this.mSavedIcon);
    }

    private void initDialog() {
        this.mDialog = new CustomBatteryDialog(getContext());
        this.mDialog.setOnBatteryPickedListener(this);
        this.mDialog.show();
    }

    public boolean onPreferenceClick(Preference arg0) {
        initDialog();
        return false;
    }

    protected void onBindView(View view) {
        this.mView = view;
        getBatteryIcon();
        this.i = (ImageView) this.mView.findViewById(R.id.imageview);
        this.i.setBackground(this.mSavedIcon);

        super.onBindView(view);
    }

    private Drawable resize(Drawable image) {
        try {
            return new BitmapDrawable(Bitmap.createScaledBitmap(((BitmapDrawable) image).getBitmap(), 90, 90, true));
        } catch (Exception e) {
            return this.mContext.getResources().getDrawable(android.R.color.transparent);
        }
    }

    public void dismissDialog() {
        if (this.mDialog != null && this.mDialog.isShowing()) {
            this.mDialog.dismiss();
        }
    }

    public void onBatteryPicked(String pkg, Drawable mIcon) {
        this.i.setBackground(resize(mIcon));
        System.putString(this.mContext.getContentResolver(), DB_CUSTOMBATTERY_PKG, pkg);
        this.mDialog.dismiss();
    }

    private Drawable getCustomBatteryFromPKG(String pkgName) {
        Drawable d;
        try {
            Context otherAppContext = mContext.createPackageContext(pkgName, 3);
            d = otherAppContext.getResources().getDrawable(otherAppContext.getResources().getIdentifier("stat_sys_battery", "drawable", pkgName));
            d.setLevel(50);
            return d.getCurrent();
        } catch (Exception e) {
            d = this.mContext.getResources().getDrawable(android.R.color.transparent);
            e.printStackTrace();
            return d;
        }
    }
}
