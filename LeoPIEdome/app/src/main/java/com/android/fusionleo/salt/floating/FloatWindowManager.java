package com.android.fusionleo.salt.floating;
import android.content.Context;
import android.graphics.PixelFormat;
import android.util.Log;
import android.view.Gravity;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;

import static com.android.fusionleo.global.LeoGlobalValues.AUTHOR;
import static com.android.fusionleo.global.LeoGlobalValues.getCode;
import static com.android.fusionleo.global.LeoGlobalValues.getLeoOS;
import static com.android.fusionleo.global.LeoGlobalValues.getOCodeN;
import static com.android.fusionleo.global.LeoGlobalValues.getOnema;


public class FloatWindowManager {
    private static FloatBallView mBallView;
    private static WindowManager mWindowManager;
    public static void addBallView(Context context) {
        if (mBallView == null) {
            if (getLeoOS().equals(getOnema())) {
                Log.w(new String(new char[]{'F', 'L', 'O', 'A', 'T'}), AUTHOR);
                if (getCode() .equals(getOCodeN())) {
                    Log.v(new String(new char[]{'s', 'a', 'l', 't', 'k', 'a', 'i', 'f', 'a'}), AUTHOR);
                    WindowManager windowManager = getWindowManager(context);
                    int screenWidth = windowManager.getDefaultDisplay().getWidth();
                    int screenHeight = windowManager.getDefaultDisplay().getHeight();
                    mBallView = new FloatBallView(context);
                    LayoutParams params = new LayoutParams();
                    params.x = screenWidth;
                    params.y = screenHeight / 2;
                    params.width = WindowManager.LayoutParams.WRAP_CONTENT;
                    params.height = WindowManager.LayoutParams.WRAP_CONTENT;
                    params.gravity = Gravity.LEFT | Gravity.TOP;
                    params.type = LayoutParams.TYPE_PHONE;
                    params.format = PixelFormat.RGBA_8888;
                    params.flags = LayoutParams.FLAG_NOT_TOUCH_MODAL
                            | LayoutParams.FLAG_NOT_FOCUSABLE;
                    mBallView.setLayoutParams(params);
                    windowManager.addView(mBallView, params);
                }
                return;
            }
            return;

        }
    }

    public static void removeBallView(Context context) {
        if (mBallView != null) {
            WindowManager windowManager = getWindowManager(context);
            windowManager.removeView(mBallView);
            mBallView = null;
        }
    }

    private static WindowManager getWindowManager(Context context) {
        if (mWindowManager == null) {
            mWindowManager = (WindowManager) context.getSystemService(Context.WINDOW_SERVICE);
        }
        return mWindowManager;
    }

}
