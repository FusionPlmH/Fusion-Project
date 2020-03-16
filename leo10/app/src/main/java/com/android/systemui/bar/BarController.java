package com.android.systemui.bar;

import android.content.Context;
import android.content.res.Configuration;
import android.util.Log;
import android.view.View;
import android.view.View.OnLayoutChangeListener;
import android.view.ViewGroup;
import com.android.systemui.Dependency;

import com.android.systemui.qs.QSPanel;
import com.android.systemui.qs.SecQuickStatusBarHeader;

import com.android.systemui.statusbar.phone.ScrimController;
import com.android.systemui.statusbar.phone.StatusBar;
import com.android.systemui.statusbar.policy.ConfigurationController;
import com.android.systemui.statusbar.policy.ConfigurationController.ConfigurationListener;
import com.android.systemui.tuner.TunerService;

import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;

public class BarController implements ConfigurationListener {
    public static final String BAR_ITEM_TAG = "BarItem";
    private static final String TAG = "BarController";
    private final String BAR_ITEM_TYPE_QS = "QSBarItem";
    private final String BAR_ITEM_TYPE_SCROLLABLE = "ScrollableBarItem";
    /* access modifiers changed from: private */
    public LinkedHashMap<String, BarItem> mBars = new LinkedHashMap();
    /* access modifiers changed from: private */
    public Context mContext;
    private int mCurrentOrientation;
    private float mExpandedFraction;
    /* access modifiers changed from: private */
    public SecQuickStatusBarHeader mHeader;
    /* access modifiers changed from: private */
    public int mHiddenExpandedBarsHeight;
    private int mOnTopQSBarsHeight;
    protected QSBarCallback mQSBarCallback;
    /* access modifiers changed from: private */
    public int mQSTileLayoutTop;
    private boolean mQsDisabled = false;
    /* access modifiers changed from: private */
    public QSPanel mQsPanel;
    /* access modifiers changed from: private */
    public int mQuickQSPanelTop;
   // private ScrimController mScrimController;
    private boolean mShowButtonBackground = false;
    private ViewGroup mStackScroller;
    private final StatusBar mStatusBar;
    private int mStatusBarState;
    /* access modifiers changed from: private */
    public int mUselessHiddenExpandedBarsHeight = 0;

    public interface QSBarCallback {
        void onQSBarHeightChanged();

        void onQSBarLayoutChanged();
    }

    public BarController(Context context, StatusBar statusBar, ScrimController scrimController) {
        this.mStatusBar = statusBar;

        this.mContext = context;
        ((ConfigurationController) Dependency.get(ConfigurationController.class)).addCallback(this);
        refreshBarList();
    }

    private void addAllBarItems(String str, boolean z) {
        ViewGroup viewGroup = "QSBarItem".equals(str) ? this.mQsPanel : this.mStackScroller;
        if (viewGroup != null) {
            for (Object obj : this.mBars.keySet()) {
                BarItem barItem = (BarItem) this.mBars.get(obj);
                if ((viewGroup == this.mQsPanel && (barItem instanceof QSBarItem)) || (viewGroup == this.mStackScroller && (barItem instanceof ScrollableBarItem))) {
                    String str2 = TAG;
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("adding ");
                    stringBuilder.append(barItem.TAG);
                    Log.d(str2, stringBuilder.toString());
                    View inflateViews = barItem.inflateViews(viewGroup, z);
                    if (barItem instanceof ScrollableBarItem) {
                        View scrollableBarItemView = ((ScrollableBarItem) barItem).getScrollableBarItemView(viewGroup);

                    }
                    inflateViews.setTag(BAR_ITEM_TAG);
                    viewGroup.addView(inflateViews, viewGroup == this.mQsPanel ? viewGroup.getChildCount() : 0);
                    if ("QSBarItem".equals(str) && !((QSBarItem) barItem).isShowingWhenExpanded()) {
                        if (isKeyguardShowing()) {
                            ((QSBarItem) barItem).setStatusBarState(this.mStatusBarState);
                        }
                        ((QSBarItem) barItem).setPosition(this.mExpandedFraction);
                    }
                }
            }
        }
    }

