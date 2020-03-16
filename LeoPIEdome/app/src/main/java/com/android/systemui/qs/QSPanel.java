package com.android.systemui.qs;

import android.content.ComponentName;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;

import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.Dependency;

import com.android.systemui.plugins.qs.QSTile;
import com.android.systemui.plugins.qs.QSTile.State;
import com.android.systemui.plugins.qs.QSTileView;
import com.android.systemui.qs.QSHost.Callback;

import com.android.systemui.tuner.TunerService;
import com.android.systemui.tuner.TunerService.Tunable;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;

public class QSPanel extends LinearLayout implements Callback, Tunable {

    protected final ArrayList<TileRecord> mRecords;
    private QSServiceBox mServiceBox;
    protected QSTileLayout mTileLayout;

    @Override
    public void onTilesChanged() {

    }

    @Override
    public void onTuningChanged(String str, String str2) {

    }

    public interface QSTileLayout {
        void addTile(TileRecord tileRecord);

        int getOffsetTop(TileRecord tileRecord);

        void removeTile(TileRecord tileRecord);



        void setListening(boolean z);

        boolean updateResources();
    }

    private class H extends Handler {
        private H() {
        }



        public void handleMessage(Message message) {
            boolean z = true;

        }
    }

    protected static class Record {

        int x;
        int y;

        protected Record() {
        }
    }

    public static final class TileRecord extends Record {
        public QSTile.Callback callback;
        public boolean scanState;
        public QSTile tile;
        public QSTileView tileView;
    }

    public QSPanel(Context context) {
        this(context, null);
    }

    public QSPanel(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.mRecords = new ArrayList();
     ;
    }

    private void fireScanStateChanged(boolean z) {

    }

    private void fireScrollToDetail(int i, int i2) {

    }

}
