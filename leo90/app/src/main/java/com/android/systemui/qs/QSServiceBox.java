package com.android.systemui.qs;

import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.PorterDuff.Mode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.support.annotation.VisibleForTesting;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupMenu;
import android.widget.PopupMenu.OnMenuItemClickListener;
import android.widget.TextView;
import com.android.internal.view.menu.MenuItemImpl;
import com.android.leo.R;
import com.android.systemui.Dependency;
import com.android.systemui.FontSizeUtils;

import com.android.systemui.Rune;
import com.android.systemui.SysUiServiceProvider;
import com.android.systemui.coloring.QSColoringServiceManager;
import com.android.systemui.coloring.QSColoringServiceObject;

import static com.fusionleo.LeoX.systemui.LeoConfig.collapsePanel;
import static com.fusionleo.LeoX.systemui.LeoConfig.getCustomDrawable;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoAction;
import static com.fusionleo.LeoProvider.LeoManages.*;



public class QSServiceBox extends FrameLayout implements OnClickListener, QSColoringServiceObject{

    private LinearLayout mBadgeBackground;
    private TextView mBadgeText;
    private MenuItem mContactUsMenu;
    private ImageButton mSettingsButton;
    private ImageButton mSearchButton;
    private ImageView mLeoButton;
    protected View mLeoButtonContainer;
    protected View mSettingsContainer;
    protected View mSearchButtonContainer;
    public QSServiceBox(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    private void dismissScreenGridDialog() {

    }

    static /* synthetic */ void lambda$onClick$1() {
    }

    private void launchNotiSettings() {
        //this.mActivityStarter.startActivity(new Intent("com.samsung.settings.STATUS_BAR_SETTINGS"), true);
    }

    private void showScreenGridDialog() {
       // this.mQSScreenGrid = new QSScreenGrid(this.mContext, R.style.Theme_SystemUI_Dialog);
       // this.mQSScreenGrid.show();
    }

    private void startSearchActivity() {

    }

    private void startSettingsActivity() {
        //this.mActivityStarter.startActivity(new Intent("android.settings.SETTINGS"), true);
    }

    private void updateCustomTileBadgeState(String str, int i) {

    }
    private void setLeoStartAction(int i) {
        if (i == 0) {
            startSearchActivity();
        }else  if (i == 1){
            startSettingsActivity();
        }else  if (i == 2){
            launchNotiSettings();
        }else  if (i == 3){
            setLeoAction(mContext,null,205);
        }

    }


    public void onClick(View view) {
        LeoSysUiManages(mContext);
        if (view == mSearchButton) {
            setLeoStartAction(setLeoQsSearchActionStyle);
        } else if (view != mSettingsButton) {
            setLeoStartAction(setLeoQsSettingActionStyle);
        }else if (view == mLeoButton) {
            setLeoClickAction(setLeoQsLeoButtonActionStyle);
        }
    }
    public void setLeoClickAction(int dtyle) {
     Context context=   mContext;

        if( dtyle==0){
            dtyle=211;
        }else if( dtyle==1){
            dtyle=235;
        }else if( dtyle==2){
            dtyle=231;
        }
        Log.i("QSServiceBox", "StartLeoButtonAction");
        setLeoAction(context,null,dtyle);
        collapsePanel(context,setLeoQLeoButtonActionCollapsePanels);
    }

    public int getCurrentBixbySettings() {
        return 0;
    }

    protected void hideQSPopupMenu() {

        dismissScreenGridDialog();
    }
    public void upLeoButton() {
        Context context=   mContext;
        LeoSysUiManages(context);
        mLeoButtonContainer= findViewWithTag("leo_button_container");
        mLeoButton = (ImageView)findViewWithTag("leo_button");
        mLeoButton.setOnClickListener(this);
        Drawable drawable;
        int  style=setLeoQsLeoButtonActionStyle;
        if(style==0){
            drawable=getCustomDrawable(context,"ic_leo");
        }else  {
            drawable=getCustomDrawable(context,"ic_qs_clear");
        }
        float sieze=0.6f;
        mLeoButton.setScaleX(sieze);
        mLeoButton.setScaleY(sieze);
        mLeoButton.setImageDrawable(drawable);
        boolean Settings=setLeoQSSettingButtonActionEnabled;
        boolean Search=setLeoQSSearchButtonActionEnabled;
        boolean leo=setLeoQLeoButtonActionEnabled;
        mLeoButton.setVisibility(leo?VISIBLE:GONE);
        mLeoButtonContainer.setVisibility(leo?VISIBLE:GONE);
        mSettingsContainer.setVisibility(Settings?VISIBLE:GONE);
        mSearchButtonContainer.setVisibility(Search?VISIBLE:GONE);
        mSettingsButton.setVisibility(Settings?VISIBLE:GONE);
        mSearchButton.setVisibility(Search?VISIBLE:GONE);
    }
    public void updateQSColoringResources(View view) {
        if (((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).isQSColoringEnabled()) {
            int qSColoringColor = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(41);
            int qSColoringColor2 = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(42);
            int qSColoringColor3 = ((QSColoringServiceManager) Dependency.get(QSColoringServiceManager.class)).getQSColoringColor(1);

            if (this.mSearchButton != null) {
                this.mSearchButton.setColorFilter(qSColoringColor);
            }
            if (this.mLeoButton != null) {
                this.mLeoButton.setColorFilter(qSColoringColor);
            }

        }
    }
    public boolean isAppInstalled(Context context, String str) {
        if (str == null) {
            return false;
        }
        try {
            context.getPackageManager().getPackageInfo(str, 1);
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Installed - ");
            stringBuilder.append(str);
            Log.i("QSServiceBox", stringBuilder.toString());
            return true;
        } catch (NameNotFoundException e) {
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("NOT Installed - ");
            stringBuilder2.append(str);
            Log.w("QSServiceBox", stringBuilder2.toString());
            return false;
        }
    }

    public boolean isSfinderEnabled() {
        return false;
    }

    public boolean isSupportContactUs(Context context) {
        return false;
    }

    public boolean launchContactUsApp(Context context) {

        return false;
    }

    public void onAttachedToWindow() {
        super.onAttachedToWindow();


    }
    public Context mContext;


    public void onWindowFocusChanged(boolean mBoolean) {

        upLeoButton();
    }



    public void onColorChanged(Configuration configuration) {
        mLeoButton.setForeground(this.mContext.getDrawable(getLeoUIResource("drawable/qs_ripple_drawable")));
        mLeoButton.setColorFilter(this.mContext.getColor(getLeoUIResource("color/status_bar_header_setting_tint_color")));

    }

    protected void onConfigurationChanged(Configuration configuration) {

    }

    public void onCustomTileListChanged(String str, int i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("onCustomTileListChanged(");
        stringBuilder.append(i);
        stringBuilder.append(")");
        Log.d("QSServiceBox", stringBuilder.toString());
        updateCustomTileBadgeState(str, i);
    }

    @VisibleForTesting
    public void onDetachedFromWindow() {

        super.onDetachedFromWindow();
    }

    protected void onDetachedFromWindowInternal() {

    }


    protected void onFinishInflate() {
        upLeoButton();
        super.onFinishInflate();
    }

    public void onNotificationSumChanged(int i) {

    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        return  true;
    }

    public void onUserInfoChanged(String str, Drawable drawable, String str2) {

    }

    public void setExpanded(boolean z) {

    }






}
