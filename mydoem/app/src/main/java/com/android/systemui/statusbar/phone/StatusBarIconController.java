package com.android.systemui.statusbar.phone;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.VisibleForTesting;
import android.text.TextUtils;
import android.util.ArraySet;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.android.internal.statusbar.StatusBarIcon;


public interface StatusBarIconController {





 //   void addIconGroup(IconManager iconManager);

    void removeIcon(String str);

  //  void removeIconGroup(IconManager iconManager);

    void setExternalIcon(String str);

    void setIcon(String str, int i, CharSequence charSequence);

    void setIcon(String str, StatusBarIcon statusBarIcon);

    void setIconVisibility(String str, boolean z);

    static ArraySet<String> getIconBlacklist(String blackListStr) {
ArraySet<String> ret = new ArraySet();
        if (blackListStr == null) {
            blackListStr = "rotate,headset";
        }
        for (String slot : blackListStr.split(",")) {
            if (!TextUtils.isEmpty(slot)) {
                ret.add(slot);
            }
        }
        return ret;
    }
}
