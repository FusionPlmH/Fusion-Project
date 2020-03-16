package com.android.internal.util;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources.NotFoundException;
import android.graphics.Bitmap;
import android.graphics.Color;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Icon;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.VectorDrawable;
import android.provider.Settings.System;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.style.CharacterStyle;
import android.text.style.ForegroundColorSpan;
import android.text.style.TextAppearanceSpan;
import android.util.Log;
import android.util.Pair;
import com.android.internal.R;

import java.util.Arrays;
import java.util.Random;
import java.util.WeakHashMap;

import static com.leo.utils.Constants.getLeoAndroidResource;
import static com.os.leo.utils.LeoUserValues.AUTHOR;

public class NotificationColorUtil {
    private static final boolean DEBUG = false;
    public static final int OPACITY_TARGET_NOTI_BACKGROUND = 1;
    public static final int OPACITY_TARGET_NOTI_NORMAL = 0;
    public static final int OPACITY_TARGET_NOTI_SELECTED = 2;
    private static final String TAG = "NotificationColorUtil";
    public static boolean mAllowNotificationColorChange;
    public static int mNotifSummaryTextColor;
    public static int mNotifTitleTextColor;
    public static boolean mNotificationLinkAppName;
    private static NotificationColorUtil sInstance;
    private static final Object sLock = new Object();
    private Context mContext;
    private final WeakHashMap<Bitmap, Pair<Boolean, Integer>> mGrayscaleBitmapCache = new WeakHashMap();
    private final int mGrayscaleIconMaxSize;
    private final ImageUtils mImageUtils = new ImageUtils();

    private static class ColorUtilsFromCompat {
        private static final int MIN_ALPHA_SEARCH_MAX_ITERATIONS = 10;
        private static final int MIN_ALPHA_SEARCH_PRECISION = 1;
        private static final ThreadLocal<double[]> TEMP_ARRAY = new ThreadLocal();
        private static final double XYZ_EPSILON = 0.008856d;
        private static final double XYZ_KAPPA = 903.3d;
        private static final double XYZ_WHITE_REFERENCE_X = 95.047d;
        private static final double XYZ_WHITE_REFERENCE_Y = 100.0d;
        private static final double XYZ_WHITE_REFERENCE_Z = 108.883d;

        private ColorUtilsFromCompat() {
        }

        public static int HSLToColor(float[] fArr) {
            float f = fArr[0];
            float f2 = fArr[1];
            float f3 = fArr[2];
            float abs = (1.0f - Math.abs((2.0f * f3) - 1.0f)) * f2;
            float f4 = f3 - (0.5f * abs);
            float abs2 = abs * (1.0f - Math.abs(((f / 60.0f) % 2.0f) - 1.0f));
            int i = 0;
            int i2 = 0;
            int i3 = 0;
            switch (((int) f) / 60) {
                case 0:
                    i = Math.round((abs + f4) * 255.0f);
                    i2 = Math.round((abs2 + f4) * 255.0f);
                    i3 = Math.round(255.0f * f4);
                    break;
                case 1:
                    i = Math.round((abs2 + f4) * 255.0f);
                    i2 = Math.round((abs + f4) * 255.0f);
                    i3 = Math.round(255.0f * f4);
                    break;
                case 2:
                    i = Math.round(255.0f * f4);
                    i2 = Math.round((abs + f4) * 255.0f);
                    i3 = Math.round((abs2 + f4) * 255.0f);
                    break;
                case 3:
                    i = Math.round(255.0f * f4);
                    i2 = Math.round((abs2 + f4) * 255.0f);
                    i3 = Math.round((abs + f4) * 255.0f);
                    break;
                case 4:
                    i = Math.round((abs2 + f4) * 255.0f);
                    i2 = Math.round(255.0f * f4);
                    i3 = Math.round((abs + f4) * 255.0f);
                    break;
                case 5:
                case 6:
                    i = Math.round((abs + f4) * 255.0f);
                    i2 = Math.round(255.0f * f4);
                    i3 = Math.round((abs2 + f4) * 255.0f);
                    break;
            }
            return Color.rgb(constrain(i, 0, 255), constrain(i2, 0, 255), constrain(i3, 0, 255));
        }

