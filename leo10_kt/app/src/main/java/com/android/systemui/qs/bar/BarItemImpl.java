package com.android.systemui.qs.bar;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.Dependency;
import com.android.systemui.qs.bar.BarItem.Callback;
import com.android.systemui.qs.panelcolor.PanelColorAssistant;
import com.android.systemui.qs.panelcolor.PanelColorModel;
import com.android.systemui.statusbar.phone.StatusBar;

import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class BarItemImpl implements BarItem, PanelColorAssistant {
    public static final String DEBUG_LOG_TAG = "QSBarItem";
    public final String TAG = getClass().getSimpleName();
    protected ViewGroup mBarRootView;
    private int mBarType = 0;
    protected Callback mCallback;
    protected Context mContext;

    protected boolean mListening = true;
    protected boolean mQsExpanded;
    protected StatusBar mStatusBar;

    public BarItemImpl(Context context) {
        this.mContext = context;

    }

    /* access modifiers changed from: protected */
    public void changeBarType(int i) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("(");
        stringBuilder.append(this.TAG);
        stringBuilder.append(") changeBarType : ");
        stringBuilder.append(i);
        StringBuilder stringBuilder2 = new StringBuilder(stringBuilder.toString());
        if (this.mBarRootView == null) {
            stringBuilder2.append(", BarRootView is null");
        }

        if (this.mBarRootView != null) {
            if (i == 0 || i == 1) {
                String str = this.TAG;
                stringBuilder = new StringBuilder();
                stringBuilder.append("changeBarType : ");
                stringBuilder.append(i);
                Log.i(str, stringBuilder.toString());
                this.mBarType = i;
                Callback callback = this.mCallback;
                if (callback != null) {
                    callback.onBarTypeChanged();
                }
                if (i == 0) {
                    this.mBarRootView.setVisibility(0);
                }
                return;
            }
            Log.i(this.TAG, "return : bar type can be changed to BAR_TYPE_ALWAYS_VISIBLE or BAR_TYPE_VISIBLE_BELOW_TILES_WHEN_EXPANDED");
        }
    }

    public void clearCallback() {
        this.mCallback = null;
    }

    public void destroy() {
        clearCallback();
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public int getBarHeight() {
        return this.mListening ? this.mBarRootView.getHeight() : 0;
    }

    public View getBarView() {
        return this.mBarRootView;
    }

    public int getType() {
        return this.mBarType;
    }

    public boolean isAvailable() {
        return true;
    }

    public boolean isListening() {
        return this.mListening;
    }

    public void onConfigChanged(Configuration configuration) {
    }

    public abstract void onPanelColorChanged(PanelColorModel panelColorModel);

    public void setCallback(Callback callback) {
        this.mCallback = callback;
    }

    public void setExpanded(boolean z) {
        this.mQsExpanded = z;
    }

    public void setListening(boolean z) {
        this.mListening = z;
    }

    public void setPosition(float f) {
    }

    public void setStatusBar(StatusBar statusBar) {
        this.mStatusBar = statusBar;
    }

    /* access modifiers changed from: protected */
    public void setType(int i) {
        this.mBarType = i;
    }

    /* access modifiers changed from: protected */
    public void showBar(boolean z) {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("(");
        stringBuilder.append(this.TAG);
        stringBuilder.append(") showBar : ");
        stringBuilder.append(z);
        StringBuilder stringBuilder2 = new StringBuilder(stringBuilder.toString());
        if (this.mBarRootView == null) {
            stringBuilder2.append(", BarRootView is null");
        }

        if (this.mBarRootView != null) {
            String str = this.TAG;
            stringBuilder = new StringBuilder();
            stringBuilder.append("showBar : ");
            stringBuilder.append(z);
            Log.i(str, stringBuilder.toString());
            if (z) {
                this.mListening = true;
                this.mBarRootView.setVisibility(0);
            } else {
                this.mListening = false;
                this.mBarRootView.setVisibility(8);
            }
            Callback callback = this.mCallback;
            if (callback != null) {
                callback.onBarVisibilityChanged();
            }
        }
    }
}
