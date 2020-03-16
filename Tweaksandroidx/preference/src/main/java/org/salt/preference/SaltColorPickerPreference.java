package org.salt.preference;


import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Color;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;
import android.provider.Settings;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import org.salt.preference.colorpicker.ColorCircleDrawable;
import org.salt.preference.colorpicker.ColorPickerView;
import org.salt.preference.colorpicker.OnColorChangedListener;
import org.salt.preference.colorpicker.OnColorSelectedListener;
import org.salt.preference.colorpicker.builder.ColorPickerClickListener;
import org.salt.preference.colorpicker.builder.ColorPickerDialogBuilder;


import static org.salt.preference.colorpicker.Utils.convertToARGB;
import static org.salt.preference.colorpicker.Utils.darken;
import static org.salt.preference.colorpicker.Utils.getColorAttr;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;
import static org.salt.preference.utils.SaltPrefeUtils.getIntSaltSettings;
import static org.salt.preference.utils.SaltPrefeUtils.putIntSaltSettings;


public class SaltColorPickerPreference extends Preference {
	protected boolean alphaSlider;
	protected boolean lightSlider;
	protected boolean border;
	protected int selectedColor = 0;
	protected ColorPickerView.WHEEL_TYPE wheelType;
	protected int density;
	private boolean pickerColorEdit;
	private static final String ANDROIDNS = "http://schemas.android.com/apk/res/android";
	protected ImageView colorIndicator;
	private static final int DEF_VALUE_DEFAULT = -6;
	private static final int DEF_VALUE_DEFAULT_CHECK = -7;

	private LinearLayout widgetFrameView;
	private  int mModeSettings;
	private String mBroadcastKey;
	public SaltColorPickerPreference(Context context) {
		super(context);
	}

	public SaltColorPickerPreference(Context context, AttributeSet attrs) {
		super(context, attrs);
		initWith(context, attrs);
	}

