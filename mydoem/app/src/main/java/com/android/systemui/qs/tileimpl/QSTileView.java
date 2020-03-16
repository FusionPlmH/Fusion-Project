/*
 * Copyright (C) 2017 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file
 * except in compliance with the License. You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the
 * License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied. See the License for the specific language governing
 * permissions and limitations under the License.
 */

package com.android.systemui.qs.tileimpl;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Color;
import android.os.Handler;
import android.os.UserHandle;
import android.provider.Settings;
import android.service.quicksettings.Tile;
import android.text.SpannableStringBuilder;
import android.text.style.ForegroundColorSpan;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;


import java.util.Random;

import libcore.util.Objects;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoAndroidResource;
import static com.leo.utils.Constants.getLeoResource;
import static com.leo.utils.Constants.mLeoRom;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.getLeoDataUsageViewVisible;
import static com.os.leo.utils.LeoUserSettings.getLeoQSDivider;
import static com.os.leo.utils.LeoUserSettings.getLeoQSDividerColor;
import static com.os.leo.utils.LeoUserSettings.getLeoQSLabelRandomColor;
import static com.os.leo.utils.LeoUserSettings.getLeoQSLabelTextColor;
import static com.os.leo.utils.LeoUserSettings.getLeoQSLabelTextFont;
import static com.os.leo.utils.LeoUserSettings.getLeoQSbuttonColorEnabled;
import static com.os.leo.utils.LeoUserSettings.getLeoQSbuttonOFFColor;
import static com.os.leo.utils.LeoUserSettings.getLeoQSbuttonONColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageViewVisible;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderSettingButtonColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrHeaderSettingButtonRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSDivider;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSDividerColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSLabelRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSLabelTextColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSLabelTextFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrQSbuttonColor;
import static com.os.leo.utils.LeoUtils.getLeoUri;

/** View that represents a standard quick settings tile. **/
public class QSTileView extends TextView {

    protected View mDivider;
    protected TextView mLabel;
    private ImageView mPadLock;
    private int mState;
    private ViewGroup mLabelContainer;
    private View mExpandIndicator;
    private View mExpandSpace;
    private LeoObserver mLeoObserver;

    public QSTileView(Context context) {
        super(context);



        setClickable(true);
        setId(View.generateViewId());
        createLabel();

        setGravity(Gravity.CENTER);
        setLeoRomObserver();
    }

    TextView getLabel() {
        return mLabel;
    }

    @Override
    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
       // FontSizeUtils.updateFontSize(mLabel, R.dimen.qs_tile_text_size);
    }


    public int getDetailY() {
        return getTop() + mLabelContainer.getTop() + mLabelContainer.getHeight() / 2;
    }

    protected void createLabel() {
        onLabel();
    }
    protected void createDivider() {
        onDivider();
    }
    public void setLeoRomObserver() {
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();
        LeoSettings(getContext());

    }


    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri( getLeoQSLabelTextFont ()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoQSLabelTextColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoQSDividerColor() ), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoQSDivider()  ), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoQSbuttonColorEnabled()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoQSbuttonColorEnabled()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoQSbuttonONColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri(getLeoQSbuttonOFFColor()), false, this);
            contentResolver.registerContentObserver(getLeoUri( getLeoQSLabelRandomColor()), false, this);


        }

        @Override
        public void onChange(boolean selfChange) {
            LeoSettings(getContext());
            onLabel();
            onDivider();
        }


    }
    public void LeoLabel(){

        TextView T=mLabel;
        int on=Settings.System.getInt(getContext().getContentResolver(),"on", 0);
        if (on==0) {//判断ID
            T.setTextColor(Color.parseColor("#33252525"));
        } else if (on== 1) {
            int colorstyle=Settings.System.getInt(getContext().getContentResolver(),"random", 0);
            int colorrandom=getLeoRandomColor(getContext());
            if(colorstyle==0){
                T.setTextColor(Settings.System.getInt(getContext().getContentResolver(), "color", Color.parseColor("#33252525")));
            }else if(colorstyle==1){
                T.setTextColor(colorrandom);
            }
        }
    }
    public   int getLeoRandomColor(Context c) {
        int[] customizedColors = c.getResources().getIntArray(getLeoResource("array/leo_colors"));
        int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
        return customizedColor;
    }
    public void onLabel(){

        TextView T=mLabel;
        if (setLeoUesrQSbuttonColor==0) {//判断ID
            T.setTextColor(getContext().getColor(getLeoResource("color/qs_tile_label")));
        } else if (setLeoUesrQSbuttonColor== 1) {

            int colorstyle= setLeoUesrQSLabelRandomColor;
            int colorrandom=getLeoRandomColor(getContext());
            if(colorstyle==0){
                T.setTextColor(setLeoUesrQSLabelTextColor);
            }else if(colorstyle==1){
                T.setTextColor(colorrandom);
            }
        }

        T.setTypeface(setLeoRomFonts(0,setLeoUesrQSLabelTextFont));
    }
    public void onDivider(){
        View  V=mDivider;
        if (setLeoUesrQSDivider) {
            if (setLeoUesrQSbuttonColor==0) {//判断ID
                V.setBackgroundColor(getContext().getColor(getLeoResource("color/qs_tile_divider")));
            }  else if (setLeoUesrQSbuttonColor== 1) {
                int colorstyle= setLeoUesrQSLabelRandomColor;
                int colorrandom=getLeoRandomColor(getContext());
                if(colorstyle==0){
                    V.setBackgroundColor(setLeoUesrQSDividerColor);
                }else if(colorstyle==1){
                    V.setBackgroundColor(colorrandom);
                }
            }
            V.setVisibility(View.VISIBLE);
        } else {
            V.setVisibility(View.GONE);
        }


    }

}
