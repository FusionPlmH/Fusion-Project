.class public Lcom/leo/salt/fragment/KeyguardCarrierFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "KeyguardCarrierFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY:Ljava/lang/String; = "leo_salt_keyguard_carrier"

.field private static final KEY1:Ljava/lang/String; = "leo_salt_keyguard_carrier_symbol"

.field private static final KEY2:Ljava/lang/String; = "leo_salt_keyguard_carrier_size"


# instance fields
.field private mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public disablePreferences()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "keyguard_carrier_custom"

    const-string v2, "keyguard_carrier_custom_single_enabled"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mContext:Landroid/content/Context;

    const-string v0, "keyguard_carrier_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "keyguard_carrier_symbol"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const-string v0, "leo_salt_keyguard_carrier_symbol"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const-string v1, "keyguard_carrier"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string v2, "grid_keyguard_carrier"

    invoke-static {v2}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "keyguardcarriersize"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_keyguard_carrier_size"

    const/16 v1, 0xe

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->disablePreferences()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "14"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "leo_salt_keyguard_carrier_symbol_string"

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->EditTextDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v0, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "leo_salt_keyguard_carrier_symbol"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mClockDateWeekSymbol:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/KeyguardCarrierFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_keyguard_carrier_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method