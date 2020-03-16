package com.android.systemui.statusbar.phone;

import android.animation.LayoutTransition;
import android.animation.LayoutTransition.TransitionListener;
import android.animation.ObjectAnimator;
import android.animation.TimeInterpolator;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.NotFoundException;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Message;
import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;

import com.android.systemui.plugins.statusbar.phone.NavGesture;
import com.android.systemui.plugins.statusbar.phone.NavGesture.GestureHelper;

import com.android.systemui.statusbar.policy.KeyButtonDrawable;
import com.dome.leo.R;


import java.io.FileDescriptor;
import java.io.PrintWriter;

import static android.graphics.PorterDuff.Mode.SRC_ATOP;
import static com.android.systemui.UId.LeoLogoStyle;

import static com.android.systemui.UId.setKeyButtonDrawableIconColor;
import static com.leo.utils.Constants.getLeoResource;
import static com.leo.utils.Constants.mLeoRom;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrStatusBarClockColor;

public class NavigationBarView extends FrameLayout {
    private KeyButtonDrawable mAccessibilityIcon;
    protected KeyButtonDrawable mBackAltCarModeIcon;
    protected KeyButtonDrawable mBackAltIcon;
    protected KeyButtonDrawable mBackAltLandCarModeIcon;
    protected KeyButtonDrawable mBackAltLandIcon;
    protected KeyButtonDrawable mBackCarModeIcon;
    protected KeyButtonDrawable mBackIcon;
    protected KeyButtonDrawable mLeoCustomize;
    protected KeyButtonDrawable mBackLandCarModeIcon;
    protected KeyButtonDrawable mBackLandIcon;
    protected final NavigationBarTransitions mBarTransitions;
    protected final SparseArray<ButtonDispatcher> mButtonDispatchers = new SparseArray();
    protected Configuration mConfiguration;
    protected int mCurrentRotation = -1;
    protected View mCurrentView = null;
   // private DeadZone mDeadZone;
    protected int mDisabledFlags = 0;
    final Display mDisplay;
  //  private Divider mDivider;
    protected KeyButtonDrawable mDockedIcon;
    private boolean mDockedStackExists;
    private GestureHelper mGestureHelper;
    private H mHandler = new H(this, null);
    protected KeyButtonDrawable mHomeCarModeIcon;
    protected KeyButtonDrawable mHomeDefaultIcon;
    protected KeyButtonDrawable mImeIcon;
    private final OnClickListener mImeSwitcherClickListener = new OnClickListener() {
        public void onClick(View view) {
            //((InputMethodManager) NavigationBarView.this.mContext.getSystemService(InputMethodManager.class)).showInputMethodPicker(true);
        }
    };
    private boolean mInCarMode = false;
    private boolean mLayoutTransitionsEnabled = true;
    boolean mLongClickableAccessibilityButton;
    protected KeyButtonDrawable mMenuIcon;
    protected int mNavigationIconHints = 0;
    private NavigationBarInflaterView mNavigationInflaterView;

    private OnVerticalChangedListener mOnVerticalChangedListener;
    protected KeyButtonDrawable mRecentIcon;

    protected View[] mRotatedViews = new View[4];
    boolean mScreenOn;
    @SuppressLint("ObjectAnimatorBinding")
    boolean mShowAccessibilityButton;
    boolean mShowMenu;
    private final NavTransitionListener mTransitionListener = new NavTransitionListener(this, null);
    private boolean mUseCarModeUi = false;
    boolean mVertical;
    private boolean mWakeAndUnlocking;
    protected FrameLayout mNavbgView;
    public interface OnVerticalChangedListener {
        void onVerticalChanged(boolean z);
    }

    private class H extends Handler {

        private H(NavigationBarView navigationBarView, Object o) {
        }

        public void handleMessage(Message m) {
            switch (m.what) {
                case 8686:
                    String how = "" + m.obj;
                    int w = NavigationBarView.this.getWidth();
                    int h = NavigationBarView.this.getHeight();
                    int vw = NavigationBarView.this.getCurrentView().getWidth();
                    if (h != NavigationBarView.this.getCurrentView().getHeight() || w != vw) {
                        //Log.w("StatusBar/NavBarView", String.format("*** Invalid layout in navigation bar (%s this=%dx%d cur=%dx%d)", new Object[]{how, Integer.valueOf(w), Integer.valueOf(h), Integer.valueOf(vw), Integer.valueOf(vh)}));
                        NavigationBarView.this.requestLayout();
                        return;
                    }
                    return;
                default:
                    return;
            }
        }
    }

