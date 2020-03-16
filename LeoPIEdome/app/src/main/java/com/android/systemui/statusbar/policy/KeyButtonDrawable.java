package com.android.systemui.statusbar.policy;

import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import com.android.systemui.Rune;

public class KeyButtonDrawable extends LayerDrawable {
    private final boolean mHasDarkDrawable;

    public static KeyButtonDrawable create(Drawable lightDrawable, Drawable darkDrawable) {
        Drawable[] drawableArr;
        if (darkDrawable != null) {
            drawableArr = new Drawable[2];
            if (!Rune.NAVBAR_SUPPORT_STABLE_LAYOUT) {
                lightDrawable = lightDrawable.mutate();
            }
            drawableArr[0] = lightDrawable;
            if (!Rune.NAVBAR_SUPPORT_STABLE_LAYOUT) {
                darkDrawable = darkDrawable.mutate();
            }
            drawableArr[1] = darkDrawable;
            return new KeyButtonDrawable(drawableArr);
        }
        drawableArr = new Drawable[1];
        if (!Rune.NAVBAR_SUPPORT_STABLE_LAYOUT) {
            lightDrawable = lightDrawable.mutate();
        }
        drawableArr[0] = lightDrawable;
        return new KeyButtonDrawable(drawableArr);
    }

    public static KeyButtonDrawable createRTL(Resources res, Drawable lightDrawable, Drawable darkDrawable) {
        Drawable lightDrawableRtl = flipIconDrawable(res, lightDrawable);
        Drawable[] drawableArr;
        if (darkDrawable != null) {
            Drawable darkDrawableRtl = flipIconDrawable(res, darkDrawable);
            drawableArr = new Drawable[2];
            if (!Rune.NAVBAR_SUPPORT_STABLE_LAYOUT) {
                lightDrawableRtl = lightDrawableRtl.mutate();
            }
            drawableArr[0] = lightDrawableRtl;
            if (!Rune.NAVBAR_SUPPORT_STABLE_LAYOUT) {
                darkDrawableRtl = darkDrawableRtl.mutate();
            }
            drawableArr[1] = darkDrawableRtl;
            return new KeyButtonDrawable(drawableArr);
        }
        drawableArr = new Drawable[1];
        if (!Rune.NAVBAR_SUPPORT_STABLE_LAYOUT) {
            lightDrawableRtl = lightDrawableRtl.mutate();
        }
        drawableArr[0] = lightDrawableRtl;
        return new KeyButtonDrawable(drawableArr);
    }

    private KeyButtonDrawable(Drawable[] drawables) {

        super(drawables);
        boolean z = true;
        for (int i = 0; i < drawables.length; i++) {
            setLayerGravity(i, 17);
        }
        if (!Rune.NAVBAR_SUPPORT_STABLE_LAYOUT) {
            mutate();
        }
        if (drawables.length <= 1) {
            z = false;
        }
        this.mHasDarkDrawable = z;
        setDarkIntensity(0.0f);
    }

    public void setDarkIntensity(float intensity) {
        if (this.mHasDarkDrawable) {
            if (Rune.NAVBAR_SUPPORT_STABLE_LAYOUT) {
                getDrawable(0).mutate().setAlpha((int) ((1.0f - intensity) * 255.0f));
                getDrawable(1).mutate().setAlpha((int) (intensity * 255.0f));
            } else {
                getDrawable(0).setAlpha((int) ((1.0f - intensity) * 255.0f));
                getDrawable(1).setAlpha((int) (intensity * 255.0f));
            }
            invalidateSelf();
        }
    }

    private static Drawable flipIconDrawable(Resources res, Drawable targetDrawable) {
        Matrix horizontalFlip = new Matrix();
        horizontalFlip.preScale(-1.0f, 1.0f);
        Drawable preImage = targetDrawable;
        Bitmap bitmapIcon = null;
        if (targetDrawable instanceof BitmapDrawable) {
            bitmapIcon = ((BitmapDrawable) targetDrawable).getBitmap();
        }
        return new BitmapDrawable(res, Bitmap.createBitmap(bitmapIcon, 0, 0, bitmapIcon.getWidth(), bitmapIcon.getHeight(), horizontalFlip, true));
    }
    public void setRotation(float f) {

    }
}
