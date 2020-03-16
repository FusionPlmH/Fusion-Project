.class public Lcom/leo/salt/preference/SaltSettingSystemSwitchPreference;
.super Landroid/preference/SwitchPreference;
.source "SaltSettingSystemSwitchPreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/leo/salt/preference/preflib/SystemSettingsStore;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/leo/salt/preference/preflib/SystemSettingsStore;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, v0}, Lcom/leo/salt/preference/SaltSettingSystemSwitchPreference;->setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Lcom/leo/salt/preference/preflib/SystemSettingsStore;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/leo/salt/preference/preflib/SystemSettingsStore;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingSystemSwitchPreference;->setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/leo/salt/preference/preflib/SystemSettingsStore;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/leo/salt/preference/preflib/SystemSettingsStore;-><init>(Landroid/content/ContentResolver;)V

    invoke-virtual {p0, p2}, Lcom/leo/salt/preference/SaltSettingSystemSwitchPreference;->setPreferenceDataStore(Landroid/preference/PreferenceDataStore;)V

    return-void
.end method


# virtual methods
.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingSystemSwitchPreference;->getPersistedBoolean(Z)Z

    move-result p1

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    :goto_0
    invoke-virtual {p0, p1}, Lcom/leo/salt/preference/SaltSettingSystemSwitchPreference;->setChecked(Z)V

    return-void
.end method