	public SaltColorPickerPreference(Context context, AttributeSet attrs, int defStyleAttr) {
		super(context, attrs, defStyleAttr);
		initWith(context, attrs);
	}
	private float mDensity = 0;
	public  String mReverseDependencyKey;
	private void initWith(Context context, AttributeSet attrs) {
		mDensity = getContext().getResources().getDisplayMetrics().density;
		final TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.ColorPickerPreference);
		try {
			alphaSlider = typedArray.getBoolean(R.styleable.ColorPickerPreference_alphaSlider, false);
			lightSlider = typedArray.getBoolean(R.styleable.ColorPickerPreference_lightnessSlider, false);
			border = typedArray.getBoolean(R.styleable.ColorPickerPreference_border, true);

			density = typedArray.getInt(R.styleable.ColorPickerPreference_density, 10);
			wheelType = ColorPickerView.WHEEL_TYPE.indexOf(typedArray.getInt(R.styleable.ColorPickerPreference_wheelType, 1));
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
						throw new IllegalArgumentException("Preference with key \"" +
								"\" needs a default value (check your xml!)!");
					}
				}
			}
			pickerColorEdit = typedArray.getBoolean(R.styleable.ColorPickerPreference_pickerColorEdit, true);
			TypedArray typedArray2 = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
			mReverseDependencyKey = typedArray2.getString(R.styleable.LeoPreference_reverseDependency);
			mBroadcastKey = typedArray2.getString(R.styleable.LeoPreference_BroadcastKey);
			mModeSettings=typedArray2.getInt(R.styleable.LeoPreference_modeSettings,0);
			typedArray2.recycle();
		} finally {
			typedArray.recycle();
		}
	}


	private void setPreviewColor() {
		int tmpColor = isEnabled()
				? selectedColor
				: darken(selectedColor, .5f);

		widgetFrameView.setOrientation(LinearLayout.HORIZONTAL);
		int size = Math.round(getContext().getResources().getDimension(R.dimen.button_size));
		colorIndicator= new ImageView(getContext());
		LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(size, size);
		params.gravity = Gravity.CENTER;
		params.setMargins(0, 0, 0, 0);
		colorIndicator.setLayoutParams(params);
		if (widgetFrameView == null) return;
		widgetFrameView.setVisibility(View.VISIBLE);
		widgetFrameView.setPadding(
				widgetFrameView.getPaddingLeft(),
				widgetFrameView.getPaddingTop(),
				(int) (mDensity * 7),
		widgetFrameView.getPaddingBottom());
		// remove already create preview image
		int count = widgetFrameView.getChildCount();
		if (count > 0) {
			widgetFrameView.removeViews(0, count);
		}
		widgetFrameView.addView(colorIndicator);
		widgetFrameView.setMinimumWidth(0);
		colorIndicator.setBackground(new ColorCircleDrawable((int) (5 * mDensity)));
		colorIndicator.setImageDrawable(new ColorCircleDrawable(tmpColor));
	}
	@Override
	public void onBindViewHolder(PreferenceViewHolder holder) {
		super.onBindViewHolder(holder);


		widgetFrameView= (LinearLayout) holder.findViewById(android.R.id.widget_frame);
		setPreviewColor();
		setAutoSummaryColor( holder);
	}

	private void setAutoSummaryColor(PreferenceViewHolder holder) {
		TextView textView = (TextView)holder.findViewById(android.R.id.summary);
		Spannable summary = new SpannableString(" "+convertToARGB(selectedColor, !alphaSlider)+" ");
		summary.setSpan(new BackgroundColorSpan(Color.parseColor("#ffa0a0a0")),0, summary.length(), 0);
		summary.setSpan(new ForegroundColorSpan(selectedColor), 0, summary.length(), 0);
		textView.setText(summary);
		textView.setAllCaps(true);
		textView.setTextColor(selectedColor);
	}

	public void setValue(int value) {
		if (callChangeListener(value)) {
			selectedColor = value;
			persistInt(value);
			notifyChanged();
			getContext().sendBroadcast(new Intent(mBroadcastKey));
			putIntSaltSettings(mModeSettings,getContext(), mKEY, selectedColor);
		}
	}
	public String mKEY=defaultKey+getKey();
	@Override
	protected void onSetInitialValue(boolean restoreValue, Object defaultValue) {

		int color;
		try {
			color = getIntSaltSettings(mModeSettings,getContext(),mKEY);
		} catch (Settings.SettingNotFoundException e) {

			color = restoreValue ? getPersistedInt(selectedColor) : (int) defaultValue;
			putIntSaltSettings(mModeSettings,getContext(),mKEY, selectedColor);

		}
		setValue(restoreValue ? getPersistedInt(color) : (Integer) defaultValue);

	}

	@Override
	protected void onClick() {
		ColorPickerDialogBuilder builder = ColorPickerDialogBuilder
			.with(getContext())
			.setTitle((String)getTitle())
			.initialColor(selectedColor)
			.showBorder(border)
			.wheelType(wheelType)
			.density(density)
			.setColorEditTextColor(getColorAttr(getContext(),R.attr.colorAccent))
			.showColorEdit(pickerColorEdit)
				.setPositiveButton("ok", (dialog, selectedColor, allColors) -> {
					setValue(selectedColor);

				})
			.setNegativeButton(android.R.string.cancel, null);

		if (!alphaSlider && !lightSlider) builder.noSliders();
		else if (!alphaSlider) builder.lightnessSliderOnly();
		else if (!lightSlider) builder.alphaSliderOnly();

		builder
			.build()
			.show();

	}

	@Override
	public void onAttached() {
		super.onAttached();
		if (!TextUtils.isEmpty(mReverseDependencyKey)) {
			Preference preference = findPreferenceInHierarchy(mReverseDependencyKey);
			if (preference != null && (preference instanceof SaltSwitchPreference || preference instanceof SaltCheckBoxPreference)) {
				ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) preference;
				reverseDependencyMonitor.registerReverseDependencyPreference(this);
			}
		}
	}

}
