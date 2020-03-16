package com.android.systemui.qs;

import android.content.ComponentName;
import android.content.Context;

public interface QSHost {

    public interface Callback {
        void onTilesChanged();
    }

    void collapsePanels();

    void forceCollapsePanels();

    Context getContext();

    String getCustomTileNameFromSpec(String str);

    //TileServices getTileServices();

    int indexOf(String str);

    boolean isDefaultCustomTile(ComponentName componentName);

    void onTileStateChanged(String str, int i);

    void refreshTileList();

    void removeTile(String str);

    boolean shouldBeHiddenByKnox(String str);

    void warn(String str, Throwable th);
}
