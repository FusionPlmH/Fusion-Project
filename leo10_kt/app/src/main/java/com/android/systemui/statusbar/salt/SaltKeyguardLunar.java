package com.android.systemui.statusbar.salt;

import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Typeface;
import android.icu.util.Calendar;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.TextView;

import com.android.settingslib.salt.LeoLunar;

import com.android.settingslib.salt.utils.LeoReceiver;
import com.android.systemui.statusbar.policy.QSClockBellTower;
import com.android.systemui.widget.SystemUITextView;

import static com.android.settingslib.salt.SaltConfigCenter.setLeoTextFont;
import static com.android.settingslib.salt.SaltConfigFrame.SaltSettings.getLeoUri;
import static com.android.settingslib.salt.SaltConfigFrame.isChineseLanguage;
import static com.android.settingslib.salt.SaltConfigFrame.rt100foleo;
import static com.android.settingslib.salt.utils.LeoManages.*;


public class SaltKeyguardLunar extends SystemUITextView{
    public Context mContext;

	public SaltKeyguardLunar(Context context) {
		super(context);
	}

	public SaltKeyguardLunar(Context context, AttributeSet attributeSet) {
		super(context, attributeSet);
		mContext=context;

	}

	@Override
	protected void onAttachedToWindow() {
		super.onAttachedToWindow();
		if (!mAttached) {
			mAttached = true;
			IntentFilter filter = new IntentFilter();
			filter.addAction(Intent.ACTION_TIME_TICK);
			filter.addAction(Intent.ACTION_TIME_CHANGED);
			filter.addAction(Intent.ACTION_TIMEZONE_CHANGED);
			filter.addAction(Intent.ACTION_LOCALE_CHANGED);
			filter.addAction(rt100foleo("U0FMVF9VUERBVEVfTE9DS0xVTkFSX1NFVFRJTkdT"));
			mContext.registerReceiver(mIntentReceiver, filter, null, getHandler());
		}
		updateKeyguardLunar();
	}
	private boolean mAttached;
	private final BroadcastReceiver mIntentReceiver = new BroadcastReceiver() {
		@Override
		public void onReceive(Context context, Intent intent) {
			String action = intent.getAction();
			if (action.equals("android.intent.action.TIME_TICK") || action.equals("android.intent.action.TIME_SET") || action.equals("android.intent.action.TIMEZONE_CHANGED") || action.equals("android.intent.action.LOCALE_CHANGED")|| action.equals(rt100foleo("U0FMVF9VUERBVEVfTE9DS0xVTkFSX1NFVFRJTkdT"))) {
				updateKeyguardLunar();
			}

		}
	};
	@Override
	protected void onDetachedFromWindow() {
		super.onDetachedFromWindow();
		if (mAttached) {
			mContext.unregisterReceiver(mIntentReceiver);
			mAttached = false;
		}
	}

	private  String leolunar;
	private void updateKeyguardLunar(){
		LeoSysUiManages(mContext);
		if(isChineseLanguage()){
			setVisibility(setLeoKeyguardLunar?VISIBLE : GONE);
		}else {
			setVisibility(GONE);
		}
		leolunar=new LeoLunar(Calendar.getInstance(),mContext).toLeoLunarChineseLunar(setLeoKeyguardLunarFestivalSymbolEnabled,setLeoKeyguardLunarZodiacSymbolEnabled,setLeoKeyguardLunarMonthStyle,setLeoKeyguardLunarStyle);
		setText(leolunar);
		setTextSize(setLeoKeyguardLunarSize);
		setTypeface(setLeoTextFont(mContext,setLeoKeyguardLunarFont,"roboto-regular", Typeface.NORMAL));
		if(setLeoKeyguardLunarColorEnabled){
			setLeoCustomColor(setLeoKeyguardLunarColor);
		}else {
			setLeoRemoveCustomColor();
		}
	}



}
