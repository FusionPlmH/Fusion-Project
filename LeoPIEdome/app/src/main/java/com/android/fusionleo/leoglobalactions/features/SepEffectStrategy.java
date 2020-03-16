package com.android.fusionleo.leoglobalactions.features;

import android.view.Window;
import android.view.WindowManager.LayoutParams;
import com.android.fusionleo.leoglobalactions.presentation.strategies.WindowDecorationStrategy;

public class SepEffectStrategy implements WindowDecorationStrategy {
    private final float BLUR_DIM_AMOUNT = 0.3f;

    public void onDecorateWindow(Window window) {
        LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = 0.3f;

        window.setAttributes(attributes);
    }
}
