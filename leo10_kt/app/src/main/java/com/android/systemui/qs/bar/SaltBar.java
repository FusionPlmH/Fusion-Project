package com.android.systemui.qs.bar;


import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.SystemClock;
import android.provider.Settings;
import android.util.Log;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.android.settingslib.salt.utils.LeoReceiver;
import com.android.systemui.Dependency;

import com.android.systemui.qs.panelcolor.PanelColorModel;
import com.android.systemui.statusbar.phone.StatusBar;
import com.android.systemui.statusbar.salt.SaltDeviceInfo;
import com.android.systemui.util.DeviceState;


import static com.android.settingslib.salt.SaltConfigCenter.LeoQSDrawable;

import static com.android.settingslib.salt.SaltConfigFrame.SecurityFramework;
import static com.android.settingslib.salt.SaltConfigFrame.collapsePanel;

import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;

import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;

import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoDeviceInfoStatusbar;
import static com.android.settingslib.salt.utils.LeoManages.setLeoDeviceInfoStatusbarFont;
import static com.android.settingslib.salt.utils.LeoManages.setLeoDeviceInfoStatusbarSize;
import static com.android.settingslib.salt.utils.LeoManages.setLeoDeviceInfoStatusbarStyle;

import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarColorEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarDeviceInfoColor;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarEndActionCollapsePanels;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarEndActionColor;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarEndActionEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarEndActionStyle;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarStartActionCollapsePanels;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarStartActionColor;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarStartActionEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoQsSaltBarStartActionStyle;


public class SaltBar extends BarItemImpl {

    private static final String TAG = "SaltBar";
    private Context mContext ;
    private SaltDeviceInfo mSaltDeviceInfo;

    private ImageView mSaltEndAction;
    private ImageView mSaltStartAction;
    public SaltBar(Context context) {
        super(context);
        mContext = context;

       // /mLeoReceiver = new LeoReceiver(this);
       // IntentFilter intentFilter = new IntentFilter();
       // intentFilter.addAction(rt100foleo("U0FMVF9VUERBVEVfUVNCQVJfU0FMVF9TRVRUSU5HUw=="));
      //  mContext.registerReceiver(mLeoReceiver, intentFilter);

    }

    @Override
    public void refreshQsBar() {
        setSaltBarWithTag();
    }


    @Override
    public void destroy() {
      //  mContext.unregisterReceiver(this.mLeoReceiver);
    }

