/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License
 */

package com.android.systemui.statusbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.GradientDrawable;
import android.os.Handler;
import android.net.Uri;
import android.os.UserHandle;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.RippleDrawable;
import android.util.AttributeSet;
import android.provider.Settings;
import android.util.Log;
import android.view.View;

import com.android.systemui.qs.tileimpl.QSTileView;

import java.io.File;

import static com.leo.utils.Constants.mLeoRom;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNotificationItemBgBasicColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNotificationItemShowBG;
import static com.os.leo.utils.LeoUserValues.mYellowColor;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class NotificationBackgroundView extends View {
        private int mActualHeight;
        private Drawable mBackground;
        private int mClipBottomAmount;
        private int mClipTopAmount;
        private boolean mIsCustomNotification;
        private boolean mIsWhiteWallpaper;
        private int mOpacityTarget;

        public NotificationBackgroundView(Context context, AttributeSet attrs) {
            super(context, attrs);
            setCustomBackground();
            mLeoObserver=new LeoObserver(new Handler());
            mLeoObserver.observe();
            update();
        }

    public void update() {

        mTranslucentNotifications =  true;
        mBackground.setAlpha( mTranslucencyPercentage);
        mTranslucencyPercentage = 70;

        mTranslucencyPercentage = 255 - ((mTranslucencyPercentage * 255) / 100);
    }





        public void setCustomBackground() {
            int s=mYellowColor;
            setCustomBackground(new ColorDrawable(s));

        }

        protected void onDraw(Canvas canvas) {
            draw(canvas, this.mBackground);
        }

        private void draw(Canvas canvas, Drawable drawable) {
            int bottom = this.mActualHeight - this.mClipBottomAmount;
            if (drawable != null && bottom > this.mClipTopAmount) {
                drawable.setBounds(0, this.mClipTopAmount, getWidth(), bottom);
                drawable.draw(canvas);
            }
        }

        protected boolean verifyDrawable(Drawable who) {
            return super.verifyDrawable(who) || who == this.mBackground;
        }

        protected void drawableStateChanged() {
            super.drawableStateChanged();
            drawableStateChanged(this.mBackground);
        }

        private void drawableStateChanged(Drawable d) {
            if (d != null && d.isStateful()) {
                d.setState(getDrawableState());
            }
        }

        public void drawableHotspotChanged(float x, float y) {
            super.drawableHotspotChanged(x, y);
            if (this.mBackground != null) {
                this.mBackground.setHotspot(x, y);
            }
        }

        public void setCustomBackground(Drawable background) {
            if (this.mBackground != null) {
                this.mBackground.setCallback(null);
                unscheduleDrawable(this.mBackground);
            }
            this.mBackground = background;
            setBackgroundAlpha();
            if (this.mBackground != null) {
                this.mBackground.setCallback(this);
            }
            if (this.mBackground instanceof RippleDrawable) {
              //  ((RippleDrawable) this.mBackground).setForceSoftware(true);
            }
            invalidate();
        }

        public void setCustomBackground(int drawableResId) {
          //  setCustomBackground(this.mContext.getDrawable(drawableResId));
        }

    public void setTint(int i) {
        int i2 = !setLeoUesrNotificationItemShowBG ? i : setLeoUesrNotificationItemBgBasicColor;
        boolean setColor=setLeoUesrNotificationItemShowBG;
        if (setColor) {
            this.mBackground.setColorFilter(i2, PorterDuff.Mode.SRC_ATOP);
        } else {
            this.mBackground.clearColorFilter();
        }
        invalidate();
    }


    public void setActualHeight(int actualHeight) {
            this.mActualHeight = actualHeight;
            invalidate();
        }

        public int getActualHeight() {
            return this.mActualHeight;
        }

        public void setClipTopAmount(int clipTopAmount) {
            this.mClipTopAmount = clipTopAmount;
            invalidate();
        }

        public void setClipBottomAmount(int clipBottomAmount) {
            this.mClipBottomAmount = clipBottomAmount;
            invalidate();
        }

        public boolean hasOverlappingRendering() {
            return false;
        }

        public void setState(int[] drawableState) {
            this.mBackground.setState(drawableState);
        }

        public void setRippleColor(int color) {
            if (this.mBackground instanceof RippleDrawable) {
            //    this.mBackground.setColor(ColorStateList.valueOf(color));
            }
        }

        public void setDrawableAlpha(int drawableAlpha) {
            this.mBackground.setAlpha(drawableAlpha);
        }

        public void setBackgroundAlpha() {
          // if (!(StatusBar.isDeskMode() || this.mBackground == null || this.mOpacityTarget != 0)) {
               // if (this.mIsCustomNotification) {
                 //   setDrawableAlpha(R.styleable.AppCompatTheme_windowFixedWidthMinor);
               // } else {
                  //  setDrawableAlpha((int) (255.0f * NotificationColorUtil.getOpacityOnKeyguard(((float) SettingsHelper.getInstance().getLockNoticardOpacity()) * 0.01f, this.mOpacityTarget, this.mIsWhiteWallpaper)));
               // }
           // }
        }

        public void setWhiteWallpaper(boolean isWhiteWallpaper) {
            this.mIsWhiteWallpaper = isWhiteWallpaper;
        }

        public void setOpacityTarget(int target) {
            switch (target) {
                case 0:
                    this.mOpacityTarget = 2;
                    return;
                case 2:
                    this.mOpacityTarget = 0;
                    return;
                default:
                    return;
            }
        }

        public void setIsCustomNotification(boolean isCustomNotificataion) {
            this.mIsCustomNotification = isCustomNotificataion;
        }

    private static int mTranslucencyPercentage;
    private static boolean mTranslucentNotifications;
    private LeoObserver mLeoObserver;
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(""), false, this);
            contentResolver.registerContentObserver(getLeoUri(""), false, this);


        }

        @Override
        public void onChange(boolean selfChange) {

        }



    }


}