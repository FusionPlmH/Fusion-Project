package com.leo.global.colorpicker.builder;

import com.leo.global.colorpicker.ColorPickerView;
import com.leo.global.colorpicker.renderer.ColorWheelRenderer;
import com.leo.global.colorpicker.renderer.FlowerColorWheelRenderer;
import com.leo.global.colorpicker.renderer.SimpleColorWheelRenderer;

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