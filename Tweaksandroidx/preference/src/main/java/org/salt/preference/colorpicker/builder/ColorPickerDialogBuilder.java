package org.salt.preference.colorpicker.builder;

import android.content.Context;
import android.content.DialogInterface;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.InputFilter;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;

import androidx.appcompat.app.AlertDialog;

import org.salt.preference.R;
import org.salt.preference.colorpicker.ColorCircleDrawable;
import org.salt.preference.colorpicker.ColorPickerView;
import org.salt.preference.colorpicker.OnColorChangedListener;
import org.salt.preference.colorpicker.OnColorSelectedListener;

import org.salt.preference.colorpicker.Utils;
import org.salt.preference.colorpicker.renderer.ColorWheelRenderer;
import org.salt.preference.colorpicker.slider.AlphaSlider;
import org.salt.preference.colorpicker.slider.LightnessSlider;

public class ColorPickerDialogBuilder {
	private AlertDialog.Builder builder;
	private LinearLayout pickerContainer;
	private ColorPickerView colorPickerView;
	private LightnessSlider lightnessSlider;
	private AlphaSlider alphaSlider;
	private EditText colorEdit;
	private LinearLayout colorPreview;

	private boolean isLightnessSliderEnabled = true;
	private boolean isAlphaSliderEnabled = true;
	private boolean isBorderEnabled = true;
	private ImageView colorImage;
	private int pickerCount = 1;
	private int defaultMargin = 0;
	private int defaultMarginTop = 0;
		private boolean isColorEditEnabled = true;
	private boolean isPreviewEnabled = true;
	private Integer[] initialColor = new Integer[]{null, null, null, null, null};

	private ColorPickerDialogBuilder(Context context) {
		this(context, 0);
	}

	private ColorPickerDialogBuilder(Context context, int theme) {
		defaultMargin = getDimensionAsPx(context, R.dimen.default_slider_margin);
		defaultMarginTop = getDimensionAsPx(context, R.dimen.default_margin_top);

		builder = new AlertDialog.Builder(context, theme);
		pickerContainer = new LinearLayout(context);
		pickerContainer.setOrientation(LinearLayout.VERTICAL);
		pickerContainer.setGravity(Gravity.CENTER_HORIZONTAL);
		pickerContainer.setPadding(defaultMargin, defaultMarginTop, defaultMargin, 0);

		LinearLayout.LayoutParams layoutParamsForColorPickerView = new LinearLayout.LayoutParams(ViewGroup.LayoutParams.MATCH_PARENT, 0);
		layoutParamsForColorPickerView.weight = 1;
		colorPickerView = new ColorPickerView(context);

		pickerContainer.addView(colorPickerView, layoutParamsForColorPickerView);

		builder.setView(pickerContainer);
	}

	public static ColorPickerDialogBuilder with(Context context) {
		return new ColorPickerDialogBuilder(context);
	}

	public static ColorPickerDialogBuilder with(Context context, int theme) {
		return new ColorPickerDialogBuilder(context, theme);
	}

	public ColorPickerDialogBuilder setTitle(String title) {
		builder.setTitle(title);
		return this;
	}

	public ColorPickerDialogBuilder setTitle(int titleId) {
		builder.setTitle(titleId);
		return this;
	}

	public ColorPickerDialogBuilder initialColor(int initialColor) {
		this.initialColor[0] = initialColor;
		return this;
	}

	public ColorPickerDialogBuilder initialColors(int[] initialColor) {
		for (int i = 0; i < initialColor.length && i < this.initialColor.length; i++) {
			this.initialColor[i] = initialColor[i];
		}
		return this;
	}

	public ColorPickerDialogBuilder wheelType(ColorPickerView.WHEEL_TYPE wheelType) {
		ColorWheelRenderer renderer = ColorWheelRendererBuilder.getRenderer(wheelType);
		colorPickerView.setRenderer(renderer);
		return this;
	}

	public ColorPickerDialogBuilder density(int density) {
		colorPickerView.setDensity(density);
		return this;
	}

	public ColorPickerDialogBuilder setOnColorChangedListener(OnColorChangedListener onColorChangedListener) {
		colorPickerView.addOnColorChangedListener(onColorChangedListener);
		return this;
	}

	public ColorPickerDialogBuilder setOnColorSelectedListener(OnColorSelectedListener onColorSelectedListener) {
		colorPickerView.addOnColorSelectedListener(onColorSelectedListener);
		return this;
	}

