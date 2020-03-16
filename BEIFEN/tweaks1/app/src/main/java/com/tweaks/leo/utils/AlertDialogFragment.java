package com.tweaks.leo.utils;

import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;

import java.io.File;
import java.util.List;

import com.tweaks.leo.LeoApp;
import com.tweaks.leo.R;
import com.tweaks.leo.base.BaseActivity;




/*      Created by Roberto Mariani and Anna Berkovitch, 2015-2016
        This program is free software: you can redistribute it and/or modify
        it under the terms of the GNU General Public License as published by
        the Free Software Foundation, either version 3 of the License, or
        (at your option) any later version.

        This program is distributed in the hope that it will be useful,
        but WITHOUT ANY WARRANTY; without even the implied warranty of
        MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
        GNU General Public License for more details.

        You should have received a copy of the GNU General Public License
        along with this program.  If not, see <http://www.gnu.org/licenses/>.*/

@SuppressWarnings({"unused", "deprecation"})
public class AlertDialogFragment extends DialogFragment {
    private int mRequestCode;


    public static AlertDialogFragment newInstance(int requestCode) {
        AlertDialogFragment myDialogFragment = new AlertDialogFragment();
        Bundle args = new Bundle();
        args.putInt(Constants.DIALOG_REQUEST_CODE_KEY, requestCode);
        myDialogFragment.setArguments(args);
        return myDialogFragment;
    }

    public static AlertDialogFragment backupRestoreInstance(int requestCode, boolean isConfirm, String filePath) {
        AlertDialogFragment myDialogFragment = new AlertDialogFragment();
        Bundle args = new Bundle();
        args.putInt(Constants.DIALOG_REQUEST_CODE_KEY, requestCode);
        myDialogFragment.setArguments(args);
        return myDialogFragment;
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        mRequestCode = getArguments().getInt(Constants.DIALOG_REQUEST_CODE_KEY);
        switch (mRequestCode) {
            case Constants.NO_SU_DIALOG_REQUEST_CODE:
                return getNoSuDialog();
            default:
                return super.onCreateDialog(savedInstanceState);
        }


    }









    @Override
    public void onPause() {
        this.dismiss();
        super.onPause();
    }

    private AlertDialog getNoSuDialog() {
        return new AlertDialog.Builder(getActivity())
                .setTitle(R.string.no_su_dialog_title)
                .setMessage(R.string.no_su_dialog_message)
                .setNegativeButton(R.string.no_su_dialog_dismiss_button_text, null)
                .create();
    }



}
