.class public Lcom/leo/salt/fragment/PowerMeunbgFragment;
.super Lcom/leo/salt/base/BasePreferenceFragment;
.source "PowerMeunbgFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "LeoRom"


# instance fields
.field private mPowerMeun:Lcom/leo/salt/preference/MyPreference;

.field private mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/base/BasePreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/leo/salt/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mContext:Landroid/content/Context;

    const-string v0, "power_meun_bg_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/PowerMeunbgFragment;->BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMeunbgFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "leo_tweaks_power_meun_items"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PowerMeunbgFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/MyPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeun:Lcom/leo/salt/preference/MyPreference;

    const-string v0, "leo_tweaks_power_bg_style"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/PowerMeunbgFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/preference/MyListPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;

    const-string v0, "leo_tweaks_power_bg_style"

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/MyListPreference;->setValue(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/MyListPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMeunbgFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/base/BaseActivity;

    iput-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/MyListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPause()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onPause()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMeunbgFragment;->onPauseFragment()V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMeunbgFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "LeoRom"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange----->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;

    if-ne p1, v1, :cond_2

    const-string p1, "666"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->intentFragment:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->intentFragment:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->PowerWallpaperPicker:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->intentFragment:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    const-string p1, "999"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/activity/SubActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->intentFragment:Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->intentFragment:Landroid/content/Intent;

    sget-object v1, Lcom/leo/salt/activity/SubActivity;->Companion:Lcom/leo/salt/activity/SubActivity$Companion;

    invoke-virtual {v1}, Lcom/leo/salt/activity/SubActivity$Companion;->getKEY_TYPE()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/leo/salt/activity/SubActivity$FragmentType;->PowerWallpaperPicker:Lcom/leo/salt/activity/SubActivity$FragmentType;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->intentFragment:Landroid/content/Intent;

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {v1, p2}, Lcom/leo/salt/preference/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p2

    const-string v1, "leo_tweaks_power_bg_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p1, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;

    invoke-virtual {p1}, Lcom/leo/salt/preference/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_2
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    const-string v0, "LeoRom"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick preference = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeunBackground:Lcom/leo/salt/preference/MyListPreference;

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/PowerMeunbgFragment;->mPowerMeun:Lcom/leo/salt/preference/MyPreference;

    if-ne p2, v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const-string v0, "LeoRom"

    const-string v1, "onPreferenceTreeClick preference invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-super {p0, p1, p2}, Lcom/leo/salt/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/PowerMeunbgFragment;->onResumeFragment()V

    return-void
.end method