package com.android.systemui.statusbar.salt;



import android.appwidget.AppWidgetHost;
import android.appwidget.AppWidgetHostView;
import android.appwidget.AppWidgetManager;
import android.appwidget.AppWidgetProviderInfo;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;


import com.android.settingslib.salt.utils.LeoReceiver;

import static com.android.settingslib.salt.SaltConfigCenter.WidgetData;
import static com.android.settingslib.salt.SaltConfigCenter.WidgetDataName;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoInt;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.utils.LeoManages.KeyguardWeather;


public class SaltKeyguardWeather  extends LinearLayout implements LeoReceiver.BroadcastListener{
    private int i;
    /* access modifiers changed from: private */
    private AppWidgetHost mAppWidgetHost;
    /* access modifiers changed from: private */
    private AppWidgetManager mAppWidgetManager;
    private ComponentName mComponent;
    private Context mContext;

    private String mWidgetClass;
    private   int mWidgetId;

    private String mWidgetPackage;
    private View mWidgetView;





    public SaltKeyguardWeather(Context context) {
        super(context);
    }

    public SaltKeyguardWeather(Context context,  AttributeSet attrs) {
        super(context, attrs);

        this.i = 0;
        this.mContext = context;
        BroadcastReceiver actionBroadcastReceiver = new LeoReceiver(this);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(rt100foleo("U0FMVF9VUERBVEVfTE9DS1dFQVRIRVJfU0VUVElOR1M="));
        mContext.registerReceiver(actionBroadcastReceiver, intentFilter);

        final Handler h = new Handler();
        h.post(new Runnable() {
            public void run() {
                if (i == 0) {
                  i = 1;
                    h.postDelayed(this, 60000);
                    return;
                }
                try {
                    Class<?> RemoteViews_OnClickHandler = Class.forName("android.widget.RemoteViews$OnClickHandler", false, ClassLoader.getSystemClassLoader());
                 mAppWidgetHost = (AppWidgetHost) AppWidgetHost.class.getConstructor(new Class[]{Context.class, Integer.TYPE, RemoteViews_OnClickHandler, Looper.class}).newInstance(new Object[]{mContext, Integer.valueOf(1262835849), null, Looper.myLooper()});
                    for (int deleteAppWidgetId : (int[]) AppWidgetHost.class.getDeclaredMethod("getAppWidgetIds", new Class[0]).invoke(mAppWidgetHost, new Object[0])) {
                    mAppWidgetHost.deleteAppWidgetId(deleteAppWidgetId);
                    }
                  mAppWidgetManager = AppWidgetManager.getInstance(mContext);
                  i = 2;
                startView();
                } catch (Exception e) {
                }
            }
        });
    }

    private AppWidgetHostView GetWidget() {
        int style=getLeoInt(mContext,
                KeyguardWeather[1], 0);
       mWidgetPackage = WidgetData( style);
      mWidgetClass =WidgetDataName( style);
        if (getLeoInt(mContext, KeyguardWeather[0], 0) != 1 || TextUtils.isEmpty(this.mWidgetPackage) || TextUtils.isEmpty(this.mWidgetClass)) {
            return null;
        }
        this.mWidgetId = this.mAppWidgetHost.allocateAppWidgetId();
        this.mComponent = new ComponentName(this.mWidgetPackage, this.mWidgetClass);
        Bundle bundle = new Bundle();
        bundle.putInt("appWidgetCategory", 2);
        try {
            AppWidgetManager.class.getDeclaredMethod("bindAppWidgetId", new Class[]{Integer.TYPE, ComponentName.class, Bundle.class}).invoke(this.mAppWidgetManager, new Object[]{Integer.valueOf(this.mWidgetId), this.mComponent, bundle});
            AppWidgetProviderInfo appWidgetProviderInfo = this.mAppWidgetManager.getAppWidgetInfo(this.mWidgetId);
            if (appWidgetProviderInfo == null) {
                return null;
            }
            AppWidgetHostView appWidgetHostView = this.mAppWidgetHost.createView(this.mContext, this.mWidgetId, appWidgetProviderInfo);
            appWidgetHostView.setAppWidget(this.mWidgetId, appWidgetProviderInfo);
            appWidgetHostView.setMinimumHeight(appWidgetProviderInfo.minHeight);
            appWidgetHostView.setMinimumWidth(appWidgetProviderInfo.minWidth);
            appWidgetHostView.setLayoutParams(new LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT,getLeoInt(mContext, KeyguardWeather[3], 350)));
            return appWidgetHostView;
        } catch (Exception e) {
            return null;
        }
    }

    private void initUI() {
        removeAllViews();
        mWidgetView = GetWidget();
        if (this.mWidgetView != null) {
            setPadding(0, getLeoInt(mContext, KeyguardWeather[2], 5) * 10, 0, 0);
            setGravity(17);
            addView(this.mWidgetView);
            setVisibility(0);
        }
    }




    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.i == 2) {
            startView();
        }
    }


    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.mAppWidgetHost != null) {
            this.mAppWidgetHost.stopListening();
            this.mAppWidgetHost.deleteAppWidgetId(this.mWidgetId);
        }
    }

    public void setVisibility(int visiblity) {
        super.setVisibility(visiblity);
        if (visiblity == 0 && this.mWidgetView != null && (this.mWidgetView instanceof AppWidgetHostView)) {
            Bundle bundle = new Bundle();
            bundle.putInt("appWidgetCategory", 2);
            ((AppWidgetHostView) this.mWidgetView).updateAppWidgetOptions(bundle);
        }
    }



    protected void startView() {
        if (this.i == 2) {
            if (this.mAppWidgetHost != null) {
                this.mAppWidgetHost.stopListening();
                this.mAppWidgetHost.deleteAppWidgetId(this.mWidgetId);
            }
            initUI();
            if (this.mAppWidgetHost != null) {
                this.mAppWidgetHost.startListening();
            }
        }
    }

    @Override
    public void onLeoChange(Intent intent) {
        String action = intent.getAction();
        if (action.equals(rt100foleo("U0FMVF9VUERBVEVfTE9DS1dFQVRIRVJfU0VUVElOR1M="))) {
            startView();
        }
    }
}



