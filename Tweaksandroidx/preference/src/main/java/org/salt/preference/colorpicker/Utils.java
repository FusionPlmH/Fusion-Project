package org.salt.preference.colorpicker;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Color;

import androidx.annotation.ColorInt;

/**
 * Created by Charles Andersons on 4/17/15.
 */
public class Utils {
	public static float getAlphaPercent(int argb) {
		return Color.alpha(argb) / 255f;
	}

	public static int alphaValueAsInt(float alpha) {
		return Math.round(alpha * 255);
	}

	public static int adjustAlpha(float alpha, int color) {
		return alphaValueAsInt(alpha) << 24 | (0x00ffffff & color);
	}

	public static int colorAtLightness(int color, float lightness) {
		float[] hsv = new float[3];
		Color.colorToHSV(color, hsv);
		hsv[2] = lightness;
		return Color.HSVToColor(hsv);
	}

	public static float lightnessOfColor(int color) {
		float[] hsv = new float[3];
		Color.colorToHSV(color, hsv);
		return hsv[2];
	}

    public static String getHexString(int color, boolean showAlpha) {
        int base = showAlpha ? 0xFFFFFFFF : 0xFFFFFF;
        String format = showAlpha ? "#%08X" : "#%06X";
        return String.format(format, (base & color)).toUpperCase();
    }
	@ColorInt
	public static int getColorAttr(Context context, int attr) {
		TypedArray ta = context.obtainStyledAttributes(new int[]{attr});
		@ColorInt int colorAccent = ta.getColor(0, 0);
		ta.recycle();
		return colorAccent;
	}


	public static String convertToARGB(int color,boolean disableAlpha) {

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
