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

    private OnDialogFragmentListener mOnDialogFragmentListener;
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
            case Constants.BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE:
                return getBackupRestoreChooserDialog();
            case Constants.RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE:
                if (!getArguments().getBoolean(Constants.DIALOG_RESTORE_IS_CONFIRM_REQUIRED)) {
                    return getRestoreFileSelectorDialog();
                } else {
                    return getRestoreConfirmDialog(getArguments().getString(Constants.BACKUP_FILE_PATH_EXTRA_KEY));
                }
            default:
                return super.onCreateDialog(savedInstanceState);
        }


    }


    public interface OnDialogFragmentListener {
        void onDialogResult(int requestCode);

        void onBackupRestoreResult(int which);

        void onRestoreRequested(String filePath, boolean isConfirmed);

        View getDecorView();
    }

    private Dialog getRestoreConfirmDialog(final String filePath) {
        return new AlertDialog.Builder(getActivity())
                .setTitle(R.string.restore_confirm_dialog_title)
                .setMessage(getText(R.string.restore_confirm_message))
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton("confirm", new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        if (mOnDialogFragmentListener != null) {
                            mOnDialogFragmentListener.onRestoreRequested(filePath, true);
                        }
                    }
                })
                .create();
    }

    private Dialog getRestoreFileSelectorDialog() {
        File backupFolder = new File(Constants.BACKUP_FOLDER_PATH);
        final File[] backupFiles = backupFolder.listFiles();
        AlertDialog.Builder builder = new AlertDialog.Builder(getActivity());
        boolean isBackup = backupFolder.exists() && backupFiles.length > 0;
        if (isBackup) {
            String[] items = new String[backupFiles.length];
            for (int i = 0; i < backupFiles.length; i++) {
                items[i] = backupFiles[i].getName();
            }
            builder.setTitle(R.string.choose_backup_dialog_title)
                    .setSingleChoiceItems(items, 0, null)
                    .setNegativeButton(android.R.string.cancel, null)
                    .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {

                            if (mOnDialogFragmentListener != null) {
                                int checked = ((AlertDialog) dialog).getListView().getCheckedItemPosition();
                                mOnDialogFragmentListener.onRestoreRequested(backupFiles[checked].getAbsolutePath(), false);
                            }
                        }
                    });
        } else {
            builder.setTitle(R.string.no_backup_dialog_title)
                    .setMessage(R.string.no_backup_dialog_message)
                    .setNegativeButton(android.R.string.cancel, null)
                    .setPositiveButton(android.R.string.yes, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialog, int which) {
                            if (mOnDialogFragmentListener != null) {
                                mOnDialogFragmentListener.onBackupRestoreResult(0);
                            }
                        }
                    });
        }
        return builder.create();
    }

    private Dialog getBackupRestoreChooserDialog() {
        String[] singleChoiceItems = getActivity().getResources().getStringArray(R.array.backup_restore_items);
      //  Drawable icon = getActivity().getResources().getDrawable(R.drawable.ic_backup_restore);
    //    assert icon != null;
       // icon.setColorFilter(getActivity().getResources().getColor(R.color.colorAccent), PorterDuff.Mode.SRC_ATOP);
        return new AlertDialog.Builder(getActivity())
               // .setIcon(icon)
                .setTitle(R.string.backup_restore_dialog_title)
                .setSingleChoiceItems(singleChoiceItems, 0, null)
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                    @Override
                    public void onClick(DialogInterface dialog, int which) {
                        int checked = ((AlertDialog) dialog).getListView().getCheckedItemPosition();
                        if (mOnDialogFragmentListener != null) {
                            mOnDialogFragmentListener.onBackupRestoreResult(checked);
                        }
                    }
                })
                .create();
    }





    @Override
    public void onPause() {
        this.dismiss();
        super.onPause();
    }

    @Override
    public void onAttach(Context context) {
        super.onAttach(context);
        mOnDialogFragmentListener = (OnDialogFragmentListener) context;
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        mOnDialogFragmentListener = (OnDialogFragmentListener) activity;
    }




}
