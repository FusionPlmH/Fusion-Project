package com.android.fusionleo.leoglobalactions.presentation.viewmodel;

import android.content.Intent;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

public interface ActionViewModel {

    default      boolean showBeforeProvisioning() {
        return false;
    }



    default String getText() {
        return null;
    }
    default  BitmapDrawable getIcon() {
        return null;
    }



    public enum ToggleState {
        on,
        off
    }

    ActionInfo getActionInfo();






}