        public static int LABToColor(double d, double d2, double d3) {
            double[] tempDouble3Array = getTempDouble3Array();
            LABToXYZ(d, d2, d3, tempDouble3Array);
            return XYZToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
        }

        public static void LABToXYZ(double d, double d2, double d3, double[] dArr) {
            double d4 = (16.0d + d) / 116.0d;
            double d5 = (d2 / 500.0d) + d4;
            double d6 = d4 - (d3 / 200.0d);
            double pow = Math.pow(d5, 3.0d);
            double d7 = pow > XYZ_EPSILON ? pow : ((116.0d * d5) - 16.0d) / XYZ_KAPPA;
            double pow2 = d > 7.9996247999999985d ? Math.pow(d4, 3.0d) : d / XYZ_KAPPA;
            pow = Math.pow(d6, 3.0d);
            double d8 = pow > XYZ_EPSILON ? pow : ((116.0d * d6) - 16.0d) / XYZ_KAPPA;
            dArr[0] = XYZ_WHITE_REFERENCE_X * d7;
            dArr[1] = XYZ_WHITE_REFERENCE_Y * pow2;
            dArr[2] = XYZ_WHITE_REFERENCE_Z * d8;
        }

        public static void RGBToHSL(int i, int i2, int i3, float[] fArr) {
            float f;
            float f2;
            float f3 = ((float) i) / 255.0f;
            float f4 = ((float) i2) / 255.0f;
            float f5 = ((float) i3) / 255.0f;
            float max = Math.max(f3, Math.max(f4, f5));
            float min = Math.min(f3, Math.min(f4, f5));
            float f6 = max - min;
            float f7 = (max + min) / 2.0f;
            if (max == min) {
                f = 0.0f;
                f2 = 0.0f;
            } else {
                f2 = max == f3 ? ((f4 - f5) / f6) % 6.0f : max == f4 ? ((f5 - f3) / f6) + 2.0f : ((f3 - f4) / f6) + 4.0f;
                f = f6 / (1.0f - Math.abs((2.0f * f7) - 1.0f));
            }
            f2 = (60.0f * f2) % 360.0f;
            if (f2 < 0.0f) {
                f2 += 360.0f;
            }
            fArr[0] = constrain(f2, 0.0f, 360.0f);
            fArr[1] = constrain(f, 0.0f, 1.0f);
            fArr[2] = constrain(f7, 0.0f, 1.0f);
        }

        public static void RGBToLAB(int i, int i2, int i3, double[] dArr) {
            RGBToXYZ(i, i2, i3, dArr);
            XYZToLAB(dArr[0], dArr[1], dArr[2], dArr);
        }

        public static void RGBToXYZ(int i, int i2, int i3, double[] dArr) {
            if (dArr.length != 3) {
                throw new IllegalArgumentException("outXyz must have a length of 3.");
            }
            double d = ((double) i) / 255.0d;
            d = d < 0.04045d ? d / 12.92d : Math.pow((0.055d + d) / 1.055d, 2.4d);
            double d2 = ((double) i2) / 255.0d;
            d2 = d2 < 0.04045d ? d2 / 12.92d : Math.pow((0.055d + d2) / 1.055d, 2.4d);
            double d3 = ((double) i3) / 255.0d;
            d3 = d3 < 0.04045d ? d3 / 12.92d : Math.pow((0.055d + d3) / 1.055d, 2.4d);
            dArr[0] = (((0.4124d * d) + (0.3576d * d2)) + (0.1805d * d3)) * XYZ_WHITE_REFERENCE_Y;
            dArr[1] = (((0.2126d * d) + (0.7152d * d2)) + (0.0722d * d3)) * XYZ_WHITE_REFERENCE_Y;
            dArr[2] = (((0.0193d * d) + (0.1192d * d2)) + (0.9505d * d3)) * XYZ_WHITE_REFERENCE_Y;
        }

