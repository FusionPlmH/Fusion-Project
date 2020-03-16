package com.android.systemui.statusbar.phone;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.Icon;
import android.net.Uri;
import android.provider.Settings.Global;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display.Mode;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.Space;
import com.android.systemui.Dependency;
import com.android.systemui.Rune;
import com.android.systemui.plugins.statusbar.phone.NavBarButtonProvider;
import com.android.systemui.statusbar.policy.KeyButtonView;
import com.android.systemui.tuner.TunerService;
import com.android.systemui.util.SettingsHelper;


import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

public class NavigationBarInflaterView extends FrameLayout implements TunerService.Tunable {
    private boolean isRot0Landscape;
    private boolean mAlternativeOrder;
    private SparseArray<ButtonDispatcher> mButtonDispatchers;
    private String mCurrentLayout;
    protected LayoutInflater mLandscapeInflater;
    private View mLastLandscape;
    private View mLastPortrait;
    protected LayoutInflater mLayoutInflater;
    private final List<NavBarButtonProvider> mPlugins = new ArrayList();

    private int mNavBarWidth = 0;

    protected FrameLayout mRot0;
    protected FrameLayout mRot90;


    public NavigationBarInflaterView(Context context, AttributeSet attrs) {
        super(context, attrs);
        createInflaters();

    }

    private void createInflaters() {

    }

    protected void onFinishInflate() {
        super.onFinishInflate();
        inflateChildren();

        inflateLayout(getDefaultLayout());
    }

    private void inflateChildren() {
        removeAllViews();

    }

    protected String getDefaultLayout() {

        return null;
    }

    protected void onAttachedToWindow() {
        super.onAttachedToWindow();

    }

    protected void onDetachedFromWindow() {

        super.onDetachedFromWindow();
    }

    public void onTuningChanged(String key, String newValue) {

    }

    public void setButtonDispatchers(SparseArray<ButtonDispatcher> buttonDisatchers) {
        this.mButtonDispatchers = buttonDisatchers;
        for (int i = 0; i < buttonDisatchers.size(); i++) {
            initiallyFill((ButtonDispatcher) buttonDisatchers.valueAt(i));
        }
    }

    public void setAlternativeOrder(boolean alternativeOrder) {
        if (alternativeOrder != this.mAlternativeOrder) {
            this.mAlternativeOrder = alternativeOrder;
            updateAlternativeOrder();
        }
    }

    private void updateAlternativeOrder() {

    }

    private void updateAlternativeOrder(View v) {

    }

    private void initiallyFill(ButtonDispatcher buttonDispatcher) {

    }

    private void addAll(ButtonDispatcher buttonDispatcher, ViewGroup parent) {
        for (int i = 0; i < parent.getChildCount(); i++) {
            if (parent.getChildAt(i).getId() == buttonDispatcher.getId()) {
                buttonDispatcher.addView(parent.getChildAt(i));
            } else if (parent.getChildAt(i) instanceof ViewGroup) {
                addAll(buttonDispatcher, (ViewGroup) parent.getChildAt(i));
            }
        }
    }

    protected void inflateLayout(String newLayout) {
        this.mCurrentLayout = newLayout;
        if (newLayout == null) {
            newLayout = getDefaultLayout();
        }

        String[] sets = newLayout.split(";", 3);
        String[] start = sets[0].split(",");
        String[] center = sets[1].split(",");
        String[] end = sets[2].split(",");

    }

    private void addGravitySpacer(LinearLayout layout) {
        //layout.addView(new Space(this.mContext), new LayoutParams(0, 0, 1.0f));
    }

    private void inflateButtons(String[] buttons, ViewGroup parent, boolean landscape) {
        for (String inflateButton : buttons) {
            inflateButton(inflateButton, parent, landscape);
        }
    }

    protected View inflateButton(String buttonSpec, ViewGroup parent, boolean landscape) {
        LayoutInflater inflater = landscape ? this.mLandscapeInflater : this.mLayoutInflater;
        float size = extractSize(buttonSpec);
        View v = createView(buttonSpec, parent, inflater, landscape);
        if (v == null) {
            return null;
        }
        if (size != 0.0f) {
            ViewGroup.LayoutParams params = v.getLayoutParams();
            params.width = (int) (((float) params.width) * size);
        }
        parent.addView(v);
     //   addToDispatchers(v);
        View lastView = landscape ? this.mLastLandscape : this.mLastPortrait;
        if (lastView != null) {
            v.setAccessibilityTraversalAfter(lastView.getId());
        }
        if (landscape) {
            this.mLastLandscape = v;
        } else {
            this.mLastPortrait = v;
        }
        return v;
    }
    public static final String LEO_CUSTOM = "leo_customize";
    private View createView(String buttonSpec, ViewGroup parent, LayoutInflater inflater, boolean landscape) {


        return null;
    }


    private void setupNavButtonWidth(String str, View view) {
        Log.d("NavBarInflater", "setupNavButtonWidth Button : " + str + ", View : " + view);
        if ("home".equals(str) || "back".equals(str) || "recent".equals(str)) {
            view.getLayoutParams().width = (int) (((double) this.mNavBarWidth) * 0.22220000624656677d);
        } else if ("menu_ime".equals(str) || "space".equals(str) || "clipboard".equals(str) || str.startsWith("key") || "left_remote_view".equals(str) || "right_remote_view".equals(str) || "pin".equals(str)) {
            view.getLayoutParams().width = (int) (((double) this.mNavBarWidth) * 0.10999999940395355d);
        }
    }

    public static String extractButton(String str) {
        return !str.contains("[") ? str : str.substring(0, str.indexOf("["));
    }

    public static String extractImage(String str) {
        return !str.contains(":") ? null : str.substring(str.indexOf(":") + 1, str.indexOf(")"));
    }

    public static int extractKeycode(String str) {
        return !str.contains("(") ? 1 : Integer.parseInt(str.substring(str.indexOf("(") + 1, str.indexOf(":")));
    }

    public static float extractSize(String str) {
        return !str.contains("[") ? 1.0f : Float.parseFloat(str.substring(str.indexOf("[") + 1, str.indexOf("]")));
    }


}
