package android.support.v7.preference;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.provider.Settings.Secure;
import android.support.annotation.CallSuper;
import android.support.annotation.ColorInt;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v4.content.ContextCompat;
import android.support.v4.content.res.TypedArrayUtils;
import android.support.v4.view.accessibility.AccessibilityNodeInfoCompat;
import android.support.v7.preference.PreferenceManager.OnPreferenceTreeClickListener;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.AbsSavedState;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.accessibility.AccessibilityManager;
import android.widget.ImageView;
import android.widget.TextView;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

public class LeoPreference implements Comparable<Preference> {
    public static final int DEFAULT_ORDER = Integer.MAX_VALUE;
    private static final String TAG = "Preference";
    private boolean mAllowDividerAbove;
    private boolean mAllowDividerBelow;
    private boolean mBaseMethodCalled;
    private boolean mChangedSummaryColor;
    private boolean mChangedSummaryColorStateList;
    private final OnClickListener mClickListener;
    private Context mContext;
    private Object mDefaultValue;
    private String mDependencyKey;
    private boolean mDependencyMet;
    private List<Preference> mDependents;
    private boolean mEnabled;
    private Bundle mExtras;
    private String mFragment;
    private boolean mHasId;
    private boolean mHasSingleLineTitleAttr;
    private Drawable mIcon;
    private int mIconResId;
    private boolean mIconSpaceReserved;
    private long mId;
    private Intent mIntent;
    boolean mIsPreferenceRoundedBg;
    boolean mIsRoundChanged;
    @RestrictTo({Scope.LIBRARY_GROUP})
    public boolean mIsSolidRoundedCorner;
    private String mKey;
    private int mLayoutResId;
    private OnPreferenceChangeInternalListener mListener;
    private OnPreferenceChangeListener mOnChangeListener;
    private OnPreferenceClickListener mOnClickListener;
    private int mOrder;
    private boolean mParentDependencyMet;
    private PreferenceGroup mParentGroup;
    private boolean mPersistent;
    @Nullable
    private PreferenceDataStore mPreferenceDataStore;
    @Nullable
    private PreferenceManager mPreferenceManager;
    private boolean mRequiresKey;
    private boolean mSelectable;
    private boolean mShouldDisableView;
    private boolean mSingleLineTitle;
    @ColorInt
    int mSubheaderColor;
    boolean mSubheaderRound;
    private CharSequence mSummary;
    @ColorInt
    private int mSummaryColor;
    private ColorStateList mSummaryColorStateList;
    private ColorStateList mTextColorSecondary;
    private CharSequence mTitle;
    private int mViewId;
    private boolean mVisible;
    private boolean mWasDetached;
    int mWhere;
    private int mWidgetLayoutResId;

    public LeoPreference(OnClickListener mClickListener) {
        this.mClickListener = mClickListener;
    }

    public static class BaseSavedState extends AbsSavedState {
        public static final Creator<BaseSavedState> CREATOR = new Creator<BaseSavedState>() {
            public BaseSavedState createFromParcel(Parcel parcel) {
                return new BaseSavedState(parcel);
            }

            public BaseSavedState[] newArray(int i) {
                return new BaseSavedState[i];
            }
        };

        public BaseSavedState(Parcel parcel) {
            super(parcel);
        }

        public BaseSavedState(Parcelable parcelable) {
            super(parcelable);
        }
    }

    interface OnPreferenceChangeInternalListener {
        void onPreferenceChange(Preference preference);

        void onPreferenceHierarchyChange(Preference preference);

        void onPreferenceVisibilityChange(Preference preference);
    }

    public interface OnPreferenceChangeListener {
        boolean onPreferenceChange(Preference preference, Object obj);
    }

    public interface OnPreferenceClickListener {
        boolean onPreferenceClick(Preference preference);
    }

    public LeoPreference(Context context) {
        this(context, null);
    }