    public View inflateViews(ViewGroup viewGroup, boolean z) {
        mBarRootView = (ViewGroup) LayoutInflater.from(mContext).inflate(getLeoUIResource("layout/qspanel_salt_bar_layout"), viewGroup, false);
        mBarRootView.findViewWithTag("salt_qsbar");
        mSaltDeviceInfo=(SaltDeviceInfo)mBarRootView.findViewWithTag("salt_qsbar_title");
        mSaltEndAction=(ImageView) mBarRootView.findViewWithTag("salt_qsbar_end_icon");
        mSaltStartAction=(ImageView) mBarRootView.findViewWithTag("salt_qsbar_start_icon");

        setSaltBarWithTag();
        return mBarRootView;
    }
    public void setSaltBarWithTag(){
        LeoSysUiManages(mContext);
        setSaltDeviceInfoWithTag();
        updateVisibility();
    }
    public void setLeoClickAction(int dtyle,String str) {
        Context context=   mContext;
        if( dtyle==0){
            dtyle=211;
        }else if( dtyle==1){
            dtyle=235;
        }else if( dtyle==2){
            dtyle=231;
        }else if( dtyle==3){
            dtyle=200;//返回
        }else if( dtyle==4){
            dtyle=201;//home
        }else if( dtyle==5){
            dtyle=202;//锁
        }else if( dtyle==6){
            dtyle=203;//任务
        }else if( dtyle==7){
            dtyle=204;//分屏
        }else if( dtyle==8){
            dtyle=88;
        }
        setLeoAction(context,str,dtyle);

    }
      public void setSaltDeviceInfoWithTag(){
          int mAction=setLeoQsSaltBarEndActionStyle;
          ImageView imageView=mSaltEndAction;
          imageView.setVisibility(setLeoQsSaltBarEndActionEnabled?View.VISIBLE:View.GONE);
          float sieze=0.6f;
          imageView.setScaleX(sieze);
          imageView.setScaleY(sieze);
          imageView.setImageDrawable(LeoQSDrawable(mAction));
          imageView.setOnClickListener(v -> {
              setLeoClickAction(mAction,null);
              collapsePanel(mContext,setLeoQsSaltBarEndActionCollapsePanels);
          });
          imageView.setClickable(true);
          mSaltDeviceInfo.updateQsBarDeviceInfo();
          mSaltDeviceInfo.refreshQsBarDeviceInfo(setLeoDeviceInfoStatusbar,setLeoDeviceInfoStatusbarStyle,setLeoDeviceInfoStatusbarSize,setLeoDeviceInfoStatusbarFont);
          ImageView view=mSaltStartAction;
          int mAction2=setLeoQsSaltBarStartActionStyle;
          view.setScaleX(sieze);
          view.setScaleY(sieze);
          view.setImageDrawable(LeoQSDrawable(mAction2));
          view.setOnClickListener(v -> {
              setLeoClickAction(mAction2,null);
              collapsePanel(mContext,setLeoQsSaltBarStartActionCollapsePanels);
          });

          view.setClickable(true);
          view.setVisibility(setLeoQsSaltBarStartActionEnabled?View.VISIBLE:View.GONE);
          if (mBarRootView != null) {


              int color=mContext.getColor(getLeoUIResource("color/qs_tile_text"));
              int textcolor;
              int endcolor;
              int Startcolor;
              if(setLeoQsSaltBarColorEnabled){
                  textcolor=setLeoQsSaltBarDeviceInfoColor;
                  endcolor=setLeoQsSaltBarEndActionColor;
                  Startcolor=setLeoQsSaltBarStartActionColor;
              }else {
                  textcolor=color;
                  endcolor=color;
                  Startcolor=color;

              }
              mSaltDeviceInfo.setTextColor(textcolor);
              mSaltEndAction. setColorFilter(endcolor, PorterDuff.Mode.SRC_IN);
              mSaltStartAction. setColorFilter(Startcolor, PorterDuff.Mode.SRC_IN);
              Drawable bg=mContext.getDrawable(getLeoUIResource("drawable/ripple_drawable_20dp"));

              mSaltEndAction.setForeground(bg);
              mSaltStartAction.setForeground(bg);
          }
    }
    @Override
    public boolean isAvailable() {
        boolean z=false;
        if (getBarVisibility()) {
            if(SecurityFramework()){
                z=true;
            }else {
                z=false;
            }
            return z;
        }
        return z;
    }

    @Override
    public void onPanelColorChanged(PanelColorModel panelColorModel) {
        LeoSysUiManages(mContext);
        if (mBarRootView != null) {
            int color=panelColorModel.HeaderSettingsTint;
            int textcolor;
            int endcolor;
            int Startcolor;
            if(setLeoQsSaltBarColorEnabled){
                textcolor=setLeoQsSaltBarDeviceInfoColor;
                endcolor=setLeoQsSaltBarEndActionColor;
                Startcolor=setLeoQsSaltBarStartActionColor;
            }else {
                textcolor=color;
                endcolor=color;
                Startcolor=color;

            }
            mSaltDeviceInfo.setTextColor(textcolor);
            mSaltEndAction. setColorFilter(endcolor, PorterDuff.Mode.SRC_IN);
            mSaltStartAction. setColorFilter(Startcolor, PorterDuff.Mode.SRC_IN);
        }
    }


    private boolean getBarVisibility() {
        if (setLeoQsSaltBarEnabled) {
            return true;
        }
        return false;
    }

    private void updateVisibility() {
        ViewGroup viewGroup = mBarRootView;
        if (viewGroup != null) {
            viewGroup.setVisibility(getBarVisibility() ? 0 : 8);
        }
        Callback callback = this.mCallback;
        if (callback != null) {
            callback.onBarHeightChanged();
        }
    }


    @Override
    public int getBarHeight() {

        return getBarVisibility()?(int) Math.ceil((double) mContext.getResources().getDimension(getLeoUIResource("dimen/salt_qsbar_height"))):0 ;  //向上获取高度 并且四舍五入整数
    }

    @Override
    public View inflateViews(ViewGroup viewGroup) {
        mBarRootView = (ViewGroup) LayoutInflater.from(mContext).inflate(getLeoUIResource("layout/qspanel_salt_bar_layout"), viewGroup, false);
        mBarRootView.findViewWithTag("salt_qsbar");
        mSaltDeviceInfo=(SaltDeviceInfo)mBarRootView.findViewWithTag("salt_qsbar_title");
        mSaltEndAction=(ImageView) mBarRootView.findViewWithTag("salt_qsbar_end_icon");
        mSaltStartAction=(ImageView) mBarRootView.findViewWithTag("salt_qsbar_start_icon");
        setSaltBarWithTag();
        return mBarRootView;
    }





}