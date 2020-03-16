package com.android.launcher3.home.view.ui.workspace;

import android.animation.TimeInterpolator;
import android.annotation.SuppressLint;
import android.appwidget.AppWidgetHost;
import android.content.ComponentName;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Canvas;
import android.graphics.Point;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Parcelable;
import android.os.UserHandle;
import android.os.Vibrator;
import android.provider.Settings.System;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.GestureDetector;
import android.view.GestureDetector.SimpleOnGestureListener;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.widget.FrameLayout;

import static com.android.launcher3.LeoAmber.LeoGlobalUtils.LeoGlobalActiong;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.LeoGlobalSetting;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setGlobalHitomiLeoLauncherSlideGestureVibration;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setGlobalHitomiLeoLauncherSlideGestureVibrationLevel;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrWorkspaceGestureDouble;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrWorkspaceGestureDoubleEnabled;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrWorkspaceGestureDoubleString;


public class Workspace extends FrameLayout {
    private static final int EXIT_DRAG_STATE_DELAY = 100;
    private static final String TAG = "Launcher.Workspace";
    private GestureDetector mDoubleTapGesture;


    public  void LeoWorkspaceGesture(){
        mDoubleTapGesture = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() {
            private Vibrator mVibrator;
            private void updateDoubleAction(Context context) {
                if(setLeoUesrWorkspaceGestureDoubleEnabled==1){
                    updateContext(context);
                    int act=setLeoUesrWorkspaceGestureDouble;
                    if(act==0){
                        act=100;
                    }
                    LeoGlobalActiong(context, act, setLeoUesrWorkspaceGestureDoubleString);
                    Vibrate(context,setGlobalHitomiLeoLauncherSlideGestureVibration,setGlobalHitomiLeoLauncherSlideGestureVibrationLevel);
                }

            }
            private void updateContext(Context context) {
                LeoGlobalSetting(context);
            }
            public void Vibrate(Context context,int of,int style) {
                if (of== 1) {
                    this.mVibrator = (Vibrator)context.getSystemService(Context.VIBRATOR_SERVICE);
                    int  level=style;
                    this.mVibrator.vibrate(level);
                }
            }

            public boolean onDoubleTap(MotionEvent motionEvent) {
                updateDoubleAction(getContext());
                return true;
            }
        });
    }

    public Workspace(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public Workspace(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        LeoWorkspaceGesture();
    }

    private void cellConfigChangeAfterRotation() {

    }

    private void checkVisibilityOfCustomLayout(int i) {

    }


}
