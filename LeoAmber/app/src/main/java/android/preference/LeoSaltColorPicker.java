/* 
 * Grouxho - espdroids.com - 2018	

 *
 * This Source Code Form is subject to the terms of the Mozilla Public
 * License, v. 2.0. If a copy of the MPL was not distributed with this
 * file, You can obtain one at http://mozilla.org/MPL/2.0/. 
 
 */
 
package android.preference;

import android.content.ClipData;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.content.ClipboardManager;
import android.widget.Toast;


import org.leo.tweaks.salt.LeoSaltPreferenceScreen;
import org.leo.tweaks.salt.utils.Common;
import org.leo.tweaks.salt.R;
import com.qfcolorpicker.CircleColorDrawable;
import org.leo.tweaks.salt.prefs.DlgFrLeoSaltColorPicker;

public class LeoSaltColorPicker extends LeoSaltBasePreference implements DlgFrLeoSaltColorPicker.OnLeoSaltColorPickerListener{

	private boolean showAlphaSlider;
	private String pickerType;
	private int pickerStyle=-1;

    private boolean showAuto;
    private String pickerTitle;

    private boolean saveValueOnFly=false;

	public LeoSaltColorPicker(Context context, AttributeSet attrs) {
        super(context, attrs);
        initAttributes(context, attrs);
    }

	public LeoSaltColorPicker(Context context, AttributeSet attrs, int defStyleAttr){
        super(context,attrs,defStyleAttr);
        initAttributes(context,attrs);
    }

	private void initAttributes(Context context, AttributeSet attrs) {
        setWidgetLayoutResource(R.layout.widget_icon_accent);
        initIntPrefsCommonAttributes(getContext(),attrs,getContext().getResources().getInteger(R.integer.LeoSalti_default_colorPicker_color),false);
        TypedArray ta = context.obtainStyledAttributes(attrs, R.styleable.LeoSaltPreferences);
        showAlphaSlider=ta.getBoolean(R.styleable.LeoSaltPreferences_showAlphaSlider, context.getResources().getBoolean(R.bool.LeoSaltb_showAlphaSlider_default) );
        showAuto=ta.getBoolean(R.styleable.LeoSaltPreferences_showAutoButton, context.getResources().getBoolean(R.bool.LeoSaltb_showAutoButton_default) );
        pickerType=ta.getString(R.styleable.LeoSaltPreferences_colorPickerStyle);
        saveValueOnFly=ta.getBoolean(R.styleable.LeoSaltPreferences_saveValueOnFly, false );
        ta.recycle();
        setDefaultValue(myPrefAttrsInfo.getMyIntDefValue());
        pickerTitle=getTitle().toString();
        if(pickerTitle==null) pickerTitle=getContext().getResources().getString(R.string.LeoSalts_titulo_def_color_picker);

	}

    @Override
    public void configIntPreference(int value){
    }

    @Override
    public void resetPreference(){
        saveNewIntValue(myPrefAttrsInfo.getMyIntDefValue());
        configIntPreference(mIntValue);
    }

    @Override
    protected View onCreateView(ViewGroup parent) {
        View view = super.onCreateView(parent);
        vWidgetArrow.setVisibility(View.GONE);
        if(vWidgetIcon!=null) {
            vWidgetIcon.setVisibility(View.VISIBLE);
            vWidgetIcon.setOnLongClickListener(new View.OnLongClickListener() {
                @Override
                public boolean onLongClick(View v) {
                    ClipboardManager cbm = (ClipboardManager) getContext().getSystemService(Context.CLIPBOARD_SERVICE);
                    ClipData clip = ClipData.newPlainText("color", (Integer.toHexString(mIntValue).toUpperCase()));
                    cbm.setPrimaryClip(clip);
                    Toast.makeText(getContext(), getContext().getResources().getString(R.string.LeoSalts_copied_clipboard),Toast.LENGTH_LONG).show();
                    return true;
                }
            });
        }
        return view;
    }

	@Override
	public void onBindView(@NonNull View view) {
		super.onBindView(view);
        CircleColorDrawable colorChoiceDrawable = null;
		Drawable currentDrawable = vWidgetIcon.getDrawable();
        if (currentDrawable!=null && currentDrawable instanceof CircleColorDrawable)
            colorChoiceDrawable = (CircleColorDrawable) currentDrawable;
        if (colorChoiceDrawable==null) {
            colorChoiceDrawable = new CircleColorDrawable(mIntValue);
        }
		vWidgetIcon.setImageDrawable(colorChoiceDrawable);
	}

	private int getPickerStyle(){
        String type;
        if(pickerType!=null && !pickerType.isEmpty()) type=pickerType;
        else type=Common.userColorPickerStyle;
        pickerStyle=Common.getColorPickerStyleIndex(type);
        return pickerStyle;
    }


    @Override
    public void showDialog(){

        LeoSaltPreferenceScreen prefsScreen = (LeoSaltPreferenceScreen) getOnPreferenceChangeListener();
        if(prefsScreen!=null){
            DlgFrLeoSaltColorPicker dlgFrLeoSaltColorPicker =  (DlgFrLeoSaltColorPicker) prefsScreen.getFragmentManager().findFragmentByTag(Common.TAG_DLGFRLeoSaltCOLORPICKER);
            if (dlgFrLeoSaltColorPicker==null){

                dlgFrLeoSaltColorPicker= DlgFrLeoSaltColorPicker.newInstance(this, Common.TAG_PREFSSCREEN_FRAGMENT, myPrefAttrsInfo.getMyTitle(),myPrefAttrsInfo.getMyKey(),
                        mIntValue,getPickerStyle(), showAlphaSlider, showAuto,saveValueOnFly);
                dlgFrLeoSaltColorPicker.show(prefsScreen.getFragmentManager(),Common.TAG_DLGFRLeoSaltCOLORPICKER);
            }
        }
    }

    public void onLeoSaltColorSet(int color){
        saveNewIntValue(color);
    }


}