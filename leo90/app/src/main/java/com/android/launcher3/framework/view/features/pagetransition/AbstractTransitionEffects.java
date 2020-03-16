package com.android.launcher3.framework.view.features.pagetransition;

public abstract class AbstractTransitionEffects extends PageTransitionEffects {
    protected abstract float adjustScrollProgress(float f);

    /* JADX WARNING: Removed duplicated region for block: B:22:0x00c0  */
    public void applyTransform(android.view.View r17, float r18, int r19, float r20, float r21, float r22, int r23, boolean r24) {
        /*
        r16 = this;
        r6 = r16;
        r7 = r18;
        r0 = r19;
        r8 = r24;
        r9 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r1 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1));
        if (r1 > 0) goto L_0x00f6;
    L_0x000e:
        r1 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r1 = (r7 > r1 ? 1 : (r7 == r1 ? 0 : -1));
        if (r1 >= 0) goto L_0x0016;
    L_0x0014:
        goto L_0x00f6;
    L_0x0016:
        r1 = r6.adjustScrollProgress(r7);
        r2 = 1060320051; // 0x3f333333 float:0.7 double:5.23867711E-315;
        r1 = com.android.launcher3.framework.view.features.pagetransition.PageTransitionEffects.mix(r9, r2, r1);
        r1 = r1 * r9;
        r2 = java.lang.Math.abs(r18);
        r10 = r6.backgroundAlphaThreshold(r2);
        r11 = r17;
        r11 = (com.android.launcher3.framework.view.ui.icon.CellLayout) r11;
        r11.invalidate();
        r2 = 1097859072; // 0x41700000 float:15.0 double:5.424144515E-315;
        r2 = r2 * r7;
        r3 = r16.getScrollDrawInward();
        r3 = r3 * r7;
        r4 = r11.getWidth();
        r4 = (float) r4;
        r3 = r3 * r4;
        r4 = r11.getMeasuredWidth();
        r5 = r11.getMeasuredHeight();
        r12 = 0;
        r6.mEndPage = r12;
        r12 = r16.isLoopingEnabled();
        r13 = 0;
        if (r12 == 0) goto L_0x0060;
    L_0x0051:
        r0 = r6.getPivotValueX(r7, r4, r8);
        r11.setPivotX(r0);
        r0 = r6.getPivotValueY(r7, r5);
        r11.setPivotY(r0);
        goto L_0x00ac;
    L_0x0060:
        r12 = transition_rotation_max;
        if (r0 != 0) goto L_0x007c;
    L_0x0064:
        r14 = (r7 > r13 ? 1 : (r7 == r13 ? 0 : -1));
        if (r14 >= 0) goto L_0x007c;
    L_0x0068:
        r0 = TRANSITION_PIVOT;
        r1 = (float) r4;
        r0 = r0 * r1;
        r11.setPivotX(r0);
        r0 = -r12;
        r0 = r0 * r7;
        r1 = r16.maxOverScroll();
        r2 = r0 / r1;
        r0 = r20;
    L_0x0079:
        r15 = r2;
        r1 = r9;
        goto L_0x00ae;
    L_0x007c:
        r14 = 1;
        r15 = r23 + -1;
        if (r0 != r15) goto L_0x009e;
    L_0x0081:
        r0 = (r7 > r13 ? 1 : (r7 == r13 ? 0 : -1));
        if (r0 <= 0) goto L_0x009e;
    L_0x0085:
        r6.mEndPage = r14;
        r0 = (float) r4;
        r11.setPivotX(r0);
        r0 = (float) r5;
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = r0 / r1;
        r11.setPivotY(r0);
        r12 = r12 / r1;
        r0 = -r12;
        r0 = r0 * r7;
        r1 = r16.maxOverScroll();
        r2 = r0 / r1;
        r0 = r20 - r21;
        goto L_0x0079;
    L_0x009e:
        r0 = r6.getPivotValueX(r7, r4, r8);
        r11.setPivotX(r0);
        r0 = r6.getPivotValueY(r7, r5);
        r11.setPivotY(r0);
    L_0x00ac:
        r15 = r2;
        r0 = r3;
    L_0x00ae:
        r2 = r6.getZoomValueY(r7, r1);
        r11.setScaleY(r2);
        r2 = r6.getZoomValueX(r7, r1);
        r11.setScaleX(r2);
        r2 = (r1 > r9 ? 1 : (r1 == r9 ? 0 : -1));
        if (r2 >= 0) goto L_0x00d8;
    L_0x00c0:
        r2 = r6.mShrinkTranslateX;
        r2 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1));
        if (r2 == 0) goto L_0x00cb;
    L_0x00c6:
        r2 = r6.getTranslationValueDeltaX(r7, r1);
        r0 = r0 + r2;
    L_0x00cb:
        r2 = r6.mShrinkTranslateY;
        r2 = (r2 > r13 ? 1 : (r2 == r13 ? 0 : -1));
        if (r2 == 0) goto L_0x00d8;
    L_0x00d1:
        r1 = r6.getTranslationValueY(r7, r1);
        r11.setTranslationY(r1);
    L_0x00d8:
        r2 = r0;
        r0 = r6;
        r1 = r7;
        r3 = r20;
        r4 = r21;
        r5 = r8;
        r0 = r0.getTranslationValueX(r1, r2, r3, r4, r5);
        r11.setTranslationX(r0);
        r0 = r6.getRotationValue(r7, r15, r8);
        r11.setRotationY(r0);
        r0 = com.android.launcher3.framework.view.features.pagetransition.PageTransitionEffects.mix(r10, r9, r13);
        r11.setBackgroundAlpha(r0);
        return;
    L_0x00f6:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.framework.view.features.pagetransition.AbstractTransitionEffects.applyTransform(android.view.View, float, int, float, float, float, int, boolean):void");
    }

    protected abstract float getPivotValueX(float f, int i, boolean z);

    protected abstract float getPivotValueY(float f, int i);

    protected abstract float getRotationValue(float f, float f2, boolean z);

    protected abstract float getScrollDrawInward();

    protected abstract float getTranslationValueDeltaX(float f, float f2);

    protected abstract float getTranslationValueX(float f, float f2, float f3, float f4, boolean z);

    protected abstract float getTranslationValueY(float f, float f2);

    protected abstract float getZoomValueX(float f, float f2);

    protected abstract float getZoomValueY(float f, float f2);
}
