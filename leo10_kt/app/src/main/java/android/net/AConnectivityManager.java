package android.net;

import android.annotation.RequiresPermission;
import android.os.Bundle;
import android.os.Handler;
import android.os.ResultReceiver;

import com.android.internal.util.Preconditions;



public class AConnectivityManager {
    public static abstract class OnStartTetheringCallback {
        /**
         * Called when tethering has been successfully started.
         */
        public void onTetheringStarted() {}

        /**
         * Called when starting tethering failed.
         */
        public void onTetheringFailed() {}
    }

    public void startTethering(int type, boolean showProvisioningUi,
                               final OnStartTetheringCallback callback) {
        startTethering(type, showProvisioningUi, callback, null);
    }

    public static final int TETHERING_WIFI      = 0;

    public void startTethering(int type, boolean showProvisioningUi,
                               final OnStartTetheringCallback callback, Handler handler) {
        Preconditions.checkNotNull(callback, "OnStartTetheringCallback cannot be null.");

        ResultReceiver wrappedCallback = new ResultReceiver(handler) {
            @Override
            protected void onReceiveResult(int resultCode, Bundle resultData) {

            }
        };


    }

    public void stopTethering(int type) {

    }
}