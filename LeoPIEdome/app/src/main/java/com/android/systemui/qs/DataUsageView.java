package com.android.systemui.qs;

import android.app.UiModeManager;
import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.Typeface;
import android.net.Uri;
import android.os.Handler;
import android.provider.Settings;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.TextView;

import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.LeoStatusSettings;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setNotificationPanelDataUsageEnabled;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setNotificationPanelDataUsageOrientation;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setNotificationPanelDataUsageTextFont;

import static com.android.fusionleo.statusbar.LeoStatusbarSettings.setNotificationPanelDataUsageTextSize;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.getLeoRandomColor;
import static com.android.fusionleo.statusbar.LeoStatusbarUtils.mNotificationPanelDataUsageColor;



public class DataUsageView
		extends TextView
{
	private Handler mHandler = null;
	private Context mContext;
	public DataUsageView(Context paramContext)
	{
		super(paramContext);
		initView();
	}

	public DataUsageView(Context paramContext, AttributeSet paramAttributeSet)
	{
		super(paramContext, paramAttributeSet);
		initView();
	}

	public DataUsageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
	{
		super(paramContext, paramAttributeSet, paramInt);
		initView();
	}

	public DataUsageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt1, int paramInt2)
	{
		super(paramContext, paramAttributeSet, paramInt1, paramInt2);
		initView();

	}
	private void initView()
	{
		setText(this.mContext.getString(2131691185) + " : 0 B");
		this.mHandler = new Handler();

		setDataUsageView();
	}


	public void setDataUsageView(){
		LeoStatusSettings(mContext);
		int style;
		int DataUsagePosition=setNotificationPanelDataUsageOrientation;
		switch (DataUsagePosition) {
			case 1:
				style=8388611;
				break;
			case 2:
				style= 17;
				break;
			default:
				style= 8388613;
				break;
		}
		int DataUsagesize=setNotificationPanelDataUsageTextSize;
		int  UesrDataUsageFont=setNotificationPanelDataUsageTextFont;
		setTextSize(DataUsagesize);
		setTypeface(setLeoRomFonts(0,UesrDataUsageFont));
		setGravity((style | 16) | 1);
		setVisibility(setNotificationPanelDataUsageEnabled ? GONE : VISIBLE);
	}

	public void onWindowFocusChanged(boolean mBoolean) {
		setDataUsageView();
	}

}
