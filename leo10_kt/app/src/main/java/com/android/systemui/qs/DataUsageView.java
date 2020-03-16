package com.android.systemui.qs;

import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
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

import com.android.settingslib.salt.utils.LeoReceiver;

import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class   DataUsageView
		extends TextView implements LeoReceiver.BroadcastListener
{
	private Handler mHandler = null;
	private Context mContext;
	public DataUsageView(Context paramContext)
	{
		super(paramContext);
		initView();
	}
	public void updateCurrentDataSubId() {

	}
	public void updateUsageInfo() {

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
		onSaltChanged();

	}

    public void onSaltChanged() {
		setDataUsageView();
		BroadcastReceiver actionBroadcastReceiver = new LeoReceiver(this);
		IntentFilter intentFilter = new IntentFilter();
		intentFilter.addAction(rt100foleo("U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"));
		mContext.registerReceiver(actionBroadcastReceiver, intentFilter);
    }

	public void setDataUsageView(){
		LeoSysUiManages(mContext);

		int style;
		int DataUsagePosition=setLeoQSDataUsageOrientation;
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
		int DataUsagesize=setLeoQSDataUsageSize;
		int  UesrDataUsageFont=setLeoQSDataUsageFont;
		setTextSize(DataUsagesize);
		setTypeface(setLeoTextFont(mContext,UesrDataUsageFont,"sec-roboto-condensed", Typeface.NORMAL));;
		setGravity((style | 16) | 1);
		setVisibility(setLeoQsDataUsageBarEnabled?VISIBLE:GONE);

	}

	@Override
	public void onLeoChange(Intent intent) {
		String action = intent.getAction();
		if (action.equals(rt100foleo("U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"))) {
			setDataUsageView();
		}
	}
}
