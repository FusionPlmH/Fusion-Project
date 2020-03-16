package com.android.fusionleo.leoglobalactions.util;

import android.content.Context;
import android.widget.Toast;

public class ToastController {
    private final Context mContext;

    public ToastController(Context context) {
        this.mContext = context;
    }

    public void showToast(int i, int i2) {
        Toast.makeText(this.mContext, i, i2).show();
    }

    public void showToast(String str, int i) {
        Toast.makeText(this.mContext, str, i).show();
    }
}
