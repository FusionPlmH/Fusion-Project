package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.AsyncTask;
import android.os.Vibrator;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;



import static com.android.systemui.UId.UId47;
import static com.android.systemui.UId.UId48;
import static com.android.systemui.UId.UId49;
import static com.android.systemui.UId.getLeoRandomColor;
import static com.android.systemui.statusbar.DeviceState.isDesktopMode;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;


import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDataUsageRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrDisabledLockPulldown;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPullDownCarrierString;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPullDownCarrierStringA;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownCarrier;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownCarrierColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownCarrierColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownCarrierFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownCarrierRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrPulldownCarrierSize;

import static com.android.systemui.UId.UId46;

import static com.os.leo.utils.LeoUserString.getLeoCustomString;
import static com.os.leo.utils.LeoUserString.getSymbol;


/**
 * Created by Anna Berkovitch on 31/05/2016.
 */
public class NotificationPanelView extends FrameLayout{
    private TextView mCarrierLabel;
    private TextView mLeoCarrierLabel;
    private ImageView mOutdoorMode;
    Context mContext;
    public boolean mTaskManagerShowing;
  //private QSDetailClipper mClipper;
 public ImageButton mServices;
  private ImageButton mClearall;
 // private TaskManager mTaskManager;
    private boolean mShowTaskManager;
    private LinearLayout mTaskManagerPanel;
    private View mLeoPullDownHandle;

    protected View.OnClickListener mLeoOutdoorModeClickListener;

    public NotificationPanelView(Context context, AttributeSet attrs) {
        super(context, attrs);
        setWillNotDraw(true);


    }

    public void setStatusBar(StatusBar bar) {



    }
    protected void onFinishInflate() {
        super.onFinishInflate();
        setLeoNotificationPanelUI();

    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoNotificationPanelUI();
    }

    public void setLeoNotificationPanelUI() {
        LeoSettings(mContext);
        LinearLayout  Layout =( LinearLayout) this.findViewById(UId49);
        TextView  customLabel =( TextView) this.findViewById(UId47);
        TextView  Label =( TextView) this.findViewById(UId46);
        int size=setLeoUesrPulldownCarrierSize;
        int color=setLeoUesrPulldownCarrierColor;
        int font=setLeoUesrPulldownCarrierFont;
        String str=setLeoUesrPullDownCarrierString;
        String str2=setLeoUesrPullDownCarrierStringA;
        int style=setLeoUesrPulldownCarrier;

        int colorstyle=setLeoUesrPulldownCarrierRandomColor;
        int colorrandom=getLeoRandomColor(mContext);
        int mDefaultcolor=getContext().getColor(getLeoResource("color/notification_panel_carrier_label_text_color"));
        int Enabled= setLeoUesrPulldownCarrierColorEnabled;
        if(Enabled==0){
            Label.setTextColor(mDefaultcolor);
            customLabel.setTextColor(mDefaultcolor);
        }else if (Enabled== 1) {
            if(colorstyle==0){
                Label.setTextColor(color);
                customLabel.setTextColor(color);
            }else if(colorstyle==1){
                Label.setTextColor(colorrandom);
                customLabel.setTextColor(colorrandom);
            }

        }
        if(style==0){
            Label.setVisibility(VISIBLE);
            customLabel.setVisibility(GONE);
        }else if (style == 1) {
            Label.setVisibility(GONE);
            customLabel.setVisibility(VISIBLE);
        }
        Label.setTextSize(size);

        Label.setTypeface(setLeoRomFonts(0,font));
        customLabel.setTextSize(size);

        customLabel.setTypeface(setLeoRomFonts(0,font));
        customLabel.setText(getLeoCustomString(str)+getSymbol(7,true)+getLeoCustomString(str2));
    }
    protected boolean mQsExpansionEnabled;
    public void setPullDownHandle(View view) {
        mLeoPullDownHandle= findViewById(UId48);
    }


    public boolean isLockPulldown() {
        setLeoNorma(mContext);
       Log.v(" by Norma" , "Leo 不咸的盐巴" );
        return LeoNorma
                ? this.mKeyguardShowing : false;
    }
    boolean   mKeyguardShowing;

public static  boolean LeoNorma;
    public static void setLeoNorma(Context c) {
        LeoNorma=Settings.System.getInt(c.getContentResolver(),"disabled_lock_qs", 0)==1;
    }
}
