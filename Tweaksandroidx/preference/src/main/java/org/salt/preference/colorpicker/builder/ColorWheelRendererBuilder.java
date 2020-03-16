package org.salt.preference.colorpicker.builder;

import org.salt.preference.colorpicker.ColorPickerView;
import org.salt.preference.colorpicker.renderer.ColorWheelRenderer;
import org.salt.preference.colorpicker.renderer.FlowerColorWheelRenderer;
import org.salt.preference.colorpicker.renderer.SimpleColorWheelRenderer;

public class ColorWheelRendererBuilder {
	public static ColorWheelRenderer getRenderer(ColorPickerView.WHEEL_TYPE wheelType) {
		switch (wheelType) {
			case CIRCLE:
				return new SimpleColorWheelRenderer();
			case FLOWER:
				return new FlowerColorWheelRenderer();
		}
		throw new IllegalArgumentException("wrong WHEEL_TYPE");
	}
}