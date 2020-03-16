package org.salt.preference;


import androidx.preference.Preference;

public interface ReverseDependencyMonitor {
    void registerReverseDependencyPreference(Preference preference);
}
