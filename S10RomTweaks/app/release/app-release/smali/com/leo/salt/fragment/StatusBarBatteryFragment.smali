.class public Lcom/leo/salt/fragment/StatusBarBatteryFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "StatusBarBatteryFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final BATTERY:Ljava/lang/String; = "leo_salt_statusbar_battery"

.field private static final END_PADDING:Ljava/lang/String; = "leo_salt_statusbar_battery_end_padding"

.field private static final SIZE:Ljava/lang/String; = "leo_salt_statusbar_battery_size"

.field private static final START_PADDING:Ljava/lang/String; = "leo_salt_statusbar_battery_start_padding"

.field private static final Style:Ljava/lang/String; = "leo_salt_statusbar_battery_style"

.field private static final TEXTSIZE:Ljava/lang/String; = "leo_salt_statusbar_battery_text_size"


# instance fields
.field private Batterybar:Landroid/preference/Preference;

.field private mBattcolor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field private mBatteryStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

.field private mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mTetx:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mTetxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private setDateOptions()V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "leo_salt_statusbar_battery_style"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBattcolor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBattcolor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBattcolor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setEnabled(Z)V

    :cond_2
    :goto_0
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
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    const-string v0, "statusbar_battery_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "batt_color"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBattcolor:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

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

    const-string v0, "PercentSize"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mTetxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v0, "leo_salt_statusbar_battery_text_size"

    const/16 v1, 0xf

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mTetxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mTetxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

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

    move-result v1

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, v1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "bar"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batterybar:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->Batterybar:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "grid_battery_bar"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string v1, "batteryStyle"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBatteryStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const/4 v1, 0x0

    const-string v2, "leo_salt_statusbar_battery_style"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBatteryStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBatteryStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBatteryStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "Percentenabled"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mTetx:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "display_battery_percentage"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mTetx:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mTetx:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->setDateOptions()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBatteryStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    const-string p1, "leo_salt_statusbar_battery_style"

    const-string v0, "1"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "batterykey"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/leo/salt/tweaks/view/BatteryPicker;

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBatteryStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mBatteryStyle:Lcom/leo/salt/preference/SaltSettingDefaultListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingDefaultListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->setDateOptions()V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_battery_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mTetxSize:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_battery_text_size"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mStartPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_battery_start_padding"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_4
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mEndPadding:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "leo_salt_statusbar_battery_end_padding"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_5
    iget-object v1, p0, Lcom/leo/salt/fragment/StatusBarBatteryFragment;->mTetx:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "display_battery_percentage"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_6
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
