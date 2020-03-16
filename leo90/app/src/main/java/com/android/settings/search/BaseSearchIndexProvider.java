package com.android.settings.search;

import android.content.Context;
import android.content.res.XmlResourceParser;

import com.android.settings.search.Indexable.SearchIndexProvider;
import com.android.settingslib.core.AbstractPreferenceController;

import java.util.ArrayList;
import java.util.List;

public class BaseSearchIndexProvider implements SearchIndexProvider {
    private List<String> getNonIndexableKeysFromXml(Context context) {


        return null;
    }

    public List<AbstractPreferenceController> createPreferenceControllers(Context context) {
        return null;
    }

    public List<String> getNonIndexableKeys(Context context) {
        if (!isPageSearchEnabled(context)) {
            return getNonIndexableKeysFromXml(context);
        }
        List<AbstractPreferenceController> preferenceControllers = getPreferenceControllers(context);
        if (preferenceControllers == null || preferenceControllers.isEmpty()) {
            return new ArrayList();
        }
        ArrayList arrayList = new ArrayList();
        for (AbstractPreferenceController abstractPreferenceController : preferenceControllers) {

        }
        return arrayList;
    }

    @Override
    public List<SearchIndexableRaw> getRawDataToIndex(Context context, boolean z) {
        return null;
    }

    @Override
    public List<SearchIndexableRaw> getXmlResourcesToIndex(Context context, boolean z) {
        return null;
    }


    public List<String> getNonIndexableKeysFromXml(Context context, int i) {
        ArrayList arrayList = new ArrayList();
        XmlResourceParser xml = context.getResources().getXml(i);

        return arrayList;
    }

    public List<AbstractPreferenceController> getPreferenceControllers(Context context) {

        return null;
    }


    /* access modifiers changed from: protected */
    public boolean isPageSearchEnabled(Context context) {
        return true;
    }
}
