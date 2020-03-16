/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.salt.shortcut;


import android.app.Activity;
import android.os.Bundle;

import static com.salt.globalactions.Utils.S10reboot;
import static com.salt.globalactions.Utils.setLeoNavKeypressAction;

public class RestartActivity extends Activity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if ("android.intent.action.CREATE_SHORTCUT".equals(getIntent().getAction())) {
          //  startWidgetShortcut((Activity) this, getTitle(), R.drawable.ic_lock_screen);
            finish();
            return;
        }
        setLeoNavKeypressAction(this,S10reboot());
        finish();
    }
}