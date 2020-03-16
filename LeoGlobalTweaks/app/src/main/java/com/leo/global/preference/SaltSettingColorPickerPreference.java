package com.leo.global.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.preference.Preference;
import android.preference.PreferenceDataStore;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.leo.global.colorpicker.ColorPickerView;
import com.leo.global.colorpicker.Utils;
import com.leo.global.colorpicker.builder.ColorPickerClickListener;
import com.leo.global.tweaks.R;

import com.leo.global.colorpicker.builder.ColorPickerDialogBuilder;

public class SaltSettingColorPickerPreference extends Preference {

	protected boolean alphaSlider;
	protected boolean lightSlider;

	protected int selectedColor = 0;

	protected ColorPickerView.WHEEL_TYPE wheelType;
	protected int density;

	private boolean mAutoSummary = false;

	protected ImageView colorIndicator;


	public SaltSettingColorPickerPreference(Context context) {
		super(context);
	}

	public SaltSettingColorPickerPreference(Context context, AttributeSet attrs) {
		super(context, attrs);
		initWith(context, attrs);
	}

	public SaltSettingColorPickerPreference(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
		initWith(context, attrs);
	}
	//private static final String LEOGEARNS = "http://schemas.android.com/apk/res-auto";
	private static final int DEF_VALUE_DEFAULT = -6;
	private static final int DEF_VALUE_DEFAULT_CHECK = -7;
	private static final String ANDROIDNS = "http://schemas.android.com/apk/res/android";


	private void initWith(Context context, AttributeSet attrs) {
		final TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.ColorPickerPreference);

		try {
			alphaSlider = typedArray.getBoolean(R.styleable.ColorPickerPreference_alphaSlider, false);
			lightSlider = typedArray.getBoolean(R.styleable.ColorPickerPreference_lightnessSlider, false);

			density = typedArray.getInt(R.styleable.ColorPickerPreference_density, 10);
			wheelType = ColorPickerView.WHEEL_TYPE.indexOf(typedArray.getInt(R.styleable.ColorPickerPreference_wheelType, 1));

		//	selectedColor = typedArray.getInt( private static final String ANDROIDNS = "http://schemas.android.com/apk/res/android";

			selectedColor = attrs.getAttributeIntValue(ANDROIDNS, "defaultValue",  DEF_VALUE_DEFAULT);
			if (selectedColor == DEF_VALUE_DEFAULT) {
				int defValCheck = attrs.getAttributeIntValue(ANDROIDNS, "defaultValue",
						DEF_VALUE_DEFAULT_CHECK);
				if (defValCheck != selectedColor) {
					int defValResource = attrs.getAttributeResourceValue(ANDROIDNS, "defaultValue",
							0);
					if (defValResource != 0) {
						selectedColor = context.getResources().getInteger(defValResource);
					} else {
						throw new IllegalArgumentException("Preference with key \"" + getKey() +
								"\" needs a default value (check your xml!)!");
					}
				}
			}

		} finally {
			typedArray.recycle();
		}
		mValue = selectedColor;
		setWidgetLayoutResource(R.layout.color_widget);

	}

	@Override
	protected void onBindView(@NonNull View view) {
		super.onBindView(view);

		Resources res = view.getContext().getResources();
		GradientDrawable colorChoiceDrawable = null;

		colorIndicator = (ImageView) view.findViewById(R.id.color_indicator);

		Drawable currentDrawable = colorIndicator.getDrawable();
		if (currentDrawable!=null && currentDrawable instanceof GradientDrawable)
			colorChoiceDrawable = (GradientDrawable) currentDrawable;

		if (colorChoiceDrawable==null) {
			colorChoiceDrawable = new GradientDrawable();
			colorChoiceDrawable.setShape(GradientDrawable.OVAL);
		}

		int tmpColor = isEnabled()
			? selectedColor
			: darken(selectedColor, .5f);

		colorChoiceDrawable.setColor(tmpColor);
		colorChoiceDrawable.setStroke((int) TypedValue.applyDimension(
			TypedValue.COMPLEX_UNIT_DIP,
			1,
			res.getDisplayMetrics()
		), darken(tmpColor, .8f));

		colorIndicator.setImageDrawable(colorChoiceDrawable);


	}

	@Override
	public void setSummary(CharSequence summary) {
		setSummary(summary, false);
	}

	private void setSummary(CharSequence summary,boolean autoSummary) {
		mAutoSummary = autoSummary;
		super.setSummary(summary);
	}

	public String convertToARGB(int color,boolean b) {
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


		return "#" + alpha + red + green + blue;
	}


	public void setValue(int value) {
		if (callChangeListener(value)) {
			selectedColor = value;
			persistInt(value);
			notifyChanged();
	        Settings.System.putInt(getContext().getContentResolver(), getKey(), selectedColor);
			if (mAutoSummary || TextUtils.isEmpty(getSummary())) {
				setSummary(convertToARGB(selectedColor, !alphaSlider), true);
			}
		}
	}
	private int mValue = Color.WHITE;
	@Override
	protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {

		int color;
		try {
			color = Settings.System.getInt(getContext().getContentResolver(), getKey());
		} catch (Settings.SettingNotFoundException e) {
			color = restoreValue ? getPersistedInt(mValue) : (int) defaultValue;
			Settings.System.putInt(getContext().getContentResolver(), getKey(), color);
		}

		setValue(restoreValue ? getPersistedInt(color) : (Integer) defaultValue);

	}


	@Override
	protected void onClick() {
		ColorPickerDialogBuilder builder = ColorPickerDialogBuilder
				.with(getContext())
				.setTitle((String)getTitle())
				.initialColor(selectedColor)
				.wheelType(wheelType)
				.density(density)
			    .setColorEditTextColor(0xff009688)
				.setPositiveButton(R.string.color_blend_ok, (dialog, selectedColorFromPicker, allColors) -> setValue(selectedColorFromPicker))
				.setNegativeButton(R.string.color_blend_cancel, null);


		if (!alphaSlider && !lightSlider) builder.noSliders();
		else if (!alphaSlider) builder.lightnessSliderOnly();
		else if (!lightSlider) builder.alphaSliderOnly();
		builder
				.build()
				.show();
	}

	public static int darken(int color, float factor) {
		int a = Color.alpha(color);
		int r = Color.red(color);
		int g = Color.green(color);
		int b = Color.blue(color);

		return Color.argb(a,
			Math.max((int)(r * factor), 0),
			Math.max((int)(g * factor), 0),
			Math.max((int)(b * factor), 0));
	}




}