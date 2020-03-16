package com.android.systemui.qs;

import android.content.Context;
import android.content.res.Configuration;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.Space;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;

import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTile.SignalState;
import com.android.systemui.plugins.qs.QSTile.State;
import com.android.systemui.plugins.qs.QSTileView;
import com.android.systemui.qs.QSPanel.QSTileLayout;
import com.android.systemui.qs.QSPanel.TileRecord;

import com.android.systemui.tuner.TunerService;
import com.android.systemui.tuner.TunerService.Tunable;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class QuickQSPanel extends QSPanel {
    private int mCurrentMobileKeyboardCovered;
    private int mCurrentOrientation;
    private boolean mDisabledByPolicy;
    protected QSPanel mFullPanel;
    private int mMaxTiles;
    private final Tunable mNumTiles = new Tunable() {
        public void onTuningChanged(String str, String str2) {

        }
    };

    private static class HeaderTileLayout extends LinearLayout implements QSTileLayout {
        private boolean mListening;
        protected final ArrayList<TileRecord> mRecords = new ArrayList();
        private int mTileDimensionSize;

        public HeaderTileLayout(Context context) {
            super(context);
            setClipChildren(false);
            setClipToPadding(false);
            //this.mTileDimensionSize = ((QSScreenGridResource) Dependency.get(QSScreenGridResource.class)).getIconSizeDimensionToDisplayHeight();
            setGravity(17);
            setLayoutParams(new LayoutParams(-1, -1));
        }

        private LayoutParams generateSpaceLayoutParams(int i) {
            LayoutParams layoutParams = new LayoutParams(i, getTileDimensionSize());
            if (i == 0) {
                layoutParams.weight = 1.0f;
            }
            layoutParams.gravity = 17;
            return layoutParams;
        }

        private LayoutParams generateTileLayoutParams() {
            int tileDimensionSize = getTileDimensionSize();
            LayoutParams layoutParams = new LayoutParams(tileDimensionSize, tileDimensionSize);
            layoutParams.gravity = 17;
            return layoutParams;
        }

        private int getChildIndex(QSTileView qSTileView) {
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                if (getChildAt(i) == qSTileView) {
                    return i;
                }
            }
            return -1;
        }

        private int getTileDimensionSize() {
            return 0;
        }

        public void addTile(TileRecord tileRecord) {
            if (getChildCount() != 0) {
            //    addView(new Space(this.mContext), getChildCount(), generateSpaceLayoutParams(this.mContext.getResources().getDimensionPixelSize(R.dimen.qs_quick_tile_space_width)));
            }
            tileRecord.tile.setListening(this, this.mListening);
            addView(tileRecord.tileView, getChildCount(), generateTileLayoutParams());
            this.mRecords.add(tileRecord);
        }

        public int getOffsetTop(TileRecord tileRecord) {
            return 0;
        }

        public boolean hasOverlappingRendering() {
            return false;
        }

        protected void onConfigurationChanged(Configuration configuration) {
            super.onConfigurationChanged(configuration);
            setGravity(17);
           // ViewGroup.LayoutParams generateSpaceLayoutParams = generateSpaceLayoutParams(this.mContext.getResources().getDimensionPixelSize(R.dimen.qs_quick_tile_space_width));
            int childCount = getChildCount();
            for (int i = 0; i < childCount; i++) {
                View childAt = getChildAt(i);
                if (childAt instanceof Space) {

                }
            }
        }

        protected void onMeasure(int i, int i2) {
            super.onMeasure(i, i2);
            if (this.mRecords != null && this.mRecords.size() > 0) {
                View view = this;
                Iterator it = this.mRecords.iterator();
                while (it.hasNext()) {
                    TileRecord tileRecord = (TileRecord) it.next();
                    if (tileRecord.tileView.getVisibility() != 8) {
                        view = tileRecord.tileView.updateAccessibilityOrder(view);
                    }
                }
               // ((TileRecord) this.mRecords.get(0)).tileView.setAccessibilityTraversalAfter(R.id.alarm_status_collapsed);
            }
        }

        public void removeTile(TileRecord tileRecord) {
            int childIndex = getChildIndex(tileRecord.tileView);
            removeViewAt(childIndex);
            if (getChildCount() != 0) {
                removeViewAt(childIndex);
            }
            this.mRecords.remove(tileRecord);
            tileRecord.tile.setListening(this, false);
        }


        public void setListening(boolean z) {
            if (this.mListening != z) {
                this.mListening = z;
                Iterator it = this.mRecords.iterator();
                while (it.hasNext()) {
                    ((TileRecord) it.next()).tile.setListening(this, this.mListening);
                }
            }
        }

        public boolean updateResources() {
            return false;
        }
    }

    public QuickQSPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

        if (this.mTileLayout != null) {
            for (int i = 0; i < this.mRecords.size(); i++) {
                this.mTileLayout.removeTile((TileRecord) this.mRecords.get(i));
            }
            removeView((View) this.mTileLayout);
        }
        this.mTileLayout = new HeaderTileLayout(context);

        addView((View) this.mTileLayout, 0);
        setQuickQSTileNum();
        super.setPadding(0, 0, 0, 0);
        setFocusable(false);
    }



    private void setQuickQSTileNum() {
        int integer;
        Object obj = this.mCurrentOrientation == 2 ? 1 : null;
      //  boolean isMobileKeyboardConnected = DeviceState.isMobileKeyboardConnected(getContext());
       // if (obj == null || !isMobileKeyboardConnected) {
        //    integer = getContext().getResources().getInteger(Rune.SYSUI_IS_TABLET_DEVICE ? R.integer.quick_qs_tile_num_tablet : R.integer.quick_qs_tile_num);
       // } else {
         //   integer = getContext().getResources().getInteger(R.integer.quick_qs_tile_num_mobile);
       // }
       // setMaxTiles(integer);
      //  ((TunerService) Dependency.get(TunerService.class)).setValue("sysui_qqs_count", integer);
    }

    protected void drawTile(TileRecord tileRecord, State state) {

    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
    }

    public void onColorChanged(Configuration configuration) {
        Iterator it = this.mRecords.iterator();
        while (it.hasNext()) {
            TileRecord tileRecord = (TileRecord) it.next();
         //   tileRecord.tileView.updateColors(tileRecord.tile.getState());
        }
    }

    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        int i = configuration.orientation;

    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    public void onTuningChanged(String str, String str2) {
        if ("qs_show_brightness".equals(str)) {
            super.onTuningChanged(str, "0");
        } else if ("qs_tile_layout".equals(str) && str2 != null) {
           // ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, ((QSScreenGridResource) Dependency.get(QSScreenGridResource.class)).getIconSizeDimensionToDisplayHeight());
       //     layoutParams.addRule(3, R.id.quick_status_bar_system_icons);
          //  int dimensionPixelSize = this.mContext.getResources().getDimensionPixelSize(R.dimen.qs_header_tile_margin_horizontal);
         //   layoutParams.setMargins(dimensionPixelSize, this.mContext.getResources().getDimensionPixelSize(R.dimen.quick_qs_panel_top_margin), dimensionPixelSize, this.mContext.getResources().getDimensionPixelSize(R.dimen.quick_qs_panel_bottom_margin));
          //  setLayoutParams(layoutParams);

        }
    }

    void setDisabledByPolicy(boolean z) {
        if (z != this.mDisabledByPolicy) {
            this.mDisabledByPolicy = z;
          //  setVisibility(z ? 8 : 0);
        }
    }



    public void setMaxTiles(int i) {
        this.mMaxTiles = i;

    }

    public void setPadding(int i, int i2, int i3, int i4) {
    }

    public void setQSPanelAndHeader(QSPanel qSPanel, View view) {
        this.mFullPanel = qSPanel;
    }

    public void setTiles(Collection<QSTile> collection) {

    }

    public void setVisibility(int i) {
        if (this.mDisabledByPolicy) {
            if (getVisibility() != 8) {
                i = 8;
            } else {
                return;
            }
        }
        super.setVisibility(i);
    }

}
