package com.android.systemui.statusbar.policy;

import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewPropertyAnimator;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import com.android.systemui.Dependency;
import com.android.systemui.Interpolators;

import com.android.systemui.statusbar.phone.StatusBarWindowView;


public class BrightnessMirrorController {
    public long TRANSITION_DURATION_IN = 200;
    public long TRANSITION_DURATION_OUT = 150;
    private View mBrightnessMirror;
    private final int[] mInt2Cache = new int[2];


    private final StatusBarWindowView mStatusBarWindow;

    public BrightnessMirrorController(StatusBarWindowView statusBarWindowView) {
        this.mStatusBarWindow = statusBarWindowView;

    }

    private ViewPropertyAnimator inAnimation(ViewPropertyAnimator viewPropertyAnimator) {
        return viewPropertyAnimator.alpha(1.0f).setDuration(this.TRANSITION_DURATION_IN).setInterpolator(Interpolators.ALPHA_IN);
    }

    private ViewPropertyAnimator outAnimation(ViewPropertyAnimator viewPropertyAnimator) {
        return viewPropertyAnimator.alpha(0.0f).setDuration(this.TRANSITION_DURATION_OUT).setInterpolator(Interpolators.ALPHA_OUT).withEndAction(null);
    }

    public View getMirror() {
        return this.mBrightnessMirror;
    }

    public void hideMirror() {
        if (this.mBrightnessMirror.getVisibility() != 0) {
            Log.d("BrightnessMirror", "hideMirror cancelled since it's not visible");
            return;
        }

    }

    public void onDensityOrFontScaleChanged() {

    }

    public void setLocation(View view) {
        view.getLocationInWindow(this.mInt2Cache);
        int width = this.mInt2Cache[0] + (view.getWidth() / 2);
        int height = this.mInt2Cache[1] + (view.getHeight() / 2);
        this.mBrightnessMirror.setTranslationX(0.0f);
        this.mBrightnessMirror.setTranslationY(0.0f);
        this.mBrightnessMirror.getLocationInWindow(this.mInt2Cache);
        int height2 = this.mInt2Cache[1] + (this.mBrightnessMirror.getHeight() / 2);
        this.mBrightnessMirror.setTranslationX((float) (width - (this.mInt2Cache[0] + (this.mBrightnessMirror.getWidth() / 2))));
        this.mBrightnessMirror.setTranslationY((float) (height - height2));
    }

    public void showMirror() {

    }

    public void updateResources() {
        LayoutParams layoutParams = (LayoutParams) this.mBrightnessMirror.getLayoutParams();

    }
}
