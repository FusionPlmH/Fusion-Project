package com.android.systemui.fusionleo;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Typeface;
import android.icu.util.Calendar;
import android.os.Handler;
import android.util.AttributeSet;
import android.widget.TextView;

import com.android.systemui.widget.SystemUITextView;
import com.fusionleo.LeoProvider.LeoObserver;
import com.fusionleo.LeoX.systemui.LeoLunar;

import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.*;
import static com.fusionleo.LeoX.systemui.LeoConfig.getLeoUri;
import static com.fusionleo.LeoX.systemui.LeoConfig.ioChinese;
import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoFonts;

public class LeoKeyguardLunar extends SystemUITextView implements LeoObserver.ObListener{
    public Context mContext;
	public LeoKeyguardLunar(Context context) {
		super(context);
	}

	public LeoKeyguardLunar(Context context, AttributeSet attributeSet) {
		super(context, attributeSet);
		mContext=context;
		initView();

	}
	@Override
	public void onLeoChange(String str) {
		for (String equals :mLeoKeyguardLunar) {
			if (equals.equals(str)) {
				updateKeyguardLunar();
				return;
			}
		}
	}
	private void initView(){
		updateKeyguardLunar();
		LeoObserver Resolver  = new LeoObserver(new Handler(),this);
		ContentResolver contentResolver = mContext.getContentResolver();
		for (String uriFor :mLeoKeyguardLunar) {
			contentResolver.registerContentObserver(getLeoUri(uriFor), false, Resolver);
		}
	}
	private  String leolunar;
	private void updateKeyguardLunar(){
		LeoSysUiManages(mContext);
		if(ioChinese()){
			setVisibility(setLeoKeyguardLunar?VISIBLE : GONE);
		}else {
			setVisibility(GONE);
		}
		leolunar=new LeoLunar(Calendar.getInstance(),mContext).toLeoLunarChineseLunar(setLeoKeyguardLunarFestivalSymbolEnabled,setLeoKeyguardLunarZodiacSymbolEnabled,setLeoKeyguardLunarMonthStyle,setLeoKeyguardLunarStyle);
		setText(leolunar);
		setTextSize(setLeoKeyguardLunarSize);
		setTypeface(setLeoFonts(mContext,setLeoKeyguardLunarFont,"sec-roboto-condensed", Typeface.NORMAL));
		if(setLeoKeyguardLunarColorEnabled){
			setLeoCustomColor(setLeoKeyguardLunarColor);
		}else {
			setLeoRemoveCustomColor();
		}
	}

}