    private class NavTransitionListener implements TransitionListener {
        private boolean mBackTransitioning;
        private long mDuration;
        private boolean mHomeAppearing;
        private TimeInterpolator mInterpolator;
        private long mStartDelay;



        private NavTransitionListener(NavigationBarView navigationBarView, Object o) {
        }

        public void startTransition(LayoutTransition transition, ViewGroup container, View view, int transitionType) {

        }

        public void endTransition(LayoutTransition transition, ViewGroup container, View view, int transitionType) {

        }

        public void onBackAltCleared() {
            ButtonDispatcher backButton = NavigationBarView.this.getBackButton();
            if (!this.mBackTransitioning && backButton.getVisibility() == 0 && this.mHomeAppearing && NavigationBarView.this.getHomeButton().getAlpha() == 0.0f) {
                NavigationBarView.this.getBackButton().setAlpha(0);
                ValueAnimator a = ObjectAnimator.ofFloat(backButton, "alpha", new float[]{0.0f, 1.0f});
                a.setStartDelay(this.mStartDelay);
                a.setDuration(this.mDuration);
                a.setInterpolator(this.mInterpolator);
                a.start();
            }
        }
    }

    public NavigationBarView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
      //  this.mBarTransitions = mBarTransitions;
        //  this.mLeoCustomize = mLeoCustomize;
        setLeoButton();

