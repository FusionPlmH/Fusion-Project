package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Debug;
import android.os.SystemProperties;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.android.systemui.Dependency;

import com.android.systemui.Rune;

import com.android.systemui.statusbar.policy.NetworkController;
import com.android.systemui.statusbar.salt.SaltAnalogClock;
import com.android.systemui.statusbar.salt.SaltDeviceInfo;

import java.io.PrintWriter;

import static android.view.View.GONE;
import static android.view.View.VISIBLE;
import static com.android.settingslib.salt.SaltConfigFrame.getLeoUIResource;
import static com.android.settingslib.salt.utils.LeoManages.LeoSysUiManages;
import static com.android.settingslib.salt.utils.LeoManages.setLeoDeviceInfoEnabled;
import static com.android.settingslib.salt.utils.LeoManages.setLeoNotificationPanelAnalogClockShow;
import static com.android.systemui.Rune.STATBAR_SUPPORT_NOTIFICATION_PANEL_PLMN_ZVV;

public class PanelCarrierLabelManager implements PanelCarrierLabelInterface {
    private static final boolean DEBUG=true;
    private Context mContext;
    protected int mCurrentHeight = 0;
    protected int mInsetNavigationBarBottomHeight = 0;
    private boolean mIsFadingIn;
    private boolean mIsFadingOut;
    private PanelCarrierLabelViewBase mLabelView;
    private int mLastDensityDpi = -1;
    private int mLastOrientation = -1;
    private int mLastSemMobileKeyboardCovered = -1;
    private NotificationPanelView mPanelView;
    private boolean mPreviousVisible = false;
    private float mPrvAlpha = -1.0f;
    private PanelCarrierLabelCommonView  mCarrierLabelCommonView;
    public interface PanelCarrierLabelParent {
    }

    public interface PanelCarrierLabelViewBase {
        int getDefaultHeight();

        String getDumpText();

        void setLabelSlot1Text(String str);

        void setLabelSlot2Text(String str);

        void setLabelText(String str);
    }

    static {

    }

    public PanelCarrierLabelManager(NotificationPanelView notificationPanelView) {
        if (notificationPanelView != null) {
            this.mContext = notificationPanelView.getContext();
            this.mPanelView = notificationPanelView;
        }
    }

    private boolean IsAnimationJustFinished(float f) {
        return Float.compare(1.0f, f) == 0 || Float.compare(0.0f, f) == 0;
    }

    private boolean IsAnimationJustStarted(float f) {
        return Float.compare(1.0f, f) == 0 || Float.compare(0.0f, f) == 0;
    }

    private void attachPanelCarrierLabelView() {
        NotificationPanelView notificationPanelView = this.mPanelView;
        String str = "PanelCarrierLabelManager";
        if (notificationPanelView == null || notificationPanelView.getPanelCarrierLabelParent() == null) {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("attachPanelCarrierLabelView() - but panel parent view is null");
            stringBuilder.append(this.mPanelView);
            Log.e(str, stringBuilder.toString());
            return;
        }
        if (STATBAR_SUPPORT_NOTIFICATION_PANEL_PLMN_ZVV) {
            if (DEBUG) {
                Log.d(str, "attachPanelCarrierLabelView(ZVV)");
            }
            PanelCarrierLabelZVVView panelCarrierLabelZVVView = (PanelCarrierLabelZVVView) LayoutInflater.from(this.mContext).inflate(getLeoUIResource("layout/sec_panel_carrier_label_zvv_view"), null, false);
            panelCarrierLabelZVVView.setLayoutParams(new LayoutParams(-1, -2));
            this.mPanelView.getPanelCarrierLabelParent().addView(panelCarrierLabelZVVView);
            this.mLabelView = panelCarrierLabelZVVView;
        } else {
            if (DEBUG) {
                Log.d(str, "attachPanelCarrierLabelView(COMMON)");
            }

            mCarrierLabelCommonView   = new PanelCarrierLabelCommonView(this.mContext);
            mCarrierLabelCommonView.setLayoutParams(new LayoutParams(-1, -2));
            mCarrierLabelCommonView.setGravity(17);
            mCarrierLabelCommonView.setVisibility(0);
            this.mPanelView.getPanelCarrierLabelParent().addView(mCarrierLabelCommonView);
            this.mLabelView =mCarrierLabelCommonView;
        }
    }

