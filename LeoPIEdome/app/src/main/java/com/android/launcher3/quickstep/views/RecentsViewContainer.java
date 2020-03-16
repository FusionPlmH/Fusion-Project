package com.android.launcher3.quickstep.views;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.PropertyValuesHolder;
import android.content.ContentResolver;
import android.content.Context;
import android.content.res.Resources;
import android.database.ContentObserver;
import android.graphics.Color;
import android.graphics.Rect;
import android.os.Handler;
import android.os.Looper;
import android.os.UserHandle;
import android.util.AttributeSet;
import android.util.Log;
import android.view.DisplayCutout;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup.OnHierarchyChangeListener;
import android.view.WindowInsets;
import android.view.WindowManager.LayoutParams;
import android.widget.TextView;

import com.android.launcher3.framework.view.base.InsettableFrameLayout;
import com.android.launcher3.framework.view.context.BaseActivity;
import com.android.launcher3.framework.view.context.BaseDraggingActivity;
import com.android.launcher3.quickstep.feature.search.OverViewSearch;


import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import static com.android.launcher3.LeoAmber.LeoGlobalUtils.LeoGradientDrawable;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoBasicColor;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoBlurWallpaper;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoUri;
import static com.android.launcher3.LeoAmber.LeoGlobalUtils.getLeoWallpaper;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBGStyle;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBgBasicColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBgGradientBgStyle;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBgWallpaper;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBgWallpaperAlpha;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBgWallpaperAlphaEnable;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBgWallpaperBlurEnabled;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBlurBgDegree;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBlurWallpaperAlpha;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsBlurWallpaperColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientBackGroundColorRadius;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientBackGroundCornerRadius;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientBgCenterColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientBgEndColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientBgStartColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientBgType;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientColorEnabled;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientColorFive;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientColorFour;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientColorSix;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsGradientEnableCenterColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsShowBG;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsStrokeDashColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsStrokeDashGap;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsStrokeDashWidth;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsStrokeEnabled;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsStrokeThickness;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsWallpaperColor;
import static com.android.launcher3.LeoAmber.LeoGlobalValues.getLeoRecentsWallpaperColorEnable;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.LeoGlobalSetting;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBGStyle;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBgBasicColor;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBgGradientBgStyle;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBgWallpaper;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBgWallpaperAlpha;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBgWallpaperAlphaEnable;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBgWallpaperBlurEnabled;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBlurBgDegree;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBlurWallpaperAlphaEnabled;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsBlurWallpaperColorEnabled;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientBackGroundColorRadius;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientBackGroundCornerRadius;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientBgCenterColor;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientBgEndColor;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientBgStartColor;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientBgType;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientColorEnabled;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientColorFive;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientColorFour;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientColorSix;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsGradientEnableCenterColor;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsShowBG;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsStrokeDashColor;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsStrokeDashGap;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsStrokeDashWidth;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsStrokeEnabled;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsStrokeThickness;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsWallpaperColor;
import static com.android.launcher3.LeoAmber.LeoLauncherSetting.setLeoUesrRecentsWallpaperColorEnable;

public class RecentsViewContainer extends InsettableFrameLayout  {
    protected static final boolean DEBUG = false;
    public static final float FAST_OVERVIEW_TRANSLATION_FACTOR = 0.4f;
    private static final long HELP_SHOW_DELAY = 150;
    private static final float LAND_PREVIEW_SCALE_UP = 1.1f;
    private static final float MAX_PREVIEW_SCALE_UP = 1.3f;
    protected static final String TAG = "RecentsViewContainer";

    private TextView mEmptytext;
    private int mInternalState;
    private boolean mIsRecommendedAppsSetup;
    AnimatorSet mLaunchTaskAnimSet;
    protected View mNaviBarDim;
    protected OverViewSearch mOverViewSearch;

    protected final Rect mTempRect;
    protected Rect mTrayMovableArea;
    protected BaseActivity mViewContext;
    @TYPE_ELEMENTS
    private int mVisibleElements;

    public static class ELEMENTS {
        public static final int CLEAR_ALL_BUTTON = 4;
        public static final int HOTSEAT_ICONS = 1;
        public static final int NONE = 0;
        public static final int SEARCH_BOX = 2;
    }

    public @interface TYPE_ELEMENTS {
    }

    static class Z_ORDER {
        static final int CLEARALL = 3;
        static final int CLEARALL_LAND = -1;
        static final int NAVIBAR_DIM = 3;
        static final int RECENTSVIEW = 0;
        static final int RECENTSVIEW_ON_DRAG_DOWN = 4;
        static final int RECENTSVIEW_ON_DRAG_UP = 2;
        static final int RECOMMENDED = 1;
        static final int SEARCHBAR_LAND = 3;
        static final int SEARCHBAR_PORT = 1;

