package com.android.systemui.plugins.qs;

import android.content.Context;
import android.graphics.drawable.Drawable;

import java.util.Objects;

public interface QSTile {
    public static final int VERSION = 1;


    public static class State {
        public static final int VERSION = 1;
        public CharSequence contentDescription;
        public boolean disabledByPolicy;
        public CharSequence dualLabelContentDescription;
        public boolean dualTarget = false;
        public String expandedAccessibilityClassName;
        public Icon icon;
        public boolean isCustomTile;
        public boolean isTransient = false;
        public CharSequence label;
        public int state = 2;
        public String tileClassName;

        public State copy() {
            State state = new State();
            copyTo(state);
            return state;
        }

        public boolean copyTo(State state) {
            if (state == null) {
                throw new IllegalArgumentException();
            } else if (state.getClass().equals(getClass())) {
              //  boolean equals = (Objects.equals(state.icon, this.icon) && (Objects.equals(state.label, this.label) ^ 1) == 0 && (Objects.equals(state.contentDescription, this.contentDescription) ^ 1) == 0 && (Objects.equals(state.dualLabelContentDescription, this.dualLabelContentDescription) ^ 1) == 0 && (Objects.equals(state.expandedAccessibilityClassName, this.expandedAccessibilityClassName) ^ 1) == 0 && (Objects.equals(Boolean.valueOf(state.disabledByPolicy), Boolean.valueOf(this.disabledByPolicy)) ^ 1) == 0 && (Objects.equals(Integer.valueOf(state.state), Integer.valueOf(this.state)) ^ 1) == 0 && (Objects.equals(Boolean.valueOf(state.isTransient), Boolean.valueOf(this.isTransient)) ^ 1) == 0) ? Objects.equals(Boolean.valueOf(state.dualTarget), Boolean.valueOf(this.dualTarget)) ^ 1 : true;
                state.icon = this.icon;
                state.label = this.label;
                state.contentDescription = this.contentDescription;
                state.dualLabelContentDescription = this.dualLabelContentDescription;
                state.expandedAccessibilityClassName = this.expandedAccessibilityClassName;
                state.disabledByPolicy = this.disabledByPolicy;
                state.state = this.state;
                state.dualTarget = this.dualTarget;
                state.isTransient = this.isTransient;
                state.isCustomTile = this.isCustomTile;
                state.tileClassName = this.tileClassName;
            //    return equals;
            } else {
                throw new IllegalArgumentException();
            }
            return false;
        }

        public String toString() {
            return toStringBuilder().toString();
        }

        protected StringBuilder toStringBuilder() {
            StringBuilder append = new StringBuilder(getClass().getSimpleName()).append('[');
            append.append(",icon=").append(this.icon);
            append.append(",label=").append(this.label);
            append.append(",contentDescription=").append(this.contentDescription);
            append.append(",dualLabelContentDescription=").append(this.dualLabelContentDescription);
            append.append(",expandedAccessibilityClassName=").append(this.expandedAccessibilityClassName);
            append.append(",disabledByPolicy=").append(this.disabledByPolicy);
            append.append(",dualTarget=").append(this.dualTarget);
            append.append(",isTransient=").append(this.isTransient);
            append.append(",state=").append(this.state);
            append.append(",isCustomTile=").append(this.isCustomTile);
            append.append(",tileClassName=").append(this.tileClassName);
            return append.append(']');
        }
    }


    public static class BooleanState extends State {
        public static final int VERSION = 1;
        public boolean value;

        public State copy() {
            State booleanState = new BooleanState();
            copyTo(booleanState);
            return booleanState;
        }

        public boolean copyTo(State state) {
            BooleanState booleanState = (BooleanState) state;
            boolean z = super.copyTo(state) || booleanState.value != this.value;
            booleanState.value = this.value;
            return z;
        }

        protected StringBuilder toStringBuilder() {
            StringBuilder toStringBuilder = super.toStringBuilder();
            toStringBuilder.insert(toStringBuilder.length() - 1, ",value=" + this.value);
            return toStringBuilder;
        }
    }


    public static class AirplaneBooleanState extends BooleanState {
        public static final int VERSION = 1;
        public boolean isAirplaneMode;

        public State copy() {
            State airplaneBooleanState = new AirplaneBooleanState();
            copyTo(airplaneBooleanState);
            return airplaneBooleanState;
        }

        public boolean copyTo(State state) {
            AirplaneBooleanState airplaneBooleanState = (AirplaneBooleanState) state;
            boolean z = super.copyTo(state) || airplaneBooleanState.isAirplaneMode != this.isAirplaneMode;
            airplaneBooleanState.isAirplaneMode = this.isAirplaneMode;
            return z;
        }
    }


    public interface Callback {
        public static final int VERSION = 1;

        void onAnnouncementRequested(CharSequence charSequence);

        void onScanStateChanged(boolean z);

        void onScrollToDetail(int i, int i2);

        void onShowDetail(boolean z);

        void onStateChanged(State state);

        void onToggleStateChanged(boolean z);

        void onUpdateDetail();
    }

    public static abstract class Icon {
        public static final int VERSION = 1;

        public abstract Drawable getDrawable(Context context);

        public Drawable getInvisibleDrawable(Context context) {
            return getDrawable(context);
        }

        public int getPadding() {
            return 0;
        }

        public int hashCode() {
            return Icon.class.hashCode();
        }
    }


    public static final class SignalState extends BooleanState {
        public static final int VERSION = 1;
        public boolean activityIn;
        public boolean activityOut;
        public boolean isOverlayIconWide;
        public int overlayIconId;

        public State copy() {
            State signalState = new SignalState();
            copyTo(signalState);
            return signalState;
        }

        public boolean copyTo(State state) {
            SignalState signalState = (SignalState) state;
            boolean z = (signalState.activityIn == this.activityIn && signalState.activityOut == this.activityOut && signalState.isOverlayIconWide == this.isOverlayIconWide) ? signalState.overlayIconId != this.overlayIconId : true;
            signalState.activityIn = this.activityIn;
            signalState.activityOut = this.activityOut;
            signalState.isOverlayIconWide = this.isOverlayIconWide;
            signalState.overlayIconId = this.overlayIconId;
            return !super.copyTo(state) ? z : true;
        }

        protected StringBuilder toStringBuilder() {
            StringBuilder toStringBuilder = super.toStringBuilder();
            toStringBuilder.insert(toStringBuilder.length() - 1, ",activityIn=" + this.activityIn);
            toStringBuilder.insert(toStringBuilder.length() - 1, ",activityOut=" + this.activityOut);
            return toStringBuilder;
        }
    }

    void addCallback(Callback callback);

    void clearState();

    void click();

    QSIconView createTileView(Context context);

    void destroy();


    int getMetricsCategory();

    State getState();

    CharSequence getTileLabel();

    String getTileSpec();

    boolean isAvailable();

    void longClick();



    void refreshState();

    void removeCallback(Callback callback);

    void removeCallbacks();

    void secondaryClick();

    void setDetailListening(boolean z);

    void setListening(Object obj, boolean z);

    void setTileSpec(String str);

    void userSwitch(int i);
}
