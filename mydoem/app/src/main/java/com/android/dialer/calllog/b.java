package com.android.dialer.calllog;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.graphics.Color;
import android.provider.Settings;
import android.telephony.PhoneNumberUtils;
import android.text.SpannableString;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CursorAdapter;
import android.widget.TextView;

import com.os.leo.utils.CityLocator;
import com.os.leo.utils.FontsUtils;
import com.os.leo.utils.LeoUserSettings;


import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUtils.getLeoCityData;


public class b extends CursorAdapter {

    public b(Context context, Cursor c) {
        super(context, c);
    }

    @Override
    public View newView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return null;
    }

    @Override
    public void bindView(View view, Context context, Cursor cursor) {

    }

    private void setLeoRomCallLog(View view, Context context, String str) {
        LeoSettings(context);
            TextView textView = (TextView) view.findViewWithTag("call_log_position");
            boolean CallLogPosition = setLeoUesrCallCityEnabled;
        if (CallLogPosition) {
            textView.setVisibility(textView.VISIBLE);
        } else {
            textView.setVisibility(textView.GONE);
        }
        int PositiondataStyle=setLeoUesrCallCityData;
        if ( PositiondataStyle == 0) {
            textView.setText(getLeoCityData(context, str));
        } else if ( PositiondataStyle == 1) {
            textView.setText(com.samsung.dialer.d.c.a(context, str));
        }

        int Logcolor=setLeoUesrCallCityColor;
        int color=setLeoUesrCityColorEnabled;
        if(color==0){
            Logcolor=  context.getColor( context.getResources().getIdentifier("calllog_time_text_color", "color", context.getPackageName()));

        }
        textView.setTextColor(Logcolor);
        int CllLogCityPositionSize =setLeoUesrCallCitySize;
        textView.setTextSize(CllLogCityPositionSize);
        textView.setTypeface(setLeoRomFonts(0,setLeoUesrCallCityFont));



    }

}