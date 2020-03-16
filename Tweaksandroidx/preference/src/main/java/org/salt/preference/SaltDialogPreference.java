/*
 * Copyright (C) 2015 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.salt.preference;

import android.annotation.SuppressLint;
import android.content.Context;

import android.content.res.TypedArray;

import android.graphics.PorterDuff;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Gravity;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.text.TextUtils;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.Preference;

import androidx.preference.PreferenceViewHolder;

import java.util.Arrays;

import static org.salt.preference.colorpicker.Utils.getColorAttr;
import static org.salt.preference.utils.SaltPrefeUtils.showArrows;


@SuppressLint("ResourceAsColor")
public abstract class SaltDialogPreference extends Preference {
    protected AlertDialog mDialog;
    protected abstract void showDialogPositive();
    protected abstract void showDialogNegative();
    protected abstract String showDialogPositiveString();
    protected abstract void showDialogView();
    protected abstract int showDialoglayout();

    public  SaltDialogPreference(Context context, AttributeSet attrs) {
        super(context, attrs);

    }

    @Override
    protected void onClick() {
        showDialog();
    }

    public void  showDialog(){
        mDialog = new AlertDialog.Builder(getContext())
                .setTitle(getTitle())
                .setView(showDialoglayout())
                .setPositiveButton(showDialogPositiveString(), (dialog, which) ->
                        showDialogPositive()
                )
                .setNegativeButton(android.R.string.cancel, (dialog, which) -> {
                    showDialogNegative();
                })
                .setOnCancelListener(dialog -> mDialog = null)
                .setOnDismissListener(dialog -> mDialog = null)
                .show();
        showDialogView();
    }



}