        mBarTransitions = null;
    }
    public void setLeoButton() {
        mButtonDispatchers.put(14, new ButtonDispatcher(4));
        getLeoCustomizeButton().setOnClickListener(new View.OnClickListener() {
            public void onClick(View view) {

            }
        });
    }

    public ButtonDispatcher getLeoCustomizeButton() {
        return mButtonDispatchers.get(1);
    }

    public LightBarTransitionsController getLightTransitionsController() {
        return this.mBarTransitions.getLightTransitionsController();
    }

    public void setOnVerticalChangedListener(OnVerticalChangedListener onVerticalChangedListener) {
        this.mOnVerticalChangedListener = onVerticalChangedListener;
        notifyVerticalChangedListener(this.mVertical);
    }

    public boolean onTouchEvent(MotionEvent event) {
        if (this.mGestureHelper.onTouchEvent(event)) {
            return true;
        }
        return super.onTouchEvent(event);
    }

    public boolean onInterceptTouchEvent(MotionEvent event) {
        return this.mGestureHelper.onInterceptTouchEvent(event);
    }

    public void abortCurrentGesture() {
        getHomeButton().abortCurrentGesture();
    }

    public View getCurrentView() {
        return this.mCurrentView;
    }

    public ButtonDispatcher getRecentsButton() {
       // return (ButtonDispatcher) this.mButtonDispatchers.get(R.id.recent_apps);
        return null;
    }

    public ButtonDispatcher getMenuButton() {
   //     return (ButtonDispatcher) this.mButtonDispatchers.get(R.id.menu);
        return null;
    }

    public ButtonDispatcher getBackButton() {
        return null;
    }

    public ButtonDispatcher getHomeButton() {
        return null;
    }

    public ButtonDispatcher getImeSwitchButton() {
        return null;
    }

    public ButtonDispatcher getAccessibilityButton() {
        return null;
    }

    public SparseArray<ButtonDispatcher> getButtonDispatchers() {
        return this.mButtonDispatchers;
    }

    protected void updateIcons(Context ctx, Configuration oldConfig, Configuration newConfig) {
        if (!(oldConfig.orientation == newConfig.orientation && oldConfig.densityDpi == newConfig.densityDpi)) {

        }
        if (oldConfig.densityDpi != newConfig.densityDpi) {
            LeoCustomizeDrawable(ctx);
        }
    }
    public void LeoCustomizeDrawable(Context ctx) {
        int leo=getLeoResource("drawable/ic_"+LeoLogoStyle(0));
        int leo_dark=getLeoResource("drawable/ic_"+LeoLogoStyle(0)+"_dark");
        mLeoCustomize= getDrawable(ctx,leo,leo_dark);
    }

    protected KeyButtonDrawable getDrawable(Context ctx, int lightIcon, int darkIcon) {
        return getDrawable(ctx, ctx, lightIcon, darkIcon);
    }

    private KeyButtonDrawable getDrawable(Context darkContext, Context lightContext, int lightIcon, int darkIcon) {
        return KeyButtonDrawable.create(lightContext.getDrawable(lightIcon), darkContext.getDrawable(darkIcon));
    }

    public void setLayoutDirection(int layoutDirection) {
    //    updateIcons(getContext(), Configuration.EMPTY, this.mConfiguration);
        super.setLayoutDirection(layoutDirection);
    }

    public void notifyScreenOn(boolean screenOn) {
        this.mScreenOn = screenOn;
        setDisabledFlags(this.mDisabledFlags, true);
    }

    public void setNavigationIconHints(int hints) {
        setNavigationIconHints(hints, false);
    }

    private KeyButtonDrawable getBackIcon(boolean z, boolean z2) {
        KeyButtonDrawable keyButtonDrawable = z2 ? z ? this.mBackLandCarModeIcon : this.mBackLandIcon : z ? this.mBackCarModeIcon : this.mBackIcon;
        updateNavDrawableColor(keyButtonDrawable,0);
        return keyButtonDrawable;
    }


    private KeyButtonDrawable getBackIconWithAlt(boolean z, boolean z2) {
        KeyButtonDrawable keyButtonDrawable = z2 ? z ? this.mBackAltLandCarModeIcon : this.mBackAltLandIcon : z ? this.mBackAltCarModeIcon : this.mBackAltIcon;
        updateNavDrawableColor(keyButtonDrawable,0);
        return keyButtonDrawable;
    }


    public void setNavigationIconHints(int hints, boolean force) {
        int i = 0;
        if (force || hints != this.mNavigationIconHints) {
            KeyButtonDrawable backIcon;
            boolean backAlt = (hints & 1) != 0;
            if (!((this.mNavigationIconHints & 1) == 0)) {
                this.mTransitionListener.onBackAltCleared();
            }
            this.mNavigationIconHints = hints;
            if (backAlt) {
                backIcon = getBackIconWithAlt(this.mUseCarModeUi, this.mVertical);
            } else {
                backIcon = getBackIcon(this.mUseCarModeUi, this.mVertical);
            }
            getBackButton().setImageDrawable(backIcon);
            updateRecentsIcon();
            if (this.mUseCarModeUi) {
                getHomeButton().setImageDrawable(this.mHomeCarModeIcon);
            } else {
                getHomeButton().setImageDrawable(this.mHomeDefaultIcon);
            }
            boolean showImeButton = (this.mShowAccessibilityButton || (hints & 2) == 0) ? false : true;
            ButtonDispatcher imeSwitchButton = getImeSwitchButton();
            if (!showImeButton) {
                i = 4;
            }
            imeSwitchButton.setVisibility(i);
            getImeSwitchButton().setImageDrawable(this.mImeIcon);
            setMenuVisibility(this.mShowMenu, true);
            getMenuButton().setImageDrawable(this.mMenuIcon);
            getLeoCustomizeButton().setImageDrawable(mLeoCustomize);
            setAccessibilityButtonState(this.mShowAccessibilityButton, this.mLongClickableAccessibilityButton);
            getAccessibilityButton().setImageDrawable(this.mAccessibilityIcon);
            setDisabledFlags(this.mDisabledFlags, true);
            this.mBarTransitions.reapplyDarkIntensity();
        }
    }

    public void setDisabledFlags(int disabledFlags) {
        setDisabledFlags(disabledFlags, false);
    }
 public void setDisabledFlags(int disabledFlags, boolean force) {
        int i = 4;
        if (force || this.mDisabledFlags != disabledFlags) {
            boolean z;
            int i2;
            this.mDisabledFlags = disabledFlags;
            boolean disableHome = (2097152 & disabledFlags) != 0;
            boolean disableRecent = !this.mUseCarModeUi ? (16777216 & disabledFlags) != 0 : true;
            boolean disableBack = (4194304 & disabledFlags) != 0 ? (this.mNavigationIconHints & 1) == 0 : false;
            ViewGroup navButtons = (ViewGroup) getCurrentView().findViewById(R.id.nav_buttons);
            if (navButtons != null) {
                LayoutTransition lt = navButtons.getLayoutTransition();
                if (!(lt == null || lt.getTransitionListeners().contains(this.mTransitionListener))) {
                    lt.addTransitionListener(this.mTransitionListener);
                }
            }
            if (inLockTask() && disableRecent) {
                disableRecent = false;
            }
            if (disableRecent && disableHome) {
                z = disableBack;
            } else {
                z = false;
            }
            checkNaviKeyDisabled(z);
            ButtonDispatcher backButton = getBackButton();
            if (disableBack) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            backButton.setVisibility(i2);
            backButton = getHomeButton();
            if (disableHome) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            backButton.setVisibility(i2);
            ButtonDispatcher recentsButton = getRecentsButton();
            if (!disableRecent) {
                i = 0;
            }
            recentsButton.setVisibility(i);
            getLeoCustomizeButton().setVisibility(disableHome ? View.INVISIBLE : View.VISIBLE);

        }
    }

    int   updateVisibility() {
        int style=1;
        if(style==1){
            style=0;
        } else {
            style=8;
        }
        return style;
    }

    protected boolean inLockTask() {
        //return ActivityManager.getService().isInLockTaskMode();
        return false;
    }

    public void setLayoutTransitionsEnabled(boolean enabled) {
        this.mLayoutTransitionsEnabled = enabled;
        updateLayoutTransitionsEnabled();
    }

    public void setWakeAndUnlocking(boolean wakeAndUnlocking) {
        setUseFadingAnimations(wakeAndUnlocking);
        this.mWakeAndUnlocking = wakeAndUnlocking;
        updateLayoutTransitionsEnabled();
    }

    protected void updateLayoutTransitionsEnabled() {
        boolean enabled = !this.mWakeAndUnlocking ? this.mLayoutTransitionsEnabled : false;
        LayoutTransition lt = ((ViewGroup) getCurrentView().findViewById(1)).getLayoutTransition();
        if (lt == null) {
            return;
        }
        if (enabled) {
            lt.enableTransitionType(2);
            lt.enableTransitionType(3);
            lt.enableTransitionType(0);
            lt.enableTransitionType(1);
            return;
        }
        lt.disableTransitionType(2);
        lt.disableTransitionType(3);
        lt.disableTransitionType(0);
        lt.disableTransitionType(1);
    }

    private void setUseFadingAnimations(boolean useFadingAnimations) {
        LayoutParams lp = (LayoutParams) ((ViewGroup) getParent()).getLayoutParams();

    }

    public void setMenuVisibility(boolean show) {
        setMenuVisibility(show, false);
    }

    public void setMenuVisibility(boolean show, boolean force) {
        int i = 0;
        if (force || this.mShowMenu != show) {
            this.mShowMenu = show;

            ButtonDispatcher menuButton = getMenuButton();

            menuButton.setVisibility(i);
        }
    }

    public void setAccessibilityButtonState(boolean visible, boolean longClickable) {
        int i = 0;
        this.mShowAccessibilityButton = visible;
        this.mLongClickableAccessibilityButton = longClickable;
        if (visible) {
            setMenuVisibility(false, true);
            getImeSwitchButton().setVisibility(4);
        }
        ButtonDispatcher accessibilityButton = getAccessibilityButton();
        if (!visible) {
            i = 4;
        }
        accessibilityButton.setVisibility(i);
        getAccessibilityButton().setLongClickable(longClickable);
    }

    public void onFinishInflate() {
        super.onFinishInflate();
        mNavbgView = (FrameLayout) findViewById(getLeoResource("id/lib_nav_bg"));
        this.mNavigationInflaterView = (NavigationBarInflaterView) findViewById(R.id.navigation_inflater);
        updateRotatedViews();
        this.mNavigationInflaterView.setButtonDispatchers(this.mButtonDispatchers);
        getImeSwitchButton().setOnClickListener(this.mImeSwitcherClickListener);

    }



    protected void updateRotatedViews() {

    }

    public boolean needsReorient(int rotation) {
        return this.mCurrentRotation != rotation;
    }

    protected void updateCurrentView() {
        int i;
        boolean z = true;
        int rot = this.mDisplay.getRotation();
        for (i = 0; i < 4; i++) {
            this.mRotatedViews[i].setVisibility(GONE);
        }
        this.mCurrentView = this.mRotatedViews[rot];
        this.mCurrentView.setVisibility(VISIBLE);
        NavigationBarInflaterView navigationBarInflaterView = this.mNavigationInflaterView;
        if (rot != 1) {
            z = false;
        }
        navigationBarInflaterView.setAlternativeOrder(z);
        for (i = 0; i < this.mButtonDispatchers.size(); i++) {
            ((ButtonDispatcher) this.mButtonDispatchers.valueAt(i)).setCurrentView(this.mCurrentView);
        }
        updateLayoutTransitionsEnabled();
        this.mCurrentRotation = rot;
    }

    private void updateRecentsIcon() {
        getRecentsButton().setImageDrawable(this.mDockedStackExists ? this.mDockedIcon : this.mRecentIcon);
        this.mBarTransitions.reapplyDarkIntensity();
    }

    public void reorient() {
        updateCurrentView();

    }

    public void onKeyguardOccludedChanged(boolean keyguardOccluded) {
    }

    private void updateTaskSwitchHelper() {
        if (this.mGestureHelper != null) {
            this.mGestureHelper.setBarState(this.mVertical, getLayoutDirection() == 1);
        }
    }

    protected void onSizeChanged(int w, int h, int oldw, int oldh) {
        boolean newVertical = w > 0 && h > w;
        if (newVertical != this.mVertical) {
            this.mVertical = newVertical;
            reorient();
            notifyVerticalChangedListener(newVertical);
        }
        postCheckForInvalidLayout("sizeChanged");
        super.onSizeChanged(w, h, oldw, oldh);
    }

    private void notifyVerticalChangedListener(boolean newVertical) {
        if (this.mOnVerticalChangedListener != null) {
            this.mOnVerticalChangedListener.onVerticalChanged(newVertical);
        }
    }

    protected void onConfigurationChanged(Configuration newConfig) {
        super.onConfigurationChanged(newConfig);
        boolean uiCarModeChanged = updateCarMode(newConfig);
        updateTaskSwitchHelper();
        updateIcons(getContext(), this.mConfiguration, newConfig);
        updateRecentsIcon();
        if (!(!uiCarModeChanged && this.mConfiguration.densityDpi == newConfig.densityDpi && this.mConfiguration.getLayoutDirection() == newConfig.getLayoutDirection())) {
            setNavigationIconHints(this.mNavigationIconHints, true);
        }
        this.mConfiguration.updateFrom(newConfig);
    }

    private boolean updateCarMode(Configuration newConfig) {
        if (newConfig != null) {
            boolean isCarMode = (newConfig.uiMode & 15) == 3;
            if (isCarMode != this.mInCarMode) {
                this.mInCarMode = isCarMode;
                getHomeButton().setCarMode(isCarMode);
                this.mUseCarModeUi = false;
            }
        }
        return false;
    }

    private String getResourceName(int resId) {
        if (resId == 0) {
            return "(null)";
        }
        try {
            return getContext().getResources().getResourceName(resId);
        } catch (NotFoundException e) {
            return "(unknown)";
        }
    }

    private void postCheckForInvalidLayout(String how) {
        this.mHandler.obtainMessage(8686, 0, 0, how).sendToTarget();
    }

    private static String visibilityToString(int vis) {
        switch (vis) {
            case 4:
                return "INVISIBLE";
            case 8:
                return "GONE";
            default:
                return "VISIBLE";
        }
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        onPluginDisconnected(null);
      //  ((PluginManager) Dependency.get(PluginManager.class)).addPluginListener((PluginListener) this, NavGesture.class, false);
    }

    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        //((PluginManager) Dependency.get(PluginManager.class)).removePluginListener(this);
        if (this.mGestureHelper != null) {

        }
    }

    public void onPluginConnected(NavGesture plugin, Context context) {
        this.mGestureHelper = plugin.getGestureHelper();
        updateTaskSwitchHelper();
    }

    public void onPluginDisconnected(NavGesture plugin) {
     //   NavigationBarGestureHelper defaultHelper = new NavigationBarGestureHelper(getContext());
      //  defaultHelper.setComponents(this.mRecentsComponent, this.mDivider, this);
        if (this.mGestureHelper != null) {

        }
      //  this.mGestureHelper = defaultHelper;
        updateTaskSwitchHelper();
    }

    public void dump(FileDescriptor fd, PrintWriter pw, String[] args) {
        pw.println("NavigationBarView {");
        Rect r = new Rect();
        Point size = new Point();
        this.mDisplay.getRealSize(size);
       // pw.println(String.format("      this: " + StatusBar.viewInfo(this) + " " + visibilityToString(getVisibility()), new Object[0]));
        getWindowVisibleDisplayFrame(r);
        boolean offscreen = r.right > size.x || r.bottom > size.y;
        pw.println("      window: " + r.toShortString() + " " + visibilityToString(getWindowVisibility()) + (offscreen ? " OFFSCREEN!" : ""));
        pw.println(String.format("      mCurrentView: id=%s (%dx%d) %s", new Object[]{getResourceName(getCurrentView().getId()), Integer.valueOf(getCurrentView().getWidth()), Integer.valueOf(getCurrentView().getHeight()), visibilityToString(getCurrentView().getVisibility())}));
        String str = "      disabled=0x%08x vertical=%s menu=%s";
        Object[] objArr = new Object[3];
        objArr[0] = Integer.valueOf(this.mDisabledFlags);
        objArr[1] = this.mVertical ? "true" : "false";
        objArr[2] = this.mShowMenu ? "true" : "false";
        pw.println(String.format(str, objArr));
        dumpButton(pw, "back", getBackButton());
        dumpButton(pw, "home", getHomeButton());
        dumpButton(pw, "rcnt", getRecentsButton());
        dumpButton(pw, "menu", getMenuButton());
        dumpButton(pw, "a11y", getAccessibilityButton());
        pw.println("    }");
    }

    private static void dumpButton(PrintWriter pw, String caption, ButtonDispatcher button) {
        pw.print("      " + caption + ": ");
        if (button == null) {
            pw.print("null");
        } else {
            pw.print(visibilityToString(button.getVisibility()) + " alpha=" + button.getAlpha());
        }
        pw.println();
    }

    public void onFinishedGoingToSleep() {
    }

    public void updatePinButtonVisibility() {
    }

    public void setPinButtonVisibility(boolean visible) {
    }

    public void checkNaviKeyDisabled(boolean allDisabled) {
    }

    public void onOpenThemeChanged() {
    }

    public void updateNavDrawableColor(KeyButtonDrawable keyButtonDrawable,int CON) {
         LeoSettings(mLeoRom);
        boolean AllColor= setLeoUesrNavAllColorEnabled;
        boolean EnabledColor= setLeoUesrNavColorEnabled;
        int navandom=setLeoUesrNavIconRandomColor;
        int all=setLeoUesrNavIconAllColor;
        switch (CON) {
            case 1: //home
                setKeyButtonDrawableIconColor(keyButtonDrawable,setLeoUesrNavHomeColor,all ,AllColor,EnabledColor,navandom,mLeoRom);
                break;
            case 2: //task
                setKeyButtonDrawableIconColor(keyButtonDrawable,setLeoUesrNavTaskColor,all ,AllColor,EnabledColor,navandom,mLeoRom);
                break;
            case 3: //ime
                setKeyButtonDrawableIconColor(keyButtonDrawable,setLeoUesrNavImeColor,all ,AllColor,EnabledColor,navandom,mLeoRom);
                break;
            case 4: //pin
                setKeyButtonDrawableIconColor(keyButtonDrawable,setLeoUesrNavPinColor,all ,AllColor,EnabledColor,navandom,mLeoRom);
                break;
            default: //back
                setKeyButtonDrawableIconColor(keyButtonDrawable,setLeoUesrNavBackColor,all ,AllColor,EnabledColor,navandom,mLeoRom);
                break;
        }
    }


}