    public  PanelCarrierLabelCommonView refreshSaltNotificationPanelCarrier() {
        return mCarrierLabelCommonView;
    }
    private boolean compareFadingInAndOut(float f, float f2) {
        if (Float.compare(f, f2) == 0 || IsAnimationJustFinished(f2)) {
            this.mIsFadingIn = false;
            this.mIsFadingOut = false;
        } else if (Float.compare(f, f2) > 0) {
            this.mIsFadingIn = false;
            this.mIsFadingOut = true;
        } else {
            this.mIsFadingIn = true;
            this.mIsFadingOut = false;
        }
        return Float.compare(f, f2) == 0;
    }

    private boolean isFadingAnimationRunning() {
        return this.mIsFadingIn || this.mIsFadingOut;
    }

    private void updateLayoutParamHeight() {

    }

    public void dump(PrintWriter printWriter) {
        printWriter.println("PanelCarrierLabelManager============");
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("        mInsetNavigationBarBottomHeight:");
        stringBuilder.append(this.mInsetNavigationBarBottomHeight);
        printWriter.println(stringBuilder.toString());
        NotificationPanelView notificationPanelView = this.mPanelView;
        if (notificationPanelView != null) {
            ViewGroup panelCarrierLabelParent = notificationPanelView.getPanelCarrierLabelParent();
            if (panelCarrierLabelParent != null) {
                StringBuilder stringBuilder2 = new StringBuilder();
                stringBuilder2.append("        parentAlpha:");
                stringBuilder2.append(panelCarrierLabelParent.getAlpha());
                printWriter.println(stringBuilder2.toString());
                stringBuilder2 = new StringBuilder();
                stringBuilder2.append("        parentVisibility:");
                stringBuilder2.append(panelCarrierLabelParent.getVisibility());
                stringBuilder2.append(" (V0-I4-G8)");
                printWriter.println(stringBuilder2.toString());
                stringBuilder2 = new StringBuilder();
                stringBuilder2.append("        parentHeight:");
                stringBuilder2.append(panelCarrierLabelParent.getHeight());
                printWriter.println(stringBuilder2.toString());
                stringBuilder2 = new StringBuilder();
                String str = "        parentPaddingBottom:";
                stringBuilder2.append(str);
                stringBuilder2.append(panelCarrierLabelParent.getPaddingBottom());
                printWriter.println(stringBuilder2.toString());
                stringBuilder2 = new StringBuilder();
                stringBuilder2.append(str);
                stringBuilder2.append(panelCarrierLabelParent.getPaddingBottom());
                printWriter.println(stringBuilder2.toString());
            }
        }
        if (this.mLabelView != null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append("        childTextView:");
            stringBuilder.append(this.mLabelView.getDumpText());
            printWriter.println(stringBuilder.toString());
        }
    }

    /* access modifiers changed from: protected */
    public boolean hasNavBarHeight(int i) {
        return i > 0;
    }

    /* access modifiers changed from: protected */
    public boolean hasNoNavBarHeightButGesture(int i) {
        boolean z = false;
        if (i != 0) {
            return false;
        }

        return z;
    }

    public /* synthetic */ void lambda$updateLabelAlphaVisibility$1$PanelCarrierLabelManager() {
        ViewGroup panelCarrierLabelParent = this.mPanelView.getPanelCarrierLabelParent();
        if (panelCarrierLabelParent != null) {
            panelCarrierLabelParent.setAlpha(this.mPrvAlpha);
        }
    }

    public /* synthetic */ void lambda$updateLabelVisibility$0$PanelCarrierLabelManager(boolean z) {
        ViewGroup panelCarrierLabelParent = this.mPanelView.getPanelCarrierLabelParent();
        if (panelCarrierLabelParent == null) {
            return;
        }
        if (!isFadingAnimationRunning() || z) {
            panelCarrierLabelParent.setVisibility(this.mPreviousVisible ? 0 : 8);
        }
    }

