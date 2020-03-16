package org.salt.preference;

import android.content.ContentResolver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.TypedArray;

import android.provider.Settings;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.widget.SwitchCompat;
import androidx.preference.PreferenceManager;
import androidx.preference.PreferenceViewHolder;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

import java.util.ArrayList;

import static org.salt.preference.utils.SaltPrefeUtils.showArrows;

public class SaltMultipleChoicePreference extends SaltDialogPreference{
    private String[] mTitles, mKeys, mSummaries;
    private int[] mDefaults;
    private int mSelector;
    private MultipleChoiceAdapter mMultipleChoiceAdapter;
    private boolean mIsShowSelectAll;

    @Override
    public void onBindViewHolder(PreferenceViewHolder holder) {
        super.onBindViewHolder(holder);
        showArrows(getContext(), holder);

    }
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
        return getContext().getString(R.string.multiple_choice_preference_button_done);
    }

    @Override
    protected void showDialogView() {
        RecyclerView recyclerView = (RecyclerView) mDialog.findViewById(R.id.multiple_choice_recycler_view);
        recyclerView.setLayoutManager(new LinearLayoutManager(getContext(), LinearLayoutManager.VERTICAL, false));
        recyclerView.setAdapter(mMultipleChoiceAdapter);
        if (mIsShowSelectAll) {
            RelativeLayout container = (RelativeLayout) mDialog.findViewById(R.id.select_all_main_container);
            setUpSelectAll(container);
        }
    }

    @Override
    protected int showDialoglayout() {
        return R.layout.multiple_choice_preference_dialog_layout;
    }


    private String mBroadcastKey;
    public SaltMultipleChoicePreference(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.MultipleChoicePreference);
        mTitles = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.MultipleChoicePreference_multipleChoiceTitles, -1));
        mKeys = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.MultipleChoicePreference_multipleChoiceKeys, -1));

        mSummaries = context.getResources().getStringArray(typedArray.getResourceId(R.styleable.MultipleChoicePreference_multipleChoiceSummaries, -1));
        mDefaults = context.getResources().getIntArray(typedArray.getResourceId(R.styleable.MultipleChoicePreference_multipleChoiceDefaults, -1));
        mSelector = typedArray.getInt(R.styleable.MultipleChoicePreference_choiceSelector, 0);
        mIsShowSelectAll = typedArray.getBoolean(R.styleable.MultipleChoicePreference_showSelectAll, false);
        typedArray.recycle();
        TypedArray typedArray2 = context.obtainStyledAttributes(attrs, R.styleable.LeoPreference);
        mBroadcastKey = typedArray2.getString(R.styleable.LeoPreference_BroadcastKey);
        typedArray2.recycle();
    }


    @Override
    protected void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        super.onAttachedToHierarchy(preferenceManager);
        mMultipleChoiceAdapter = new MultipleChoiceAdapter(buildData(preferenceManager));
    }



    private void setUpSelectAll(RelativeLayout parent) {
        final CompoundButton compoundButton = mSelector == 0 ? new CheckBox(getContext()) : new SwitchCompat(getContext());
        ((FrameLayout) parent.findViewById(R.id.select_all_compound_container)).addView(compoundButton, 0);
        compoundButton.setClickable(false);
        compoundButton.setFocusable(false);
        compoundButton.setChecked(false);
        final TextView selectAllText = (TextView) parent.findViewById(R.id.select_all_text);
        compoundButton.setOnCheckedChangeListener((compoundButton1, isChecked) -> {
            if (mMultipleChoiceAdapter != null) mMultipleChoiceAdapter.selectAll(isChecked);
         selectAllText.setText(isChecked ? getContext().getString(R.string.deselect_all) : getContext().getString(R.string.select_all));
        });
        parent.setVisibility(View.VISIBLE);
        parent.setOnClickListener(view -> compoundButton.setChecked(!compoundButton.isChecked()));

    }


    private ArrayList<Item> buildData(PreferenceManager preferenceManager) {
        ArrayList<Item> list = new ArrayList<>();
        if (isValidData()) {

            ContentResolver contentResolver = getContext().getContentResolver();
            SharedPreferences sharedPreferences = preferenceManager.getSharedPreferences();
            int length =mKeys.length;
            for (int i = 0; i < length; i++) {
                int value;
                String key = "leo_salt_"+mKeys[i]+"_enabled";
                try {
                    value = Settings.System.getInt(contentResolver, key);
                } catch (Settings.SettingNotFoundException e) {
                    value = mDefaults[i];
                    Settings.System.putInt(contentResolver, key, value);
                }

                boolean valueBoolean = value != 0;
                if (!sharedPreferences.contains(key) || !Boolean.valueOf(sharedPreferences.getBoolean(key, false)).equals(valueBoolean))
                    sharedPreferences.edit().putBoolean(key, valueBoolean).apply();
                getContext().sendBroadcast(new Intent(mBroadcastKey));
                Item item = new Item();
                item.mKey = key;
                item.mTitle = mTitles[i];
                item.mIsSelected = valueBoolean;
                item.mSummary = mSummaries[i];
                list.add(item);
            }
        } else {
            throw new IllegalStateException("Data for preference is missing or improperly formatted. Please verify the arrays are all present and are all of equal size.");
        }
        return list;
    }

    private boolean isValidData() {
        if (mKeys == null) return false;
        int length = mKeys.length;
        return mDefaults != null
                && mSummaries != null
                && mTitles != null
                && mDefaults.length == length
                && mSummaries.length == length
                && mTitles.length == length;
    }

    private void updateDatabase(String key, boolean isChecked) {
        getPreferenceManager().getSharedPreferences().edit().putBoolean(key, isChecked).apply();
        Settings.System.putInt(getContext().getContentResolver(), key, isChecked ? 1 : 0);
        getContext().sendBroadcast(new Intent(mBroadcastKey));
    }

    private class Item {
        String mTitle, mKey, mSummary;
        boolean mIsSelected;
    }

    private class MultipleChoiceAdapter extends RecyclerView.Adapter<MultipleChoiceAdapter.GearViewHolder> {
        private ArrayList<Item> mItemArrayList;

        MultipleChoiceAdapter(ArrayList<Item> itemArrayList) {
            mItemArrayList = itemArrayList;
        }

        @Override
        public GearViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
            Context context = parent.getContext();
            View view = LayoutInflater.from(context).inflate(R.layout.multiple_choice_item_layout, parent, false);
            CompoundButton compoundButton = mSelector == 0 ? new CheckBox(context) : new SwitchCompat(context);
            FrameLayout frameLayout = (FrameLayout) view.findViewById(R.id.compound_button_container);
            frameLayout.addView(compoundButton, 0);
            int id = View.generateViewId();
            compoundButton.setId(id);
            compoundButton.setClickable(false);
            compoundButton.setFocusable(false);
            return new GearViewHolder(view, id);
        }

        @Override
        public void onBindViewHolder(GearViewHolder holder, int position) {
            holder.bindViews(mItemArrayList.get(position));
        }

        @Override
        public int getItemCount() {
            return mItemArrayList != null ? mItemArrayList.size() : 0;
        }

        void selectAll(boolean isSelected) {
            for (int i = 0; i < getItemCount(); i++) {
                mItemArrayList.get(i).mIsSelected = isSelected;
                updateDatabase(mItemArrayList.get(i).mKey, isSelected);
            }
            notifyDataSetChanged();
        }

        class GearViewHolder extends RecyclerView.ViewHolder {
            private TextView mTitle, mSummary;
            private CompoundButton mCompoundButton;

            GearViewHolder(View itemView, int compoundId) {
                super(itemView);
                mTitle = (TextView) itemView.findViewById(R.id.multiple_choice_item_title);
                mSummary = (TextView) itemView.findViewById(R.id.multiple_choice_item_summary);
                mCompoundButton = (CompoundButton) itemView.findViewById(compoundId);
            }

            void bindViews(final Item item) {
                mTitle.setText(item.mTitle);
                mSummary.setText(item.mSummary);
                mCompoundButton.setOnCheckedChangeListener(null);
                mCompoundButton.setChecked(item.mIsSelected);
                mCompoundButton.setOnCheckedChangeListener((compoundButton, isChecked) -> updateDatabase(item.mKey, isChecked));
                itemView.setOnClickListener(view -> {
                    mCompoundButton.setChecked(!mCompoundButton.isChecked());
                    item.mIsSelected = mCompoundButton.isChecked();
                });

            }
        }
    }
}
