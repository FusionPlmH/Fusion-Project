package com.android.systemui.settings;

import android.app.AlertDialog;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RelativeLayout;
import android.widget.SeekBar.OnSeekBarChangeListener;
import android.widget.TextView;


import com.android.systemui.statusbar.policy.BrightnessMirrorController;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessActivityColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessAllColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessBGColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessControlColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessMaxColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrEnabledBrightnessAllColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrEnabledBrightnessColorCustom;

public class ToggleSliderView extends RelativeLayout {

    private Context mContext;
    private int mDualSeekBarBackgroundColor;
    private int mDualSeekBarForegroundColor;
    public int mDualSeekBarThreshold;
    private AlertDialog mEyeStrainAlertDialog;
    private TextView mHBMTextView;
    private Boolean mIsHighBrightnessMode;
    private Boolean mIsMirror;
    private TextView mLabel;

    private ToggleSliderView mMirror;
    private BrightnessMirrorController mMirrorController;
    boolean mOutdoorMode;

    public ToggleSliderView(Context context) {
        super(context);
        this.mContext = context;

    }
    private int mBrightnessBGColor;
    private int mBrightnessActivityColor;
    private int mBrightnessControlColor;
    private int mBrightnessMaxColor;

    private void setLeoBrightnessSliderColor() {
        LeoSettings(mContext);
       int BGColor=mContext.getColor(getLeoResource("color/brightness_controller_seekbar_color_normal"));
       int ActivityColor=mContext.getColor(getLeoResource("color/brightness_controller_seekbar_color_activated"));
       int ControlColor =mContext.getColor(getLeoResource("color/brightness_controller_seekbar_color_activated_thumb"));
       int MaxColor =mContext.getColor(getLeoResource("color/brightness_dual_seekbar_background_color"));
        int colorstyle=setLeoUesrBrightnessRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
       int color=BGColor;
        int color2=ActivityColor;
        int color3=ControlColor;
        int color4=MaxColor;
        int allcolor=setLeoUesrBrightnessAllColor;
        int all=setLeoUesrEnabledBrightnessAllColor;
        if (setLeoUesrEnabledBrightnessColorCustom) {
            if (all==0) {
                if(colorstyle==0){
                    color =   setLeoUesrBrightnessBGColor;
                    color2 =   setLeoUesrBrightnessActivityColor;
                    color3 =  setLeoUesrBrightnessControlColor;
                    color4=setLeoUesrBrightnessMaxColor;
                }else if(colorstyle==1){
                    color =colorrandom;
                    color2 =colorrandom;
                    color3=colorrandom;
                    color4=colorrandom;
                }
            } else if ( all == 1) {

                color = allcolor;
                color2= allcolor;
                color3 =allcolor;
                color4=allcolor;
            }

        } else {
          color=BGColor;
       color2=ActivityColor;
           color3=ControlColor;
           color4=MaxColor;
        }

        mBrightnessBGColor =color;
        mBrightnessActivityColor= color2;
        mBrightnessControlColor= color3;
        mBrightnessMaxColor=color4;
    }
    public void updateResources() {

    }

}
