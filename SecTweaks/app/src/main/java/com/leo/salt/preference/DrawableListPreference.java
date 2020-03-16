package com.leo.salt.preference;

import android.annotation.SuppressLint;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;

import android.provider.Settings;
import android.support.v7.preference.DialogPreference;
import android.support.v7.preference.Preference;
import android.support.v7.preference.PreferenceViewHolder;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RadioButton;
import android.widget.TextView;

import java.util.Arrays;

import com.leo.salt.R;
import com.leo.salt.utils.Utils;


public class DrawableListPreference extends Preference implements AdapterView.OnItemClickListener, Preference.OnPreferenceChangeListener {

    private Context mContext;
    private Drawable[] mThumbnailsArray;
    private CharSequence[] mEntriesList, mEntryValuesList;
    private ImageView mIconView;
    private int mSelectedPosition;
    private String mDependentValue;


    public DrawableListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;
        TypedArray typedArray = mContext.obtainStyledAttributes(attrs, R.styleable.ThumbnailListPreference, 0, 0);
        mEntriesList = typedArray.getTextArray(R.styleable.ThumbnailListPreference_entryList);
        mEntryValuesList = typedArray.getTextArray(R.styleable.ThumbnailListPreference_entryValuesList);
        TypedArray generalTypedArray = context.obtainStyledAttributes(attrs, R.styleable.Preference);
        int resId = typedArray.getResourceId(R.styleable.ThumbnailListPreference_drawableArray, 0);
        if (resId != 0) {
            TypedArray resourceArray = context.getResources().obtainTypedArray(resId);
            mThumbnailsArray = new Drawable[resourceArray.length()];
            for (int i = 0; i < resourceArray.length(); i++) {
                mThumbnailsArray[i] = resourceArray.getDrawable(i);
            }
            resourceArray.recycle();
        }
        typedArray.recycle();
        generalTypedArray.recycle();
                setWidgetLayoutResource(R.layout.thumbnail_preference_icon);

    }



    @Override
    protected Object onGetDefaultValue(TypedArray a, int index) {
        return a.getString(index);
    }

    @Override
    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        String value = Settings.System.getString(mContext.getContentResolver(), getKey());
        if (value == null) {
            value = defaultValue != null ? (String) defaultValue : "1";
            Settings.System.putString(mContext.getContentResolver(), getKey(), value);
        }
        persistString(value);
    }






    @Override
   public void onBindViewHolder(PreferenceViewHolder view) {
        super.onBindViewHolder(view);
        mSelectedPosition = Arrays.asList(mEntryValuesList).indexOf(getPersistedString("1"));
        if (mSelectedPosition == -1) {
            mSelectedPosition = 0;
        }

        int color=mContext.getColor(R.color.light_cardview_bg);
        mIconView = (ImageView) view.findViewById(R.id.thumbnailIcon);
        mIconView.setColorFilter(color, PorterDuff.Mode.SRC_ATOP);
        mIconView.setImageDrawable(mThumbnailsArray[mSelectedPosition]);
    }




   public void showDialog() {
       AlertDialog.Builder welmsg = new AlertDialog.Builder(mContext);
       LayoutInflater welmsgInflater = LayoutInflater.from(mContext);
       View welmsgLayout = welmsgInflater.inflate(R.layout.caution_msg, null);
       welmsg.show();

       final DialogInterface.OnCancelListener ok = new DialogInterface.OnCancelListener() {
           @Override
           public void onCancel(DialogInterface dialog) {
               dialog.dismiss();

           }
       };
        ListView lv = (ListView) welmsgLayout.findViewById(R.id.thumbnailListView);
        lv.setOnItemClickListener(this);
        lv.setFastScrollEnabled(true);
        lv.setFadingEdgeLength(1);
        lv.setDivider(null);
        lv.setDividerHeight(0);
        lv.setScrollingCacheEnabled(false);
        ListAdapter adapter = new ListAdapter(mContext, mEntriesList, mEntryValuesList, mThumbnailsArray, mSelectedPosition);
        lv.setAdapter(adapter);
    }


    public CharSequence[] getEntries() {
        return mEntriesList;
    }

    public void setEntries(CharSequence[] entries) {
        mEntriesList = entries;
    }

    public CharSequence[] getEntryValues() {
        return mEntryValuesList;
    }

    public void setEntryValues(CharSequence[] entryValues) {
        mEntryValuesList = entryValues;
    }

    public Drawable[] getDrawableArray() {
        return mThumbnailsArray;
    }

    public void setDrawableArray(Drawable[] drawableArray) {
        mThumbnailsArray = drawableArray;
    }


    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int i, long l) {
        String oldValue = getPersistedString(null);
        String newValue = mEntryValuesList[i].toString();
        persistString(newValue);
        if(oldValue != null && !oldValue.equals(newValue)) {
            notifyDependencyChange(shouldDisableDependents());
        }
        Settings.System.putString(mContext.getContentResolver(), getKey(), newValue);
        mSelectedPosition = i;

        mIconView.setImageDrawable(mThumbnailsArray[i]);


    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        return false;
    }

    private class ListAdapter extends BaseAdapter {
        Context c;
        CharSequence[] mEntries, mValues;
        Drawable[] mThumbnails;
        int mSelectedPosition;

        ListAdapter(Context context, CharSequence[] entries, CharSequence[] values, Drawable[] thumbnails, int selectedPosition) {
            c = context;
            this.mEntries = entries;
            this.mValues = values;
            this.mThumbnails = thumbnails;
            this.mSelectedPosition = selectedPosition;

        }

        @Override
        public int getCount() {
            if (mEntries != null) {
                return mEntries.length;
            } else {
                return 0;
            }
        }

        @Override
        public Object getItem(int i) {
            return null;
        }

        @Override
        public long getItemId(int i) {
            return 0;
        }

        @Override
        public View getView(int i, View view, ViewGroup viewGroup) {
            ViewHolder vh;

            if (view == null) {
                LayoutInflater li = (LayoutInflater) c.getSystemService(Context.LAYOUT_INFLATER_SERVICE);
                view = li.inflate(R.layout.thumbnail_item_view, viewGroup, false);
                vh = new ViewHolder(view);
                view.setTag(vh);
            } else {
                vh = (ViewHolder) view.getTag();

            }
            vh.mTextView.setText(mEntries[i]);
            vh.mImageView.setImageDrawable(mThumbnails[i]);
            vh.mRadioButton.setChecked(i == mSelectedPosition);
            return view;
        }

        private class ViewHolder {
            RadioButton mRadioButton;
            TextView mTextView;
            ImageView mImageView;

            ViewHolder(View v) {
                mRadioButton = (RadioButton) v.findViewById(R.id.thumbnailRadioButton);
                mTextView = (TextView) v.findViewById(R.id.thumbnailText);
                mImageView = (ImageView) v.findViewById(R.id.thumbnailImage);
                mImageView.setColorFilter(mContext.getColor(R.color.light_cardview_bg),PorterDuff.Mode.SRC_ATOP);
            }
        }
    }
}