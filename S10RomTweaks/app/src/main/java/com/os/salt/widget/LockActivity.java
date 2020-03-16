/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.os.salt.widget;

import android.app.Activity;
import android.os.Bundle;
import com.leo.salt.tweaks.R;

import static com.os.salt.OSBuild.startWidgetShortcut;
import static com.os.salt.globalactions.Utils.setLeoNavKeypressAction;

public class LockActivity extends Activity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if ("android.intent.action.CREATE_SHORTCUT".equals(getIntent().getAction())) {
            startWidgetShortcut((Activity) this, getTitle(), R.drawable.ic_lock_screen);
            return;
        }
        setLeoNavKeypressAction(this,202);
        finish();
    }
}