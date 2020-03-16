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
 * limitations under the License.
 */

package com.android.systemui.qs;

import android.animation.ObjectAnimator;
import android.content.Context;
import android.provider.Settings;
import android.provider.Settings12;

import android.view.animation.AccelerateInterpolator;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.BounceInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.OvershootInterpolator;
import android.widget.LinearLayout;

import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTileView;



import static com.os.leo.utils.LeoUserSettings.LeoSettings;



public class QSPanel extends LinearLayout {

    public static final String QS_SHOW_BRIGHTNESS = "qs_show_brightness";
    protected final Context mContext;

    public QSPanel(Context context, Context mContext) {
        super(context);
        this.mContext = mContext;
    }

    public static final class TileRecord  {
        public QSTile tile;
        public com.android.systemui.plugins.qs.QSTileView tileView;
        public boolean scanState;

    }
    private void setAnimationTile(QSTileView tileView) {
        LeoSettings(mContext);
        ObjectAnimator animTile = null;
        int animStyle =0;
        int animDuration =0;
        int interpolatorType =0;
        if (animStyle == 0) {

        }
        if (animStyle == 1) {
            animTile = ObjectAnimator.ofFloat(tileView, "rotationY", 0f, 360f);
        }
        if (animStyle == 2) {
            animTile = ObjectAnimator.ofFloat(tileView, "rotationX", 0f, 360f);
            //animTile = ObjectAnimator.ofFloat(r.tileView, "rotation", 0f, 360f);
           // animTile = ObjectAnimator.ofFloat(r.tileView, "scaleX", 0, 3, 1);
        }if (animStyle == 3) {
            animTile = ObjectAnimator.ofFloat(tileView, "rotation", 0f, 360f);
            //animTile = ObjectAnimator.ofFloat(r.tileView, "rotation", 0f, 360f);
            // animTile = ObjectAnimator.ofFloat(r.tileView, "scaleX", 0, 3, 1);

        }if (animStyle == 4) {
            animTile = ObjectAnimator.ofFloat(tileView, "translationX", 0, 200, -100,0);
        }if (animStyle == 5) {
            animTile = ObjectAnimator.ofFloat(tileView, "translationY", 0, 200, -100,0);
        }
        if (animStyle == 6) {
            animTile = ObjectAnimator.ofFloat(tileView, "scaleY", 0, 3, 1);
        }
        if (animStyle == 7) {
            animTile = ObjectAnimator.ofFloat(tileView, "scaleX", 0, 3, 1);
        }if (animStyle == 8) {
            animTile  = ObjectAnimator.ofFloat(tileView,"alpha",1,0,1);
        }if (animTile != null) {
            switch (interpolatorType) {
                case 0:
                    animTile.setInterpolator(new LinearInterpolator());
                    break;
                case 1:
                    animTile.setInterpolator(new AccelerateInterpolator());
                    break;
                case 2:
                    animTile.setInterpolator(new DecelerateInterpolator());
                    break;
                case 3:
                    animTile.setInterpolator(new AccelerateDecelerateInterpolator());
                    break;
                case 4:
                    animTile.setInterpolator(new BounceInterpolator());
                    break;
                case 5:
                    animTile.setInterpolator(new OvershootInterpolator());
                    break;
                case 6:
                    animTile.setInterpolator(new AnticipateInterpolator());
                    break;
                case 7:
                    animTile.setInterpolator(new AnticipateOvershootInterpolator());
                    break;
                default:
                    break;
            }

            animTile.setDuration(animDuration);
            animTile.start();
        }
    }
    public interface QSTileLayout {
        void addTile(TileRecord tile);

        void removeTile(TileRecord tile);

        int getOffsetTop(TileRecord tile);

        boolean updateResources();

        void setListening(boolean listening);

        boolean isShowTitles();
    }
   // protected QSTileHost mHost;
    protected QSTileView createTileView(QSTile tile, boolean collapsedView) {
      //  return mHost.createTileView(tile, collapsedView);
        return null;
    }
    protected TileRecord addTile(final QSTile tile, boolean collapsedView) {
        final TileRecord r = new TileRecord();
        r.tile = tile;
        r.tileView = createTileView(tile, collapsedView);


        if (mTileLayout != null) {
            mTileLayout.addTile(r);

        }

        return r;
    }
    protected QSTileLayout mTileLayout;


}
