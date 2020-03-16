package com.android.fusionleo.leoglobalactions.util;

import android.content.res.Resources;

public class ResourcesWrapper {
    Resources mResources;

    public ResourcesWrapper(Resources resources) {
        this.mResources = resources;
    }

    public String getString(int i) {
        return this.mResources.getString(i);
    }
}
