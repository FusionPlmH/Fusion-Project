.class public Lcom/leo/salt/fragment/SystemSoundFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "SystemSoundFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final Capture:Ljava/lang/String; = "leo_tweaks_capture_screen_control"

.field private static final USB:Ljava/lang/String; = "leo_tweaks_usb_sounds_control"

.field private static final lock:Ljava/lang/String; = "leo_tweaks_lock_sounds_control"

.field private static final lowbattery:Ljava/lang/String; = "leo_tweaks_lowbattery_sounds_control"

.field private static final unlock:Ljava/lang/String; = "leo_tweaks_unlock_sounds_control"

.field private static final volume:Ljava/lang/String; = "leo_tweaks_volume_sounds_control"


# instance fields
.field private CaptureSounds:Landroid/preference/SwitchPreference;

.field private LockSounds:Landroid/preference/SwitchPreference;

.field private LowBatterySounds:Landroid/preference/SwitchPreference;

.field private UnlockSounds:Landroid/preference/SwitchPreference;

.field private VolumeSounds:Landroid/preference/SwitchPreference;

.field private mEnableListener:Z

.field private mPreferences:[Ljava/lang/String;

.field private mSystemSounds:[Landroid/preference/SwitchPreference;

.field public system_sounds_prefs:Ljava/lang/String;

.field private systemui:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const-string v0, "com.android.systemui"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->systemui:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mEnableListener:Z

    const-string v1, "leo_tweaks_usb_sounds_control"

    const-string v2, "leo_tweaks_volume_sounds_control"

    const-string v3, "leo_tweaks_lowbattery_sounds_control"

    const-string v4, "leo_tweaks_lock_sounds_control"

    const-string v5, "leo_tweaks_unlock_sounds_control"

    const-string v6, "leo_tweaks_capture_screen_control"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mPreferences:[Ljava/lang/String;

    const/4 v0, 0x6

    new-array v0, v0, [Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mSystemSounds:[Landroid/preference/SwitchPreference;

    const-string v0, "system_sounds_prefs"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->system_sounds_prefs:Ljava/lang/String;

    return-void
.end method

.method private RestartDialog(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->systemui:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemSoundFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, v1, p1}, Lcom/leo/salt/utils/PrefUtils;->showKillPackageDialog(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private fileExists(Ljava/lang/CharSequence;)Z
    .locals 3

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/system/media/audio/ui/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemSoundFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->system_sounds_prefs:Ljava/lang/String;

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/SystemSoundFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mSystemSounds:[Landroid/preference/SwitchPreference;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemSoundFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mPreferences:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    aput-object v1, v0, p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mSystemSounds:[Landroid/preference/SwitchPreference;

    aget-object v0, v0, p1

    invoke-virtual {v0, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mSystemSounds:[Landroid/preference/SwitchPreference;

    aget-object v1, v0, p1

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/leo/salt/fragment/SystemSoundFragment;->fileExists(Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mEnableListener:Z

    :cond_1
    const-string p1, "leo_tweaks_volume_sounds_control"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemSoundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->VolumeSounds:Landroid/preference/SwitchPreference;

    const-string p1, "leo_tweaks_lowbattery_sounds_control"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemSoundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->LowBatterySounds:Landroid/preference/SwitchPreference;

    const-string p1, "leo_tweaks_lock_sounds_control"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemSoundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->LockSounds:Landroid/preference/SwitchPreference;

    const-string p1, "leo_tweaks_unlock_sounds_control"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemSoundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->UnlockSounds:Landroid/preference/SwitchPreference;

    const-string p1, "leo_tweaks_capture_screen_control"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemSoundFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->CaptureSounds:Landroid/preference/SwitchPreference;

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafety()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcom/leo/salt/tweaks/resource/Resource;->safety:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mPreferences:[Ljava/lang/String;

    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->mEnableListener:Z

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemSoundFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "/system/media/audio/ui/"

    invoke-static {v3, v2}, Lcom/leo/salt/tweaks/resource/SuShell;->swapSounds(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceTreeClick preference = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LeoRom"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->VolumeSounds:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_0

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/fragment/SystemSoundFragment;->RestartDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->LowBatterySounds:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_1

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/fragment/SystemSoundFragment;->RestartDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->LockSounds:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_2

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/fragment/SystemSoundFragment;->RestartDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->UnlockSounds:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_3

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/fragment/SystemSoundFragment;->RestartDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemSoundFragment;->CaptureSounds:Landroid/preference/SwitchPreference;

    if-ne p2, v0, :cond_4

    invoke-virtual {v0}, Landroid/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/fragment/SystemSoundFragment;->RestartDialog(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const-string v0, "onPreferenceTreeClick preference invalid"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
