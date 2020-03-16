package com.android.launcher3.framework.view.features.pagetransition;

import android.view.View;


public class Card extends PageTransitionEffects {

    /* JADX WARNING: Removed duplicated region for block: B:30:0x00c5  */
    public void applyTransform(android.view.View r18, float r19, int r20, float r21, float r22, float r23, int r24, boolean r25) {
        /*
        r17 = this;
        r0 = r17;
        r2 = r20;
        r3 = 0;
        r4 = (r19 > r3 ? 1 : (r19 == r3 ? 0 : -1));
        r5 = 1;
        if (r4 >= 0) goto L_0x000c;
    L_0x000a:
        r7 = r5;
        goto L_0x000e;
    L_0x000c:
        r6 = 0;
        r7 = r6;
    L_0x000e:
        r6 = r18;
        r6 = (com.android.launcher3.framework.view.ui.icon.CellLayout) r6;
        r8 = java.lang.Math.abs(r19);
        r9 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r10 = (r19 > r9 ? 1 : (r19 == r9 ? 0 : -1));
        if (r10 > 0) goto L_0x00d2;
    L_0x001c:
        r10 = -1082130432; // 0xffffffffbf800000 float:-1.0 double:NaN;
        r10 = (r19 > r10 ? 1 : (r19 == r10 ? 0 : -1));
        if (r10 >= 0) goto L_0x0024;
    L_0x0022:
        goto L_0x00d2;
    L_0x0024:
        r6.invalidate();
        r10 = r0.backgroundAlphaThreshold(r8);
        r11 = 1059816735; // 0x3f2b851f float:0.67 double:5.236190397E-315;
        if (r7 == 0) goto L_0x004e;
    L_0x0030:
        r12 = r6.getWidth();
        r12 = (float) r12;
        r12 = r12 * r19;
        r13 = (r8 > r11 ? 1 : (r8 == r11 ? 0 : -1));
        if (r13 >= 0) goto L_0x004a;
    L_0x003b:
        r13 = r0.mSineIO80Interpolator;
        r11 = r11 - r8;
        r14 = 1059816734; // 0x3f2b851e float:0.66999996 double:5.23619039E-315;
        r11 = r11 / r14;
        r11 = r13.getInterpolation(r11);
        r13 = r11;
        r11 = r23;
        goto L_0x0052;
    L_0x004a:
        r11 = r23;
        r13 = r3;
        goto L_0x0052;
    L_0x004e:
        r11 = r23;
        r12 = r3;
        r13 = r9;
    L_0x0052:
        r10 = com.android.launcher3.framework.view.features.pagetransition.PageTransitionEffects.mix(r10, r9, r11);
        r6.setBackgroundAlpha(r10);
        r10 = r0.mSineIO80Interpolator;
        r10 = r10.getInterpolation(r8);
        r11 = 1036831949; // 0x3dcccccd float:0.1 double:5.122630465E-315;
        r10 = r10 * r11;
        r10 = r9 - r10;
        r14 = r17.isLoopingEnabled();
        if (r14 != 0) goto L_0x00bf;
    L_0x006b:
        r14 = r6.getMeasuredWidth();
        r15 = r6.getMeasuredHeight();
        r9 = transition_rotation_max;
        if (r2 != 0) goto L_0x0090;
    L_0x0077:
        if (r4 >= 0) goto L_0x0090;
    L_0x0079:
        r2 = TRANSITION_PIVOT;
        r3 = (float) r14;
        r2 = r2 * r3;
        r6.setPivotX(r2);
        r2 = -r9;
        r2 = r2 * r19;
        r0 = r17.maxOverScroll();
        r3 = r2 / r0;
        r12 = r21;
        r9 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r13 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        goto L_0x00c0;
    L_0x0090:
        r4 = r24 + -1;
        if (r2 != r4) goto L_0x00b3;
    L_0x0094:
        r1 = (r19 > r3 ? 1 : (r19 == r3 ? 0 : -1));
        if (r1 <= 0) goto L_0x00b3;
    L_0x0098:
        r1 = r21 - r22;
        r2 = r0.mSineIO70Interpolator;
        r2 = r2.getInterpolation(r8);
        r2 = r2 * r11;
        r0 = r17.maxOverScroll();
        r2 = r2 / r0;
        r0 = 1065353216; // 0x3f800000 float:1.0 double:5.263544247E-315;
        r9 = r0 - r2;
        r6.setScaleX(r9);
        r6.setScaleY(r9);
        r13 = r0;
        r12 = r1;
        goto L_0x00c0;
    L_0x00b3:
        r0 = (float) r15;
        r1 = 1073741824; // 0x40000000 float:2.0 double:5.304989477E-315;
        r0 = r0 / r1;
        r6.setPivotY(r0);
        r0 = (float) r14;
        r0 = r0 / r1;
        r6.setPivotX(r0);
    L_0x00bf:
        r9 = r10;
    L_0x00c0:
        r6.setAlpha(r13);
        if (r7 == 0) goto L_0x00cb;
    L_0x00c5:
        r6.setScaleX(r9);
        r6.setScaleY(r9);
    L_0x00cb:
        r6.setTranslationX(r12);
        r6.setRotationY(r3);
        return;
    L_0x00d2:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.launcher3.framework.view.features.pagetransition.Card.applyTransform(android.view.View, float, int, float, float, float, int, boolean):void");
    }

    public void reset(View view) {
        super.reset(view);

    }
}
