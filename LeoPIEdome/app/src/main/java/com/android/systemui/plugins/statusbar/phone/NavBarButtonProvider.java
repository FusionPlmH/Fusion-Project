package com.android.systemui.plugins.statusbar.phone;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;

public interface NavBarButtonProvider  {
    public static final String ACTION = "com.android.systemui.action.PLUGIN_NAV_BUTTON";
    public static final int VERSION = 2;

    public interface ButtonInterface {
        void abortCurrentGesture();

        void setCarMode(boolean z);

        void setDarkIntensity(float f);

        void setImageDrawable(Drawable drawable);

        void setVertical(boolean z);
    }

    View createView(String str, ViewGroup viewGroup);
}