        public static int XYZToColor(double d, double d2, double d3) {
            double d4 = (((3.2406d * d) + (-1.5372d * d2)) + (-0.4986d * d3)) / XYZ_WHITE_REFERENCE_Y;
            double d5 = (((-0.9689d * d) + (1.8758d * d2)) + (0.0415d * d3)) / XYZ_WHITE_REFERENCE_Y;
            double d6 = (((0.0557d * d) + (-0.204d * d2)) + (1.057d * d3)) / XYZ_WHITE_REFERENCE_Y;
            return Color.rgb(constrain((int) Math.round(255.0d * (d4 > 0.0031308d ? (Math.pow(d4, 0.4166666666666667d) * 1.055d) - 0.055d : d4 * 12.92d)), 0, 255), constrain((int) Math.round(255.0d * (d5 > 0.0031308d ? (Math.pow(d5, 0.4166666666666667d) * 1.055d) - 0.055d : d5 * 12.92d)), 0, 255), constrain((int) Math.round(255.0d * (d6 > 0.0031308d ? (Math.pow(d6, 0.4166666666666667d) * 1.055d) - 0.055d : d6 * 12.92d)), 0, 255));
        }

        public static void XYZToLAB(double d, double d2, double d3, double[] dArr) {
            if (dArr.length != 3) {
                throw new IllegalArgumentException("outLab must have a length of 3.");
            }
            d = pivotXyzComponent(d / XYZ_WHITE_REFERENCE_X);
            d2 = pivotXyzComponent(d2 / XYZ_WHITE_REFERENCE_Y);
            d3 = pivotXyzComponent(d3 / XYZ_WHITE_REFERENCE_Z);
            dArr[0] = Math.max(0.0d, (116.0d * d2) - 16.0d);
            dArr[1] = (d - d2) * 500.0d;
            dArr[2] = (d2 - d3) * 200.0d;
        }

        public static double calculateContrast(int i, int i2) {
            if (Color.alpha(i2) != 255) {
                Log.wtf(NotificationColorUtil.TAG, "background can not be translucent: #" + Integer.toHexString(i2));
            }
            if (Color.alpha(i) < 255) {
                i = compositeColors(i, i2);
            }
            double calculateLuminance = calculateLuminance(i) + 0.05d;
            double calculateLuminance2 = calculateLuminance(i2) + 0.05d;
            return Math.max(calculateLuminance, calculateLuminance2) / Math.min(calculateLuminance, calculateLuminance2);
        }

        public static double calculateLuminance(int i) {
            double[] tempDouble3Array = getTempDouble3Array();
            colorToXYZ(i, tempDouble3Array);
            return tempDouble3Array[1] / XYZ_WHITE_REFERENCE_Y;
        }

        public static void colorToHSL(int i, float[] fArr) {
            RGBToHSL(Color.red(i), Color.green(i), Color.blue(i), fArr);
        }

        public static void colorToLAB(int i, double[] dArr) {
            RGBToLAB(Color.red(i), Color.green(i), Color.blue(i), dArr);
        }

        public static void colorToXYZ(int i, double[] dArr) {
            RGBToXYZ(Color.red(i), Color.green(i), Color.blue(i), dArr);
        }

        private static int compositeAlpha(int i, int i2) {
            return 255 - (((255 - i2) * (255 - i)) / 255);
        }

        public static int compositeColors(int i, int i2) {
            int alpha = Color.alpha(i2);
            int alpha2 = Color.alpha(i);
            int compositeAlpha = compositeAlpha(alpha2, alpha);
            return Color.argb(compositeAlpha, compositeComponent(Color.red(i), alpha2, Color.red(i2), alpha, compositeAlpha), compositeComponent(Color.green(i), alpha2, Color.green(i2), alpha, compositeAlpha), compositeComponent(Color.blue(i), alpha2, Color.blue(i2), alpha, compositeAlpha));
        }

        private static int compositeComponent(int i, int i2, int i3, int i4, int i5) {
            return i5 == 0 ? 0 : (((i * 255) * i2) + ((i3 * i4) * (255 - i2))) / (i5 * 255);
        }

