/*
 * 程序入口Activity，实现一键清理后台进程的功能
 * */
package com.salt.shortcut;


import android.app.Activity;
import android.os.Bundle;

import static com.salt.globalactions.Utils.setLeoNavKeypressAction;

public class ShutdownActivity extends Activity {
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);

        setLeoNavKeypressAction(this,2006);
        finish();
    }
}