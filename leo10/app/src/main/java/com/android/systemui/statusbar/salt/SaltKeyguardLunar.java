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


public class SaltKeyguardLunar extends SystemUITextView implements LeoReceiver.BroadcastListener {
    public Context mContext;

	public SaltKeyguardLunar(Context context) {
		super(context);
	}

	public SaltKeyguardLunar(Context context, AttributeSet attributeSet) {
		super(context, attributeSet);
		mContext=context;
		updateKeyguardLunar();
		LeoReceiver actionBroadcastReceiver = new LeoReceiver(this);
		IntentFilter intentFilter = new IntentFilter();
		intentFilter.addAction(rt100foleo("U0FMVF9VUERBVEVfTE9DS0xVTkFSX1NFVFRJTkdT"));
		mContext.registerReceiver(actionBroadcastReceiver, intentFilter);

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
		setTypeface(setLeoTextFont(mContext,setLeoKeyguardLunarFont,"sec-roboto-condensed", Typeface.NORMAL));
		if(setLeoKeyguardLunarColorEnabled){
			setLeoCustomColor(setLeoKeyguardLunarColor);
		}else {
			setLeoRemoveCustomColor();
		}
	}


	@Override
	public void onLeoChange(Intent intent) {
		String action = intent.getAction();
		if (action.equals(rt100foleo("U0FMVF9VUERBVEVfTE9DS0xVTkFSX1NFVFRJTkdT"))) {
			updateKeyguardLunar();
		}
	}
}
