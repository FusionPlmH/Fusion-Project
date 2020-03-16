package com.fusionleo.LeoProvider;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;


import com.android.systemui.BatteryMeterView;

import static com.fusionleo.LeoProvider.LeoManages.*;



public class LeoObserver extends ContentObserver {
    private  ObListener mObserverListener;



    public interface ObListener {
            void onLeoChange(String str);
    }
    public LeoObserver(Handler handler,ObListener onContentChangedListener) {
        super(handler);

            mObserverListener= onContentChangedListener;

    }

    public void onChange(boolean z, Uri uri) {
        super.onChange(z, uri);
        if (mObserverListener != null) {

                mObserverListener.onLeoChange(uri.getLastPathSegment());

        }
    }



}
