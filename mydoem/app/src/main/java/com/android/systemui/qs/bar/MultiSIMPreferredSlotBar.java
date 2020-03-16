package com.android.systemui.qs.bar;

import android.app.StatusBarManager;
import android.content.ActivityNotFoundException;
import android.content.BroadcastReceiver;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemProperties;
import android.provider.Settings.Global;
import android.provider.Settings.System;
import android.telephony.SubscriptionManager;
import android.telephony.TelephonyManager;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import android.widget.Toast;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;


import com.android.systemui.statusbar.DeviceState;
import com.android.systemui.util.SettingsHelper;
import com.android.systemui.util.SettingsHelper.OnChangedCallback;
import java.util.ArrayList;

import static com.android.systemui.UId.getLeoRandomColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.os.leo.utils.FontsUtils.setLeoRomFonts;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;

import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMALLColor;
import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMALLColorEnabled;
import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMCallColor;
import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMColorEnabled;
import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMDataColor;
import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMDisplay;
import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMRandomColor;
import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMTextFont;
import static com.os.leo.utils.LeoUserSettings.getLeoMultiSIMmMMSColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessAllColor;

import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessDtailIconColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessIconColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrBrightnessRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrEnabledBrightnessAllColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrEnabledBrightnessColorCustom;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMALLColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMALLColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMCallColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMColorEnabled;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMDataColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMDisplay;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMRandomColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMTextFont;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrMultiSIMmMMSColor;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrNotificationEnabledBG;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.getLeoUri;

public class MultiSIMPreferredSlotBar extends QSBarItem implements OnClickListener, OnLongClickListener {

    private static final int MESSAGE_CHANGE_NETWORK_MODE = 1001;
    private static final int MESSAGE_DELAY_DATASERVICE_SET = 1003;
    private static final int MESSAGE_DELAY_DATASERVICE_TIMEOUT = 1004;
    private static final int MESSAGE_SET_PREFERRED_NETWORK_TYPE = 1002;
    private static final int MESSAGE_SET_PREFERRED_NETWORK_TYPE_IN_THREAD = 1006;
    private static final int MESSAGE_SET_PREFERRED_NETWORK_TYPE_ONESLOT = 1005;
    private static final int MESSAGE_UPDATE_MULTISIM_PREFERRED_DATA_BUTTON = 1000;
    private static final int NETOWRKMODECHANGE_MAX_TIMEOUT = 10000;

    private static final String TAG = "MultiSIMPreferredSlotBar";
    private boolean Netchangefinished = false;
    private int[] SimImageIdx = new int[]{0, 1};
    private String[] SimName = new String[]{"SIM 1", "SIM 2"};
    private String SimState_1;
    private String SimState_2;

    private boolean mAirplaneMode = false;
    private boolean mCTCforceoff = false;
    private boolean mChangedByDataButton = false;
    private Context mContext;
    PrefferedSlotButton mDefaultDataButton;
    private int mDefaultDataSimId = 0;
    PrefferedSlotButton mDefaultSmsButton;
    private int mDefaultSmsSimId = 0;
    PrefferedSlotButton mDefaultVoiceButton;
    private int mDefaultVoiceSimId = 0;
    private int mDimTextColor;

    LinearLayout mSlotButtonGroup;
    private ArrayList<PrefferedSlotButton> mSlotButtons = new ArrayList();
    private ViewGroup mSlotListAskButtonGroup;
    private TextView mSlotListAskButtonText;
    private ViewGroup mSlotListButton1Group;
    private ViewGroup mSlotListButton2Group;
    private ImageView mSlotListButtonImage1;
    private ImageView mSlotListButtonImage2;
    private TextView mSlotListButtonText1;
    private TextView mSlotListButtonText2;
    private View mSlotView;
    private StatusBarManager mStatusBarManager;

    @Override
    public void onClick(View view) {

    }

    @Override
    public boolean onLongClick(View view) {
        return false;
    }


    private class PrefferedSlotButton {

        private ViewGroup mButtonGroup;
        private String mCarrierText;
        private Context mContext;
        private String mNetworkNameDefault;
        private String mNetworkNameSeparator;
        private ImageView mSlotButtonImage;
        private TextView mSlotButtonLine2OnlyText;
        private ViewGroup mSlotButtonLine2WithImage;
        private TextView mSlotButtonTextLine1;
        private TextView mSlotButtonTextLine2;

        String slotIconSettingId;
        String slotNameSettingId;

        protected void setViews(ViewGroup viewGroup) {
            this.mButtonGroup = viewGroup;

            updateTextColor();
            setLeoMultiSIMPreferredSlotStyle();
        }

