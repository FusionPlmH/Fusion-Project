package com.leo.global.preference;


import android.app.Dialog;
import android.app.ProgressDialog;
import android.app.SearchManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

import android.os.BatteryManager;
import android.os.Looper;
import android.preference.Preference;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.leo.global.tools.kotlin.OverScrollListView;
import com.leo.global.tweaks.R;

import java.text.Collator;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;

import static android.content.Context.LAYOUT_INFLATER_SERVICE;


public class SaltSettingBatteryPreference extends Preference implements Preference.OnPreferenceClickListener, CustomBatteryDialog.OnBatteryPickedListener {
    public static final String DB_CUSTOMBATTERY_PKG = "leo_tweaks_battery_custom_package";
    ImageView i;
    boolean isSaved;
    private Context mContext;
    CustomBatteryDialog mDialog;
    Drawable mSavedIcon;
    View mView;

    public SaltSettingBatteryPreference(Context context, AttributeSet attrs) {
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

        mDialog = new CustomBatteryDialog(mContext);
        mDialog.setTitle(getTitle());

        mDialog.setOnBatteryPickedListener(this);
        mDialog.setButton(DialogInterface.BUTTON_NEGATIVE,mContext.getString(R.string.color_blend_cancel), new DialogInterface.OnClickListener() {
            @Override
            public void onClick(DialogInterface dialog, int which) {
                dialog.dismiss();
            }
        });
        mDialog.create();
        mDialog.show();

    }

    public boolean onPreferenceClick(Preference arg0) {
        initDialog();

      //  mydialog.getWindow().setType(WindowManager.LayoutParams.TYPE_SYSTEM_ALERT);


       // mContext.registerReceiver(mBatInfoReceiver, new IntentFilter(Intent.ACTION_BATTERY_CHANGED));
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



    public void onBatteryPicked(String pkg, Drawable mIcon) {
        this.i.setBackground(resize(mIcon));
        System.putString(this.mContext.getContentResolver(), DB_CUSTOMBATTERY_PKG, pkg);
      mDialog.dismiss();

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
