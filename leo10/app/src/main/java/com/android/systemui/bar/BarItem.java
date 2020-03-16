package com.android.systemui.bar;

import android.content.Context;
import android.content.res.Configuration;
import android.view.View;
import android.view.ViewGroup;
import com.android.systemui.statusbar.phone.StatusBar;
import java.io.FileDescriptor;
import java.io.PrintWriter;

public abstract class BarItem {
    public final String TAG;
    protected Context mContext;
    protected StatusBar mStatusBar;

    public BarItem() {
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("Bar.");
        stringBuilder.append(getClass().getSimpleName());
        this.TAG = stringBuilder.toString();
    }

    public abstract void destroy();

    public void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    public abstract View inflateViews(ViewGroup viewGroup, boolean z);

    public abstract boolean isAvailable();

    public void onColorChanged(Configuration configuration) {
    }

    public void onQsClosed() {
    }

    public void setStatusBar(StatusBar statusBar) {
        this.mStatusBar = statusBar;
    }
}
