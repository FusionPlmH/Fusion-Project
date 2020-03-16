.class public Lcom/leo/salt/fragment/StatusBarBatteryFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "StatusBarBatteryFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BATTERY:Ljava/lang/String; = "leo_salt_statusbar_battery"

.field private static final END_PADDING:Ljava/lang/String; = "leo_salt_statusbar_battery_end_padding"

.field private static final LOW:Ljava/lang/String; = "leo_salt_statusbar_battery_low_style"

.field private static final SIZE:Ljava/lang/String; = "leo_salt_statusbar_battery_size"

.field private static final START_PADDING:Ljava/lang/String; = "leo_salt_statusbar_battery_start_padding"


# instance fields
.field private Batterybar:Landroid/preference/Preference;

.field private mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mLow:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    const-string v0, "statusbar_battery_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "size"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_statusbar_battery_size"

    const/16 v1, 0x3c

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "start_padding"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/4 v0, 0x1

    const-string v1, "leo_salt_statusbar_battery_start_padding"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "end_padding"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v1, "leo_salt_statusbar_battery_end_padding"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v0, "low"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mLow:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_statusbar_battery_low_style"

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mLow:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mLow:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "bar"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batterybar:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batterybar:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "grid_battery_bar"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_battery_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_battery_start_padding"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_battery_end_padding"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mLow:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_battery_low_style"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batterybar:Landroid/preference/Preference;

    if-ne p2, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    const-class v0, Lcom/leo/salt/tweaks/FragUIActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p2, Lcom/leo/salt/tweaks/FragUIActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;->BatteryBar:Lcom/leo/salt/tweaks/FragUIActivity$FragmentType;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->startActivity(Landroid/content/Intent;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
