package com.android.systemui.qs.bar;

import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.statusbar.phone.StatusBar;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public interface BarItem {
    public static final int BAR_TYPE_ALWAYS_VISIBLE = 0;
    public static final int BAR_TYPE_VISIBLE_ABOVE_TILES_WHEN_EXPANDED = 2;
    public static final int BAR_TYPE_VISIBLE_BELOW_TILES_WHEN_EXPANDED = 1;

    public interface Callback {
        void onBarHeightChanged();

        void onBarTypeChanged();

        void onBarVisibilityChanged();
    }

    void clearCallback();

    void destroy();

    void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr);

    int getBarHeight();

    View getBarView();

    int getType();

    View inflateViews(ViewGroup viewGroup);

    boolean isAvailable();

    boolean isListening();

    void onConfigChanged(Configuration configuration);

    void setCallback(Callback callback);

    void setExpanded(boolean z);
    public abstract void refreshQsBar();
    void setListening(boolean z);

    void setPosition(float f);

    void setStatusBar(StatusBar statusBar);
}