    public /* synthetic */ void lambda$updateLayoutParamHeight$2$PanelCarrierLabelManager() {
        ViewGroup panelCarrierLabelParent = this.mPanelView.getPanelCarrierLabelParent();
        if (panelCarrierLabelParent != null) {
            LayoutParams layoutParams = panelCarrierLabelParent.getLayoutParams();
            int i = this.mInsetNavigationBarBottomHeight;
            PanelCarrierLabelViewBase panelCarrierLabelViewBase = this.mLabelView;
            if (panelCarrierLabelViewBase != null) {
                i += panelCarrierLabelViewBase.getDefaultHeight();
            }
            if (layoutParams.height != i) {
                layoutParams.height = i;
                if (DEBUG) {
                    StringBuilder stringBuilder = new StringBuilder();
                    stringBuilder.append("updateLayoutParamHeight() newHeight:");
                    stringBuilder.append(i);
                    Log.d("PanelCarrierLabelManager", stringBuilder.toString());
                }
                this.mCurrentHeight = i;
                panelCarrierLabelParent.setLayoutParams(layoutParams);
            }
        }
    }

    public /* synthetic */ void lambda$updateNavBarHeight$3$PanelCarrierLabelManager(ViewGroup viewGroup) {
        viewGroup.setPadding(0, 0, 0, this.mInsetNavigationBarBottomHeight);
    }

    public void onAttachedToWindow() {
        attachPanelCarrierLabelView();

        updateLayoutParamHeight();

    }

    public void onDetachedFromWindow() {

        NotificationPanelView notificationPanelView = this.mPanelView;
        if (!(notificationPanelView == null || notificationPanelView.getPanelCarrierLabelParent() == null)) {
            this.mPanelView.getPanelCarrierLabelParent().removeAllViews();
        }

    }

    public void onPanelConfigurationChanged(Configuration configuration) {

    }

    public void setTextForCommon(String str) {
        if (this.mLabelView != null) {
            if (DEBUG) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("setTextForCommon(text:");
                stringBuilder.append(str);
                stringBuilder.append(")");
                Log.d("PanelCarrierLabelManager", stringBuilder.toString());
            }
            this.mLabelView.setLabelText(str);
        }
    }

    public void setTextForSlot1(String str) {
        if (this.mLabelView != null) {
            if (DEBUG) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("setTextForSlot1(text:");
                stringBuilder.append(str);
                stringBuilder.append(")");
                Log.d("PanelCarrierLabelManager", stringBuilder.toString());
            }
            this.mLabelView.setLabelSlot1Text(str);
        }
    }

    public void setTextForSlot2(String str) {
        if (this.mLabelView != null) {
            if (DEBUG) {
                StringBuilder stringBuilder = new StringBuilder();
                stringBuilder.append("setTextForSlot2(text:");
                stringBuilder.append(str);
                stringBuilder.append(")");
                Log.d("PanelCarrierLabelManager", stringBuilder.toString());
            }
            this.mLabelView.setLabelSlot2Text(str);
        }
    }

    public void updateLabelAlphaVisibility(float f) {
        f = (Math.min(1.0f, f / ((float) this.mPanelView.getMaxPanelHeight())) * 1.2f) - 0.2f;
        float f2 = 0.0f;
        if (f > 0.0f) {
            f2 = (float) (1.0d - ((1.0d - Math.cos(Math.pow((double) (1.0f - f), 2.0d) * 3.141590118408203d)) * 0.5d));
        }
        if (IsAnimationJustStarted(this.mPrvAlpha) || IsAnimationJustFinished(f2)) {
            updateLabelVisibility(true);
        }
        if (!compareFadingInAndOut(this.mPrvAlpha, f2)) {
            this.mPrvAlpha = f2;

        }
    }

    public void updateLabelVisibility() {
        updateLabelVisibility(false);
    }

    /* access modifiers changed from: protected */
    public void updateLabelVisibility(boolean z) {


    }

    public void updateNavBarHeight(int i) {
        ViewGroup panelCarrierLabelParent = this.mPanelView.getPanelCarrierLabelParent();
        if (!(panelCarrierLabelParent == null || this.mInsetNavigationBarBottomHeight == i || (!hasNavBarHeight(i) && !hasNoNavBarHeightButGesture(i)))) {
            this.mInsetNavigationBarBottomHeight = i;
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("updateNavBarHeight(navHeight:");
            stringBuilder.append(i);
            stringBuilder.append(") mInsetNavigationBarBottomHeight:");
            stringBuilder.append(this.mInsetNavigationBarBottomHeight);
            Log.d("PanelCarrierLabelManager", stringBuilder.toString());

            updateLayoutParamHeight();
        }
    }

    public void updateQuickStarStyle() {
        updateLabelVisibility();
    }
}
