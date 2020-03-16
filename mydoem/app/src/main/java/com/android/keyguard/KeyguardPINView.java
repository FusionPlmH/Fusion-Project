package com.android.keyguard;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.Editable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

;
import static com.os.leo.utils.LeoUserSettings.LeoSettings;
import static com.os.leo.utils.LeoUserSettings.setLeoUesrScrambleKeyPad;

public class KeyguardPINView extends LinearLayout{
    private static List<Integer> sNumbers = Arrays.asList(new Integer[]{Integer.valueOf(1), Integer.valueOf(2), Integer.valueOf(3), Integer.valueOf(4), Integer.valueOf(5), Integer.valueOf(6), Integer.valueOf(7), Integer.valueOf(8), Integer.valueOf(9), Integer.valueOf(0)});

    private View[][] mViews;

    public KeyguardPINView(Context context) {
        this(context, null);
    }

    public KeyguardPINView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);

    }




    public void setLeoUpScramble() {
        LeoSettings(getContext());
        if (setLeoUesrScrambleKeyPad) {
            int i;
            Collections.shuffle(sNumbers);
            LinearLayout linearLayout = (LinearLayout) findViewById(2131362032);
            List arrayList = new ArrayList();
            for (i = 0; i < linearLayout.getChildCount(); i++) {
                if (linearLayout.getChildAt(i) instanceof LinearLayout) {
                    LinearLayout linearLayout2 = (LinearLayout) linearLayout.getChildAt(i);
                    for (int i2 = 0; i2 < linearLayout2.getChildCount(); i2++) {
                        View childAt = linearLayout2.getChildAt(i2);
                        if (childAt.getClass() == NumPadKey.class) {
                            arrayList.add((NumPadKey) childAt);
                        }
                    }
                }
            }
            for (i = 0; i < sNumbers.size(); i++) {
                ((NumPadKey) arrayList.get(i)).setDigit(((Integer) sNumbers.get(i)).intValue());
            }
        }
    }


}
