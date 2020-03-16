package com.android.systemui.qs.bar;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.Dependency;

import com.android.systemui.plugins.qs.QS;

import com.android.systemui.qs.QSFragment;
import com.android.systemui.qs.QSPanel;
import com.android.systemui.qs.SecQuickStatusBarHeader;
import com.android.systemui.qs.bar.BarItem.Callback;
import com.android.systemui.qs.panelcolor.PanelColorAssistant;
import com.android.systemui.qs.panelcolor.PanelColorModel;
import com.android.systemui.statusbar.phone.StatusBar;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

public class BarController implements ConfigurationListener, PanelColorAssistant {
    public static final String BAR_ITEM_TAG = "BarItem";
    private static final String TAG = "QSBarController";
    private LinkedHashMap<String, BarItem> mBars = new LinkedHashMap();
    /* access modifiers changed from: private */
    public BarItemCallback mCallback;
    private Context mContext;

    private boolean mKeyguardShowing = false;
    private int mOnTopQSBarsHeight;
    private QS mQs;
    private boolean mQsDisabled = false;
    private ViewGroup mQsPanel;
    private final StatusBar mStatusBar;

    public interface BarItemCallback {
        void onBarHeightChanged();

        void onBarTypeChanged();

        void onBarVisibilityChanged();
    }

    public BarController(Context context, StatusBar statusBar) {
        this.mContext = context;
        this.mStatusBar = statusBar;
        ((ConfigurationController) Dependency.get(ConfigurationController.class)).addCallback(this);

    }

