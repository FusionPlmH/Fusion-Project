package com.leo.salt.widget;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.content.Context;
import android.content.DialogInterface;
import android.content.SharedPreferences;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.PowerManager;
import android.preference.PreferenceManager;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.TextView;

import com.leo.salt.LeoApp;
import com.leo.salt.R;
import com.leo.salt.utils.Constants;


import java.io.File;
import java.util.Locale;

import static com.leo.salt.utils.Constants.BACKUP_FILE_PATH_EXTRA_KEY;
import static com.leo.salt.utils.Constants.DIALOG_RESTORE_IS_CONFIRM_REQUIRED;

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
public class BackupsDialog extends DialogFragment{
    private int mRequestCode;
    private OnDialogFragmentListener mOnDialogFragmentListener;

    public static BackupsDialog newInstance(int requestCode) {
        BackupsDialog myDialogFragment = new BackupsDialog();
        Bundle args = new Bundle();
        args.putInt(DIALOG_REQUEST_CODE_KEY, requestCode);
        myDialogFragment.setArguments(args);
        return myDialogFragment;
    }
    static final String DIALOG_REQUEST_CODE_KEY = "dialog_request_code";
    public static BackupsDialog backupRestoreInstance(int requestCode, boolean isConfirm, String filePath) {
        BackupsDialog myDialogFragment = new BackupsDialog();
        Bundle args = new Bundle();
        args.putInt(DIALOG_REQUEST_CODE_KEY, requestCode);
        args.putBoolean(DIALOG_RESTORE_IS_CONFIRM_REQUIRED, isConfirm);
        args.putString(BACKUP_FILE_PATH_EXTRA_KEY, filePath);
        myDialogFragment.setArguments(args);
        return myDialogFragment;
    }

    @Override
    public Dialog onCreateDialog(Bundle savedInstanceState) {
        mRequestCode = getArguments().getInt(DIALOG_REQUEST_CODE_KEY);
        switch (mRequestCode) {
            case Constants.BACKUP_OR_RESTORE_DIALOG_REQUEST_CODE:
                return getBackupRestoreChooserDialog();
            case Constants.RESTORE_FILE_SELECTOR_DIALOG_REQUEST_CODE:
                if (!getArguments().getBoolean(DIALOG_RESTORE_IS_CONFIRM_REQUIRED)) {
                    return getRestoreFileSelectorDialog();
                } else {
                    return getRestoreConfirmDialog(getArguments().getString(BACKUP_FILE_PATH_EXTRA_KEY));
                }
            default:
                return super.onCreateDialog(savedInstanceState);
        }


    }

    private Dialog getRestoreConfirmDialog(final String filePath) {
        return new AlertDialog.Builder(getActivity())
                .setTitle(R.string.restore_confirm_dialog_title)
                .setMessage(getText(R.string.restore_confirm_message))
                .setNegativeButton(android.R.string.cancel, null)
                .setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
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
        String[] singleChoiceItems = getActivity().getResources().getStringArray(R.array.backup_items);
        return new AlertDialog.Builder(getActivity())
                .setTitle(LeoApp.getContext().getResources().getString(R.string.app_name)+" "+LeoApp.getContext().getResources().getString(R.string.backup_restore_dialog_title))
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
    public void onAttach(Context context) {
        super.onAttach(context);
        mOnDialogFragmentListener = (OnDialogFragmentListener) context;
    }

    @Override
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        mOnDialogFragmentListener = (OnDialogFragmentListener) activity;
    }

    @Override
    public void onPause() {
        this.dismiss();
        super.onPause();
    }


    public interface OnDialogFragmentListener {
        //void onDialogResult(int requestCode);

        void onBackupRestoreResult(int which);

        void onRestoreRequested(String filePath, boolean isConfirmed);

      //  View getDecorView();
    }


}