        private static float constrain(float f, float f2, float f3) {
            return f < f2 ? f2 : f > f3 ? f3 : f;
        }

        private static int constrain(int i, int i2, int i3) {
            return i < i2 ? i2 : i > i3 ? i3 : i;
        }

        public static double[] getTempDouble3Array() {
            double[] dArr = (double[]) TEMP_ARRAY.get();
            if (dArr != null) {
                return dArr;
            }
            Object obj = new double[3];
            TEMP_ARRAY.set((double[]) obj);
            return (double[]) obj;
        }

        private static double pivotXyzComponent(double d) {
            return d > XYZ_EPSILON ? Math.pow(d, 0.3333333333333333d) : ((XYZ_KAPPA * d) + 16.0d) / 116.0d;
        }
    }

    private NotificationColorUtil(Context context) {
        this.mContext = context;
        this.mGrayscaleIconMaxSize = context.getResources().getDimensionPixelSize(R.dimen.notification_large_icon_width);
        setNotifTextColor();
    }

    public static double calculateContrast(int i, int i2) {
        return ColorUtilsFromCompat.calculateContrast(i, i2);
    }

    public static double calculateLuminance(int i) {
        return ColorUtilsFromCompat.calculateLuminance(i);
    }

    public static int changeColorLightness(int i, int i2) {
        double[] tempDouble3Array = ColorUtilsFromCompat.getTempDouble3Array();
        ColorUtilsFromCompat.colorToLAB(i, tempDouble3Array);
        tempDouble3Array[0] = Math.max(Math.min(100.0d, tempDouble3Array[0] + ((double) i2)), 0.0d);
        return ColorUtilsFromCompat.LABToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static int compositeColors(int i, int i2) {
        return ColorUtilsFromCompat.compositeColors(i, i2);
    }

    private static String contrastChange(int i, int i2, int i3) {
        return String.format("from %.2f:1 to %.2f:1", new Object[]{Double.valueOf(ColorUtilsFromCompat.calculateContrast(i, i3)), Double.valueOf(ColorUtilsFromCompat.calculateContrast(i2, i3))});
    }

    public static int ensureLargeTextContrast(int i, int i2) {
        return findContrastColor(i, i2, true, 3.0d);
    }

    public static int ensureTextBackgroundColor(int i, int i2, int i3) {
        return findContrastColor(findContrastColor(i, i3, false, 3.0d), i2, false, 4.5d);
    }

    private static int ensureTextContrast(int i, int i2) {
        return findContrastColor(i, i2, true, 4.5d);
    }

    public static int ensureTextContrastOnBlack(int i) {
        return findContrastColorAgainstDark(i, -16777216, true, 12.0d);
    }

    public static int findAlphaToMeetContrast(int i, int i2, double d) {
        int i3 = i;
        int i4 = i2;
        if (ColorUtilsFromCompat.calculateContrast(i, i2) >= d) {
            return i;
        }
        int alpha = Color.alpha(i);
        int red = Color.red(i);
        int green = Color.green(i);
        int blue = Color.blue(i);
        int i5 = alpha;
        int i6 = 255;
        for (int i7 = 0; i7 < 15 && i6 - i5 > 0; i7++) {
            int i8 = (i5 + i6) / 2;
            if (ColorUtilsFromCompat.calculateContrast(Color.argb(i8, red, green, blue), i2) > d) {
            }
            i6 = i8;
        }
        return Color.argb(i6, red, green, blue);
    }

    public static int findContrastColor(int i, int i2, boolean z, double d) {
        int i3 = z ? i : i2;
        int i4 = z ? i2 : i;
        if (ColorUtilsFromCompat.calculateContrast(i3, i4) >= d) {
            return i;
        }
        double[] dArr = new double[3];
        ColorUtilsFromCompat.colorToLAB(z ? i3 : i4, dArr);
        double d2 = 0.0d;
        double d3 = dArr[0];
        double d4 = dArr[1];
        double d5 = dArr[2];
        for (int i5 = 0; i5 < 15 && d3 - d2 > 1.0E-5d; i5++) {
            double d6 = (d2 + d3) / 2.0d;
            if (z) {
                i3 = ColorUtilsFromCompat.LABToColor(d6, d4, d5);
            } else {
                i4 = ColorUtilsFromCompat.LABToColor(d6, d4, d5);
            }
            if (ColorUtilsFromCompat.calculateContrast(i3, i4) > d) {
            }
            d2 = d6;
        }
        return ColorUtilsFromCompat.LABToColor(d2, d4, d5);
    }

    public static int findContrastColorAgainstDark(int i, int i2, boolean z, double d) {
        int i3 = z ? i : i2;
        int i4 = z ? i2 : i;
        if (ColorUtilsFromCompat.calculateContrast(i3, i4) >= d) {
            return i;
        }
        float[] fArr = new float[3];
        ColorUtilsFromCompat.colorToHSL(z ? i3 : i4, fArr);
        float f = fArr[2];
        float f2 = 1.0f;
        for (int i5 = 0; i5 < 15 && ((double) (f2 - f)) > 1.0E-5d; i5++) {
            float f3 = (f + f2) / 2.0f;
            fArr[2] = f3;
            if (z) {
                i3 = ColorUtilsFromCompat.HSLToColor(fArr);
            } else {
                i4 = ColorUtilsFromCompat.HSLToColor(fArr);
            }
            if (ColorUtilsFromCompat.calculateContrast(i3, i4) > d) {
            }
            f2 = f3;
        }
        if (!z) {
            i3 = i4;
        }
        return i3;
    }

    public static NotificationColorUtil getInstance(Context context) {
        NotificationColorUtil notificationColorUtil;
        synchronized (sLock) {
            if (sInstance == null) {
                sInstance = new NotificationColorUtil(context);
            }
            notificationColorUtil = sInstance;
        }
        return notificationColorUtil;
    }

    public static float getOpacityOnKeyguard(float f, int i, boolean z) {
        if (f == 0.0f) {
            return 0.0f;
        }
        float f2;
        if (!z) {
            switch (i) {
                case 0:
                    f2 = f;
                    break;
                case 1:
                    f2 = (1.125f * f) - 0.00625f;
                    if (f2 < 0.0f) {
                        f2 = 0.0f;
                        break;
                    }
                    break;
                case 2:
                    f2 = (1.75f * f) + 0.2125f;
                    break;
                default:
                    f2 = f;
                    break;
            }
        }
        switch (i) {
            case 0:
                f2 = (0.8333f * f) + 0.275f;
                break;
            case 1:
                f2 = (0.8333f * f) + 0.025f;
                break;
            case 2:
                f2 = (0.875f * f) + 0.60625f;
                break;
            default:
                f2 = f;
                break;
        }
        return Math.min(f2, 1.0f);
    }

    public static int getShiftedColor(int i, int i2) {
        double[] tempDouble3Array = ColorUtilsFromCompat.getTempDouble3Array();
        ColorUtilsFromCompat.colorToLAB(i, tempDouble3Array);
        if (tempDouble3Array[0] >= 4.0d) {
            tempDouble3Array[0] = Math.max(0.0d, tempDouble3Array[0] - ((double) i2));
        } else {
            tempDouble3Array[0] = Math.min(100.0d, tempDouble3Array[0] + ((double) i2));
        }
        return ColorUtilsFromCompat.LABToColor(tempDouble3Array[0], tempDouble3Array[1], tempDouble3Array[2]);
    }

    public static boolean isColorLight(int i) {
        return calculateLuminance(i) > 0.5d;
    }

    private int processColor(int i) {
        return Color.argb(Color.alpha(i), 255 - Color.red(i), 255 - Color.green(i), 255 - Color.blue(i));
    }

    private TextAppearanceSpan processTextAppearanceSpan(TextAppearanceSpan textAppearanceSpan) {
        ColorStateList textColor = textAppearanceSpan.getTextColor();

        return textAppearanceSpan;
    }

    public static int resolveActionBarColor(Context context, int i) {
        return i == 0 ? context.getColor(R.color.notification_action_list) : getShiftedColor(i, 7);
    }

    public static int resolveAmbientColor(Context context, int i) {
        int resolveColor = resolveColor(context, i);
        int i2 = resolveColor;
        return ensureTextContrastOnBlack(resolveColor);
    }

    public static int resolveColor(Context context, int i) {
        return i == 0 ? context.getColor(R.color.notification_icon_default_color) : i;
    }

    public static int resolveContrastColor(Context context, int i, int i2) {
        int resolveColor = resolveColor(context, i);
        int i3 = resolveColor;
        return ensureTextContrast(ensureLargeTextContrast(resolveColor, context.getColor(R.color.notification_action_list)), i2);
    }

    public static int resolvePrimaryColor(Context context, int i) {

        return i;
    }

    public static int resolveSecondaryColor(Context context, int i) {

        int color=0;
        return color;
    }

    public static boolean satisfiesTextContrast(int i, int i2) {
        return calculateContrast(i2, i) >= 4.5d;
    }

    public static boolean shouldInvertTextColor(float f, boolean z) {
        return !z && f < 0.25f;
    }

    private static boolean shouldUseDark(int i) {
        boolean z = i == 0;
        return !z ? ColorUtilsFromCompat.calculateLuminance(i) > 0.5d : z;
    }

    public CharSequence invertCharSequenceColors(CharSequence charSequence) {
        if (!(charSequence instanceof Spanned)) {
            return charSequence;
        }
        Spanned spanned = (Spanned) charSequence;
        Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
        CharSequence spannableStringBuilder = new SpannableStringBuilder(spanned.toString());

        return spannableStringBuilder;
    }

    public boolean isGrayscaleIcon(Context context, int i) {
        if (i == 0) {
            return false;
        }
        try {
            return isGrayscaleIcon(context.getDrawable(i));
        } catch (NotFoundException e) {
            Log.e(TAG, "Drawable not found: " + i);
            return false;
        }
    }

    public boolean isGrayscaleIcon(Context context, Icon icon) {
        if (icon == null) {
            return false;
        }
        return false;
    }

    /* JADX WARNING: Missing block: B:17:0x0038, code:
            r4 = r7.mImageUtils;
     */
    /* JADX WARNING: Missing block: B:18:0x003a, code:
            monitor-enter(r4);
     */
    /* JADX WARNING: Missing block: B:20:?, code:
            r2 = r7.mImageUtils.isGrayscale(r8);
            r1 = r8.getGenerationId();
     */
    /* JADX WARNING: Missing block: B:21:0x0045, code:
            monitor-exit(r4);
     */
    /* JADX WARNING: Missing block: B:22:0x0046, code:
            r4 = sLock;
     */
    /* JADX WARNING: Missing block: B:23:0x0048, code:
            monitor-enter(r4);
     */
    /* JADX WARNING: Missing block: B:25:?, code:
            r7.mGrayscaleBitmapCache.put(r8, android.util.Pair.create(java.lang.Boolean.valueOf(r2), java.lang.Integer.valueOf(r1)));
     */
    /* JADX WARNING: Missing block: B:26:0x005a, code:
            monitor-exit(r4);
     */
    /* JADX WARNING: Missing block: B:27:0x005b, code:
            return r2;
     */
    public boolean isGrayscaleIcon(android.graphics.Bitmap r8) {
        /*
        r7 = this;
        r3 = r8.getWidth();
        r4 = r7.mGrayscaleIconMaxSize;
        if (r3 > r4) goto L_0x0010;
    L_0x0008:
        r3 = r8.getHeight();
        r4 = r7.mGrayscaleIconMaxSize;
        if (r3 <= r4) goto L_0x0012;
    L_0x0010:
        r3 = 0;
        return r3;
    L_0x0012:
        r4 = sLock;
        monitor-enter(r4);
        r3 = r7.mGrayscaleBitmapCache;	 Catch:{ all -> 0x005c }
        r0 = r3.get(r8);	 Catch:{ all -> 0x005c }
        r0 = (android.util.Pair) r0;	 Catch:{ all -> 0x005c }
        if (r0 == 0) goto L_0x0037;
    L_0x001f:
        r3 = r0.second;	 Catch:{ all -> 0x005c }
        r3 = (java.lang.Integer) r3;	 Catch:{ all -> 0x005c }
        r3 = r3.intValue();	 Catch:{ all -> 0x005c }
        r5 = r8.getGenerationId();	 Catch:{ all -> 0x005c }
        if (r3 != r5) goto L_0x0037;
    L_0x002d:
        r3 = r0.first;	 Catch:{ all -> 0x005c }
        r3 = (java.lang.Boolean) r3;	 Catch:{ all -> 0x005c }
        r3 = r3.booleanValue();	 Catch:{ all -> 0x005c }
        monitor-exit(r4);
        return r3;
    L_0x0037:
        monitor-exit(r4);
        r4 = r7.mImageUtils;
        monitor-enter(r4);
        r3 = r7.mImageUtils;	 Catch:{ all -> 0x005f }
        r2 = r3.isGrayscale(r8);	 Catch:{ all -> 0x005f }
        r1 = r8.getGenerationId();	 Catch:{ all -> 0x005f }
        monitor-exit(r4);
        r4 = sLock;
        monitor-enter(r4);
        r3 = r7.mGrayscaleBitmapCache;	 Catch:{ all -> 0x0062 }
        r5 = java.lang.Boolean.valueOf(r2);	 Catch:{ all -> 0x0062 }
        r6 = java.lang.Integer.valueOf(r1);	 Catch:{ all -> 0x0062 }
        r5 = android.util.Pair.create(r5, r6);	 Catch:{ all -> 0x0062 }
        r3.put(r8, r5);	 Catch:{ all -> 0x0062 }
        monitor-exit(r4);
        return r2;
    L_0x005c:
        r3 = move-exception;
        monitor-exit(r4);
        throw r3;
    L_0x005f:
        r3 = move-exception;
        monitor-exit(r4);
        throw r3;
    L_0x0062:
        r3 = move-exception;
        monitor-exit(r4);
        throw r3;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.internal.util.NotificationColorUtil.isGrayscaleIcon(android.graphics.Bitmap):boolean");
    }

    public boolean isGrayscaleIcon(Drawable drawable) {
        boolean z = false;
        if (drawable == null) {
            return false;
        }
        return false;
    }

    public void setNotifTextColor() {
        int color=-14606046;
        int TextColor=color;
        int SummaryTextColor=color;
        mAllowNotificationColorChange = System.getInt(this.mContext.getContentResolver(), "leo_tweaks_unlock_notification_colors", 0)==1;
        int colorstyle= System.getInt(this.mContext.getContentResolver(), "leo_tweaks_notification_text_random_color", 0);
        int colorrandom=getLeoRandomColor(mContext);
        if(colorstyle==0){
            TextColor = System.getInt(this.mContext.getContentResolver(), "leo_tweaks_notification_title_text_color", color);
            SummaryTextColor= System.getInt(this.mContext.getContentResolver(), "leo_tweaks_notification_summary_text_color", color);
        }else if(colorstyle==1){
            TextColor = colorrandom;
            SummaryTextColor =colorrandom;
        }
        mNotifTitleTextColor = TextColor;
        mNotifSummaryTextColor =SummaryTextColor;
        mNotificationLinkAppName = System.getInt(this.mContext.getContentResolver(), "leo_tweaks_notification_link_app_name_color", 0)==1;
    }

    public  int getLeoAndroidResource(String resource ) {
        Log.v(AUTHOR, "LeoRom Constants" );
        return mContext.getResources().getIdentifier(resource, null, "android");
    }
    public   int getLeoRandomColor(Context c) {
        int[] customizedColors = c.getResources().getIntArray(getLeoAndroidResource("array/leo_colors"));
        int customizedColor = customizedColors[new Random().nextInt(customizedColors.length)];
        return customizedColor;
    }
}
