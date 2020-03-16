package com.leo.view;

import android.content.ContentResolver;
import android.content.Context;
import android.database.ContentObserver;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;

import android.net.Uri;
import android.os.Handler;

import android.provider.Settings;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;




import java.io.File;

import static com.leo.utils.Constants.*;
import static com.os.leo.utils.LeoUtils.*;
import static com.os.leo.utils.LeoUserSettings.*;
import static com.os.leo.utils.LeoUserValues.AUTHOR;
import static com.os.leo.utils.LeoUserValues.CORYRIGHT;
import static com.os.leo.utils.LeoUserValues.China;
import static com.os.leo.utils.LeoUserValues.Transparency;
import static com.os.leo.utils.LeoUtils.getLeoUri;


public class LeoCallBackgroundView
        extends FrameLayout
{
    private Context mContext;

    private LeoRomObserver mLeoRomObserver;
    class LeoRomObserver extends ContentObserver {
        LeoRomObserver(Handler handler) {
            super(handler);
        }
        ContentResolver  resolver ;
        void observe() {

            setLeoRomIncomingTelegramBackground();
        }

        @Override
        public void onChange(boolean selfChange) {
            setLeoRomIncomingTelegramBackground();
        }


    }
    public LeoCallBackgroundView(Context context, AttributeSet LeoAttributeSet) {
        super(context, LeoAttributeSet);
        mContext = context;
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        setLeoRomIncomingTelegramBackground();
        mLeoRomObserver=new LeoRomObserver(new Handler());
        mLeoRomObserver.observe();
    }


    public void  setLeoRomIncomingTelegramBackground() {

    }
}
