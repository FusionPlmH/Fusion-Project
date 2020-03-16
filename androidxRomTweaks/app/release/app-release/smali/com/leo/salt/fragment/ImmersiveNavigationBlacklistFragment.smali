.class public Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "ImmersiveNavigationBlacklistFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DIALOG_BLACKLIST_APPS:I = 0x1

.field private static final KEY_BLACKLIST:Ljava/lang/String; = "add_nav_blacklist_packages"

.field private static final TAG:Ljava/lang/String; = "Blacklist"


# instance fields
.field protected mAddBlacklistPref:Landroid/preference/Preference;

.field protected mBlacklistPackageList:Ljava/lang/String;

.field protected mBlacklistPackageStore:Ljava/lang/String;

.field protected mBlacklistPackages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;",
            ">;"
        }
    .end annotation
.end field

.field protected mBlacklistPrefList:Landroid/preference/PreferenceGroup;

.field protected mPackageAdapter:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$showDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-interface {p0}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method


# virtual methods
.method protected addCustomApplicationPref(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;

    if-nez v0, :cond_0

    new-instance v0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;

    invoke-direct {v0, p1}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->savePackageList(ZLjava/util/Map;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->refreshCustomApplicationPrefs()V

    :cond_0
    return-void
.end method

.method protected createPreferenceFromInfo(Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;)Landroid/preference/Preference;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v1, p1, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;->name:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    new-instance v1, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    iget-object p1, p1, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setKey(Ljava/lang/String;)V

    iget-object p1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    iget-object v2, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    and-int/lit8 p1, p1, 0x1

    if-gtz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mContext:Landroid/content/Context;

    const-string v2, "use_apps"

    invoke-static {p1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mContext:Landroid/content/Context;

    const-string v2, "system_apps"

    invoke-static {p1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object p1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setPersistent(Z)V

    invoke-virtual {v1, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-object v1
.end method

.method protected initializeAllPreferences()V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mContext:Landroid/content/Context;

    const-string v1, "immersive_nav_whitelist_prefs"

    invoke-virtual {p0, v0, p0, v1}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    const-string v0, "leo_salt_hidenavigation_whitelist"

    iput-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackageStore:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mPackageAdapter:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackages:Ljava/util/Map;

    const-string v0, "add_nav_blacklist_packages"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mAddBlacklistPref:Landroid/preference/Preference;

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mAddBlacklistPref:Landroid/preference/Preference;

    invoke-virtual {v0, p0}, Landroid/preference/Preference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public synthetic lambda$onPreferenceClick$2$ImmersiveNavigationBlacklistFragment(Landroid/preference/Preference;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackages:Ljava/util/Map;

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->removeApplicationPref(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public synthetic lambda$showDialog$0$ImmersiveNavigationBlacklistFragment(Landroid/app/Dialog;Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    invoke-virtual {p2, p4}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;

    iget-object p2, p2, Lcom/leo/salt/tweaks/view/widget/PackageListAdapter$PackageItem;->packageName:Ljava/lang/String;

    iget-object p3, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackages:Ljava/util/Map;

    invoke-virtual {p0, p2, p3}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->addCustomApplicationPref(Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->cancel()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->initializeAllPreferences()V

    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mAddBlacklistPref:Landroid/preference/Preference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->showDialog(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mContext:Landroid/content/Context;

    const-string v3, "delete_app_blacklist_title"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v2, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mContext:Landroid/content/Context;

    const-string v3, "delete_app_blacklist_message"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$f0AfCAYvB9smzBpPigYueohrdPA;

    invoke-direct {v3, p0, p1}, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$f0AfCAYvB9smzBpPigYueohrdPA;-><init>(Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;Landroid/preference/Preference;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->refreshCustomApplicationPrefs()V

    return-void
.end method

.method protected parseAndAddToMap(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, ",-"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;->fromString(Ljava/lang/String;)Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;

    move-result-object v2

    iget-object v3, v2, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;->name:Ljava/lang/String;

    invoke-interface {p2, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected parsePackageList()Z
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackageStore:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackageList:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackageList:Ljava/lang/String;

    iget-object v1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackages:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    iget-object v1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackages:Ljava/util/Map;

    invoke-virtual {p0, v0, v1}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->parseAndAddToMap(Ljava/lang/String;Ljava/util/Map;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected refreshCustomApplicationPrefs()V
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->parsePackageList()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/preference/PreferenceGroup;->removeAll()V

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->createPreferenceFromInfo(Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;)Landroid/preference/Preference;

    move-result-object v1

    iget-object v2, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mAddBlacklistPref:Landroid/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setOrder(I)V

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPrefList:Landroid/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mAddBlacklistPref:Landroid/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    return-void
.end method

.method protected removeApplicationPref(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->savePackageList(ZLjava/util/Map;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->refreshCustomApplicationPrefs()V

    :cond_0
    return-void
.end method

.method protected savePackageList(ZLjava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;

    invoke-virtual {v1}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment$Package;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string p2, ",-"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p2

    if-eqz p1, :cond_1

    iput-object p2, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackageList:Ljava/lang/String;

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mBlacklistPackageStore:Ljava/lang/String;

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method protected showDialog(I)V
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mPackageAdapter:Lcom/leo/salt/tweaks/view/widget/PackageListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mContext:Landroid/content/Context;

    const-string v2, "select_app_blacklist_title"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    new-instance v1, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$WyOgrk8xz0Vj0XiPcTpKi2XLP5M;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$WyOgrk8xz0Vj0XiPcTpKi2XLP5M;-><init>(Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    move-object v0, p1

    check-cast v0, Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/leo/salt/fragment/ImmersiveNavigationBlacklistFragment;->mContext:Landroid/content/Context;

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$A2qnTGcPYo4PTAH98MXxkxehe2A;->INSTANCE:Lcom/leo/salt/fragment/-$$Lambda$ImmersiveNavigationBlacklistFragment$A2qnTGcPYo4PTAH98MXxkxehe2A;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_0
    return-void
.end method
