package com.android.systemui.qs;

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

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageGravity;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageSize;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageViewVisible;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSLabelRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSLabelTextColor;


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
		LeoSettings(getContext());
		boolean UsageView = setLeoUesrDataUsageViewVisible;
		if (UsageView) {
			setVisibility(VISIBLE);
		} else {
			setVisibility(GONE);
		}
		int DataUsageGravity=setLeoUesrDataUsageGravity;
		if ( DataUsageGravity == 0) {
			setGravity(8388613);
		} else if (DataUsageGravity == 1) {
			setGravity(1);
		} else if ( DataUsageGravity == 2) {
			setGravity(8388611);
		}
		int mDefaultDataUsagecolor=getContext().getColor(getLeoResource("color/data_usage_text_color"));
		int DataUsagecolor=mDefaultDataUsagecolor;
		if (setLeoUesrDataUsageColorEnabled==1) {
			int colorstyle=setLeoUesrDataUsageRandomColor;
			int colorrandom=getLeoRandomColor(getContext());
			if(colorstyle==0){
				DataUsagecolor=setLeoUesrDataUsageColor;
			}else if(colorstyle==1){
				DataUsagecolor=colorrandom;
			}

		}else if(setLeoUesrDataUsageColorEnabled==0) {
			DataUsagecolor=mDefaultDataUsagecolor;
		}
	    setTextColor(DataUsagecolor);
		int DataUsagesize=setLeoUesrDataUsageSize;
		setTextSize(DataUsagesize);
		setTypeface(setLeoRomFonts(0,setLeoUesrDataUsageFont));
	}

	public void onWindowFocusChanged(boolean mBoolean) {
		setDataUsageView();
	}

}
