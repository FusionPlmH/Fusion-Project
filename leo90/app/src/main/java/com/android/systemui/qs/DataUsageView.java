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

import static com.fusionleo.LeoX.systemui.LeoConfig.setLeoFonts;
import static com.fusionleo.LeoProvider.LeoManages.LeoSysUiManages;
import static com.fusionleo.LeoProvider.LeoManages.setLeoQSDataUsageFont;
import static com.fusionleo.LeoProvider.LeoManages.setLeoQSDataUsageOrientation;
import static com.fusionleo.LeoProvider.LeoManages.setLeoQSDataUsageSize;
import static com.fusionleo.LeoProvider.LeoManages.setLeoQsDataUsageBarEnabled;


public class   DataUsageView
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

	}

    public void onWindowFocusChanged(boolean mBoolean) {
        setDataUsageView();
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
        setTypeface(setLeoFonts(mContext,UesrDataUsageFont,"sec-roboto-condensed", Typeface.NORMAL));;
      setGravity((style | 16) | 1);
      setVisibility(setLeoQsDataUsageBarEnabled?VISIBLE:GONE);

    }
}
