package com.tweaks.leo.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.TextView;

import com.tweaks.leo.R;


public class DrawText extends TextView {

	public static final int LEFT = 1, TOP = 2, RIGHT = 3, BOTTOM = 4;

	private int mHeight, mWidth;

	private Drawable mDrawable;

	private int mLocation;

	public DrawText(Context context) {
		this(context, null);
	}

	public DrawText(Context context, AttributeSet attrs) {
		super(context, attrs);

		TypedArray a = context.obtainStyledAttributes(attrs,
				R.styleable.RichText);

		mWidth = a
				.getDimensionPixelSize(R.styleable.RichText_drawable_width, 0);
		mHeight = a.getDimensionPixelSize(R.styleable.RichText_drawable_height,
				0);
		mDrawable = a.getDrawable(R.styleable.RichText_drawable_src);
		mLocation = a.getInt(R.styleable.RichText_drawable_location, LEFT);

		a.recycle();

		//绘制Drawable宽高,位置
		drawDrawable();

	}

	/**
	 * 绘制Drawable宽高,位置
	 */
	public void drawDrawable() {

		if (mDrawable != null) {
			Bitmap bitmap = ((BitmapDrawable) mDrawable).getBitmap();
			Drawable drawable;
			if (mWidth != 0 && mHeight != 0) {

				drawable = new BitmapDrawable(getResources(), getBitmap(bitmap,
						mWidth, mHeight));

			} else {
				drawable = new BitmapDrawable(getResources(),
						Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(),
								bitmap.getHeight(), true));
			}

			switch (mLocation) {
			case LEFT:
				this.setCompoundDrawablesWithIntrinsicBounds(drawable, null,
						null, null);
				break;
			case TOP:
				this.setCompoundDrawablesWithIntrinsicBounds(null, drawable,
						null, null);
				break;
			case RIGHT:
				this.setCompoundDrawablesWithIntrinsicBounds(null, null,
						drawable, null);
				break;
			case BOTTOM:
				this.setCompoundDrawablesWithIntrinsicBounds(null, null, null,
						drawable);
				break;
			}
		}

	}

	/**
	 * 缩放图片
	 * 
	 * @param bm
	 * @param newWidth
	 * @param newHeight
	 * @return
	 */
	public Bitmap getBitmap(Bitmap bm, int newWidth, int newHeight) {
		// 获得图片的宽高
		int width = bm.getWidth();
		int height = bm.getHeight();
		// 计算缩放比例
		float scaleWidth = (float) newWidth / width;
		float scaleHeight = (float) newHeight / height;
		// 取得想要缩放的matrix参数
		Matrix matrix = new Matrix();
		matrix.postScale(scaleWidth, scaleHeight);
		// 得到新的图片
		return Bitmap.createBitmap(bm, 0, 0, width, height, matrix, true);
	}
}