    /* access modifiers changed from: private */
    public void calculateHiddenExpandedBarsHeight() {
        if (this.mQsDisabled) {
            this.mHiddenExpandedBarsHeight = 0;
            return;
        }
        int i = 0;
        int i2 = 0;
        for (BarItem barItem : this.mBars.values()) {
            if (barItem instanceof QSBarItem) {
                QSBarItem qSBarItem = (QSBarItem) barItem;
                if (!qSBarItem.isShowingWhenExpanded()) {
                    i += qSBarItem.getBarHeight();

                }
            }
        }
        this.mHiddenExpandedBarsHeight = i;
        this.mUselessHiddenExpandedBarsHeight = i2;
    }

    /* access modifiers changed from: private */
    public void calculateOnTopQSBarsHeight() {
        if (this.mQsDisabled) {
            this.mOnTopQSBarsHeight = 0;
            return;
        }
        int i = 0;
        for (BarItem barItem : this.mBars.values()) {
            if (barItem instanceof QSBarItem) {
                QSBarItem qSBarItem = (QSBarItem) barItem;
                if (qSBarItem.isOnTop()) {
                    i += qSBarItem.getBarHeight();
                }
            }
        }
        this.mOnTopQSBarsHeight = i;
    }

    private BarItem createBarItem(String str) {
        BarItem barItem = null;
        try {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("com.android.systemui.bar.");
            stringBuilder.append(str);
            stringBuilder.append("Bar");
            Class cls = Class.forName(stringBuilder.toString());
            String str2 = TAG;
            StringBuilder stringBuilder2 = new StringBuilder();
            stringBuilder2.append("createBar ");
            stringBuilder2.append(cls);
            Log.w(str2, stringBuilder2.toString());
            barItem = (BarItem) cls.getDeclaredConstructor(new Class[]{Context.class}).newInstance(new Object[]{this.mContext});
        } catch (Exception e) {
            String str3 = TAG;
            StringBuilder stringBuilder3 = new StringBuilder();
            stringBuilder3.append(str);
            stringBuilder3.append(" ");
            stringBuilder3.append(e);
            Log.w(str3, stringBuilder3.toString());
            e.printStackTrace();
        }
        if (barItem != null) {
            if (barItem instanceof QSBarItem) {
                ((QSBarItem) barItem).setQSCallback(new QSBarItem.QSCallback() {
                    public void onBarLayoutChanged() {
                        if (BarController.this.mQSBarCallback != null) {
                            BarController.this.mQSBarCallback.onQSBarLayoutChanged();
                        }
                    }

                    public void onBarSpecChanged() {
                        BarController.this.refreshBarList();
                    }

                    public void onQSHeightChanged() {
                        BarController.this.calculateOnTopQSBarsHeight();
                        BarController.this.calculateHiddenExpandedBarsHeight();
                        if (BarController.this.mQSBarCallback != null) {
                            BarController.this.mQSBarCallback.onQSBarHeightChanged();
                        }
                    }
                });
            }
            barItem.setStatusBar(this.mStatusBar);
        }
        return barItem;
    }

    private boolean isKeyguardShowing() {
        return this.mStatusBar.getBarState() == 1;
    }

    private boolean isLandscape() {
        return this.mCurrentOrientation == 2;
    }

    private List<String> loadBarSpecs(String str) {
        ArrayList arrayList = new ArrayList();
        for (String trim : str.split(",")) {
            String trim2 = trim.trim();
            if (!trim2.isEmpty()) {
                arrayList.add(trim2);
            }
        }
        return arrayList;
    }

