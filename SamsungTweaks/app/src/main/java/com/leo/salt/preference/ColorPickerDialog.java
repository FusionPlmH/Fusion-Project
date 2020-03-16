/*
 * Copyright (C) 2010 Daniel Nilsson
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

package com.fusionleo.salt.preference;

import android.app.Dialog;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Color;
import android.graphics.PixelFormat;
import android.os.Bundle;
import android.text.InputFilter;
import android.text.InputType;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.TextView;


import com.fusionleo.salt.R;

import java.util.Locale;

public class ColorPickerDialog
        extends
        Dialog
        implements
        ColorPickerView.OnColorChangedListener,
        View.OnClickListener, ViewTreeObserver.OnGlobalLayoutListener {
    private Button mDefaultButton;

    private ColorPickerView mColorPicker;

    private ColorPickerPanelView mOldColor;
    private ColorPickerPanelView mNewColor;

    private ColorPickerPanelView mWhite;
    private ColorPickerPanelView mBlack;
    private ColorPickerPanelView mCyan;
    private ColorPickerPanelView mRed;
    private ColorPickerPanelView mGreen;
    private ColorPickerPanelView mYellow;
    private Button mSetButton;
    private EditText mHexVal;
    private boolean mHexValueEnabled = false;
    private ColorStateList mHexDefaultTextColor;

    private OnColorChangedListener mListener;
    private int mOrientation;
    private View mLayout;

    int mDefaultValue = -16777216;

    @Override
    public void onGlobalLayout() {
        if (getContext().getResources().getConfiguration().orientation != mOrientation) {
            final int oldcolor = mOldColor.getColor();
            final int newcolor = mNewColor.getColor();

            mLayout.getViewTreeObserver().removeOnGlobalLayoutListener(this);
            setUp(oldcolor,mDefaultValue);
            mNewColor.setColor(newcolor);
            mColorPicker.setColor(newcolor);
        }
    }


    public interface OnColorChangedListener {
        public void onColorChanged(int color);
    }

    public ColorPickerDialog(Context context, int initialColor,int defaultColor) {
        super(context);

        init(initialColor,defaultColor);
    }

    private void init(int color, int defaultColor) {
        // To fight color banding.
        getWindow().setFormat(PixelFormat.RGBA_8888);

        setUp(color, defaultColor);


    }

    private void setUp(int color,final int defaultColor) {

        LayoutInflater inflater = (LayoutInflater) getContext().getSystemService(Context.LAYOUT_INFLATER_SERVICE);

        mLayout = inflater.inflate(R.layout.dialog_color_picker, null);
        mLayout.getViewTreeObserver().addOnGlobalLayoutListener(this);

        mOrientation = getContext().getResources().getConfiguration().orientation;
        setContentView(mLayout);

        setTitle(R.string.dialog_color_picker);

        mColorPicker = (ColorPickerView) mLayout.findViewById(R.id.color_picker_view);
        mOldColor = (ColorPickerPanelView) mLayout.findViewById(R.id.old_color_panel);
        mNewColor = (ColorPickerPanelView) mLayout.findViewById(R.id.new_color_panel);
        mWhite = (ColorPickerPanelView) mLayout.findViewById(R.id.white_panel);
        mBlack = (ColorPickerPanelView) mLayout.findViewById(R.id.black_panel);
        mCyan = (ColorPickerPanelView) mLayout.findViewById(R.id.cyan_panel);
        mRed = (ColorPickerPanelView) mLayout.findViewById(R.id.red_panel);
        mGreen = (ColorPickerPanelView) mLayout.findViewById(R.id.green_panel);
        mYellow = (ColorPickerPanelView) mLayout.findViewById(R.id.yellow_panel);
        mSetButton = (Button) mLayout.findViewById(R.id.enter);
        mDefaultButton = (Button) mLayout.findViewById(R.id.reset_default);

        mHexVal = (EditText) mLayout.findViewById(R.id.hex_val);
        mHexVal.setInputType(InputType.TYPE_TEXT_FLAG_NO_SUGGESTIONS);
        mHexDefaultTextColor = mHexVal.getTextColors();

        mHexVal.setOnEditorActionListener(new TextView.OnEditorActionListener() {

            @Override
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId == EditorInfo.IME_ACTION_NONE) {
                    InputMethodManager imm = (InputMethodManager) v.getContext().getSystemService(Context.INPUT_METHOD_SERVICE);
                    imm.hideSoftInputFromWindow(v.getWindowToken(), 0);
                    String s = mHexVal.getText().toString();
                    if (s.length() > 5 || s.length() < 10) {
                        try {
                            int c = ColorPickerPreference.convertToColorInt(s.toString());
                            mColorPicker.setColor(c, true);
                            mHexVal.setTextColor(mHexDefaultTextColor);
                        } catch (IllegalArgumentException e) {
                            mHexVal.setTextColor(Color.RED);
                        }
                    } else {
                        mHexVal.setTextColor(Color.RED);
                    }
                    return true;
                }
                return false;
            }
        });

        ((LinearLayout) mOldColor.getParent()).setPadding(
                Math.round(mColorPicker.getDrawingOffset()),
                0,
                Math.round(mColorPicker.getDrawingOffset()),
                0
        );

        mOldColor.setOnClickListener(this);
        mNewColor.setOnClickListener(this);
        mColorPicker.setOnColorChangedListener(this);
        mOldColor.setColor(color);
        mColorPicker.setColor(color, true);


        setColorAndClickAction(mWhite, Color.WHITE);
        setColorAndClickAction(mBlack, Color.BLACK);
        setColorAndClickAction(mCyan, 0xff33b5e5);
        setColorAndClickAction(mRed, Color.RED);
        setColorAndClickAction(mGreen, Color.GREEN);
        setColorAndClickAction(mYellow, Color.YELLOW);
        if (mHexVal != null) {
            mHexVal.setText(ColorPickerPreference.convertToARGB(color));
        }
        if (mSetButton != null) {
            mSetButton.setOnClickListener(new View.OnClickListener() {

                @Override
                public void onClick(View v) {
                    String text = mHexVal.getText().toString();
                    try {
                        int newColor = ColorPickerPreference.convertToColorInt(text);
                        mColorPicker.setColor(newColor, true);
                    } catch (Exception e) {
                    }
                }
            });
        }
        mDefaultButton.setOnClickListener(new View.OnClickListener() {
            public void onClick(View v) {
                try {
                    ColorPickerDialog.this.mColorPicker.setColor(defaultColor, true);
                } catch (Exception e) {
                }
            }
        });

    }

    @Override
    public void onColorChanged(int color) {

        mNewColor.setColor(color);

        if (mHexValueEnabled)
            updateHexValue(color);

		/*
        if (mListener != null) {
			mListener.onColorChanged(color);
		}
		*/

    }

    public void setHexValueEnabled(boolean enable) {
        mHexValueEnabled = enable;
        if (enable) {
            mHexVal.setVisibility(View.VISIBLE);
            updateHexLengthFilter();
            updateHexValue(getColor());
        } else
            mHexVal.setVisibility(View.GONE);
    }

    public boolean getHexValueEnabled() {
        return mHexValueEnabled;
    }

    private void updateHexLengthFilter() {
        if (getAlphaSliderVisible())
            mHexVal.setFilters(new InputFilter[]{new InputFilter.LengthFilter(9)});
        else
            mHexVal.setFilters(new InputFilter[]{new InputFilter.LengthFilter(7)});
    }
   public void setColorAndClickAction(ColorPickerPanelView previewRect, final int color) {
        if (previewRect != null) {
            previewRect.setColor(color);
            previewRect.setOnClickListener(new View.OnClickListener() {
                @Override
                public void onClick(View v) {
                    try {
                        mColorPicker.setColor(color, true);
                    } catch (Exception e) {
                    }
                }
            });
        }
    }
    private void updateHexValue(int color) {
        if (getAlphaSliderVisible()) {
            mHexVal.setText(ColorPickerPreference.convertToARGB(color).toUpperCase(Locale.getDefault()));
        } else {
            mHexVal.setText(ColorPickerPreference.convertToRGB(color).toUpperCase(Locale.getDefault()));
        }
        mHexVal.setTextColor(mHexDefaultTextColor);
    }

    public void setAlphaSliderVisible(boolean visible) {
        mColorPicker.setAlphaSliderVisible(visible);
        if (mHexValueEnabled) {
            updateHexLengthFilter();
            updateHexValue(getColor());
        }
    }

    public boolean getAlphaSliderVisible() {
        return mColorPicker.getAlphaSliderVisible();
    }

    /**
     * Set a OnColorChangedListener to get notified when the color
     * selected by the user has changed.
     *
     * @param listener
     */
    public void setOnColorChangedListener(OnColorChangedListener listener) {
        mListener = listener;
    }

    public int getColor() {
        return mColorPicker.getColor();
    }

    @Override
    public void onClick(View v) {
        if (v.getId() == R.id.new_color_panel) {
            if (mListener != null) {
                mListener.onColorChanged(mNewColor.getColor());
            }
        }
        dismiss();
    }

    @Override
    public Bundle onSaveInstanceState() {
        Bundle state = super.onSaveInstanceState();
        state.putInt("old_color", mOldColor.getColor());
        state.putInt("new_color", mNewColor.getColor());
        return state;
    }

    @Override
    public void onRestoreInstanceState(Bundle savedInstanceState) {
        super.onRestoreInstanceState(savedInstanceState);
        mOldColor.setColor(savedInstanceState.getInt("old_color"));
        mColorPicker.setColor(savedInstanceState.getInt("new_color"), true);
    }
}
