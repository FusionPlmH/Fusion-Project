.class public Lcom/leo/salt/fragment/VolumeFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "VolumeFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static final mMusicDoubleSeekkey:Ljava/lang/String; = "timeout_dc_skip_tracks"

.field public static final mMusicDoubleSwitchkey:Ljava/lang/String; = "doble_click_skip_tracks"

.field public static final mMusicSeekkey:Ljava/lang/String; = "timeout_skip_tracks"

.field public static final mMusicSwitchkey:Ljava/lang/String; = "skip_tracks"

.field public static final mMusicVibrationSeekkey:Ljava/lang/String; = "skip_tracks_vibrate_level"

.field public static final mMusicVibrationSwitchkey:Ljava/lang/String; = "skip_tracks_vibrate"


# instance fields
.field private mMusicDoubleSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mMusicDoubleSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mMusicSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mMusicSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mMusicVibrationSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

.field private mMusicVibrationSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private hideUX(Z)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/VolumeFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mContext:Landroid/content/Context;

    const-string v1, "volume_prefs"

    invoke-virtual {p0, v0, p0, v1}, Lcom/leo/salt/fragment/VolumeFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    const-string v0, "MusicSwitch"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/VolumeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "skip_tracks"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v2, v4}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v2, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "MusicDoubleSwitch"

    invoke-virtual {p0, v2}, Lcom/leo/salt/fragment/VolumeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "doble_click_skip_tracks"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v4, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v2, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "MusicVibrationSwitch"

    invoke-virtual {p0, v2}, Lcom/leo/salt/fragment/VolumeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "skip_tracks_vibrate"

    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v4, v2}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v2, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "MusicSeek"

    invoke-virtual {p0, v2}, Lcom/leo/salt/fragment/VolumeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/16 v2, 0x1f4

    const-string v4, "timeout_skip_tracks"

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iget-object v5, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    div-int/2addr v4, v3

    invoke-virtual {v5, v4}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v4, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v4, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v4, "MusicDoubleSeek"

    invoke-virtual {p0, v4}, Lcom/leo/salt/fragment/VolumeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v4, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const-string v4, "timeout_dc_skip_tracks"

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iget-object v4, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    div-int/2addr v2, v3

    invoke-virtual {v4, v2}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {v2, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v2, "MusicVibrationSeek"

    invoke-virtual {p0, v2}, Lcom/leo/salt/fragment/VolumeFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    iput-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    const/16 v2, 0xf

    const-string v4, "skip_tracks_vibrate_level"

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v2, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    div-int/2addr p1, v3

    invoke-virtual {v2, p1}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setValue(I)V

    iget-object p1, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingSeekBarPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    invoke-direct {p0, v1}, Lcom/leo/salt/fragment/VolumeFragment;->hideUX(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "skip_tracks"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/VolumeFragment;->hideUX(Z)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "doble_click_skip_tracks"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSwitch:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    if-ne p1, v1, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/VolumeFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "skip_tracks_vibrate"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_2
    iget-object v1, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_3

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "timeout_skip_tracks"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicDoubleSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_4

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "timeout_dc_skip_tracks"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_4
    iget-object v1, p0, Lcom/leo/salt/fragment/VolumeFragment;->mMusicVibrationSeek:Lcom/leo/salt/preference/SaltSettingSeekBarPreference;

    if-ne p1, v1, :cond_5

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string p2, "skip_tracks_vibrate_level"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_5
    const/4 p1, 0x0

    return p1
.end method
