package org.salt.preference;



import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;




import android.text.Spannable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;

import androidx.appcompat.app.AlertDialog;
import androidx.preference.CheckBoxPreference;
import androidx.preference.Preference;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceViewHolder;

import java.util.Arrays;

import static org.salt.preference.colorpicker.Utils.getColorAttr;
import static org.salt.preference.utils.SaltPrefeUtils.defaultKey;
import static org.salt.preference.utils.SaltPrefeUtils.getStringSaltSettings;
import static org.salt.preference.utils.SaltPrefeUtils.putStringSaltString;
import static org.salt.preference.utils.SaltPrefeUtils.showrestart;

public class SaltIconListPreference  extends SaltDialogPreference  implements AdapterView.OnItemClickListener,Preference.OnPreferenceClickListener {

    private Context mContext;
    private Drawable[] mThumbnailsArray;
    public CharSequence[] mEntriesList, mEntryValuesList;
    private ImageView mIconView;
    public int mSelectedPosition;
    private String mDependentValue;
    public static int mIconViewColor;
    private String mReverseDependencyKey;
    private  int mModeSettings;
    private final String mPackageToKill;
    private final boolean mIsRebootRequired;
    @Override
    protected void showDialogPositive() {
        mDialog = null;
    }

    @Override
    protected void showDialogNegative() {
        mDialog = null;
    }

    @Override
    protected String showDialogPositiveString() {
        return null;
    }

    @Override
    protected void showDialogView() {
        GridView lv = (GridView)mDialog.findViewById(R.id.thumbnailListView);
        lv.setOnItemClickListener(this);
        lv.setFastScrollEnabled(true);
        lv.setFadingEdgeLength(1);
        //    lv.setDivider(null);
        //   lv.setDividerHeight(0);
        lv.setScrollingCacheEnabled(false);
        ListAdapter adapter = new ListAdapter(mContext, mEntriesList, mEntryValuesList, mThumbnailsArray, mSelectedPosition);
        lv.setAdapter(adapter);
    }
    private String mBroadcastKey;
    @Override
    protected int showDialoglayout() {
        return R.layout.dialog_icon_grid;
    }

    public SaltIconListPreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        mContext = context;
        mDensity = getContext().getResources().getDisplayMetrics().density;
        TypedArray typedArray = mContext.obtainStyledAttributes(attrs, R.styleable.SaltSettingIconListPreference, 0, 0);
        mEntriesList = typedArray.getTextArray(R.styleable.SaltSettingIconListPreference_entryList);
        mEntryValuesList = typedArray.getTextArray(R.styleable.SaltSettingIconListPreference_entryValuesList);
        mIconViewColor = typedArray.getInt(R.styleable.SaltSettingIconListPreference_drawableIconColor,0xffffffff);
        TypedArray typedArray2 = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mReverseDependencyKey = typedArray2.getString(R.styleable.LeoPreference_reverseDependency);
        mBroadcastKey = typedArray2.getString(R.styleable.LeoPreference_BroadcastKey);
        mIsRebootRequired = typedArray2.getBoolean(R.styleable.LeoPreference_packageKill, false);
        mPackageToKill = typedArray2.getString(R.styleable.LeoPreference_packageName);
        mDependentValue = typedArray2.getString(R.styleable.LeoPreference_dependentValue);
        mModeSettings=typedArray2.getInt(R.styleable.LeoPreference_modeSettings,0);
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
        typedArray2.recycle();


    }


    @Override
    protected Object onGetDefaultValue(TypedArray a, int index) {
        return a.getString(index);
    }
    private String mKey=defaultKey+getKey();

    @Override
    protected void onSetInitialValue(boolean restorePersistedValue, Object defaultValue) {
        String value = getStringSaltSettings(mModeSettings,mContext, mKey);
        if (value == null) {
            value = defaultValue != null ? (String) defaultValue : "1";
            mContext.sendBroadcast(new Intent(mBroadcastKey));
            putStringSaltString(mModeSettings,mContext, mKey, value);
        }
        persistString(value);

    }
    private LinearLayout widgetFrameView;
    @Override
    public boolean shouldDisableDependents() {
        return super.shouldDisableDependents() || getPersistedString(null) == null || getPersistedString(null).equals(mDependentValue);
    }
    @Override
    public void onAttached() {
        super.onAttached();
        registerDependency();
    }
    private void registerDependency() {
        if (!TextUtils.isEmpty(mReverseDependencyKey)) {
            Preference findPreferenceInHierarchy = findPreferenceInHierarchy(mReverseDependencyKey);
            if (findPreferenceInHierarchy != null && (findPreferenceInHierarchy instanceof SaltSwitchPreference || findPreferenceInHierarchy instanceof CheckBoxPreference)) {
                ReverseDependencyMonitor reverseDependencyMonitor = (ReverseDependencyMonitor) findPreferenceInHierarchy;
                reverseDependencyMonitor.registerReverseDependencyPreference(this);

            }
        }
    }

    @Override
    protected void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        super.onAttachedToHierarchy(preferenceManager);
        registerDependency();
    }

    private float mDensity ;
    private void setPreview() {
        widgetFrameView.setOrientation(LinearLayout.HORIZONTAL);
        int size = Math.round(getContext().getResources().getDimension(R.dimen.button_size));
        mIconView= new ImageView(getContext());
        LinearLayout.LayoutParams params = new LinearLayout.LayoutParams(size, size);
        params.gravity = Gravity.CENTER;
        params.setMargins(0, 0, 0, 0);
        mIconView.setLayoutParams(params);
        mIconView.setScaleX(0.7f);
        mIconView.setScaleY(0.7f);
        if (widgetFrameView == null) return;
        widgetFrameView.setVisibility(View.VISIBLE);
        widgetFrameView.setPadding(
                widgetFrameView.getPaddingLeft(),
                widgetFrameView.getPaddingTop(),
                (int) (mDensity * 8),
                widgetFrameView.getPaddingBottom());
        // remove already create preview image
        int count = widgetFrameView.getChildCount();
        if (count > 0) {
            widgetFrameView.removeViews(0, count);
        }
        widgetFrameView.addView(mIconView);
        widgetFrameView.setMinimumWidth(0);
        mSelectedPosition = Arrays.asList(mEntryValuesList).indexOf(getPersistedString("1"));
        if (mSelectedPosition == -1) {
            mSelectedPosition = 0;
        }
        mIconView.setImageDrawable(mThumbnailsArray[mSelectedPosition]);
        mIconView.setColorFilter(mIconViewColor, PorterDuff.Mode.SRC_ATOP);
    }
    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        widgetFrameView= (LinearLayout) holder.findViewById(android.R.id.widget_frame);
        setPreview();
        setAutoSummary(holder);
    }
    private void setAutoSummary(PreferenceViewHolder holder) {
        TextView textView = (TextView)holder.findViewById(android.R.id.summary);
        Spannable summary = new SpannableString(" "+mEntriesList[mSelectedPosition]+" ");
        textView.setText(summary);
    }
    @Override
    public boolean onPreferenceClick(Preference preference) {

        return true;
    }
    @Override
    protected void onClick() {
        showDialog();
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
        mContext.sendBroadcast(new Intent(mBroadcastKey));
        putStringSaltString(mModeSettings,mContext, mKey, newValue);
        mSelectedPosition = i;
        mDialog.dismiss();
        mIconView.setImageDrawable(mThumbnailsArray[i]);
        mIconView.setColorFilter(mIconViewColor, PorterDuff.Mode.SRC_ATOP);
        if(mIsRebootRequired){
            showrestart(getContext(),mPackageToKill);
        }

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
