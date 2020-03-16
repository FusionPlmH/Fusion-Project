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
import com.android.systemui.globalactions.presentation.view.SecGlobalActionsDialog;

import com.android.systemui.statusbar.policy.DeviceProvisionedController;
import com.android.systemui.util.DeviceState;

import static com.android.fusionleo.global.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockBigCustomEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockBigFont;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockBigSize;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderQSClockBigVisibility;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderSearchButtonClick;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderSearchButtonString;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderSearchButtonVisibility;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderSettingsButtonClick;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderSettingsButtonClickString;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setLeoUesrHeaderSettingsButtonVisibility;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoResource;


public class QSServiceBox extends FrameLayout implements OnClickListener, QSColoringServiceObject{

    private LinearLayout mBadgeBackground;
    private TextView mBadgeText;
    private MenuItem mContactUsMenu;
    private ImageButton mSettingsButton;
    private ImageButton mSearchButton;


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
    public void onClick(View view) {
        if (view == this.mSearchButton) {
            if (DeviceState.isSupportSFinder(this.mContext)) {
                setLeoStartSearchAction();
            }

        } else if (view == this.mSettingsButton) {
            if (((DeviceProvisionedController) Dependency.get(DeviceProvisionedController.class)).isCurrentUserSetup()) {
                setLeoStartSettingsAction();

            } else {

            }
        }
    }


    public int getCurrentBixbySettings() {
        return 0;
    }

    protected void hideQSPopupMenu() {

        dismissScreenGridDialog();
    }
    public void upLeoButton() {
        LeoStatusSettings(mContext);
        mSearchButton.setVisibility(setLeoUesrHeaderSearchButtonVisibility ? GONE : VISIBLE);
        mSettingsButton.setVisibility(setLeoUesrHeaderSettingsButtonVisibility ? GONE : VISIBLE);
    }
    private  void setLeoStartSearchAction(){
        LeoStatusSettings(mContext);
        int style=setLeoUesrHeaderSearchButtonClick;
        if(style<=0){
            startSearchActivity();
        }
        Log.i("QSServiceBox", "StartSearchAction");
        LeoGlobalActiong(getContext(),style,setLeoUesrHeaderSearchButtonString);
    }
    private  void setLeoStartSettingsAction(){
        LeoStatusSettings(mContext);
        int style=setLeoUesrHeaderSettingsButtonClick;
        if(style<=0){
            startSettingsActivity();
        }
        Log.i("QSServiceBox", "StartSettingsAction");
        LeoGlobalActiong(getContext(),style,setLeoUesrHeaderSettingsButtonClickString);
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

        upLeoBigClock();
    }
    public Context mContext;

    public void upLeoBigClock() {
        TextView textView = (TextView) findViewById(getLeoResource("id/big_clock"));
        TextView textView2 = (TextView) findViewById(getLeoResource("id/big_date"));
        int size=getLeoResource("dimen/status_bar_clock_big_size");
        int i2 = getLeoResource("dimen/qs_service_box_big_date_size");
        Resources resources = mContext.getResources();
        if (DeviceState.isMobileKeyboardConnected(this.mContext)) {
            size= getLeoResource("dimen/status_bar_clock_big_size_mobile_keyboard");
            i2 =getLeoResource("dimen/qs_service_box_big_date_size_mobile_keyboard");
        }

        if (textView2 != null) {
            textView2.setTextSize(0, (float) resources.getDimensionPixelSize(i2));
            FontSizeUtils.updateFontSize(textView2, i2, 0.8f, 1.2f);
        }
        LeoStatusSettings(mContext);
        int font;
        if(setLeoUesrHeaderQSClockBigCustomEnabled){
            textView.setTextSize(setLeoUesrHeaderQSClockBigSize);
            textView.setVisibility(setLeoUesrHeaderQSClockBigVisibility ? GONE : VISIBLE);
            font=setLeoUesrHeaderQSClockBigFont;
            textView.setTypeface(setLeoRomFonts(0,font));
        }else{
            if (textView != null) {
                textView.setTextSize(0, (float) resources.getDimensionPixelSize(size));
                FontSizeUtils.updateFontSize(textView,size, 0.8f, 1.2f);
            }
            textView.setTypeface(Typeface.create("sans-serif-light", Typeface.NORMAL));
        }

    }
    public void onWindowFocusChanged(boolean mBoolean) {
        upLeoBigClock();
        upLeoButton();
    }



    public void onColorChanged(Configuration configuration) {

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

    public void setQSPanel(QSPanel qSPanel) {

    }




}
