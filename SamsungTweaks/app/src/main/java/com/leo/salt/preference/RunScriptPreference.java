package com.fusionleo.salt.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;

import android.preference.Preference;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.Toast;



import java.io.File;
import java.io.IOException;
import java.util.Locale;
import java.util.concurrent.TimeoutException;

import com.fusionleo.salt.R;
import com.fusionleo.salt.utils.Constants;
import com.fusionleo.salt.utils.Utils;

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

public class RunScriptPreference extends Preference {
    private final String mPackageToKill;
    private final boolean mIsSilent;
    private final String mReverseDependencyKey;
    private String mFilePath;
    private boolean mIsConfirmRequired;
    private  int mRebootType;

    public RunScriptPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.RunScriptPreference);
        String scriptName = typedArray.getString(R.styleable.RunScriptPreference_scriptFileName);
    //    mFilePath = Constants.FILES_SCRIPTS_FOLDER_PATH + File.separator + scriptName;
        mIsConfirmRequired = typedArray.getBoolean(R.styleable.RunScriptPreference_showConfirmDialog, true);
        TypedArray generalTypedArray = context.obtainStyledAttributes(attrs, R.styleable.Preference);
        mPackageToKill = generalTypedArray.getString(R.styleable.Preference_packageNameToKill);
        mIsSilent = generalTypedArray.getBoolean(R.styleable.Preference_isSilent, true);
        mReverseDependencyKey = generalTypedArray.getString(R.styleable.Preference_reverseDependency);
        if(typedArray.hasValue(R.styleable.RunScriptPreference_rebootOptions)) {
            mRebootType = typedArray.getInt(R.styleable.RunScriptPreference_rebootOptions, 0);
            if(mRebootType == 2) {
                mIsConfirmRequired = true;
            }
        }
        typedArray.recycle();
        generalTypedArray.recycle();
    }

    @Override
    protected void onAttachedToActivity() {
        super.onAttachedToActivity();
        if (!TextUtils.isEmpty(mReverseDependencyKey)) {
            Preference preference = findPreferenceInHierarchy(mReverseDependencyKey);
            if (preference != null && (preference instanceof MySwitchPreference || preference instanceof MyCheckBoxPreference)) {
                ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) preference;
                reverseDependencyMonitor.registerReverseDependencyPreference(this);
            }
        }
    }

    @Override
    protected void onClick() {
        super.onClick();
        if(mIsConfirmRequired) {
            String message = String.format(Locale.getDefault(), getContext().getString(R.string.confirm_script_dialog_message), getTitle());
            if(mRebootType == 2) {
                message = message + "\n\n" + getContext().getString(R.string.imminent_reboot_warning);
            }
            new AlertDialog.Builder(getContext())
                    .setTitle(R.string.run_script_confirm_dialog_title)
                    .setMessage(message)
                    .setNegativeButton(android.R.string.cancel, null)
                    .setPositiveButton(R.string.run_script_confirm_dialog_positive_button, new DialogInterface.OnClickListener() {
                        @Override
                        public void onClick(DialogInterface dialogInterface, int i) {
                           // runScript();
                        }
                    }).create()
                    .show();
        } else {
           // runScript();
        }

    }


}