        Z_ORDER() {
        }
    }

    public RecentsViewContainer(Context context) {
        this(context, null);
    }

    public RecentsViewContainer(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public RecentsViewContainer(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.mTempRect = new Rect();
        this.mTrayMovableArea = new Rect();

    }

    private void clearRecommendedApps() {

    }



    private int getViewVisibility(@TYPE_ELEMENTS int i) {
        return isVisibleElement(i) ? 0 : 4;
    }

    private void initAppSearchBar() {
        this.mOverViewSearch = new OverViewSearch(this);
        mOverViewSearch.setVisibility(GONE);
    }

    private boolean isVisibleElement(@TYPE_ELEMENTS int i) {
        return (this.mVisibleElements & i) != 0;
    }




    private void onInsetsChanged(WindowInsets windowInsets) {

    }

    private void setupRecommendedApps() {

    }

    private void updateElementsVisibility() {
        this.mVisibleElements = getVisibleElements();
        String str = TAG;
        StringBuilder stringBuilder = new StringBuilder();
        stringBuilder.append("updateElementsVisibility() : elements=");
        stringBuilder.append(Integer.toBinaryString(this.mVisibleElements));
        Log.d(str, stringBuilder.toString());

    }

    public void addChildrenForAccessibility(ArrayList<View> arrayList) {

    }

    public AnimatorSet createLaunchTaskAnimation(int i) {
        this.mLaunchTaskAnimSet = new AnimatorSet();
        Collection arrayList = new ArrayList();


        return null;
    }

    public void dispatchInsets() {

    }

    /* JADX WARNING: Missing block: B:10:0x001f, code:
            if (r0 != 84) goto L_0x0068;
     */
    public boolean dispatchKeyEvent(android.view.KeyEvent r5) {
        /*
        r4 = this;
        r0 = r4.mRecentsHelp;
        if (r0 == 0) goto L_0x0009;
    L_0x0004:
        r0 = r4.mRecentsHelp;
        r0.removeHelpViews();
    L_0x0009:
        r0 = r5.getAction();
        r1 = 1;
        if (r0 != r1) goto L_0x0068;
    L_0x0010:
        r0 = r5.getKeyCode();
        r2 = 34;
        r3 = 2;
        if (r0 == r2) goto L_0x0053;
    L_0x0019:
        r2 = 82;
        if (r0 == r2) goto L_0x0022;
    L_0x001d:
        r2 = 84;
        if (r0 == r2) goto L_0x0044;
    L_0x0021:
        goto L_0x0068;
    L_0x0022:
        r0 = r4.isVisibleElement(r3);
        if (r0 == 0) goto L_0x0044;
    L_0x0028:
        r5 = r4.mOverViewSearch;
        r5 = r5.showPopupMenu();
        if (r5 == 0) goto L_0x0043;
    L_0x0030:
        r5 = r4.mViewContext;
        r5 = r5.getQuickOptionManager();
        if (r5 == 0) goto L_0x0043;
    L_0x0038:
        r4 = r4.mViewContext;
        r4 = r4.getQuickOptionManager();
        r5 = "3";
        r4.removeQuickOptionView(r5);
    L_0x0043:
        return r1;
    L_0x0044:
        r0 = r4.isVisibleElement(r3);
        if (r0 == 0) goto L_0x0068;
    L_0x004a:
        r0 = r4.mOverViewSearch;
        r0 = r0.launchSfinder();
        if (r0 == 0) goto L_0x0068;
    L_0x0052:
        return r1;
    L_0x0053:
        r0 = r4.isVisibleElement(r3);
        if (r0 == 0) goto L_0x0068;
    L_0x0059:
        r0 = r5.isCtrlPressed();
        if (r0 == 0) goto L_0x0068;
    L_0x005f:
        r0 = r4.mOverViewSearch;
        r0 = r0.launchSfinder();
        if (r0 == 0) goto L_0x0068;
    L_0x0067:
        return r1;
    L_0x0068:
        r4 = super.dispatchKeyEvent(r5);
        return r4;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.quickstep.views.RecentsViewContainer.dispatchKeyEvent(android.view.KeyEvent):boolean");
    }

    public boolean dispatchTouchEvent(MotionEvent motionEvent) {

        return super.dispatchTouchEvent(motionEvent);
    }

    protected void forceHidePopupWindow(boolean z) {


    }



    public float[] getOverviewScaleAndTranslationYFactor(BaseActivity baseActivity) {

        return new float[0];
    }

    public int getVisibleElements() {

        return 0;
    }

    public void initHelp() {

    }

    public void initStageView() {
        setState(0);
        updateRecommendedAppsState(true);
        initAppSearchBar();
        resetViewOrdering();
    }

    protected boolean isClearAllButtonVisible() {
        return false;
    }

    public void isClickMultiWindow() {

    }

    protected boolean isFastOverviewState() {
        return this.mInternalState == 1;
    }

    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        onInsetsChanged(windowInsets);
        return windowInsets;
    }



    public boolean onClick(View view) {

        return true;
    }

    public void onConfigurationChangedIfNeeded() {
        int i = this.mVisibleElements;
        updateElementsVisibility();

    }

    public void onDestroyActivity() {

    }

    protected void onFinishInflate() {
        super.onFinishInflate();

        initHelp();

        setLeoRomRecentsBackground();
    }

    protected void onLayout(boolean z, int i, int i2, int i3, int i4) {
        super.onLayout(z, i, i2, i3, i4);

    }

    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void refreshSearchLayout() {

    }

    public boolean requestFocus(int i, Rect rect) {

        return false;
    }

    protected void resetViewOrdering() {

    }

    protected void resetVisualProperties() {
        if (this.mLaunchTaskAnimSet != null) {
            this.mLaunchTaskAnimSet.cancel();
            this.mLaunchTaskAnimSet = null;
        }

    }

    public void setContentAlpha(float f) {

    }

    public void setOverviewEnabled(boolean z) {

    }

    public void setState(int i) {

    }

    public void showHelpPopup() {

    }

    public void updateClearAllVisibility() {

    }

    public void updateRecommendedAppsState(boolean z) {

    }
    public void onWindowFocusChanged(boolean mBoolean) {
        setLeoRomRecentsBackground();
    }
    public void  setLeoRomRecentsBackground() {
        LeoGlobalSetting(mViewContext);
        if (setLeoUesrRecentsShowBG) {

            boolean StrokeEnabled=setLeoUesrRecentsStrokeEnabled;
            int StrokeThickness=setLeoUesrRecentsStrokeThickness;
            int DashWidth= setLeoUesrRecentsStrokeDashWidth;
            int DashGap= setLeoUesrRecentsStrokeDashGap;
            int DashColor= setLeoUesrRecentsStrokeDashColor;
            int CornerRadius=setLeoUesrRecentsGradientBackGroundCornerRadius;
            int WallpaperColor=setLeoUesrRecentsWallpaperColor;
            int Alpha=setLeoUesrRecentsBgWallpaperAlpha;
            String str=setLeoUesrRecentsBgWallpaper;
            int SPanelBGStyle=setLeoUesrRecentsBGStyle;
            int colorstyle=setLeoUesrRecentsGradientColorEnabled;
            if (SPanelBGStyle == 0) {
                if(colorstyle==0){
                    setBackground(getLeoBasicColor(
                            StrokeEnabled,
                            StrokeThickness,
                            DashWidth,
                            DashGap,
                            DashColor,
                            CornerRadius,
                            setLeoUesrRecentsBgBasicColor
                    ));
                } else if(colorstyle==1){
                    setBackground(LeoGradientDrawable(setLeoUesrRecentsGradientBgStartColor,setLeoUesrRecentsGradientBgCenterColor,setLeoUesrRecentsGradientBgEndColor,
                            setLeoUesrRecentsGradientColorFour,
                            setLeoUesrRecentsGradientColorFive,
                            setLeoUesrRecentsGradientColorSix,
                            setLeoUesrRecentsGradientEnableCenterColor ,
                            setLeoUesrRecentsBgGradientBgStyle,StrokeEnabled,StrokeThickness, DashWidth,DashGap, DashColor,CornerRadius
                            ,setLeoUesrRecentsGradientBgType,setLeoUesrRecentsGradientBackGroundColorRadius));
                }

            }if (SPanelBGStyle == 999 &&  str != null) {
                int wallpaperstyle=setLeoUesrRecentsBgWallpaperBlurEnabled;
                if(wallpaperstyle==0) {
                    setBackground(getLeoWallpaper(mViewContext,str,setLeoUesrRecentsWallpaperColorEnable,WallpaperColor,setLeoUesrRecentsBgWallpaperAlphaEnable,Alpha));
                }else if(wallpaperstyle==1){
                    setBackground(getLeoBlurWallpaper(mViewContext,str,setLeoUesrRecentsBlurBgDegree,setLeoUesrRecentsBlurWallpaperColorEnabled,WallpaperColor,setLeoUesrRecentsBlurWallpaperAlphaEnabled,Alpha));
                }
            }
        } else {
            setBackgroundColor(Color.parseColor("#99252525"));
        }

    }
}
