package com.android.systemui.qscoloring;

import android.animation.ValueAnimator;
import android.view.ViewGroup;


public interface SecQSColoringPresenter  {
    float getBlurEffectAmount();

    int getColor(int i);

    boolean isBlurEffectTurnedOn();

    boolean isForceApplyBlurEffect();

    boolean isFullyPanelBackgroundOpaque();

    boolean isQSColoringTurnedOn();

    void onPanelHeightUpdated(boolean z, boolean z2, float f);

    void refreshAllFunctions();

    void setAnimationOverlapped(boolean z);

    void setBouncerShowing(boolean z);

    void setForceApplyBlurEffect(boolean z);

    void setHeightAnimator(ValueAnimator valueAnimator, boolean z);

    void setQsExpansionAnimator(ValueAnimator valueAnimator, boolean z);

    void updateBlurEffect(float f);

    void updateCommonColorDraw(ViewGroup viewGroup);

    void updateCommonColorDraw(ViewGroup viewGroup, int i);

    void updateFloatingShortcutVisibility(boolean z);

    void updateIndicatorBackgroundAlpha(float f);

    void updateMirrorVisibility(Boolean bool);

    void writeSettingValue(String str, int i);
}
