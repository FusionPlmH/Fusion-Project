package com.leo.salt.preference;

import android.content.Context;
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
import com.leo.salt.tweaks.R;

import static com.leo.salt.utils.PrefUtils.killPackage;


public class SaltSettingCardButtonPreference extends Preference {
    String UpdateSetting;
    Context mContext;
    CardView mCardView;
    private final String mPackageToKill;
    public SaltSettingCardButtonPreference(Context context, AttributeSet attrs) {
        super(context,attrs);
        mContext = context;
        final TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.SaltSettingButtonPreference);
        UpdateSetting= typedArray.getString(R.styleable.SaltSettingButtonPreference_buttonString);
        mPackageToKill = typedArray.getString(R.styleable.SaltSettingButtonPreference_packageNameToKill);
        typedArray.recycle();
        setLayoutResource(R.layout.preference_card_button);

    }


    public View getView(View view, ViewGroup viewGroup) {
        View view2= super.getView(view, viewGroup);
        TextView textView = view2.findViewById(R.id.update_pre);
        textView.setText(UpdateSetting);
        textView.setGravity(Gravity.CENTER);
        textView.setTypeface(Typeface.defaultFromStyle(Typeface.BOLD));
        mCardView= view2.findViewById(R.id.update_pre_card);
        mCardView.setOnClickListener( new  OnCardViewClickListener());
        return view2;
    }

    class OnCardViewClickListener implements View.OnClickListener {
        @Override
        public void onClick(View v) {
            killPackage(mPackageToKill,getContext());
        }
    }
}