package com.leo.salt.colorpicker.builder;


import com.leo.salt.colorpicker.ColorPickerView;
import com.leo.salt.colorpicker.renderer.ColorWheelRenderer;
import com.leo.salt.colorpicker.renderer.FlowerColorWheelRenderer;
import com.leo.salt.colorpicker.renderer.SimpleColorWheelRenderer;


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