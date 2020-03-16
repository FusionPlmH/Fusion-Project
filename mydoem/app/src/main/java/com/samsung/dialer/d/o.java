package com.samsung.dialer.d;


import android.content.Context;
import android.widget.TextView;

import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrCallCityFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrCityColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDialingCityColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDialingCityData;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDialingCityFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDialingCityLocate;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDialingCitySize;
import static com.os.leo.utils.LeoUtils.getLeoCityData;


public class o {
        protected final Context a;

        public o(Context a) {
                this.a = a;
        }
        public static boolean mDialingLocation;
        public static  String  setLeoDialingLocation(Context context,String str){
                LeoSettings(context);

                int style=setLeoUesrDialingCityData;
                if(style==0) {
                        str =com.samsung.dialer.d.c.a(context, str);
                } else if (style == 1) {
                        str=getLeoCityData(context, str);
                }

                return str;
        }

        public void setLeoDialingLocation(TextView textView){
                LeoSettings(a);

                textView.setTextSize(setLeoUesrDialingCitySize);
                textView.setTypeface(setLeoRomFonts(0,setLeoUesrDialingCityFont));
                int color=setLeoUesrCityColorEnabled;
                int dcolor=setLeoUesrDialingCityColor;
                if(color==0){
                  dcolor=  a.getColor(  a.getResources().getIdentifier("calllog_time_text_color", "color", a.getPackageName()));
                }
                textView.setTextColor(dcolor);
        }
}



