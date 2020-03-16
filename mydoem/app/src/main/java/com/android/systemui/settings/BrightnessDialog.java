package com.android.systemui.settings;

import android.app.Activity;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.Window;
import android.widget.ImageView;
import com.android.internal.logging.MetricsLogger;
import com.android.systemui.Dependency;

public class BrightnessDialog extends Activity {


    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Dependency.initDependencies(getApplicationContext());
        Window window = getWindow();
        window.setGravity(48);
        window.clearFlags(2);
        window.requestFeature(1);
        setContentView(2131558748);
        //this.mBrightnessController = new BrightnessController(this, (ImageView) findViewById(2131361948), (ToggleSliderView) findViewById(2131361951));
    }

    protected void onStart() {
        super.onStart();
     //   this.mBrightnessController.registerCallbacks();
        MetricsLogger.visible(this, 220);
    }

    protected void onStop() {
        super.onStop();
        MetricsLogger.hidden(this, 220);
     //   this.mBrightnessController.unregisterCallbacks();
    }

    public boolean onKeyDown(int keyCode, KeyEvent event) {

        return super.onKeyDown(keyCode, event);
    }
}
