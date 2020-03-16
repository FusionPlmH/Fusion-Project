package com.samsung.android.messaging.ui.view.widget;


import android.content.Context;
import android.support.annotation.NonNull;
import android.support.v7.widget.RecyclerView;
import android.view.View;
import android.widget.TextView;

import static com.samsung.LeoAmber.LeoCityLocationSetting.LeoGlobalSetting;
import static com.samsung.LeoAmber.LeoCityLocationSetting.setLeoMessagingCityLocation;
import static com.samsung.LeoAmber.LeoCityLocationSetting.setLeoMessagingCityLocationFont;
import static com.samsung.LeoAmber.LeoCityLocationSetting.setLeoMessagingCityLocationSize;
import static com.samsung.LeoAmber.LeoGlobalUtils.isLunarSetting;
import static com.samsung.LeoAmber.LeoGlobalUtils.setLeoRomFonts;
import static com.samsung.LeoAmber.LocatorService.getPhoneLocation;

public class l extends RecyclerView.ViewHolder {
        protected Context b;
        protected TextView mLeoMessagingCityLocation;
        protected boolean mMessagingCityLocationDisplay;
        protected int mMessagingCityLocationSize;
        protected int mMessagingCityLocationFont;


        public l(@NonNull View itemView) {
                super(itemView);
        }
        protected void getUpdateSettings(){
                if (isLunarSetting()==true) {
                        LeoGlobalSetting(b);
                        mMessagingCityLocationDisplay=setLeoMessagingCityLocation;
                        mMessagingCityLocationSize=setLeoMessagingCityLocationSize;
                        mMessagingCityLocationFont=setLeoMessagingCityLocationFont;
                }


        }

        protected void a(){
                View findViewWithTag = itemView.findViewWithTag("leoamber_city_location");
                if (findViewWithTag == null) {
                }
                mLeoMessagingCityLocation= (TextView) findViewWithTag;
        }
}



