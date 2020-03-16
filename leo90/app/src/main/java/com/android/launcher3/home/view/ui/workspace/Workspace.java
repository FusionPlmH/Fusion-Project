package com.android.launcher3.home.view.ui.workspace;



import android.content.Context;

import android.os.Vibrator;

import android.util.AttributeSet;

import android.view.GestureDetector;

import android.view.MotionEvent;

import android.widget.FrameLayout;

import static com.fusionleo.LeoProvider.LeoLauncherManages.*;
import static com.fusionleo.LeoX.launcher.LeoConfig.*;


public class Workspace extends FrameLayout {
    private static final int EXIT_DRAG_STATE_DELAY = 100;
    private static final String TAG = "Launcher.Workspace";
    private GestureDetector mDoubleTapGesture;


    public  void LeoWorkspaceGesture(){
        mDoubleTapGesture = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() {
            private void updateDoubleAction(Context context) {
                if(setLeoLauncherGestureDoubleEnabled==1){
                    updateContext(context);
                    int act=setLeoLauncherGestureDoubleAction;
                    String str=LauncherGesture[1];
                    if(act==0){
                        act=100;
                    }
                    setLeoAction(context, str, act);
                    setLeoHaptics(context,setLeoLauncherGestureDoubleVibratorEnable,setLeoLauncherGestureDoubleVibratorLevel);
                }

            }
            private void updateContext(Context context) {
                LeoLauncherManages(context);
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
