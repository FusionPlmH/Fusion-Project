package com.android.systemui;

import android.animation.ArgbEvaluator;
import android.content.Context;
import android.view.ContextThemeWrapper;
import com.android.settingslib.Utils;
import kotlin.TypeCastException;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: DualToneHandler.kt */
public final class DualToneHandler {
    private Color darkColor;
    private Color lightColor;

    /* compiled from: DualToneHandler.kt */
    private static final class Color {
        private final int background;
        private final int fill;
        private final int single;

        public Color(int i, int i2, int i3) {
            this.single = i;
            this.background = i2;
            this.fill = i3;
        }

        public boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Color) {
                    Color color = (Color) obj;
                    if (this.single == color.single) {
                        if (this.background == color.background) {
                            if (this.fill == color.fill) {
                                return true;
                            }
                        }
                    }
                }
                return false;
            }
            return true;
        }

        public final int getSingle() {
            return this.single;
        }

        public int hashCode() {
            return (((Integer.hashCode(this.single) * 31) + Integer.hashCode(this.background)) * 31) + Integer.hashCode(this.fill);
        }

        public String toString() {
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Color(single=");
            stringBuilder.append(this.single);
            stringBuilder.append(", background=");
            stringBuilder.append(this.background);
            stringBuilder.append(", fill=");
            stringBuilder.append(this.fill);
            stringBuilder.append(")");
            return stringBuilder.toString();
        }
    }

    public DualToneHandler(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");
        setColorsFromContext(context);
    }

    private final int getColorForDarkIntensity(float f, int i, int i2) {
        Object evaluate = ArgbEvaluator.getInstance().evaluate(f, Integer.valueOf(i), Integer.valueOf(i2));
        if (evaluate != null) {
            return ((Integer) evaluate).intValue();
        }
        throw new TypeCastException("null cannot be cast to non-null type kotlin.Int");
    }

    public final int getSingleColor(float f) {
        Color color = this.lightColor;
        if (color != null) {
            int single = color.getSingle();
            Color color2 = this.darkColor;
            if (color2 != null) {
                return getColorForDarkIntensity(f, single, color2.getSingle());
            }
            Intrinsics.throwUninitializedPropertyAccessException("darkColor");
            throw null;
        }
        Intrinsics.throwUninitializedPropertyAccessException("lightColor");
        throw null;
    }

    public final void setColorsFromContext(Context context) {
        Intrinsics.checkParameterIsNotNull(context, "context");

    }
}
