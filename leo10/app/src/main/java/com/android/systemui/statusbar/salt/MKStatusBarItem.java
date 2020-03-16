package com.android.systemui.statusbar.salt;

import android.content.ContentResolver;
import android.content.Context;
import android.graphics.Rect;
import android.graphics.Typeface;
import android.icu.util.Calendar;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewParent;



public class MKStatusBarItem {
    public interface Manager {
        public void addVisibilityReceiver(VisibilityReceiver visibilityReceiver);
    }



    public interface VisibilityReceiver {
        public void onVisibilityChanged(boolean isVisible);
    }
    public static Manager findManager(View v) {
        ViewParent parent = v.getParent();
        if (parent == null) {
            return null;
        } else if (parent instanceof Manager) {
            return (Manager) parent;
        } else if (parent instanceof View) {
            return findManager((View) parent);
        } else {
            return null;
        }
    }
}