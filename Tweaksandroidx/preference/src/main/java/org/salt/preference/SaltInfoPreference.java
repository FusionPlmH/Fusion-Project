package org.salt.preference;


import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import androidx.appcompat.widget.AppCompatImageView;
import androidx.cardview.widget.CardView;
import androidx.preference.Preference;
import androidx.preference.PreferenceViewHolder;

import static org.salt.preference.utils.SaltPrefeUtils.showrestart;
import static org.salt.preference.utils.SaltPrefeUtils.showrestartDialog;

public class SaltInfoPreference extends Preference implements View.OnClickListener {

    public Context mContext;
    public CardView mCardView;
    private String mTitle;
    private String mMessage;
    private String mAction;
    private int mResId;
    private boolean mRes;
    public SaltInfoPreference(Context context, AttributeSet attrs) {
        super(context,attrs);
        mContext = context;
        final TypedArray typedArray;
        typedArray = context.obtainStyledAttributes(attrs, R.styleable.SaltInfoPreference);
        mResId = typedArray.getResourceId(R.styleable.SaltInfoPreference_imageSource, -1);
        mTitle = typedArray.getString(R.styleable.SaltInfoPreference_infoTitle);
        mMessage= typedArray.getString(R.styleable.SaltInfoPreference_infoMessage);
        mAction= typedArray.getString(R.styleable.SaltInfoPreference_infoAction);
        mRes= typedArray.getBoolean(R.styleable.SaltInfoPreference_imageBoolean,false);
        typedArray.recycle();
        setLayoutResource(R.layout.preference_card_button);

    }

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        TextView textView2 = (TextView) holder.findViewById(R.id.help_name);
        textView2.setText(mTitle);
        TextView Message =(TextView) holder.findViewById(R.id.help_message);
        Message.setText(mMessage);
        AppCompatImageView appCompatImageView =(AppCompatImageView) holder.findViewById(R.id.info_imgs);
        if(mRes){
            appCompatImageView.setVisibility(View.VISIBLE);
            appCompatImageView.setImageDrawable(getContext().getDrawable(mResId));
        }else{
            appCompatImageView.setVisibility(View.GONE);
        }
        mCardView = (CardView) holder.findViewById(R.id.help_card);
        mCardView.setOnClickListener(this);
        mCardView.setPreventCornerOverlap(false);
    }


    @Override
    public void onClick(View v) {
        if (mAction == null) {
            mCardView.setClickable(false);
            setEnabled(false);
            setSelectable(false);
            return;
        }
        if (mAction.equals("home9")) {
            Intent intent = new Intent();
            ComponentName cn = new ComponentName("com.sec.android.app.launcher", "com.android.launcher3.infra.activity.SettingsActivity");
            intent.setComponent(cn);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            mContext.startActivity(intent);
        } else if (mAction.equals("home10")){
            Intent intent = new Intent();
            ComponentName cn = new ComponentName("com.sec.android.app.launcher", "com.android.homescreen.settings.HomeScreenSettingsActivity");
            intent.setComponent(cn);
            intent.addFlags(Intent.FLAG_ACTIVITY_NEW_TASK);
            mContext.startActivity(intent);
        }else if (mAction.equals("ui")){
            showrestartDialog(getContext(),"com.android.systemui");
        }else if (mAction.equals("cocktailbarservice")){
            showrestartDialog(getContext(),"com.samsung.android.app.cocktailbarservice");
        }

    }
}