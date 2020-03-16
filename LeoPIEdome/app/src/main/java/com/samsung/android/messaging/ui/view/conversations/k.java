package com.samsung.android.messaging.ui.view.conversations;


import android.content.Context;
import android.support.annotation.NonNull;
import android.view.View;
import android.widget.TextView;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.samsung.LeoAmber.LeoCityLocationSetting.setLeoMessagingCityLocation;
import static com.samsung.LeoAmber.LeoGlobalUtils.isLunarSetting;
import static com.samsung.LeoAmber.LeoGlobalUtils.setLeoRomFonts;
import static com.samsung.LeoAmber.LocatorService.getPhoneLocation;


public class k extends com.samsung.android.messaging.ui.view.widget.l{
        public k(@NonNull View itemView) {
                super(itemView);
        }

        public void setMesseageLocation() {
                if (isLunarSetting()==true) {
                        getUpdateSettings();
                        CharSequence charSequence;
                        String[] z = b();
                        if (z != null && z.length > 0) {
                                charSequence = z[0];
                                mLeoMessagingCityLocation.setText(getPhoneLocation(b, charSequence,true));
                        }
                        TextView textView = this.mLeoMessagingCityLocation;
                        textView.setVisibility(mMessagingCityLocationDisplay ? GONE : VISIBLE);
                        textView.setTextSize(mMessagingCityLocationSize);
                        textView.setTypeface(setLeoRomFonts(0,mMessagingCityLocationFont));
                }

        }

        public String[] b() {
                return null;
        }


}



