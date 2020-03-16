.class public Lcom/leo/salt/preference/SaltSettingSeekBarPreference;
.super Lcom/leo/salt/preference/SeekBarPreferenceCham;
.source "SaltSettingSeekBarPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/leo/salt/preference/SeekBarPreferenceCham;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/leo/salt/preference/SystemSettingsStore;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/leo/salt/preference/SystemSettingsStore;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/leo/salt/preference/SeekBarPreferenceCham;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/leo/salt/preference/SystemSettingsStore;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/leo/salt/preference/SystemSettingsStore;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/leo/salt/preference/SeekBarPreferenceCham;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/leo/salt/preference/SystemSettingsStore;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/leo/salt/preference/SystemSettingsStore;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V

    return-void
.end method
