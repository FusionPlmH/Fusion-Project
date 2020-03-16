package com.leo.salt.preference;

import android.app.AlertDialog;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Bundle;

import android.preference.DialogPreference;
import android.preference.Preference;
import android.provider.Settings;

import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.Button;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.RadioButton;
import android.widget.TextView;


import com.leo.salt.tweaks.R;

import java.util.Arrays;

/*      Created by Roberto Mariani and Anna Berkovitch, 30/06/2016
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

@SuppressWarnings("unused")
public class SaltSettingIconListPreference extends DialogPreference implements AdapterView.OnItemClickListener, Preference.OnPreferenceChangeListener {

    private Context mContext;
    private Drawable[] mThumbnailsArray;
    public CharSequence[] mEntriesList, mEntryValuesList;
    private ImageView mIconView;
    public int mSelectedPosition;
    private String mDependentValue;
    public static  int mIconViewColor;

    public SaltSettingIconListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;
        TypedArray typedArray = mContext.obtainStyledAttributes(attrs, R.styleable.SaltSettingIconListPreference, 0, 0);
        mEntriesList = typedArray.getTextArray(R.styleable.SaltSettingIconListPreference_entryList);
        mEntryValuesList = typedArray.getTextArray(R.styleable.SaltSettingIconListPreference_entryValuesList);
        mIconViewColor = typedArray.getInt(R.styleable.SaltSettingIconListPreference_drawableIconColor,0xffffffff);
        int resId = typedArray.getResourceId(R.styleable.SaltSettingIconListPreference_drawableArray, 0);
        if (resId != 0) {
            TypedArray resourceArray = context.getResources().obtainTypedArray(resId);
            mThumbnailsArray = new Drawable[resourceArray.length()];
            for (int i = 0; i < resourceArray.length(); i++) {
                mThumbnailsArray[i] = resourceArray.getDrawable(i);
            }
            resourceArray.recycle();
        }
        typedArray.recycle();
        setDialogLayoutResource(R.layout.dialog_icon_grid);
        setWidgetLayoutResource(R.layout.icon_preference_icon);

    }


    @Override
    protected Object onGetDefaultValue(TypedArray a, int index) {
        return a.getString(index);
    }
    private String mKey="leo_salt_"+getKey();
    @Override
    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        String value = Settings.System.getString(mContext.getContentResolver(), mKey);
        if (value == null) {
            value = defaultValue != null ? (String) defaultValue : "1";
            Settings.System.putString(mContext.getContentResolver(), mKey, value);
        }
        persistString(value);

    }



    @Override
    public boolean shouldDisableDependents() {
        return super.shouldDisableDependents() || getPersistedString(null) == null || getPersistedString(null).equals(mDependentValue);
    }
    //private LinearLayout widgetFrameView;
    @Override
    protected void onBindView(View view) {
        super.onBindView(view);
        //view.setBackgroundResource(R.drawable.preference_background);
        mSelectedPosition = Arrays.asList(mEntryValuesList).indexOf(getPersistedString("1"));
        if (mSelectedPosition == -1) {
            mSelectedPosition = 0;
        }

       mIconView = (ImageView) view.findViewById(R.id.thumbnailIcon);
        mIconView.setImageDrawable(mThumbnailsArray[mSelectedPosition]);
        mIconView.setColorFilter(mIconViewColor, PorterDuff.Mode.SRC_ATOP);

    }

    @Override
    protected void onBindDialogView(View view) {
        super.onBindDialogView(view);

        GridView lv = (GridView) view.findViewById(R.id.thumbnailListView);
        lv.setOnItemClickListener(this);
        lv.setFastScrollEnabled(true);
        lv.setFadingEdgeLength(1);
    //    lv.setDivider(null);
     //   lv.setDividerHeight(0);
        lv.setScrollingCacheEnabled(false);
        ListAdapter adapter = new ListAdapter(mContext, mEntriesList, mEntryValuesList, mThumbnailsArray, mSelectedPosition);
        lv.setAdapter(adapter);
    }

    @Override
    protected void showDialog(Bundle state) {
        super.showDialog(state);
        AlertDialog dialog = (AlertDialog) getDialog();
        dialog.show();
        Button ok = dialog.getButton(AlertDialog.BUTTON_POSITIVE);
        ok.setVisibility(View.GONE);
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
        Settings.System.putString(mContext.getContentResolver(), mKey, newValue);
        mSelectedPosition = i;
        getDialog().dismiss();
        mIconView.setImageDrawable(mThumbnailsArray[i]);
        mIconView.setColorFilter(mIconViewColor, PorterDuff.Mode.SRC_ATOP);
      //  setSummary(mEntriesList[mSelectedPosition]);
    }

    @Override
    public boolean onPreferenceChange(Preference preference, Object newValue) {
        return false;
    }

    private static class ListAdapter extends BaseAdapter {
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
                view = li.inflate(R.layout.icon_item_view, viewGroup, false);
                vh = new ViewHolder(view);
                view.setTag(vh);
            } else {
                vh = (ViewHolder) view.getTag();

            }
            vh.mTextView.setText(mEntries[i]);
            vh.mTextView .setSelected(true);

            vh.mImageView.setImageDrawable(mThumbnails[i]);
            vh.mRadioButton.setChecked(i == mSelectedPosition);

            return view;
        }

        public class ViewHolder {
            RadioButton mRadioButton;
            TextView mTextView;
            ImageView mImageView;

            ViewHolder(View v) {
                mRadioButton = (RadioButton) v.findViewById(R.id.thumbnailRadioButton);
                mTextView = (TextView) v.findViewById(R.id.thumbnailText);
                mImageView = (ImageView) v.findViewById(R.id.thumbnailImage);
                mRadioButton.setVisibility(View.VISIBLE);
                mImageView.setColorFilter(mIconViewColor, PorterDuff.Mode.SRC_ATOP);
            }
        }
    }
}
