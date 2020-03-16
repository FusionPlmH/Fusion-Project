/*
 * Copyright (C) 2017 AICP
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package org.salt.preference;


import android.content.Context;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Build;


import android.provider.Settings;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;

import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;

import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SwitchCompat;
import androidx.preference.PreferenceViewHolder;
import androidx.preference.SwitchPreference;
import androidx.preference.SwitchPreferenceCompat;

import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;

import static com.salt.frame.LeadFrame.getStringIdentifier;
import static com.salt.config.tweaks.activity.FragSubActivity.FragmentType.StatusBarBlacklist;
import static com.salt.utils.SaltProper.getCustomArrayDrawable;
import static com.salt.utils.startUtils.startSub;
import static org.salt.preference.colorpicker.Utils.getColorAttr;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;
import static org.salt.preference.utils.SaltPrefeUtils.putIntSaltSettings;

public class SaltSwitchPreferenceCompat extends SwitchPreference {
    private  int mModeSettings;
    private  String mclickSettings;
    private String mBroadcastKey;
    public SaltSwitchPreferenceCompat(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setLayoutResource(R.layout.picker_switch_preference);
        intPreference(context, attrs);
    }
    public SaltSwitchPreferenceCompat(Context context, AttributeSet attrs) {
        super(context, attrs);
        setLayoutResource(R.layout.picker_switch_preference);
        intPreference(context, attrs);
    }
    public SaltSwitchPreferenceCompat(Context context) {
        super(context);
        setLayoutResource(R.layout.picker_switch_preference);
    }

    public  void  intPreference(Context context, AttributeSet attrs) {
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mModeSettings =typedArray.getInt(R.styleable.LeoPreference_modeSettings,0);
        mclickSettings =typedArray.getString(R.styleable.LeoPreference_clickStyle);
        mBroadcastKey = typedArray.getString(R.styleable.LeoPreference_BroadcastKey);
        typedArray.recycle();
    }

    public TextView mSummary,mTextView;
    private View mView;
    private View mView2;
    private SwitchCompat mSwitch;
    private void updateView() {
        float f = 1.0f;
        if (mView2 != null) {
            boolean isChecked = isChecked();
            mView2.setEnabled(isChecked);
            mView2.setAlpha(isChecked ? 1.0f : 0.4f);
            View view =mView;
            if (!isChecked) {
                f = 0.4f;
            }
            view.setAlpha(f);
        }
    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);

        mSwitch = (SwitchCompat) holder.findViewById(R.id.ic_switch);
        mView =holder.findViewById(R.id.ic_jp);
        mSwitch.setOnClickListener(new OnClick());
        mSwitch.setChecked(isChecked());
        mView2 =holder.findViewById(R.id.ivv_iew);
        mTextView = (TextView)holder.findViewById(android.R.id.title);
        mSummary= (TextView) holder.findViewById(android.R.id.summary);
        mSummary.setTextColor(getColorAttr(getContext(),R.attr.colorAccent));
        updateView();
    }

    @Override
    protected void onClick() {
        if (isChecked()) {
            startAction();
        }
    }
    class OnClick implements  View.OnClickListener {
        @Override
        public void onClick(View v) {
            setChecked(!isChecked());
            putIntSaltSettings(mModeSettings,getContext(),mKey, isChecked() ? 1 : 0);
            getContext().sendBroadcast(new Intent(mBroadcastKey));
        }
    }

    private String mKey=defaultKey+getKey();
    public void setEnabled(boolean z) {
        super.setEnabled(z);
        updateView();
    }
   public void startAction(){
        if(mclickSettings.equals("sbBlacklist")){
            startSub(getContext(), StatusBarBlacklist);
        }else   if(mclickSettings.equals("editTextDialog")){
            MultiEditTextDialog(getContext(),mKey+"_single_string",mKey+"_multi_string",mKey,String.valueOf(getTitle()));
        }else   if(mclickSettings.equals("oneditTextDialog")){
            EditTextDialog(mKey+"_string",String.valueOf(getTitle()),getContext());
        }

    }
    private void EditTextDialog(String STR,String Title,Context context){
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View layout = welmsgInflater.inflate(R.layout.edit_text_dialog, null);
        AlertDialog dialog;
        AlertDialog.Builder alert = new AlertDialog.Builder(getContext());
        alert.setTitle(Title);
        alert.setIcon(getCustomArrayDrawable("android","menu_ic_magnifier_window") );
        alert.setView(layout);
        mTextInputLayoutA =(TextInputLayout)layout.findViewById(R.id.custom_TextInput_a);
        mTextInputLayoutA.setHint(Title);
        mTextInputLayoutB =(TextInputLayout)layout.findViewById(R.id.custom_TextInput_b);
        mTextInputLayoutB.setVisibility(View.GONE);
        mTextInputEditTextA =(TextInputEditText)layout.findViewById(R.id.custom_text_a);
        mTextInputEditTextB=(TextInputEditText)layout.findViewById(R.id.custom_text_b);
        mTextInputEditTextB.setVisibility(View.GONE);
        String oldText =  Settings.System.getString(
                getContext().getContentResolver(),
                STR);

        if (oldText != null) {
            mTextInputEditTextA.setText(oldText);
        }



        alert.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int whichButton) {
                String value = mTextInputEditTextA.getText().toString();
                if (value.equals("")) {
                    return;
                }

                Settings.System.putString(getContext().getContentResolver(),
                        STR, value);

                getContext().sendBroadcast(new Intent(mBroadcastKey));
                return;
            }
        });

        alert.setNegativeButton(android.R.string.cancel,
                (dialogInterface, which) -> {
                    return;
                });
        dialog = alert.create();
        dialog.show();

    }
    private TextInputLayout mTextInputLayoutA,mTextInputLayoutB;
    private TextInputEditText mTextInputEditTextA,mTextInputEditTextB;
    private void MultiEditTextDialog(Context context,String STR,String STR2,String STR3,String Title){
        LayoutInflater welmsgInflater = LayoutInflater.from(context);
        View layout = welmsgInflater.inflate(R.layout.edit_text_dialog, null);
        AlertDialog dialog;
        AlertDialog.Builder alert = new AlertDialog.Builder(getContext());
        alert.setTitle(Title);
        alert.setIcon(getCustomArrayDrawable("android","menu_ic_magnifier_window") );
        alert.setView(layout);
        mTextInputLayoutA =(TextInputLayout)layout.findViewById(R.id.custom_TextInput_a);
        mTextInputLayoutA.setHint(getStringIdentifier(getContext(),"custom_Carrier")+":");

        mTextInputLayoutB =(TextInputLayout)layout.findViewById(R.id.custom_TextInput_b);
        mTextInputLayoutB.setHint(getStringIdentifier(getContext(),"custom_Carrier2")+":");
        mTextInputEditTextA =(TextInputEditText)layout.findViewById(R.id.custom_text_a);
        mTextInputEditTextB=(TextInputEditText)layout.findViewById(R.id.custom_text_b);
        String oldText =  Settings.System.getString(
                getContext().getContentResolver(),
                STR);
        String   MultioldText =  Settings.System.getString(
                getContext().getContentResolver(),
                STR2);
        if (oldText != null) {
            mTextInputEditTextA.setText(oldText);
        }
        if (MultioldText != null) {
            mTextInputEditTextB.setText(MultioldText);
        }

        if (Settings.System.getInt(getContext().getContentResolver(), STR3+"_single_enabled", 0)==1) {
            mTextInputEditTextB.setVisibility(View.VISIBLE);
            mTextInputLayoutB.setVisibility(View.VISIBLE);
        }else  {
            mTextInputEditTextB .setVisibility(View.GONE);
            mTextInputLayoutB.setVisibility(View.GONE);
        }


        alert.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int whichButton) {
                String value = mTextInputEditTextA.getText().toString();
                if (value.equals("")) {
                    return;
                }
                String value2 =mTextInputEditTextB.getText().toString();
                if (value.equals("")) {
                    return;
                }
                Settings.System.putString(getContext().getContentResolver(),
                        STR, value);
                Settings.System.putString(getContext().getContentResolver(),
                        STR2, value2);
                getContext().sendBroadcast(new Intent(mBroadcastKey));
                return;
            }
        });

        alert.setNegativeButton(android.R.string.cancel,
                (dialogInterface, which) -> {
                    return;
                });
        dialog = alert.create();
        dialog.show();
    }
}
