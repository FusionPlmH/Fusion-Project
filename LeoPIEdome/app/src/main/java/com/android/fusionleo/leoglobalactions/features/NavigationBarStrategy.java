package com.android.fusionleo.leoglobalactions.features;

import android.view.Window;
import com.android.fusionleo.leoglobalactions.presentation.strategies.WindowDecorationStrategy;
import com.android.fusionleo.leoglobalactions.util.ConditionChecker;
import com.android.fusionleo.leoglobalactions.util.SystemConditions;

public class NavigationBarStrategy implements WindowDecorationStrategy {
    ConditionChecker mConditionChecker;

    public NavigationBarStrategy(ConditionChecker conditionChecker) {
        this.mConditionChecker = conditionChecker;
    }

    public void onDecorateWindow(Window window) {
        window.setNavigationBarColor(0);
        int systemUiVisibility = (window.getDecorView().getSystemUiVisibility() | 65536) | 512;
        if (this.mConditionChecker.isEnabled(SystemConditions.IS_WHITE_THEME)) {
            systemUiVisibility |= 16;
        }
        window.getDecorView().setSystemUiVisibility(systemUiVisibility);
    }
}
