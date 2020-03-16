package com.leo.salt.preference;

import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.Outline;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.PreferenceDataStore;
import android.provider.Settings;
import android.support.annotation.NonNull;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewOutlineProvider;
import android.widget.ImageView;
import android.widget.LinearLayout;

import com.leo.salt.colorpicker.CircleColorDrawable;
import com.leo.salt.colorpicker.ColorPickerView;
import com.leo.salt.colorpicker.builder.ColorPickerDialogBuilder;
import com.leo.salt.colorpicker.slider.AlphaSlider;
import com.leo.salt.tweaks.R;

import static com.leo.salt.tweaks.resource.Resource.getColorAttr;


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
	private String mReverseDependencyKey;

	private void initWith(Context context, AttributeSet attrs) {

		mDensity = getContext().getResources().getDisplayMetrics().density;
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
						throw new IllegalArgumentException("Preference with key \"" + mKey +
								"\" needs a default value (check your xml!)!");
					}
				}
			}

		} finally {
			typedArray.recycle();
		}
		mValue = selectedColor;

		setWidgetLayoutResource(R.layout.color_widget);
		TypedArray typedArray2 = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
		mReverseDependencyKey = typedArray2.getString(R.styleable.LeoPreference_reverseDependency);
		typedArray.recycle();
	}

	@Override
	protected void onBindView(@NonNull View view) {
		super.onBindView(view);

		/*Resources res = view.getContext().getResources();
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

		colorIndicator.setImageDrawable(colorChoiceDrawable);*/
		setPreviewColor(view);
	}
	public void onColorChanged(int color,View view) {
		if (isPersistent()) {
			persistInt(color);
		}
		mValue = color;
		setPreviewColor(view);
		try {
			getOnPreferenceChangeListener().onPreferenceChange(this, color);
		} catch (NullPointerException e) {
		}

	}
	private void setAutoSummaryColor() {
		Spannable summary = new SpannableString(" "+convertToARGB(selectedColor, !alphaSlider)+" ");
		summary.setSpan(new BackgroundColorSpan(Color.parseColor("#ffa0a0a0")),0, summary.length(), 0);
		summary.setSpan(new ForegroundColorSpan(selectedColor), 0, summary.length(), 0);
		setSummary(summary,true);
	}

	private float mDensity = 0;
	private void setPreviewColor(View view) {
		if (mAutoSummary || TextUtils.isEmpty(getSummary())) {
			setAutoSummaryColor();
		}
		int size = Math.round(getContext().getResources().getDimension(R.dimen.button_size));
		if (view == null) return;
		ImageView iView = new ImageView(getContext());
		LinearLayout widgetFrameView = ((LinearLayout) view.findViewById(android.R.id.widget_frame));
		LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(size, size);
		params.gravity = Gravity.CENTER;
		params.setMargins(12, 12, 12, 12);

		iView.setLayoutParams(params);

		if (widgetFrameView == null) return;
		widgetFrameView.setVisibility(View.VISIBLE);
		widgetFrameView.setPadding(
				0, 0, 0, 0);
		// remove already create preview image
		int count = widgetFrameView.getChildCount();
		if (count > 0) {
			widgetFrameView.removeViews(0, count);
		}
		widgetFrameView.addView(iView);
		widgetFrameView.setMinimumWidth(0);
		iView.setBackground(new CircleColorDrawable((int) (5 * mDensity)));
		iView.setImageBitmap(getPreviewBitmap());
		// by Anna Berkovitch, edited on 16/06/2015, added Outline to make the preview round
		final ViewOutlineProvider viewOutlineProvider = new ViewOutlineProvider() {
			@Override
			public void getOutline(View view, Outline outline) {
				int size = getContext().getResources().getDimensionPixelSize(R.dimen.button_size);
				outline.setOval(0, 0, size, size);

			}
		};
		iView.setOutlineProvider(viewOutlineProvider);
		iView.setClipToOutline(true);
		iView.setElevation(10.0f);
	}

	private Bitmap getPreviewBitmap() {
		int d = Math.round(getContext().getResources().getDimension(R.dimen.button_size)); //30dip
		int color = selectedColor;
		Bitmap bm = Bitmap.createBitmap(d, d, Bitmap.Config.ARGB_8888);
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

	private void setSummary(CharSequence summary,boolean autoSummary) {
		mAutoSummary = autoSummary;
		super.setSummary(summary);
	}

	public String convertToARGB(int color,boolean disableAlpha) {
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


	public void setValue(int value) {
		if (callChangeListener(value)) {
			selectedColor = value;
			persistInt(value);
			notifyChanged();
	        Settings.System.putInt(getContext().getContentResolver(), mKey, selectedColor);
			if (mAutoSummary || TextUtils.isEmpty(getSummary())) {
				setAutoSummaryColor();
			}
		}
	}
	public String mKey="leo_salt_"+getKey();
	private int mValue = Color.WHITE;
	@Override
	protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {

		int color;
		try {
			color = Settings.System.getInt(getContext().getContentResolver(), mKey);
		} catch (Settings.SettingNotFoundException e) {
			color = restoreValue ? getPersistedInt(mValue) : (int) defaultValue;
			Settings.System.putInt(getContext().getContentResolver(), mKey, color);
		}

		setValue(restoreValue ? getPersistedInt(color) : (Integer) defaultValue);

	}


	@Override
	public void onClick() {
		ColorPickerDialogBuilder builder = ColorPickerDialogBuilder
				.with(getContext())
				.setTitle((String)getTitle())
				.initialColor(selectedColor)
				.wheelType(wheelType)
				.density(density)
			    .setColorEditTextColor(getColorAttr(getContext(),R.attr.colorAccent))
				.setPositiveButton(android.R.string.yes, (dialog, selectedColorFromPicker, allColors) -> setValue(selectedColorFromPicker))
				.setNegativeButton(android.R.string.cancel, null);


		if (!alphaSlider && !lightSlider) builder.noSliders();
		else if (!alphaSlider) builder.lightnessSliderOnly();
		else if (!lightSlider) builder.alphaSliderOnly();
		builder
				.build()
				.show();
	}





	@Override
	protected void onAttachedToActivity() {
		super.onAttachedToActivity();
		if (!TextUtils.isEmpty(mReverseDependencyKey)) {
			Preference preference = findPreferenceInHierarchy(mReverseDependencyKey);
			if (preference != null && (preference instanceof SaltSettingSwitchPreference || preference instanceof CheckBoxPreference)) {
				ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) preference;
				reverseDependencyMonitor.registerReverseDependencyPreference(this);
			}
		}
	}

}