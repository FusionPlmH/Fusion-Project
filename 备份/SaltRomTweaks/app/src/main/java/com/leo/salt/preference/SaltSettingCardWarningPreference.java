package com.leo.salt.preference;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;

import android.graphics.Typeface;
import android.preference.Preference;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.leo.salt.tweaks.LeoAmberApplication;
import com.leo.salt.tweaks.MainActivity;
import com.leo.salt.tweaks.R;

import static com.leo.salt.tweaks.LeoAmberApplication.getContext;
import static com.leo.salt.tweaks.resource.Resource.getStringIdentifier;
import static com.leo.salt.utils.PrefUtils.killPackage;


public class SaltSettingCardWarningPreference extends Preference {
    public String UpdateSetting;
    public Context mContext;
   public CardView mCardView;

    public SaltSettingCardWarningPreference(Context context, AttributeSet attrs) {
        super(context,attrs);
        mContext = context;
        final TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.SaltSettingWarningPreference);
        UpdateSetting= typedArray.getString(R.styleable.SaltSettingWarningPreference_warningString);
        str= typedArray.getString(R.styleable.SaltSettingWarningPreference_warningClick);
        typedArray.recycle();
        setLayoutResource(R.layout.preference_card_button);

    }

   String str;
    public View getView(View view, ViewGroup viewGroup) {
        View view2= super.getView(view, viewGroup);
        TextView textView2 = view2.findViewById(R.id.warm_name);
        textView2.setVisibility(View.VISIBLE);
        textView2.setText(getStringIdentifier(getContext(),"warm_prompt"));
        TextView textView = view2.findViewById(R.id.update_pre);
        textView.setGravity(Gravity.LEFT);
        textView.setText(UpdateSetting);
        textView.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
        mCardView= view2.findViewById(R.id.update_pre_card);
        mCardView.setOnClickListener( new OnCardViewClickListener());
        mCardView.setPreventCornerOverlap(false);
        return view2;
    }

    public void setWarningSetting(String s) {
        UpdateSetting= s;
    }

    class OnCardViewClickListener implements View.OnClickListener {

        @Override
        public void onClick(View v) {
            getLeoAction();
        }
    }
    public void getLeoAction() {
        if (str == null) {
            mCardView.setClickable(false);
            setEnabled(false);
            setSelectable(false);
            return;
        }
        if (str.equals("home")) {
            Intent intent = new Intent();
            ComponentName cn = new ComponentName("com.sec.android.app.launcher", "com.android.launcher3.infra.activity.SettingsActivity");
            intent.setComponent(cn);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            mContext.startActivity(intent);
        } else if (str.equals("")) {
            //  sendHomeKeyEvent();
        }


    }
}