    private void removeAllBarItems(String str) {
        ViewGroup viewGroup = "QSBarItem".equals(str) ? this.mQsPanel : this.mStackScroller;
        if (viewGroup != null) {
            int i = 0;
            while (i < viewGroup.getChildCount()) {
                if (viewGroup.getChildAt(i) != null && BAR_ITEM_TAG.equals(viewGroup.getChildAt(i).getTag())) {
                    if (((ViewGroup) viewGroup.getChildAt(i)).getChildCount() > 0) {
                        ((ViewGroup) viewGroup.getChildAt(i)).removeAllViews();
                    }
                    int i2 = i - 1;
                    viewGroup.removeViewAt(i);
                    i = i2;
                }
                i++;
            }
        }
    }

    private void replaceAllBarItems(boolean z) {
        removeAllBarItems("QSBarItem");
        addAllBarItems("QSBarItem", z);
        removeAllBarItems("ScrollableBarItem");
        addAllBarItems("ScrollableBarItem", z);
    }

    private void updateBarHeight() {
        calculateOnTopQSBarsHeight();
        calculateHiddenExpandedBarsHeight();
    }

    public void disable(int i, int i2, boolean z) {
        boolean z2 = (i2 & 1) != 0;
        if (z2 != this.mQsDisabled) {
            this.mQsDisabled = z2;
            updateBarHeight();
        }
    }

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (BarItem dump : this.mBars.values()) {
            dump.dump(fileDescriptor, printWriter, strArr);
        }
    }

    public BarItem getBarItem(String str) {
        return (BarItem) this.mBars.get(str);
    }

    public int getHiddenExpandedBarsHeight() {
        return (isKeyguardShowing() || this.mQsDisabled) ? 0 : this.mHiddenExpandedBarsHeight;
    }

    public int getOnTopQSBarsHeight() {
        return this.mQsDisabled ? 0 : this.mOnTopQSBarsHeight;
    }

    public int getQSBarsTranslation() {
        return isKeyguardShowing() ? 0 : this.mOnTopQSBarsHeight;
    }

    public void onColorChanged(Configuration configuration) {
        for (BarItem barItem : this.mBars.values()) {
            if (barItem instanceof QSBarItem) {
                ((QSBarItem) barItem).onColorChanged(configuration);
            }
        }
    }

    public void onConfigChanged(Configuration configuration) {
        if (this.mCurrentOrientation != configuration.orientation) {
            this.mCurrentOrientation = configuration.orientation;
            for (BarItem barItem : this.mBars.values()) {
                if (barItem instanceof QSBarItem) {
                    ((QSBarItem) barItem).onOrientationChanged(this.mCurrentOrientation);
                }
            }
            updateBarHeight();
        }
        boolean z = false;

    }

    public void onPanelHeightUpdated(float f, int i) {
        if (!isKeyguardShowing()) {
            float f2 = ((float) i) * 0.7f;
            float max = Math.max(0.0f, Math.min(1.0f, (f - f2) / (((float) i) - f2)));
            for (BarItem barItem : this.mBars.values()) {
                if (barItem instanceof QSBarItem) {

                }
            }
        }
    }

    public void onQsClosed() {
        for (BarItem onQsClosed : this.mBars.values()) {
            onQsClosed.onQsClosed();
        }
    }

    public void refreshBarList() {
        String string ="";
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("bar specs newValue :  ");
        stringBuilder.append(string);
        Log.w(str, stringBuilder.toString());
        List<String> loadBarSpecs = loadBarSpecs(string);
        String str2 = TAG;
        StringBuilder stringBuilder2 = new StringBuilder();
        stringBuilder2.append("Bar specs :  ");
        stringBuilder2.append(loadBarSpecs);
        Log.w(str2, stringBuilder2.toString());
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (String str3 : loadBarSpecs) {
            BarItem barItem = (BarItem) this.mBars.get(str3);
            if (barItem == null) {
                try {
                    barItem = createBarItem(str3);
                } catch (Throwable th) {
                    String str4 = TAG;
                    StringBuilder stringBuilder3 = new StringBuilder();
                    stringBuilder3.append("Error creating tile for spec: ");
                    stringBuilder3.append(str3);
                    Log.w(str4, stringBuilder3.toString(), th);
                }
            }
            if (barItem != null) {
                if (barItem.isAvailable()) {
                    linkedHashMap.put(str3, barItem);
                } else {
                    barItem.destroy();
                }
            }
        }
        this.mBars.clear();
        this.mBars.putAll(linkedHashMap);
        replaceAllBarItems(false);
        updateBarHeight();
    }

    public void setHeader(SecQuickStatusBarHeader secQuickStatusBarHeader) {
        this.mHeader = secQuickStatusBarHeader;
    }

    public void setListening(boolean z) {
        for (BarItem barItem : this.mBars.values()) {
            if (barItem instanceof QSBarItem) {
                ((QSBarItem) barItem).setListening(z);
            }
        }
    }

    public void setPosition(float f) {
        this.mExpandedFraction = f;
        for (BarItem barItem : this.mBars.values()) {
            if (barItem instanceof QSBarItem) {
                QSBarItem qSBarItem = (QSBarItem) barItem;

            }
        }
    }

    public void setQSBarCallback(QSBarCallback qSBarCallback) {
        this.mQSBarCallback = qSBarCallback;
    }

    public void setQSPanel(ViewGroup viewGroup) {
        removeAllBarItems("QSBarItem");
        this.mQsPanel = (QSPanel) viewGroup;
        this.mQsPanel.addOnLayoutChangeListener(new OnLayoutChangeListener() {
            public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
                if (true) {
                    int top = 0;
                    int top2 = 1;
                    if (!(BarController.this.mQSTileLayoutTop == top && BarController.this.mQuickQSPanelTop == top2)) {
                        BarController.this.mQSTileLayoutTop = top;
                        BarController.this.mQuickQSPanelTop = top2;
                        boolean z = false;
                        int access$400 = (BarController.this.mQSTileLayoutTop + BarController.this.mHiddenExpandedBarsHeight) - BarController.this.mUselessHiddenExpandedBarsHeight;
                        if (BarController.this.mQuickQSPanelTop > access$400) {
                            int dimensionPixelSize =0;
                            String str = BarController.TAG;
                            StringBuilder stringBuilder = new StringBuilder();
                            stringBuilder.append("qqsPanelTop = ");
                            stringBuilder.append(BarController.this.mQuickQSPanelTop);
                            stringBuilder.append(", tileLayoutTop = ");
                            stringBuilder.append(BarController.this.mQSTileLayoutTop);
                            stringBuilder.append(", threshold = ");
                            stringBuilder.append(dimensionPixelSize);
                            stringBuilder.append(", mHiddenExpandedBarsHeight = ");
                            stringBuilder.append(BarController.this.mHiddenExpandedBarsHeight);
                            stringBuilder.append(", mUselessHiddenExpandedBarsHeight = ");
                            stringBuilder.append(BarController.this.mUselessHiddenExpandedBarsHeight);
                            Log.d(str, stringBuilder.toString());
                            if (BarController.this.mQuickQSPanelTop - access$400 > dimensionPixelSize) {
                                z = true;
                            }
                        }
                        for (BarItem barItem : BarController.this.mBars.values()) {
                            if (barItem instanceof QSBarItem) {

                            }
                        }
                        BarController.this.calculateHiddenExpandedBarsHeight();
                    }
                }
            }
        });
        addAllBarItems("QSBarItem", true);
        calculateOnTopQSBarsHeight();
        calculateHiddenExpandedBarsHeight();
        removeAllBarItems("ScrollableBarItem");
        addAllBarItems("ScrollableBarItem", true);
    }

    public void setStatusBarState(int i) {
        this.mStatusBarState = i;
        for (BarItem barItem : this.mBars.values()) {
            if (barItem instanceof QSBarItem) {
                ((QSBarItem) barItem).setStatusBarState(i);
            }
        }
    }
    public void saltQsBarRefresh() {
        for (BarItem barItem : this.mBars.values()) {
            if (barItem instanceof QSBarItem) {
                ((QSBarItem) barItem).refreshQsBar();
            }
        }
    }


}
