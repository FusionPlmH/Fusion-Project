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

package com.leo.salt.preference;

import android.app.AlertDialog;
import android.content.Context;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.os.Build;

import android.preference.CheckBoxPreference;
import android.preference.Preference;
import android.preference.SwitchPreference;
import android.provider.Settings;
import android.support.annotation.RequiresApi;

import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;

import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.Switch;
import android.widget.TextView;


import com.leo.salt.preference.ReverseDependencyMonitor;
import com.leo.salt.preference.SaltSettingSwitchPreference;
import com.leo.salt.tweaks.FragSettingActivity;
import com.leo.salt.tweaks.FragUIActivity;
import com.leo.salt.tweaks.R;
import com.leo.salt.tweaks.resource.Resource;
import com.leo.salt.tweaks.view.BatteryPicker;
import com.leo.salt.tweaks.view.WallpaperPicker;

import static com.leo.salt.tweaks.resource.Resource.getColorAttr;
import static com.leo.salt.tweaks.resource.Resource.getCustomArrayDrawable;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;

@RequiresApi(api = Build.VERSION_CODES.O)
public class SaltSettingChooseSwitchPreference extends SwitchPreference {

    private String mKey="leo_salt_"+getKey();

    public SaltSettingChooseSwitchPreference(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        setLayoutResource(R.layout.picker_switch_preference);
      //  setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
        intPreference(context, attrs);
    }
    private String mReverseDependencyKey;
    public SaltSettingChooseSwitchPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        setLayoutResource(R.layout.picker_switch_preference);
      //  setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
        intPreference(context, attrs);
    }

    public SaltSettingChooseSwitchPreference(Context context) {
        super(context);

        setLayoutResource(R.layout.picker_switch_preference);
     //   setPreferenceDataStore(new SystemSettingsStore(context.getContentResolver()));
    }
   public int onClickStyle;
    public  void  intPreference(Context context, AttributeSet attrs) {
        final TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.SaltSettingPickerPreference);
        onClickStyle= typedArray.getInt(R.styleable.SaltSettingPickerPreference_clickValues,0);
        typedArray.recycle();
        TypedArray   typedArray2 = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mReverseDependencyKey = typedArray.getString(R.styleable.LeoPreference_reverseDependency);
        typedArray2.recycle();
    }

    protected TextView mSummary,mTextView;


    private View mView;
    private View mView2;
    private Switch mSwitch;

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

    protected void onBindView(View view) {
        super.onBindView(view);
        mSwitch = (Switch) view.findViewById(R.id.ic_switch);
        mView = view.findViewById(R.id.ic_jp);
        mSwitch.setOnClickListener(new OnClick());
        mSwitch.setChecked(isChecked());
        mView2 = view.findViewById(R.id.ivv_iew);
        mTextView = (TextView) view.findViewById(android.R.id.title);
        mSummary= (TextView) view.findViewById(android.R.id.summary);
        mSummary.setTextColor(getColorAttr(getContext(),R.attr.colorAccent));
        updateView();
    }

    class OnClick implements View.OnClickListener {

        @Override
        public void onClick(View v) {
            setChecked(!isChecked());
            UpdateS();
        }
    }
    protected void onClick() {
        if (isChecked()) {
            onClickAction();
        }
    }

    public void setEnabled(boolean z) {
        super.setEnabled(z);
        updateView();
    }

    protected void onClickAction() {
        Intent intent;
        switch (onClickStyle) {
            case 0:
              intent = new Intent();
                Resource.Urlr = ("/data/data/com.leo.salt.tweaks/LeoTweaks/"+mKey+"_BG_" + System.currentTimeMillis() + ".jpg");
                intent.putExtra("WallpaperKey",mKey);
                intent.putExtra("WallpaperName", getTitle());
                intent.setClass(getContext(), WallpaperPicker.class);
                getContext().startActivity(intent);
                return;
            case 1:
                EditTextDialog(mKey+"_string", String.valueOf(getTitle()));
                return;
            case 2:
                intent =  new Intent(getContext(),FragSettingActivity.class);
                intent.putExtra(FragSettingActivity.KEY_TYPE, FragSettingActivity.FragmentType.NavBlacklist);
                getContext().startActivity(intent);
                return;
            case 3:
                intent =  new Intent(getContext(),FragUIActivity.class);
                intent.putExtra(FragUIActivity.KEY_TYPE, FragUIActivity.FragmentType.Logo);
                getContext().startActivity(intent);
                return;
            case 4:
                intent = new Intent();
                intent.putExtra("batterykey",mKey);
                intent.setClass(getContext(), BatteryPicker.class);
                getContext().startActivity(intent);
                return;
            case 5:
                intent =  new Intent(getContext(),FragUIActivity.class);
                intent.putExtra(FragUIActivity.KEY_TYPE, FragUIActivity.FragmentType.StatusbarCarrier);
                getContext().startActivity(intent);
                return;
            case 6:
                MultiEditTextDialog(mKey+"_single_string",mKey+"_multi_string",mKey,String.valueOf(getTitle()));
                return;
        }


    }



    protected void UpdateS() {
      Settings.System .putInt(getContext().getContentResolver(), mKey, isChecked() ? 1 : 0);
    }

    private void EditTextDialog(String STR,String Title){
        AlertDialog dialog;
            AlertDialog.Builder alert = new AlertDialog.Builder(getContext());
            alert.setTitle(Title);
        alert.setIcon(getCustomArrayDrawable("android","menu_ic_magnifier_window") );
            alert.setMessage(getStringIdentifier(getContext(),"input_message"));

            final EditText input = new EditText(getContext());
            String oldText =  Settings.System.getString(
                    getContext().getContentResolver(),
                    STR);
            if (oldText != null) {
                input.setHint(getStringIdentifier(getContext(),"input_hint"));
                input.setText(oldText);
            }
            alert.setView(input);

            alert.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
                public void onClick(DialogInterface dialogInterface, int whichButton) {
                    String value = input.getText().toString();
                    if (value.equals("")) {
                        return;
                    }
                    Settings.System.putString(getContext().getContentResolver(),
                            STR, value);

                    return;
                }
            });

            alert.setNegativeButton(android.R.string.cancel,
                    new DialogInterface.OnClickListener() {
                        public void onClick(DialogInterface dialogInterface, int which) {
                            return;
                        }
                    });
            dialog = alert.create();
            dialog.show();
        }

   public LinearLayout mLayout;
    public EditText input;
    public EditText Multi;
    private void MultiEditTextDialog(String STR,String STR2,String STR3,String Title){
        AlertDialog dialog;
        AlertDialog.Builder alert = new AlertDialog.Builder(getContext());
        alert.setTitle(Title);
        alert.setIcon(getCustomArrayDrawable("android","menu_ic_magnifier_window") );

        final TextView ifo = new TextView(getContext());
        ifo.setText(getStringIdentifier(getContext(),"custom_Carrier")+":");
        ifo.setTextSize(18);
        final TextView ifo2 = new TextView(getContext());
        ifo2.setText(getStringIdentifier(getContext(),"custom_Carrier2")+":");
        ifo2.setTextSize(18);
        input = new EditText(getContext());
        Multi = new EditText(getContext());
        String oldText =  Settings.System.getString(
                getContext().getContentResolver(),
                STR);
        String   MultioldText =  Settings.System.getString(
                getContext().getContentResolver(),
                STR2);
        if (oldText != null) {
            input.setHint(getStringIdentifier(getContext(),"input_message"));
            input.setText(oldText);
        }
        if (MultioldText != null) {
            Multi.setHint(getStringIdentifier(getContext(),"input_message"));
            Multi.setText(MultioldText);
        }




        mLayout = new LinearLayout(getContext());
        mLayout.setOrientation(LinearLayout.VERTICAL);
        mLayout.setPadding(60,30,60,0);
        mLayout.addView(ifo);
        mLayout.addView(input);
        mLayout.addView(ifo2);
        mLayout.addView(Multi);
        if (Settings.System.getInt(getContext().getContentResolver(), STR3+"_single_enabled", 0)==1) {
            Multi.setVisibility(View.VISIBLE);
            ifo2.setVisibility(View.VISIBLE);
        }else  {
            Multi .setVisibility(View.GONE);
            ifo2.setVisibility(View.GONE);
        }

        alert.setView( mLayout);

        alert.setPositiveButton(android.R.string.ok, new DialogInterface.OnClickListener() {
            public void onClick(DialogInterface dialogInterface, int whichButton) {
                String value = input.getText().toString();
                if (value.equals("")) {
                    return;
                }
                String value2 = Multi.getText().toString();
                if (value.equals("")) {
                    return;
                }
                Settings.System.putString(getContext().getContentResolver(),
                        STR, value);
                Settings.System.putString(getContext().getContentResolver(),
                        STR2, value2);
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
    @Override
    protected void onAttachedToActivity() {
        super.onAttachedToActivity();
        if (!TextUtils.isEmpty(mReverseDependencyKey)) {
            Preference preference = findPreferenceInHierarchy(mReverseDependencyKey);
            if (preference != null && (preference instanceof SaltSettingSwitchPreference || preference instanceof CheckBoxPreference)) {
                ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) preference;
                reverseDependencyMonitor.registerReverseDependencyPreference(this);
            }
        }
    }

}
