package com.android.settings.search;

import java.util.Collection;
import java.util.HashSet;
import java.util.Set;

public class SearchIndexableResourcesImpl implements SearchIndexableResources {
    private final Set<Class> sProviders = new HashSet();

    /* access modifiers changed from: 0000 */
    public void addIndex(Class cls) {
        this.sProviders.add(cls);
    }

    public Collection<Class> getProviderValues() {
        return this.sProviders;
    }
}