        public void updateTextColor() {

        }
        public void setLeoMultiSIMPreferredSlotStyle() {
            LeoSettings(mContext);
            int colordefault=mContext.getColor(getLeoResource("color/qs_multisim_preffered_slot_text_color"));
            int TextLine1=colordefault;
            int TextLine2=colordefault;
            int Line2OnlyText=colordefault;
            int font=setLeoUesrMultiSIMTextFont;
            int allcolor=setLeoUesrMultiSIMALLColor;
            int colorstyle=setLeoUesrMultiSIMRandomColor;
            int colorrandom=getLeoRandomColor(mContext);
            int all=setLeoUesrMultiSIMALLColorEnabled;
            if (setLeoUesrMultiSIMColorEnabled) {
                if (all==0) {
                    if(colorstyle==0){
                        TextLine1=setLeoUesrMultiSIMCallColor;
                        TextLine2=setLeoUesrMultiSIMmMMSColor;
                        Line2OnlyText=setLeoUesrMultiSIMDataColor;
                    }else if(colorstyle==1){
                        TextLine1=colorrandom;
                        TextLine2= colorrandom;
                        Line2OnlyText=colorrandom;
                    }
                } else if ( all == 1) {
                    TextLine1=allcolor;
                    TextLine2=allcolor;
                    Line2OnlyText=allcolor;
                }

            } else {
                updateTextColor();

            }
            mSlotButtonTextLine1.setTextColor( TextLine1);
            mSlotButtonTextLine2.setTextColor(TextLine2);
            mSlotButtonLine2OnlyText.setTextColor(Line2OnlyText);
            mSlotButtonTextLine1.setTypeface(setLeoRomFonts(0,font));
            mSlotButtonTextLine2.setTypeface(setLeoRomFonts(0,font));
            mSlotButtonLine2OnlyText.setTypeface(setLeoRomFonts(0,font));
        }
    }

    @Override
    public void destroy() {

    }



    public MultiSIMPreferredSlotBar(Context context) {
        super(context);
        this.mContext = context;
        setLeoObserver();

    }
    public LeoObserver mLeoObserver ;
    public void setLeoObserver() {
        mLeoObserver=new LeoObserver(new Handler());
        mLeoObserver.observe();

    }
    class LeoObserver extends ContentObserver {
        LeoObserver(Handler handler) {
            super(handler);
        }

        void observe() {
            ContentResolver contentResolver = getContext().getContentResolver();
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMDisplay()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMColorEnabled()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMALLColorEnabled()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMALLColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMCallColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMmMMSColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMDataColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMRandomColor()), false,this);
            contentResolver.registerContentObserver(getLeoUri(getLeoMultiSIMTextFont()), false,this);
        }

        @Override
        public void onChange(boolean selfChange) {
            setViews();

        }


    }
    public void setViews(){
        LeoSettings(mContext);
        mDefaultVoiceButton.setLeoMultiSIMPreferredSlotStyle();
        getBarVisibility();
        initBarViews();
        getBarHeight();
        updateBarVisibilities();
        View view=(View) findViewById(getLeoResource("id/qs_multi_sim_preffered_slot_divider"));
        if ( setLeoUesrNotificationEnabledBG) {
            view.setBackgroundColor(Transparency);
        }else {
            view.setBackgroundColor(getContext().getColor(getLeoResource("color/qs_multisim_preffered_slot_divider_color"))) ;
        }

    }
    private void initBarViews() {

    }
    public int getBarHeight() {


        return 0;
    }



    private int[] calculatePopupWindowPos(View view, View view2) {
        int[] iArr = new int[2];
        int[] iArr2 = new int[2];
        view.getLocationOnScreen(iArr2);
        int height = view.getHeight();
        int width = view.getWidth();
        view2.measure(0, 0);
        int measuredHeight = view2.getMeasuredHeight();
        int measuredWidth = view2.getMeasuredWidth();
        int i = this.mContext.getResources().getDisplayMetrics().heightPixels;
        int i2 = this.mContext.getResources().getDisplayMetrics().widthPixels;

        return iArr;
    }

    private void changeNetworkMode(Message message) {

    }

    private void dimissSlotListPopupWindow() {

    }


    public boolean DualsimLayout() {
        return setLeoUesrMultiSIMDisplay;
    }


    public boolean getBarVisibility() {
        return (!setLeoUesrMultiSIMDisplay || DeviceState.getActiveSimCount(this.mContext) != 2 || this.mStatusBar == null ) ? false : true;
    }



    private void updateBarVisibilities() {

    }

}
