package com.android.launcher3.pagetransition;

import android.content.Context;
import android.provider.Settings;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.Launcher;
import com.android.launcher3.common.base.view.CellLayout;
import com.android.launcher3.common.base.view.PagedView;
import com.android.launcher3.pagetransition.effects.Accordian;
import com.android.launcher3.pagetransition.effects.Card;
import com.android.launcher3.pagetransition.effects.CardFlip;
import com.android.launcher3.pagetransition.effects.Carousal;
import com.android.launcher3.pagetransition.effects.Cascade;
import com.android.launcher3.pagetransition.effects.Conveyor;
import com.android.launcher3.pagetransition.effects.Diagonal;
import com.android.launcher3.pagetransition.effects.Dispersa;
import com.android.launcher3.pagetransition.effects.Fade;
import com.android.launcher3.pagetransition.effects.Fan;
import com.android.launcher3.pagetransition.effects.Fuelle;
import com.android.launcher3.pagetransition.effects.InnerCube;
import com.android.launcher3.pagetransition.effects.OuterCube;
import com.android.launcher3.pagetransition.effects.PageTransitionEffects;
import com.android.launcher3.pagetransition.effects.Panel;
import com.android.launcher3.pagetransition.effects.Persiana;
import com.android.launcher3.pagetransition.effects.Plain;
import com.android.launcher3.pagetransition.effects.Profundidad;
import com.android.launcher3.pagetransition.effects.Rotate;
import com.android.launcher3.pagetransition.effects.Spiral;
import com.android.launcher3.pagetransition.effects.ZoomOut;
import com.android.launcher3.pagetransition.effects.ZoomUpDown;



import java.util.HashMap;

import com.android.launcher3.pagetransition.effects.Accordian;
import com.android.launcher3.pagetransition.effects.Card;
import com.android.launcher3.pagetransition.effects.CardFlip;
import com.android.launcher3.pagetransition.effects.Carousal;
import com.android.launcher3.pagetransition.effects.Cascade;
import com.android.launcher3.pagetransition.effects.Conveyor;
import com.android.launcher3.pagetransition.effects.Diagonal;
import com.android.launcher3.pagetransition.effects.Dispersa;
import com.android.launcher3.pagetransition.effects.Fade;
import com.android.launcher3.pagetransition.effects.Fan;
import com.android.launcher3.pagetransition.effects.Fuelle;
import com.android.launcher3.pagetransition.effects.InnerCube;
import com.android.launcher3.pagetransition.effects.OuterCube;
import com.android.launcher3.pagetransition.effects.PageTransitionEffects;
import com.android.launcher3.pagetransition.effects.Panel;
import com.android.launcher3.pagetransition.effects.Persiana;
import com.android.launcher3.pagetransition.effects.Plain;
import com.android.launcher3.pagetransition.effects.Profundidad;
import com.android.launcher3.pagetransition.effects.Rotate;
import com.android.launcher3.pagetransition.effects.Spiral;
import com.android.launcher3.pagetransition.effects.ZoomOut;
import com.android.launcher3.pagetransition.effects.ZoomUpDown;

import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrLauncherEffect;


public class PageTransitionManager {
    public static final int DEFAULT_TRANSITION = 0;
    private static final String TAG = "HomePageTransitionController";
    public static boolean mLeftMove = false;
    private static PagedView mPagedView;
    public boolean isPageTransformEnabled = true;
    protected TransitionEffect mCurrentTransitionEffect = TransitionEffect.DEFAULT;
    private Launcher mLauncher;
    private PageTransitionEffects mPageTransitionEffects;
    private final HashMap<TransitionEffect, Class<? extends PageTransitionEffects>> mTransitionMap = new HashMap();

    public enum TransitionEffect {
        DEFAULT,
        CASCADE,
        OUTERCUBE,
        INNERCUBE,
        CAROUSAL,
        PLAIN,
        CONVEYOR,
        CARD,
        ACCORDIAN,
        CARDFLIP,
        FAN,
        ROTATE,
        SPIRAL,
        ZOOM,
        ZOOMUPDOWN,
        PANEL,
        FUELLE,
        PERSIANA,
        DISPERSA,
        PROFUNDIDAD,
        DIAGONAL,
        FADE
    }

    public PageTransitionManager(Context context) {
        this.mLauncher = (Launcher) context;
        initializeTransitionMap();
    }

    public static int getChildCount() {
        return mPagedView.getChildCount();
    }

    public static float getMaxScrollX() {
        return (float) mPagedView.getMaxScrollX();
    }

    public static float getPageBackgroundAlpha() {
        return mPagedView.getPageBackgroundAlpha();
    }

    public static float getScrollX() {
        return (float) mPagedView.getScrollX();
    }