    @SuppressLint("RestrictedApi")
    public LeoPreference(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, TypedArrayUtils.getAttr(context, R.attr.preferenceStyle, 16842894));
    }

    public LeoPreference(Context context, AttributeSet attributeSet, int i) {
        this(context, attributeSet, i, 0);
    }

    @SuppressLint("RestrictedApi")
    public LeoPreference(Context context, AttributeSet attributeSet, int i, int i2) {
        this.mOrder = Integer.MAX_VALUE;
        this.mViewId = 0;
        this.mEnabled = true;
        this.mSelectable = true;
        this.mPersistent = true;
        this.mDependencyMet = true;
        this.mParentDependencyMet = true;
        this.mVisible = true;
        this.mAllowDividerAbove = true;
        this.mAllowDividerBelow = true;
        this.mSingleLineTitle = true;
        this.mIsSolidRoundedCorner = false;
        this.mIsPreferenceRoundedBg = false;
        this.mSubheaderRound = false;
        this.mWhere = 0;
        this.mIsRoundChanged = false;
        this.mChangedSummaryColor = false;
        this.mChangedSummaryColorStateList = false;
        this.mShouldDisableView = true;
        this.mLayoutResId = 0;
        this.mClickListener = new OnClickListener() {
            public void onClick(View view) {
                LeoPreference.this.performClick(view);
            }
        };
        this.mContext = context;
        TypedArray obtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.Preference, i, i2);
        this.mIconResId = TypedArrayUtils.getResourceId(obtainStyledAttributes, R.styleable.Preference_icon, R.styleable.Preference_android_icon, 0);
        this.mKey = TypedArrayUtils.getString(obtainStyledAttributes, R.styleable.Preference_key, R.styleable.Preference_android_key);
        this.mTitle = TypedArrayUtils.getText(obtainStyledAttributes, R.styleable.Preference_title, R.styleable.Preference_android_title);
        this.mSummary = TypedArrayUtils.getText(obtainStyledAttributes, R.styleable.Preference_summary, R.styleable.Preference_android_summary);
        this.mOrder = TypedArrayUtils.getInt(obtainStyledAttributes, R.styleable.Preference_order, R.styleable.Preference_android_order, Integer.MAX_VALUE);
        this.mFragment = TypedArrayUtils.getString(obtainStyledAttributes, R.styleable.Preference_fragment, R.styleable.Preference_android_fragment);
        this.mLayoutResId = TypedArrayUtils.getResourceId(obtainStyledAttributes, R.styleable.Preference_layout, R.styleable.Preference_android_layout, R.layout.preference);
        this.mWidgetLayoutResId = TypedArrayUtils.getResourceId(obtainStyledAttributes, R.styleable.Preference_widgetLayout, R.styleable.Preference_android_widgetLayout, 0);
        this.mEnabled = TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.Preference_enabled, R.styleable.Preference_android_enabled, true);
        this.mSelectable = TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.Preference_selectable, R.styleable.Preference_android_selectable, true);
        this.mPersistent = TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.Preference_persistent, R.styleable.Preference_android_persistent, true);
        this.mDependencyKey = TypedArrayUtils.getString(obtainStyledAttributes, R.styleable.Preference_dependency, R.styleable.Preference_android_dependency);
        this.mAllowDividerAbove = TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.Preference_allowDividerAbove, R.styleable.Preference_allowDividerAbove, this.mSelectable);
        this.mAllowDividerBelow = TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.Preference_allowDividerBelow, R.styleable.Preference_allowDividerBelow, this.mSelectable);
        if (obtainStyledAttributes.hasValue(R.styleable.Preference_defaultValue)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, R.styleable.Preference_defaultValue);
        } else if (obtainStyledAttributes.hasValue(R.styleable.Preference_android_defaultValue)) {
            this.mDefaultValue = onGetDefaultValue(obtainStyledAttributes, R.styleable.Preference_android_defaultValue);
        }
        this.mShouldDisableView = TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.Preference_shouldDisableView, R.styleable.Preference_android_shouldDisableView, true);
        this.mHasSingleLineTitleAttr = obtainStyledAttributes.hasValue(R.styleable.Preference_singleLineTitle);
        if (this.mHasSingleLineTitleAttr) {
            this.mSingleLineTitle = TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.Preference_singleLineTitle, R.styleable.Preference_android_singleLineTitle, true);
        }
        this.mIconSpaceReserved = TypedArrayUtils.getBoolean(obtainStyledAttributes, R.styleable.Preference_iconSpaceReserved, R.styleable.Preference_android_iconSpaceReserved, false);
        obtainStyledAttributes.recycle();
        TypedValue typedValue = new TypedValue();
        context.getTheme().resolveAttribute(16842808, typedValue, true);
        if (typedValue.resourceId > 0) {
            this.mTextColorSecondary = context.getResources().getColorStateList(typedValue.resourceId);
        }
    }

    private void dispatchSetInitialValue() {
        if (getPreferenceDataStore() != null) {
            onSetInitialValue(true, this.mDefaultValue);
            return;
        }
        if (shouldPersist() && getSharedPreferences().contains(this.mKey)) {
            onSetInitialValue(true, null);
        } else if (this.mDefaultValue != null) {
            onSetInitialValue(false, this.mDefaultValue);
        }
    }

    private void registerDependency() {
        if (!TextUtils.isEmpty(this.mDependencyKey)) {
            Preference findPreferenceInHierarchy = findPreferenceInHierarchy(this.mDependencyKey);
            if (findPreferenceInHierarchy != null) {
             //   findPreferenceInHierarchy.registerDependent(this);
                return;
            }
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append("Dependency \"");
            stringBuilder.append(this.mDependencyKey);
            stringBuilder.append("\" not found for preference \"");
            stringBuilder.append(this.mKey);
            stringBuilder.append("\" (title: \"");
            stringBuilder.append(this.mTitle);
            stringBuilder.append("\"");
            throw new IllegalStateException(stringBuilder.toString());
        }
    }

    private void registerDependent(Preference preference) {
        if (this.mDependents == null) {
            this.mDependents = new ArrayList();
        }
        this.mDependents.add(preference);
      //  preference.onDependencyChanged(this, shouldDisableDependents());
    }

    private void setEnabledStateOnViews(View view, boolean z) {
        view.setEnabled(z);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                setEnabledStateOnViews(viewGroup.getChildAt(childCount), z);
            }
        }
    }

    private void tryCommit(@NonNull Editor editor) {
        if (this.mPreferenceManager.shouldCommit()) {
            editor.apply();
        }
    }

    private void unregisterDependency() {
        if (this.mDependencyKey != null) {
            Preference findPreferenceInHierarchy = findPreferenceInHierarchy(this.mDependencyKey);
            if (findPreferenceInHierarchy != null) {
               // findPreferenceInHierarchy.unregisterDependent(this);
            }
        }
    }

    private void unregisterDependent(Preference preference) {
        if (this.mDependents != null) {
            this.mDependents.remove(preference);
        }
    }

    /* access modifiers changed from: 0000 */
    public void assignParent(@Nullable PreferenceGroup preferenceGroup) {
        this.mParentGroup = preferenceGroup;
    }

    public boolean callChangeListener(Object obj) {
       // return this.mOnChangeListener == null || this.mOnChangeListener.onPreferenceChange(this, obj);
        return false;
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void callClickListener() {
        if (this.mOnClickListener != null) {
          //  this.mOnClickListener.onPreferenceClick(this);
        }
    }

    public final void clearWasDetached() {
        this.mWasDetached = false;
    }

    public int compareTo(@NonNull Preference preference) {
       // return this.mOrder != preference.mOrder ? this.mOrder - preference.mOrder : this.mTitle == preference.mTitle ? 0 : this.mTitle == null ? 1 : preference.mTitle == null ? -1 : this.mTitle.toString().compareToIgnoreCase(preference.mTitle.toString());
        return 0;
    }

    /* access modifiers changed from: 0000 */
    public void dispatchRestoreInstanceState(Bundle bundle) {
        if (hasKey()) {
            Parcelable parcelable = bundle.getParcelable(this.mKey);
            if (parcelable != null) {
                this.mBaseMethodCalled = false;
                onRestoreInstanceState(parcelable);
                if (!this.mBaseMethodCalled) {
                    throw new IllegalStateException("Derived class did not call super.onRestoreInstanceState()");
                }
            }
        }
    }

    /* access modifiers changed from: 0000 */
    public void dispatchSaveInstanceState(Bundle bundle) {
        if (hasKey()) {
            this.mBaseMethodCalled = false;
            Parcelable onSaveInstanceState = onSaveInstanceState();
            if (!this.mBaseMethodCalled) {
                throw new IllegalStateException("Derived class did not call super.onSaveInstanceState()");
            } else if (onSaveInstanceState != null) {
                bundle.putParcelable(this.mKey, onSaveInstanceState);
            }
        }
    }

    /* access modifiers changed from: protected */
    public Preference findPreferenceInHierarchy(String str) {
        return (TextUtils.isEmpty(str) || this.mPreferenceManager == null) ? null : this.mPreferenceManager.findPreference(str);
    }

    public Context getContext() {
        return this.mContext;
    }

    public String getDependency() {
        return this.mDependencyKey;
    }

    public Bundle getExtras() {
        if (this.mExtras == null) {
            this.mExtras = new Bundle();
        }
        return this.mExtras;
    }

    /* access modifiers changed from: 0000 */
    public StringBuilder getFilterableStringBuilder() {
        StringBuilder stringBuilder = new StringBuilder();
        CharSequence title = getTitle();
        if (!TextUtils.isEmpty(title)) {
            stringBuilder.append(title);
            stringBuilder.append(' ');
        }
        CharSequence summary = getSummary();
        if (!TextUtils.isEmpty(summary)) {
            stringBuilder.append(summary);
            stringBuilder.append(' ');
        }
        if (stringBuilder.length() > 0) {
            stringBuilder.setLength(stringBuilder.length() - 1);
        }
        return stringBuilder;
    }

    public String getFragment() {
        return this.mFragment;
    }

    public Drawable getIcon() {
        if (this.mIcon == null && this.mIconResId != 0) {
            this.mIcon = ContextCompat.getDrawable(this.mContext, this.mIconResId);
        }
        return this.mIcon;
    }

    /* access modifiers changed from: 0000 */
    public long getId() {
        return this.mId;
    }

    public Intent getIntent() {
        return this.mIntent;
    }

    public String getKey() {
        return this.mKey;
    }

    public final int getLayoutResource() {
        return this.mLayoutResId;
    }

    public OnPreferenceChangeListener getOnPreferenceChangeListener() {
        return this.mOnChangeListener;
    }

    public OnPreferenceClickListener getOnPreferenceClickListener() {
        return this.mOnClickListener;
    }

    public int getOrder() {
        return this.mOrder;
    }

    @Nullable
    public PreferenceGroup getParent() {
        return this.mParentGroup;
    }

    /* access modifiers changed from: protected */
    public boolean getPersistedBoolean(boolean z) {
        if (!shouldPersist()) {
            return z;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getBoolean(this.mKey, z) : this.mPreferenceManager.getSharedPreferences().getBoolean(this.mKey, z);
    }

    /* access modifiers changed from: protected */
    public float getPersistedFloat(float f) {
        if (!shouldPersist()) {
            return f;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getFloat(this.mKey, f) : this.mPreferenceManager.getSharedPreferences().getFloat(this.mKey, f);
    }

    /* access modifiers changed from: protected */
    public int getPersistedInt(int i) {
        if (!shouldPersist()) {
            return i;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getInt(this.mKey, i) : this.mPreferenceManager.getSharedPreferences().getInt(this.mKey, i);
    }

    /* access modifiers changed from: protected */
    public long getPersistedLong(long j) {
        if (!shouldPersist()) {
            return j;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getLong(this.mKey, j) : this.mPreferenceManager.getSharedPreferences().getLong(this.mKey, j);
    }

    /* access modifiers changed from: protected */
    public String getPersistedString(String str) {
        if (!shouldPersist()) {
            return str;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getString(this.mKey, str) : this.mPreferenceManager.getSharedPreferences().getString(this.mKey, str);
    }

    public Set<String> getPersistedStringSet(Set<String> set) {
        if (!shouldPersist()) {
            return set;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        return preferenceDataStore != null ? preferenceDataStore.getStringSet(this.mKey, set) : this.mPreferenceManager.getSharedPreferences().getStringSet(this.mKey, set);
    }

    @Nullable
    public PreferenceDataStore getPreferenceDataStore() {
        return this.mPreferenceDataStore != null ? this.mPreferenceDataStore : this.mPreferenceManager != null ? this.mPreferenceManager.getPreferenceDataStore() : null;
    }

    public PreferenceManager getPreferenceManager() {
        return this.mPreferenceManager;
    }

    public SharedPreferences getSharedPreferences() {
        return (this.mPreferenceManager == null || getPreferenceDataStore() != null) ? null : this.mPreferenceManager.getSharedPreferences();
    }

    public boolean getShouldDisableView() {
        return this.mShouldDisableView;
    }

    public CharSequence getSummary() {
        return this.mSummary;
    }

    public CharSequence getTitle() {
        return this.mTitle;
    }

    public final int getWidgetLayoutResource() {
        return this.mWidgetLayoutResId;
    }

    public boolean hasKey() {
        return true;
    }

    public boolean isEnabled() {
        return this.mEnabled && this.mDependencyMet && this.mParentDependencyMet;
    }

    public boolean isIconSpaceReserved() {
        return this.mIconSpaceReserved;
    }

    public boolean isPersistent() {
        return this.mPersistent;
    }

    public boolean isSelectable() {
        return this.mSelectable;
    }

    public boolean isSingleLineTitle() {
        return this.mSingleLineTitle;
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public boolean isTalkBackIsRunning() {
        AccessibilityManager accessibilityManager = (AccessibilityManager) getContext().getSystemService("accessibility");
        if (accessibilityManager != null && accessibilityManager.isEnabled()) {
            String string = Secure.getString(getContext().getContentResolver(), "enabled_accessibility_services");
            if (string != null && (string.matches("(?i).*com.samsung.accessibility/com.samsung.android.app.talkback.TalkBackService.*") || string.matches("(?i).*com.google.android.marvin.talkback.TalkBackService.*") || string.matches("(?i).*com.samsung.accessibility/com.samsung.accessibility.universalswitch.UniversalSwitchService.*"))) {
                return true;
            }
        }
        return false;
    }

    public final boolean isVisible() {
        return this.mVisible;
    }

    /* access modifiers changed from: protected */
    public void notifyChanged() {
        if (this.mListener != null) {
          //  this.mListener.onPreferenceChange(this);
        }
    }

    public void notifyDependencyChange(boolean z) {
        List list = this.mDependents;
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
               // ((Preference) list.get(i)).onDependencyChanged(this, z);
            }
        }
    }

    /* access modifiers changed from: protected */
    public void notifyHierarchyChanged() {
        if (this.mListener != null) {
           // this.mListener.onPreferenceHierarchyChange(this);
        }
    }

    public void onAttached() {
        registerDependency();
    }

    /* access modifiers changed from: protected */
    public void onAttachedToHierarchy(PreferenceManager preferenceManager) {
        this.mPreferenceManager = preferenceManager;
        if (!this.mHasId) {
            this.mId = preferenceManager.getNextId();
        }
        dispatchSetInitialValue();
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void onAttachedToHierarchy(PreferenceManager preferenceManager, long j) {
        this.mId = j;
        this.mHasId = true;
        try {
            onAttachedToHierarchy(preferenceManager);
        } finally {
            this.mHasId = false;
        }
    }

    public void onBindViewHolder(PreferenceViewHolder preferenceViewHolder) {
        CharSequence title;
        preferenceViewHolder.itemView.setOnClickListener(this.mClickListener);
        preferenceViewHolder.itemView.setId(this.mViewId);
     //   preferenceViewHolder.seslSetPreferenceBackgroundType(this.mIsPreferenceRoundedBg, this.mWhere, this.mSubheaderRound);
        TextView textView = (TextView) preferenceViewHolder.findViewById(16908310);
        int i = 8;
        if (textView != null) {
            title = getTitle();
            if (!TextUtils.isEmpty(title)) {
                textView.setText(title);
                textView.setVisibility(0);
                if (this.mHasSingleLineTitleAttr) {
                    textView.setSingleLine(this.mSingleLineTitle);
                }
            }
        }
        textView = (TextView) preferenceViewHolder.findViewById(16908304);
        if (textView != null) {
            title = getSummary();
            if (TextUtils.isEmpty(title)) {
                textView.setVisibility(8);
            } else {
                textView.setText(title);
                String str;
                StringBuilder stringBuilder;
                if (this.mChangedSummaryColor) {
                    textView.setTextColor(this.mSummaryColor);
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("set Summary Color : ");
                    stringBuilder.append(this.mSummaryColor);
                    Log.d(str, stringBuilder.toString());
                } else if (this.mChangedSummaryColorStateList) {
                    textView.setTextColor(this.mSummaryColorStateList);
                    str = TAG;
                    stringBuilder = new StringBuilder();
                    stringBuilder.append("set Summary ColorStateList : ");
                    stringBuilder.append(this.mSummaryColorStateList);
                    Log.d(str, stringBuilder.toString());
                } else if (this.mTextColorSecondary != null) {
                    textView.setTextColor(this.mTextColorSecondary);
                }
                textView.setVisibility(0);
            }
        }
        ImageView imageView = (ImageView) preferenceViewHolder.findViewById(16908294);
        if (imageView != null) {
            if (!((this.mIconResId == 0 && this.mIcon == null) || this.mIcon == null)) {
                imageView.setImageDrawable(this.mIcon);
            }
            if (this.mIcon != null) {
                imageView.setVisibility(0);
            } else {
                imageView.setVisibility(this.mIconSpaceReserved ? 4 : 8);
            }
        }
        View findViewById = preferenceViewHolder.findViewById(R.id.icon_frame);
        if (findViewById == null) {
            findViewById = preferenceViewHolder.findViewById(AndroidResources.ANDROID_R_ICON_FRAME);
        }
        if (findViewById != null) {
            if (this.mIcon != null) {
                findViewById.setVisibility(0);
            } else {
                if (this.mIconSpaceReserved) {
                    i = 4;
                }
                findViewById.setVisibility(i);
            }
        }
        if (this.mShouldDisableView) {
            setEnabledStateOnViews(preferenceViewHolder.itemView, isEnabled());
        } else {
            setEnabledStateOnViews(preferenceViewHolder.itemView, true);
        }
        boolean isSelectable = isSelectable();
        preferenceViewHolder.itemView.setFocusable(isSelectable);
        preferenceViewHolder.itemView.setClickable(isSelectable);
        preferenceViewHolder.setDividerAllowedAbove(this.mAllowDividerAbove);
        preferenceViewHolder.setDividerAllowedBelow(this.mAllowDividerBelow);
    }

    /* access modifiers changed from: protected */
    public void onClick() {
    }

    public void onDependencyChanged(Preference preference, boolean z) {
        if (this.mDependencyMet == z) {
            this.mDependencyMet = true;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void onDetached() {
        unregisterDependency();
        this.mWasDetached = true;
    }

    /* access modifiers changed from: protected */
    public Object onGetDefaultValue(TypedArray typedArray, int i) {
        return null;
    }

    @CallSuper
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfoCompat accessibilityNodeInfoCompat) {
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public boolean onKey(View view, int i, KeyEvent keyEvent) {
        return false;
    }

    public void onParentChanged(Preference preference, boolean z) {
        if (this.mParentDependencyMet == z) {
            this.mParentDependencyMet = true;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    /* access modifiers changed from: protected */
    public void onPrepareForRemoval() {
        unregisterDependency();
    }

    /* access modifiers changed from: protected */
    public void onRestoreInstanceState(Parcelable parcelable) {
        this.mBaseMethodCalled = true;
        if (parcelable != BaseSavedState.EMPTY_STATE && parcelable != null) {
            throw new IllegalArgumentException("Wrong state class -- expecting Preference State");
        }
    }

    /* access modifiers changed from: protected */
    public Parcelable onSaveInstanceState() {
        this.mBaseMethodCalled = true;
        return BaseSavedState.EMPTY_STATE;
    }

    /* access modifiers changed from: protected */
    public void onSetInitialValue(boolean z, Object obj) {
    }

    public Bundle peekExtras() {
        return this.mExtras;
    }

    @RestrictTo({Scope.LIBRARY_GROUP})
    public void performClick() {
        if (isEnabled()) {
            onClick();

        }
    }

    /* access modifiers changed from: protected */
    @RestrictTo({Scope.LIBRARY_GROUP})
    public void performClick(View view) {
        performClick();
    }

    /* access modifiers changed from: protected */
    public boolean persistBoolean(boolean z) {
        if (!shouldPersist()) {
            return false;
        }
        if (z == getPersistedBoolean(true)) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putBoolean(this.mKey, z);
        } else {
            Editor editor = this.mPreferenceManager.getEditor();
            editor.putBoolean(this.mKey, z);
            tryCommit(editor);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean persistFloat(float f) {
        if (!shouldPersist()) {
            return false;
        }
        if (f == getPersistedFloat(Float.NaN)) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putFloat(this.mKey, f);
        } else {
            Editor editor = this.mPreferenceManager.getEditor();
            editor.putFloat(this.mKey, f);
            tryCommit(editor);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean persistInt(int i) {
        if (!shouldPersist()) {
            return false;
        }
        if (i == getPersistedInt(~i)) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putInt(this.mKey, i);
        } else {
            Editor editor = this.mPreferenceManager.getEditor();
            editor.putInt(this.mKey, i);
            tryCommit(editor);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean persistLong(long j) {
        if (!shouldPersist()) {
            return false;
        }
        if (j == getPersistedLong(~j)) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putLong(this.mKey, j);
        } else {
            Editor editor = this.mPreferenceManager.getEditor();
            editor.putLong(this.mKey, j);
            tryCommit(editor);
        }
        return true;
    }

    /* access modifiers changed from: protected */
    public boolean persistString(String str) {
        if (!shouldPersist()) {
            return false;
        }
        if (TextUtils.equals(str, getPersistedString(null))) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putString(this.mKey, str);
        } else {
            Editor editor = this.mPreferenceManager.getEditor();
            editor.putString(this.mKey, str);
            tryCommit(editor);
        }
        return true;
    }

    public boolean persistStringSet(Set<String> set) {
        if (!shouldPersist()) {
            return false;
        }
        if (set.equals(getPersistedStringSet(null))) {
            return true;
        }
        PreferenceDataStore preferenceDataStore = getPreferenceDataStore();
        if (preferenceDataStore != null) {
            preferenceDataStore.putStringSet(this.mKey, set);
        } else {
            Editor editor = this.mPreferenceManager.getEditor();
            editor.putStringSet(this.mKey, set);
            tryCommit(editor);
        }
        return true;
    }

    /* access modifiers changed from: 0000 */
    public void requireKey() {
        if (TextUtils.isEmpty(this.mKey)) {
            throw new IllegalStateException("Preference does not have a key assigned.");
        }
        this.mRequiresKey = true;
    }

    public void restoreHierarchyState(Bundle bundle) {
        dispatchRestoreInstanceState(bundle);
    }

    public void saveHierarchyState(Bundle bundle) {
        dispatchSaveInstanceState(bundle);
    }

    public void seslSetRoundedBg(int i) {
        this.mIsPreferenceRoundedBg = true;
        this.mWhere = i;
        this.mSubheaderRound = false;
        this.mIsRoundChanged = true;
    }

    public void seslSetSubheaderColor(@ColorInt int i) {
        this.mSubheaderColor = i;
    }

    public void seslSetSubheaderRoundedBg(int i) {
        this.mIsPreferenceRoundedBg = true;
        this.mWhere = i;
        this.mSubheaderRound = true;
        this.mIsRoundChanged = true;
    }

    public void seslSetSummaryColor(@ColorInt int i) {
        this.mSummaryColor = i;
        this.mChangedSummaryColor = true;
        this.mChangedSummaryColorStateList = false;
    }

    public void seslSetSummaryColor(ColorStateList colorStateList) {
        this.mSummaryColorStateList = colorStateList;
        this.mChangedSummaryColorStateList = true;
        this.mChangedSummaryColor = false;
    }

    public void setDefaultValue(Object obj) {
        this.mDefaultValue = obj;
    }

    public void setDependency(String str) {
        unregisterDependency();
        this.mDependencyKey = str;
        registerDependency();
    }

    public void setEnabled(boolean z) {
        if (this.mEnabled != z) {
            this.mEnabled = z;
            notifyDependencyChange(shouldDisableDependents());
            notifyChanged();
        }
    }

    public void setFragment(String str) {
        this.mFragment = str;
    }

    public void setIcon(int i) {
        setIcon(ContextCompat.getDrawable(this.mContext, i));
        this.mIconResId = i;
    }

    public void setIcon(Drawable drawable) {
        if ((drawable == null && this.mIcon != null) || (drawable != null && this.mIcon != drawable)) {
            this.mIcon = drawable;
            this.mIconResId = 0;
            notifyChanged();
        }
    }

    public void setIconSpaceReserved(boolean z) {
        this.mIconSpaceReserved = z;
        notifyChanged();
    }

    public void setIntent(Intent intent) {
        this.mIntent = intent;
    }

    public void setKey(String str) {
        this.mKey = str;
        if (this.mRequiresKey && !hasKey()) {
            requireKey();
        }
    }

    public void setLayoutResource(int i) {
        this.mLayoutResId = i;
    }

    /* access modifiers changed from: final */
    public final void setOnPreferenceChangeInternalListener(OnPreferenceChangeInternalListener onPreferenceChangeInternalListener) {
        this.mListener = onPreferenceChangeInternalListener;
    }

    public void setOnPreferenceChangeListener(OnPreferenceChangeListener onPreferenceChangeListener) {
        this.mOnChangeListener = onPreferenceChangeListener;
    }

    public void setOnPreferenceClickListener(OnPreferenceClickListener onPreferenceClickListener) {
        this.mOnClickListener = onPreferenceClickListener;
    }

    public void setOrder(int i) {
        if (i != this.mOrder) {
            this.mOrder = i;
            notifyHierarchyChanged();
        }
    }

    public void setPersistent(boolean z) {
        this.mPersistent = z;
    }

    public void setPreferenceDataStore(PreferenceDataStore preferenceDataStore) {
        this.mPreferenceDataStore = preferenceDataStore;
    }

    public void setSelectable(boolean z) {
        if (this.mSelectable != z) {
            this.mSelectable = z;
            notifyChanged();
        }
    }

    public void setShouldDisableView(boolean z) {
        this.mShouldDisableView = z;
        notifyChanged();
    }

    public void setSingleLineTitle(boolean z) {
        this.mHasSingleLineTitleAttr = true;
        this.mSingleLineTitle = z;
    }

    public void setSummary(int i) {
        setSummary(this.mContext.getString(i));
    }

    public void setSummary(CharSequence charSequence) {
        if ((charSequence == null && this.mSummary != null) || (charSequence != null && !charSequence.equals(this.mSummary))) {
            this.mSummary = charSequence;
            notifyChanged();
        }
    }

    public void setTitle(int i) {
        setTitle(this.mContext.getString(i));
    }

    public void setTitle(CharSequence charSequence) {
        if ((charSequence == null && this.mTitle != null) || (charSequence != null && !charSequence.equals(this.mTitle))) {
            this.mTitle = charSequence;
            notifyChanged();
        }
    }

    public void setViewId(int i) {
        this.mViewId = i;
    }

    public final void setVisible(boolean z) {
        if (this.mVisible != z) {
            this.mVisible = z;
            if (this.mListener != null) {

            }
        }
    }

    public void setWidgetLayoutResource(int i) {
        this.mWidgetLayoutResId = i;
    }

    public boolean shouldDisableDependents() {
        return isEnabled();
    }

    /* access modifiers changed from: protected */
    public boolean shouldPersist() {
        return this.mPreferenceManager != null && isPersistent() && hasKey();
    }

    public String toString() {
        return getFilterableStringBuilder().toString();
    }

    public final boolean wasDetached() {
        return this.mWasDetached;
    }
}
