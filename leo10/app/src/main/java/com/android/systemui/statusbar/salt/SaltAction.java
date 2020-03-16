package com.android.systemui.statusbar.salt;

import android.content.Context;

import android.content.res.Configuration;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;

import static com.android.settingslib.salt.SaltConfigCenter.collapsePanel;
import static com.android.settingslib.salt.SaltConfigFrame.mSaltContext;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoAction;
import static com.android.settingslib.salt.SaltConfigFrame.setLeoHaptics;

public class SaltAction extends ImageView implements View.OnClickListener{
    private int mClickValue;
    private int mClickColor;
    private int mHapticsValue;
    private int mHapticsStyle;
    private String mClickString;
    private boolean isMoving;
    private float startY;
    private Context mContext;
    boolean is=true;
    private int mle=87;
    public SaltAction(Context context) {
        super(context);
    }

    public SaltAction(Context context,AttributeSet attrs) {
        super(context, attrs);
        mContext=context;
        isMoving = false;
        startY = 0.0f;


    }
    public void  setSaltAction(int Click,String str,int haptics,int hapticsstyle,boolean z,int color) {

        mClickValue=Click;
        mClickString=str;
        mHapticsValue=haptics;
        if( Click >mle ||  z ==true){
            setOnClickListener(this);
            setClickable(z?true:false);
        }
        mClickColor=color;
        mHapticsStyle=hapticsstyle;
        setVisibility(z?VISIBLE:GONE);

    }

    @Override
    public void onClick(View v) {
        setLeoAction(mContext,mClickString,mClickValue);
        if ( mClickValue >mle || is ==true) {
            setLeoHaptics(mContext,mHapticsValue,mHapticsStyle);
        }

    }


    @Override
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        if (motionEvent.getAction() != 0 && motionEvent.getAction() != 2) {
            setBackgroundColor(0);
        }else if ( mClickValue <mle || is ==false) {
            setBackgroundColor(0);
        } else {
            setBackgroundColor(mClickColor);
        }
        if (motionEvent.getAction() != 2) {
            isMoving = false;
        } else if (!isMoving) {
           isMoving = true;
            startY = motionEvent.getY();
        } else if (motionEvent.getY() - startY >= 60.0f) {
            collapsePanel();
        }
        return true;
    }

}
