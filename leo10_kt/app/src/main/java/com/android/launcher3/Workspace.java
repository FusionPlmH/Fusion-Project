package com.android.launcher3;


import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.Toast;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

import static com.android.launcher3.salt.SaltLauncher.*;
import static com.android.launcher3.salt.SaltServerFrame.ActionToastSring;
import static com.android.launcher3.salt.SaltServerFrame.setLeoAction;
import static com.android.launcher3.salt.SaltServerFrame.setLeoHaptics;

public class Workspace extends FrameLayout implements View.OnTouchListener {


    public Workspace(@NonNull Context context) {
        super(context);
    }

    public Workspace(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        setSaltWorkspaceGesture();
    }

    @Override
    public boolean onTouch(View v, MotionEvent event) {
        return false;
    }


    public  void setSaltWorkspaceGesture(){
        Context context=getContext();
        mSaltSwipeDetector = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() {
            public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
                if (motionEvent == null || motionEvent2 == null || Math.abs(motionEvent.getX() - motionEvent2.getX()) > 250.0f || Math.abs(f2) <= 100.0f) {
                    return false;
                }
                if (motionEvent.getY() - motionEvent2.getY() >= 200.0f ) {
                    //up
                    if(LauncherDI.getInstance().getSettingsPreferenceDataStore().getBoolean("pref_quick_access_finder_setting", false)){
                        toast("请先在主屏幕设置中关闭【在主屏幕中搜索】");
                    }else {
                        if(setLeoLauncherSlideGestureEnabled){
                            setLeoAction(context,LauncherGesture[5],setLeoLauncherSlideGestureTopAction);
                            saltHaptics();
                        }

                    }
                    return true;
                } else if (motionEvent2.getY() - motionEvent.getY() < 200.0f) {
                    return false;
                } else {
                    //down
                    if(LauncherDI.getInstance().getSettingsPreferenceDataStore().getBoolean("pref_notification_panel_setting", false)){
                        toast("请先在主屏幕设置中关闭【向下滑动打开通知面板】");
                    } else {
                        if(setLeoLauncherSlideGestureEnabled){
                            saltHaptics();
                            setLeoAction(context,LauncherGesture[6],setLeoLauncherSlideGestureBottomAction);
                        }

                    }
                    return true;
                }
            }
            private void toast(String STR){
                Toast.makeText(context,STR,Toast.LENGTH_SHORT).show();
            }
           private void  saltHaptics(){
               setSaltWorkspace(context);
               setLeoHaptics(context,setLeoLauncherGestureDoubleVibratorEnable,setLeoLauncherGestureDoubleVibratorLevel);
           }
            public boolean onDoubleTap(MotionEvent motionEvent) {
                if(setLeoLauncherGestureDoubleEnabled==1){
                int act=setLeoLauncherGestureDoubleAction;
                String str=LauncherGesture[1];
                if(act==0){
                    act=100;
                }
                setLeoAction(context,str,act);
                saltHaptics();
                }
                return true;
            }
        });
    }

     private GestureDetector mSaltSwipeDetector;
    public void saltTouchEvent(MotionEvent motionEvent){
        if (mSaltSwipeDetector != null) {
            mSaltSwipeDetector.onTouchEvent(motionEvent);
        }

    }
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
       saltTouchEvent(motionEvent);

        return false;
    }




}
