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

import com.android.fusionleo.AnalogClock;
import com.android.systemui.simpleindicator.SimpleIndicatorTextView;

import static com.android.fusionleo.global.LeoGlobalUtils.getLeoCustomString;
import static com.android.fusionleo.global.LeoGlobalUtils.getSymbol;
import static com.android.fusionleo.global.LeoGlobalUtils.setLeoRomFonts;
import static com.android.fusionleo.statusbar.LeoStatusbarSettings.*;

import static com.android.fusionleo.statusbar.LeoStatusbarUtils.*;


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
    protected int mStatusBarState;

    protected void onFinishInflate() {
        super.onFinishInflate();
    setLeoNotificationPanelUI();

    }
   public void onWindowFocusChanged(boolean mBoolean) {
       setLeoNotificationPanelUI();
  }

    private void  setLeoNotificationPanelUI(){
        LeoStatusSettings(mContext);

        AnalogClock mAnalogClock = (AnalogClock)findViewById(getLeoResource("id/leo_pulldown_analogclock"));

        if(setLeoUesrPulldownAnalogEnable){
            mAnalogClock.setVisibility(VISIBLE);
        }else{
            mAnalogClock.setVisibility(GONE);
        }

    }
  public void setLeoPullDownHandleView() {
      if (mLeoPullDownHandle != null) {
          Object obj = (this.mStatusBarState == 1 || this.mStatusBarState == 5 || this.mStatusBarState == 10) ? null : (mLastOrientation == 2 || mQsExpansionHeight > ((float) mQsMinExpansionHeight)) ? 1 : mQsFullyExpanded ? 1 : 1;
          mLeoPullDownHandle.setVisibility(obj != null ? GONE : VISIBLE);
      }
  }
    public void getLeoPullDownHandleView(View view) {
        mLeoPullDownHandle  = view;
    }


    private int mLastOrientation;
    protected float mQsExpansionHeight;
    protected int mQsMinExpansionHeight;
    public boolean mQsFullyExpanded;


}
