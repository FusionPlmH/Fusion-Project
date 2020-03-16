package com.android.launcher3.framework.view.features.pagetransition;

import android.provider.Settings.System;
import android.view.View;
import android.view.ViewGroup;
import com.android.launcher3.framework.support.context.appstate.LauncherAppState;

import java.util.HashMap;

public class PageTransitionManager {
    private static final int DEFAULT_TRANSITION = 0;
    private boolean isPageTransformEnabled = true;
    private TransitionEffect mCurrentTransitionEffect = TransitionEffect.DEFAULT;
    private boolean mLeftMove = false;
    private PageTransitionEffects mPageTransitionEffects;
    private final HashMap<TransitionEffect, Class<? extends PageTransitionEffects>> mTransitionMap = new HashMap();


    public PageTransitionManager() {
        initializeTransitionMap();
    }



    private void setCurrentTransitionEffect(int i) {
        if (i < 0 || i >= TransitionEffect.values().length) {
            i = 0;
        }
        this.mCurrentTransitionEffect = i == 0 ? null : TransitionEffect.values()[i];
        setPageTransitionEffect();
        if (this.mCurrentTransitionEffect == null) {
            this.mPageTransitionEffects = null;
            return;
        }
        HashMap hashMap = this.mTransitionMap;
        setPageTransitionEffect();
        Class cls = (Class) hashMap.get(this.mCurrentTransitionEffect);
        StringBuilder stringBuilder;
        if (cls == null) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(this.mCurrentTransitionEffect);
            stringBuilder.append(" effect not found!!");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
        try {
            this.mPageTransitionEffects = (PageTransitionEffects) cls.newInstance();
        } catch (Exception unused) {
            stringBuilder = new StringBuilder();
            stringBuilder.append(this.mCurrentTransitionEffect);
            stringBuilder.append(" fail to create instance");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    public TransitionEffect getCurrentTransitionEffect() {
        return this.mCurrentTransitionEffect;
    }

    public void onLayout(ViewGroup viewGroup, float f) {
        if (this.mPageTransitionEffects != null) {
            this.mPageTransitionEffects.onLayout(viewGroup, f);
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
        view.setLayerType(0, null);
    }

    public void setLeftScroll(boolean z) {
        this.mLeftMove = z;
    }
    private void initializeTransitionMap() {
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
    }
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
        ZOOM
    }

    public void setPageTransitionEffect() {
        TransitionEffect transitionEffect = this.mCurrentTransitionEffect;
        int i = System.getInt(LauncherAppState.getInstance().getContext().getContentResolver(), "leo_tweaks_launcher_effect", 1);
        if(i ==1){
            transitionEffect=TransitionEffect.DEFAULT;
        }else if(i ==2){
            transitionEffect=TransitionEffect.CASCADE;
        }else if(i ==3){
            transitionEffect=TransitionEffect.OUTERCUBE;
        }else if(i ==4){
            transitionEffect=TransitionEffect.INNERCUBE;
        }else if(i ==5){
            transitionEffect=TransitionEffect.CAROUSAL;
        }else if(i ==6){
            transitionEffect=TransitionEffect.PLAIN;
        }else if(i ==7){
            transitionEffect=TransitionEffect.CONVEYOR;
        }else if(i ==8){
            transitionEffect=TransitionEffect.CARD;
        }else if(i ==9){
            transitionEffect=TransitionEffect.SPIRAL;
        }else if(i ==10){
            transitionEffect=TransitionEffect.CARDFLIP;
        }else if(i ==11){
            transitionEffect=TransitionEffect.FAN;
        }else if(i ==12){
            transitionEffect=TransitionEffect.ROTATE;
        }else if(i ==13){
            transitionEffect=TransitionEffect.ZOOM;
        }else if(i ==14){
            transitionEffect=TransitionEffect.ACCORDIAN;
        }

        this.mCurrentTransitionEffect = transitionEffect;
    }

    public void transformPage(View view, View view2, float f, int i, int i2, int i3, float f2, int i4) {
        View view3 = view2;
        if (this.isPageTransformEnabled && this.mCurrentTransitionEffect != null) {
            View view4;
            if (view3 != null) {
                view3.setPadding(0, 0, 0, 0);
            }
            if (view.getLayerType() != 2) {
                view4 = view;
                view4.setLayerType(2, null);
            } else {
                view4 = view;
            }
            this.mPageTransitionEffects.applyTransform(view4, f, i, (float) i2, (float) i3, f2, i4, this.mLeftMove);
        }
    }


}
