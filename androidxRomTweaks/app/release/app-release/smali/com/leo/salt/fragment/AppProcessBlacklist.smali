.class public Lcom/leo/salt/fragment/AppProcessBlacklist;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "AppProcessBlacklist.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final mBlacklistPackageStore:Ljava/lang/String; = "leo_salt_killer_white_list"


# instance fields
.field private mProcessBlacklist:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method private getProcessExcludedApps()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/fragment/AppProcessBlacklist;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "leo_salt_killer_white_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v1
.end method

.method private storeProcessExcludedApps(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-string v1, ""

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "|"

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/AppProcessBlacklist;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "leo_salt_killer_white_list"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

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
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/AppProcessBlacklist;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/leo/salt/fragment/AppProcessBlacklist;->mContext:Landroid/content/Context;

    const-string v0, "appprocess_whitelist_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/AppProcessBlacklist;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/AppProcessBlacklist;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "process_whitelist"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/AppProcessBlacklist;->mProcessBlacklist:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    invoke-direct {p0}, Lcom/leo/salt/fragment/AppProcessBlacklist;->getProcessExcludedApps()Ljava/util/Set;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/AppProcessBlacklist;->mProcessBlacklist:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->setValues(Ljava/util/Set;)V

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/AppProcessBlacklist;->mProcessBlacklist:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    invoke-virtual {p1, p0}, Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/fragment/AppProcessBlacklist;->mProcessBlacklist:Lcom/leo/salt/preference/SaltSettingAppMultiSelectListPreference;

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/util/Set;

    invoke-direct {p0, p2}, Lcom/leo/salt/fragment/AppProcessBlacklist;->storeProcessExcludedApps(Ljava/util/Set;)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