	public ColorPickerDialogBuilder setPositiveButton(CharSequence text, final ColorPickerClickListener onClickListener) {
		builder.setPositiveButton(text, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				positiveButtonOnClick(dialog, onClickListener);
			}
		});
		return this;
	}

	public ColorPickerDialogBuilder setPositiveButton(int textId, final ColorPickerClickListener onClickListener) {
		builder.setPositiveButton(textId, new DialogInterface.OnClickListener() {
			@Override
			public void onClick(DialogInterface dialog, int which) {
				positiveButtonOnClick(dialog, onClickListener);
			}
		});
		return this;
	}

	public ColorPickerDialogBuilder setNegativeButton(CharSequence text, DialogInterface.OnClickListener onClickListener) {
		builder.setNegativeButton(text, onClickListener);
		return this;
	}

	public ColorPickerDialogBuilder setNegativeButton(int textId, DialogInterface.OnClickListener onClickListener) {
		builder.setNegativeButton(textId, onClickListener);
		return this;
	}

	public ColorPickerDialogBuilder noSliders() {
		isLightnessSliderEnabled = false;
		isAlphaSliderEnabled = false;
		return this;
	}

	public ColorPickerDialogBuilder alphaSliderOnly() {
		isLightnessSliderEnabled = false;
		isAlphaSliderEnabled = true;
		return this;
	}

	public ColorPickerDialogBuilder lightnessSliderOnly() {
		isLightnessSliderEnabled = true;
		isAlphaSliderEnabled = false;
		return this;
	}

	public ColorPickerDialogBuilder showAlphaSlider(boolean showAlpha) {
		isAlphaSliderEnabled = showAlpha;
		return this;
	}

	public ColorPickerDialogBuilder showLightnessSlider(boolean showLightness) {
		isLightnessSliderEnabled = showLightness;
		return this;
	}

	public ColorPickerDialogBuilder showBorder(boolean showBorder) {
		isBorderEnabled = showBorder;
		return this;
	}

	public ColorPickerDialogBuilder showColorEdit(boolean showEdit) {
		isColorEditEnabled = showEdit;
		return this;
	}

	public ColorPickerDialogBuilder setColorEditTextColor(int argb) {
		colorPickerView.setColorEditTextColor(argb);
		return this;
	}

	public ColorPickerDialogBuilder showColorPreview(boolean showPreview) {
		isPreviewEnabled = showPreview;
		if (!showPreview)
			pickerCount = 1;
		return this;
	}

	public ColorPickerDialogBuilder setPickerCount(int pickerCount) throws IndexOutOfBoundsException {
		if (pickerCount < 1 || pickerCount > 5)
			throw new IndexOutOfBoundsException("Picker Can Only Support 1-5 Colors");
		this.pickerCount = pickerCount;
		if (this.pickerCount > 1)
			this.isPreviewEnabled = true;
		return this;
	}

	public AlertDialog build() {
		Context context = builder.getContext();
		colorPickerView.setInitialColors(initialColor, getStartOffset(initialColor));
		colorPickerView.setShowBorder(isBorderEnabled);
colorPreview = (LinearLayout) View.inflate(context, R.layout.color_preference_dialog, null);
		if (isLightnessSliderEnabled) {
			lightnessSlider = (LightnessSlider) colorPreview.findViewById(R.id.lightness_slider);
			colorPickerView.setLightnessSlider(lightnessSlider);
			lightnessSlider.setColor(getStartColor(initialColor));
			lightnessSlider.setShowBorder(isBorderEnabled);
		}
		if (isAlphaSliderEnabled) {
			alphaSlider = (AlphaSlider) colorPreview.findViewById(R.id.alpha_slider);
			colorPickerView.setAlphaSlider(alphaSlider);
			alphaSlider.setColor(getStartColor(initialColor));
			alphaSlider.setShowBorder(isBorderEnabled);
		}
	    colorEdit = (EditText) colorPreview.findViewById(R.id.edit_text);
		colorEdit.setFilters(new InputFilter[]{new InputFilter.AllCaps()});
		colorEdit.setSingleLine();
		colorEdit.setHint("");

		int maxLength = isAlphaSliderEnabled  ? 9 : 7;
		colorEdit.setText(Utils.getHexString(getStartColor(initialColor), isAlphaSliderEnabled ));
		colorEdit.setFilters(new InputFilter[]{new InputFilter.LengthFilter(maxLength)});
		colorPickerView.setColorEdit(colorEdit);

		colorImage = (ImageView)colorPreview.findViewById(R.id.color_preview);
		colorImage.setImageDrawable(new ColorCircleDrawable(initialColor[0]));

		colorPickerView.addOnColorChangedListener(new OnColorChangedListener() {
			@Override
			public void onColorChanged(int selectedColor) {
			//	imageView.setImageDrawable(new ColorCircleDrawable(Color.parseColor("#ffa0a0a0")));
				colorImage.setImageDrawable(new ColorCircleDrawable(selectedColor));
				//darken(selectedColor,8f);
			}
		});

		pickerContainer.addView(colorPreview);


		return builder.create();
	}

	private Integer getStartOffset(Integer[] colors) {
		Integer start = 0;
		for (int i = 0; i < colors.length; i++) {
			if (colors[i] == null) {
				return start;
			}
			start = (i + 1) / 2;
		}
		return start;
	}

	private int getStartColor(Integer[] colors) {
		Integer startColor = getStartOffset(colors);
		return startColor == null ? Color.WHITE : colors[startColor];
	}

	private static int getDimensionAsPx(Context context, int rid) {
		return (int) (context.getResources().getDimension(rid) + .5f);
	}

	private void positiveButtonOnClick(DialogInterface dialog, ColorPickerClickListener onClickListener) {
		int selectedColor = colorPickerView.getSelectedColor();
		Integer[] allColors = colorPickerView.getAllColors();
		onClickListener.onClick(dialog, selectedColor, allColors);
	}
}