    private void addAllBarItems() {
        for (BarItem barItem : this.mBars.values()) {
            View inflateViews = barItem.inflateViews(this.mQsPanel);
            inflateViews.setTag(BAR_ITEM_TAG);
            if (!(this.mQsPanel == null || barItem.getBarView() == null)) {
                barItem.clearCallback();
                barItem.setCallback(new Callback() {
                    public void onBarHeightChanged() {
                        Log.v(BarController.TAG, "onBarHeightChanged");
                        BarController.this.calculateOnTopBarsHeight();
                        BarController.this.mCallback.onBarHeightChanged();
                    }

                    public void onBarTypeChanged() {
                        Log.v(BarController.TAG, "onBarTypeChanged");
                        BarController.this.calculateOnTopBarsHeight();
                        BarController.this.mCallback.onBarTypeChanged();
                    }

                    public void onBarVisibilityChanged() {
                        Log.v(BarController.TAG, "onBarVisibilityChanged");
                        BarController.this.calculateOnTopBarsHeight();
                        BarController.this.mCallback.onBarVisibilityChanged();
                    }
                });
                int i = 0;
                if (barItem.getType() == 2) {
                    int i2 = 0;
                    while (i < this.mQsPanel.getChildCount()) {

                    }
                    this.mQsPanel.addView(inflateViews, i2);
                } else if (barItem.getType() == 1) {
                    this.mQsPanel.addView(inflateViews);

                    inflateViews.setVisibility(i);
                } else {
                    this.mQsPanel.addView(inflateViews);
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void calculateOnTopBarsHeight() {
        int i = 0;
        if (this.mQsDisabled) {
            this.mOnTopQSBarsHeight = 0;
            return;
        }
        for (BarItem barItem : this.mBars.values()) {
            if (barItem.getType() == 0) {
                i += barItem.getBarHeight();
            }
        }
        this.mOnTopQSBarsHeight = i;
    }

    private BarItem createBarItem(String str) {
        BarItem barItem;
        Object e;
        String str2 = TAG;
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("com.android.systemui.qs.bar.");
            stringBuilder.append(str);
            stringBuilder.append("Bar");
            Class cls = Class.forName(stringBuilder.toString());
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("createBar ");
            stringBuilder2.append(cls);
            Log.w(str2, stringBuilder2.toString());
            barItem = (BarItem) cls.getDeclaredConstructor(new Class[]{Context.class}).newInstance(new Object[]{this.mContext});
            try {
                barItem.setStatusBar(this.mStatusBar);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            barItem = null;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append(str);
            stringBuilder3.append(" ");
            stringBuilder3.append(e);
            Log.w(str2, stringBuilder3.toString());

            return barItem;
        }
        return barItem;
    }

    private List<String> loadBarSpecs(String str) {
        ArrayList arrayList = new ArrayList();
        for (String trim : str.split(",")) {

        }
        return arrayList;
    }

    private void removeAllBarItems() {
        if (this.mQsPanel != null) {
            int i = 0;
            while (i < this.mQsPanel.getChildCount()) {
                View childAt = this.mQsPanel.getChildAt(i);
                if (childAt != null) {
                    if (BAR_ITEM_TAG.equals(childAt.getTag())) {
                        ViewGroup viewGroup = (ViewGroup) childAt;
                        if (viewGroup.getChildCount() > 0) {
                            viewGroup.removeAllViews();
                        }
                        int i2 = i - 1;
                        this.mQsPanel.removeViewAt(i);
                        i = i2;
                    }
                }
                i++;
            }
        }
        for (BarItem clearCallback : this.mBars.values()) {
            clearCallback.clearCallback();
        }
    }

    private void replaceAllBarItems() {
        removeAllBarItems();
        addAllBarItems();
    }

    private void updateBarHeight() {
        calculateOnTopBarsHeight();
    }

    public void disable(int i, int i2, boolean z) {
        boolean z2 = true;
        if ((i2 & 1) == 0) {
            z2 = false;
        }
        if (z2 != this.mQsDisabled) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("disable : ");
            stringBuilder.append(z2);
            Log.v(TAG, stringBuilder.toString());
            this.mQsDisabled = z2;
            updateBarHeight();

        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (BarItem dump : this.mBars.values()) {
            dump.dump(fileDescriptor, printWriter, strArr);
        }
    }


    public void saltQsBarRefresh() {
        for (BarItem barItem : this.mBars.values()) {
            if (barItem instanceof BarItemImpl) {
                ((BarItemImpl) barItem).refreshQsBar();
            }
        }
    }
    public SecQuickStatusBarHeader saltSecQuickStatusBarHeader() {

        return ((QSFragment) this.mQs).getContainer();
    }
    public QSPanel saltQSPanel() {

        return ((QSFragment) this.mQs).getSaltQSPanel();
    }
    public int getOnTopBarsHeight() {
        return this.mQsDisabled ? 0 : this.mOnTopQSBarsHeight;
    }

    public int getQSBarsTranslation() {
        return (this.mKeyguardShowing || this.mQsDisabled) ? 0 : this.mOnTopQSBarsHeight;
    }

    public void onConfigChanged(Configuration configuration) {
        for (BarItem onConfigChanged : this.mBars.values()) {
            onConfigChanged.onConfigChanged(configuration);
        }
    }

    public void onPanelColorChanged(PanelColorModel panelColorModel) {
        LinkedHashMap linkedHashMap = this.mBars;
        if (linkedHashMap != null) {

        }
    }

    public void refreshBarList() {
        String string = "";
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("bar specs newValue :  ");
        stringBuilder.append(string);
        String stringBuilder2 = stringBuilder.toString();
        String str = TAG;
        Log.w(str, stringBuilder2);
        List<String> loadBarSpecs = loadBarSpecs(string);
        stringBuilder = new StringBuilder();
        stringBuilder.append("Bar specs :  ");
        stringBuilder.append(loadBarSpecs);
        Log.w(str, stringBuilder.toString());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        StringBuilder stringBuilder3 = new StringBuilder("(available list) ");
        for (String str2 : loadBarSpecs) {
            StringBuilder stringBuilder4 = new StringBuilder();
            stringBuilder4.append("barSpec = ");
            stringBuilder4.append(str2);
            Log.v(str, stringBuilder4.toString());
            BarItem barItem = (BarItem) this.mBars.get(str2);
            if (barItem == null) {
                try {
                    barItem = createBarItem(str2);
                } catch (Exception e) {
                    StringBuilder stringBuilder5 = new StringBuilder();
                    stringBuilder5.append("Error creating tile for spec: ");
                    stringBuilder5.append(str2);
                    Log.w(str, stringBuilder5.toString(), e);
                }
            }
            if (barItem != null) {
                Log.w(str, "bar != null");
                StringBuilder stringBuilder6 = new StringBuilder();
                stringBuilder6.append(str2);
                stringBuilder6.append(" : ");
                stringBuilder6.append(barItem.isAvailable());
                stringBuilder6.append(", ");
                stringBuilder3.append(stringBuilder6.toString());
                if (barItem.isAvailable()) {
                    linkedHashMap.put(str2, barItem);
                } else {
                    barItem.destroy();
                }
            }
        }

        this.mBars.clear();
        this.mBars.putAll(linkedHashMap);
        replaceAllBarItems();
        updateBarHeight();
    }

    public void removeCallback() {
        this.mCallback = null;
    }

    public void setCallback(BarItemCallback barItemCallback) {
        this.mCallback = barItemCallback;
    }

    public void setExpanded(boolean z) {
        for (BarItem barItem : this.mBars.values()) {
            barItem.setExpanded(z);
            if (barItem.isListening() && barItem.getType() != 0) {
                barItem.getBarView().setVisibility(z ? 0 : 4);
            }
        }
    }

    public void setExpandedPosition(float f) {
        for (BarItem position : this.mBars.values()) {
            position.setPosition(f);
        }
    }

    public void setKeyguardShowing(boolean z) {
        this.mKeyguardShowing = z;
    }

    public void setQS(QS qs) {
        this.mQs = qs;
        this.mQsPanel = ((QSFragment) this.mQs).getQsPanel();
        refreshBarList();
    }
}
