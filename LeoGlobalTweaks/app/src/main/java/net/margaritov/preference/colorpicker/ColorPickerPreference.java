/*
 * Copyright (C) 2011 Sergey Margaritov
 * Copyright (C) 2013 Slimroms
 * Copyright (C) 2015 The TeamEos Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package net.margaritov.preference.colorpicker;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

import android.preference.Preference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewOutlineProvider;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.leo.global.tweaks.R;

/**
 * A preference type that allows a user to choose a time
 *
 * @author Sergey Margaritov
 */
public class ColorPickerPreference extends Preference implements
        Preference.OnPreferenceClickListener, ColorPickerDialog.OnColorChangedListener {

    private ColorPickerDialog mDialog;
    private LinearLayout widgetFrameView;
    private int mValue = Color.BLACK;
    private float mDensity = 0;
    private boolean mAlphaSliderEnabled = true;

    // if android:defaultValue is not set, button is not enabled
    private static final String ANDROIDNS = "http://schemas.android.com/apk/res/android";
    private static final String LEOGEARNS = "http://schemas.android.com/apk/res-auto";
    private static final int DEF_VALUE_DEFAULT = -6;
    private static final int DEF_VALUE_DEFAULT_CHECK = -7; // != DEF_VALUE_DEFAULT
    private int mDefValue = -1;
    private boolean mAutoSummary = false;


    private EditText mEditText;

    public ColorPickerPreference(Context context) {
        super(context);
        init(context, null);
    }

    public ColorPickerPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public ColorPickerPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(context, attrs);
    }

    @Override
    protected Object onGetDefaultValue(TypedArray a, int index) {
        return a.getInt(index, Color.BLACK);
    }

    @Override
    protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {
        int defaultVal;
        if (defaultValue instanceof Integer) {
            defaultVal = (Integer) defaultValue;
        } else {
            defaultVal = mDefValue;
        }
        onColorChanged(restoreValue ? getPersistedInt(defaultVal) : defaultVal);
    }

    private void init(Context context, AttributeSet attrs) {
        mDensity = getContext().getResources().getDisplayMetrics().density;
        setOnPreferenceClickListener(this);
        if (attrs != null) {
          //  mPreviewLed = attrs.getAttributeBooleanValue(LEOGEARNS, "ledPreview", false);
            mAlphaSliderEnabled =  attrs.getAttributeBooleanValue(LEOGEARNS, "alphaSlider",true);
            mDefValue = attrs.getAttributeIntValue(ANDROIDNS, "defaultValue", DEF_VALUE_DEFAULT);
            if (mDefValue == DEF_VALUE_DEFAULT) {
                int defValCheck = attrs.getAttributeIntValue(ANDROIDNS, "defaultValue",
                        DEF_VALUE_DEFAULT_CHECK);
                if (defValCheck != mDefValue) {
                    int defValResource = attrs.getAttributeResourceValue(ANDROIDNS, "defaultValue",
                            0);
                    if (defValResource != 0) {
                        mDefValue = context.getResources().getInteger(defValResource);
                    } else {
                        throw new IllegalArgumentException("Preference with key \"" + getKey() +
                                "\" needs a default value (check your xml!)!");
                    }
                }
            }
        }
    }

    @Override
    public void onBindView(View holder) {
        super.onBindView(holder);

        widgetFrameView = (LinearLayout) holder.findViewById(android.R.id.widget_frame);

        //if (mUsesDefaultButton) {
            setDefaultButton();
        //}

        setPreviewColor();
    }

    /**
     * Restore a default value, not necessarily a color
     * For example: Set default value to -1 to remove a color filter
     *
     * @author Randall Rushing aka Bigrushdog
     */
    private void setDefaultButton() {
        if (widgetFrameView == null)
            return;

        ImageView defView = new ImageView(getContext());
        widgetFrameView.setOrientation(LinearLayout.HORIZONTAL);

        // remove already created default button
        int count = widgetFrameView.getChildCount();
        if (count > 0) {
            View oldView = widgetFrameView.findViewWithTag("default");
            View spacer = widgetFrameView.findViewWithTag("spacer");
            if (oldView != null) {
                widgetFrameView.removeView(oldView);
            }
            if (spacer != null) {
                widgetFrameView.removeView(spacer);
            }
        }

        widgetFrameView.addView(defView);
        widgetFrameView.setMinimumWidth(0);
        defView.setBackground(getContext().getDrawable(R.drawable.ic_reset_color));
        defView.setTag("default");
        defView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                if (!isEnabled()) {
                    return;
                }
                try {
                    onColorChanged(Integer.valueOf(mDefValue));
                } catch (NullPointerException e) {
                }
            }
        });

        // sorcery for a linear layout ugh
        View spacer = new View(getContext());
        spacer.setTag("spacer");
        spacer.setLayoutParams(new LinearLayout.LayoutParams((int) (mDensity * 16),
                LayoutParams.MATCH_PARENT));
        widgetFrameView.addView(spacer);
    }

    private void setPreviewColor() {

        // Dynamic summary
        if (mAutoSummary || TextUtils.isEmpty(getSummary())) {
            setSummary(convertToARGB(mValue, !mAlphaSliderEnabled), true);
        }

        ImageView iView = new ImageView(getContext());
        if (widgetFrameView == null)
            return;
        int size = Math.round(getContext().getResources().getDimension(R.dimen.oval_notification_size));
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(size, size);
        params.gravity = Gravity.CENTER;
        params.setMargins(12, 12, 12, 12);

        iView.setLayoutParams(params);

        if (widgetFrameView == null) return;
        widgetFrameView.setVisibility(View.VISIBLE);
        widgetFrameView.setPadding(
                0, 0, 0, 0);
        // remove already create preview image

        // remove already create preview image
        int count = widgetFrameView.getChildCount();
        if (count > 0) {
            View preview = widgetFrameView.findViewWithTag("preview");
            if (preview != null) {
                widgetFrameView.removeView(preview);
            }
        }
        widgetFrameView.addView(iView);
        widgetFrameView.setMinimumWidth(0);

        iView.setBackground(new AlphaPatternDrawable((int) (5 * mDensity)));
        iView.setImageBitmap(getPreviewBitmap());
        iView.setTag("preview");
        final ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() {
            @Override
            public void getOutline(View view, Outline outline) {
                int size = getContext().getResources().getDimensionPixelSize(R.dimen.oval_notification_size);
                outline.setOval(0, 0, size, size);

            }
        };
        iView.setOutlineProvider(viewOutlineProvider);
        iView.setClipToOutline(true);
        iView.setElevation(10.0f);
        /*
        iView.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                showDialog(null);
            }
        });
        */
    }
    private Bitmap getPreviewBitmap() {
        int d = Math.round(getContext().getResources().getDimension(R.dimen.oval_notification_size)); //30dip
        int color = mValue;
        Bitmap bm = Bitmap.createBitmap(d, d, Config.ARGB_8888);
        int w = bm.getWidth();
        int h = bm.getHeight();
        int c;
        for (int i = 0; i < w; i++) {
            for (int j = i; j < h; j++) {
                //by Anna Berkovitch, on 16/06/2015, removed grey rim around the preview bitmap. changed to ? color:color
                c = (i <= 1 || j <= 1 || i >= w - 2 || j >= h - 2) ? color : color;
                bm.setPixel(i, j, c);
                if (i != j) {
                    bm.setPixel(j, i, c);
                }
            }
        }


        return bm;
    }

    @Override
    public void setSummary(CharSequence summary) {
        setSummary(summary, false);
    }

    private void setSummary(CharSequence summary, boolean autoSummary) {
        mAutoSummary = autoSummary;
        super.setSummary(summary);
    }



    @Override
    public void onColorChanged(int color) {
        if (isPersistent()) {
            persistInt(color);
        }
        mValue = color;
        setPreviewColor();
        try {
            getOnPreferenceChangeListener().onPreferenceChange(this, color);
        } catch (NullPointerException e) {
        }
        try {
            mEditText.setText(Integer.toString(color, 16));
        } catch (NullPointerException e) {
        }
    }

    public boolean onPreferenceClick(Preference preference) {
        showDialog(null);
        return false;
    }

    protected void showDialog(Bundle state) {
        mDialog = new ColorPickerDialog(getContext(), mValue);
        mDialog.setOnColorChangedListener(this);
        if (mAlphaSliderEnabled) {
            mDialog.setAlphaSliderVisible(true);
        }

        if (state != null) {
            mDialog.onRestoreInstanceState(state);
        }

        mDialog.setTitle(getTitle());


        mDialog.show();
    }



    /**
     * Toggle Alpha Slider visibility (by default it's disabled)
     *
     * @param enable
     */
    public void setAlphaSliderEnabled(boolean enable) {
        mAlphaSliderEnabled = enable;
    }

    /**
     * For custom purposes. Not used by ColorPickerPreferrence
     *
     * set color preview value from outside
     * @author kufikugel
     */
    public void setNewPreviewColor(int color) {
        onColorChanged(color);
    }

    /**
     * For custom purposes. Not used by ColorPickerPreferrence
     *
     * @param color
     * @param disableAlpha
     * @author Unknown
     */
    public static String convertToARGB(int color, boolean disableAlpha) {
        String alpha = Integer.toHexString(Color.alpha(color));
        String red = Integer.toHexString(Color.red(color));
        String green = Integer.toHexString(Color.green(color));
        String blue = Integer.toHexString(Color.blue(color));

        if (alpha.length() == 1) {
            alpha = "0" + alpha;
        }

        if (red.length() == 1) {
            red = "0" + red;
        }

        if (green.length() == 1) {
            green = "0" + green;
        }

        if (blue.length() == 1) {
            blue = "0" + blue;
        }

        if (disableAlpha) {
            alpha = "";
        }

        return "#" + alpha + red + green + blue;
    }

    /**
     * For custom purposes. Not used by ColorPickerPreferrence
     *
     * @param argb
     * @throws NumberFormatException
     * @author Unknown
     */
    public static int convertToColorInt(String argb) throws NumberFormatException {

        if (argb.startsWith("#")) {
            argb = argb.replace("#", "");
        }

        int alpha = -1, red = -1, green = -1, blue = -1;

        if (argb.length() == 8) {
            alpha = Integer.parseInt(argb.substring(0, 2), 16);
            red = Integer.parseInt(argb.substring(2, 4), 16);
            green = Integer.parseInt(argb.substring(4, 6), 16);
            blue = Integer.parseInt(argb.substring(6, 8), 16);
        }
        else if (argb.length() == 6) {
            alpha = 255;
            red = Integer.parseInt(argb.substring(0, 2), 16);
            green = Integer.parseInt(argb.substring(2, 4), 16);
            blue = Integer.parseInt(argb.substring(4, 6), 16);
        }

        return Color.argb(alpha, red, green, blue);
    }

    @Override
    protected Parcelable onSaveInstanceState() {
        final Parcelable superState = super.onSaveInstanceState();
        if (mDialog == null || !mDialog.isShowing()) {
            return superState;
        }

        final SavedState myState = new SavedState(superState);
        myState.dialogBundle = mDialog.onSaveInstanceState();
        return myState;
    }

    @Override
    protected void onRestoreInstanceState(Parcelable state) {
        if (state == null || !(state instanceof SavedState)) {
            // Didn't save state for us in onSaveInstanceState
            super.onRestoreInstanceState(state);
            return;
        }

        SavedState myState = (SavedState) state;
        super.onRestoreInstanceState(myState.getSuperState());
        showDialog(myState.dialogBundle);
    }

    private static class SavedState extends BaseSavedState {
        Bundle dialogBundle;

        public SavedState(Parcel source) {
            super(source);
            dialogBundle = source.readBundle();
        }

        @Override
        public void writeToParcel(Parcel dest, int flags) {
            super.writeToParcel(dest, flags);
            dest.writeBundle(dialogBundle);
        }

        public SavedState(Parcelable superState) {
            super(superState);
        }

        @SuppressWarnings("unused")
        public static final Parcelable.Creator<SavedState> CREATOR =
                new Parcelable.Creator<SavedState>() {
            public SavedState createFromParcel(Parcel in) {
                return new SavedState(in);
            }

            public SavedState[] newArray(int size) {
                return new SavedState[size];
            }
        };
    }

    public void setDefaultValue(int color) {
        mDefValue = color;
    }
}