    public static float getShrinkX() {
        return (float) mPagedView.getMaxScrollX();
    }

    private void initializeTransitionMap() {
        Log.v("Leo Rom", "ROM developer from China." );
        this.mTransitionMap.put(TransitionEffect.CASCADE, Cascade.class);
        this.mTransitionMap.put(TransitionEffect.OUTERCUBE, OuterCube.class);
        this.mTransitionMap.put(TransitionEffect.INNERCUBE, InnerCube.class);
        this.mTransitionMap.put(TransitionEffect.CAROUSAL, Carousal.class);
        this.mTransitionMap.put(TransitionEffect.PLAIN, Plain.class);
        this.mTransitionMap.put(TransitionEffect.CONVEYOR, Conveyor.class);
        this.mTransitionMap.put(TransitionEffect.CARD, Card.class);
        this.mTransitionMap.put(TransitionEffect.ACCORDIAN, Accordian.class);
        this.mTransitionMap.put(TransitionEffect.CARDFLIP, CardFlip.class);
        this.mTransitionMap.put(TransitionEffect.FAN, Fan.class);
        this.mTransitionMap.put(TransitionEffect.ROTATE, Rotate.class);
        this.mTransitionMap.put(TransitionEffect.SPIRAL, Spiral.class);
        this.mTransitionMap.put(TransitionEffect.ZOOM, ZoomOut.class);
        this.mTransitionMap.put(TransitionEffect.ZOOMUPDOWN, ZoomUpDown.class);
        this.mTransitionMap.put(TransitionEffect.PANEL, Panel.class);
        this.mTransitionMap.put(TransitionEffect.FUELLE, Fuelle.class);
        this.mTransitionMap.put(TransitionEffect.PERSIANA, Persiana.class);
        this.mTransitionMap.put(TransitionEffect.DISPERSA, Dispersa.class);
        this.mTransitionMap.put(TransitionEffect.PROFUNDIDAD, Profundidad.class);
        this.mTransitionMap.put(TransitionEffect.DIAGONAL, Diagonal.class);
        this.mTransitionMap.put(TransitionEffect.FADE, Fade.class);
    }

    public static boolean isLeftScroll() {
        return mLeftMove;
    }

    Context getContext() {
        return this.mLauncher;
    }

    public TransitionEffect getCurrentTransitionEffect() {
        return this.mCurrentTransitionEffect;
    }

    public int getCurrentWorkspaceScreen() {
        return mPagedView.getCurrentPage();
    }

    public PageTransitionEffects getPageTransitionEffects() {
        return this.mPageTransitionEffects;
    }

    public void onLayout(ViewGroup viewGroup, boolean z, int i, int i2, int i3, int i4) {
        if (this.mPageTransitionEffects != null) {
            this.mPageTransitionEffects.onLayout(viewGroup, z, i, i2, i3, i4);
        }
    }

    public void onPageBeginMoving() {
        this.isPageTransformEnabled = true;
    }

    public void onPageEndMoving() {
        this.isPageTransformEnabled = false;
    }

    public void reset(View view) {
        this.mPageTransitionEffects.reset(view);
    }

    public void setCurrentTransitionEffect(int  Effect) {
        LeoSettings(getContext());
        Effect = setLeoUesrLauncherEffect;
        Log.v("Leo Rom", "ROM developer from China." );
        if ( Effect< 0 ||  Effect >= TransitionEffect.values().length) {
            Effect= DEFAULT_TRANSITION;
        }
        this.mCurrentTransitionEffect = Effect == 0 ? null : TransitionEffect.values()[Effect];
        if (this.mCurrentTransitionEffect == null) {
            this.mPageTransitionEffects = null;
            return;
        }
        Class cls = (Class) this.mTransitionMap.get(this.mCurrentTransitionEffect);
        if (cls == null) {
            throw new IllegalArgumentException(this.mCurrentTransitionEffect + " effect not found!!");
        }
        try {
            this.mPageTransitionEffects = (PageTransitionEffects) cls.newInstance();
        } catch (Exception e) {
            throw new IllegalArgumentException(this.mCurrentTransitionEffect + " fail to create instance");
        }
    }

    public void setLeftScroll(boolean z) {
        mLeftMove = z;
    }

    public void setup(PagedView pagedView) {
        mPagedView = pagedView;
    }

    public void transformPage(View view, float f) {
        if (this.isPageTransformEnabled && this.mCurrentTransitionEffect != null) {
            CellLayout cellLayout = (CellLayout) view;
            if (cellLayout.getCellLayoutChildren() != null) {
                cellLayout.getCellLayoutChildren().setPadding(0, 0, 0, 0);
            }
            this.mPageTransitionEffects.applyTransform(view, f, mPagedView.indexOfChild(view));
        }
    }
}
