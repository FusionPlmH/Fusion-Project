.class public Lcom/leo/salt/fragment/SettingsFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final PREF_LEO_LAUNCHER:Ljava/lang/String; = "leo_tools_launcher_enabled"


# instance fields
.field private mCheckAPKS:Landroid/preference/SwitchPreference;

.field private mCheckOTA:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

.field private mLauncher:Landroid/preference/SwitchPreference;

.field private mLauncherComponent:Landroid/content/ComponentName;

.field private mLinKing:Landroid/preference/SwitchPreference;

.field private mRicture:Landroid/preference/Preference;

.field public mRictureKey:Ljava/lang/String;

.field private mShortcut:Landroid/preference/Preference;

.field public mShortcutKey:Ljava/lang/String;

.field private mWeather:Landroid/preference/SwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const-string v0, "leo_shortcut"

    iput-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mShortcutKey:Ljava/lang/String;

    const-string v0, "leo_salt_ricture"

    iput-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mRictureKey:Ljava/lang/String;

    return-void
.end method

.method private setAeLauncherEnabled(Z)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncherComponent:Landroid/content/ComponentName;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    invoke-virtual {v0, v1, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const v0, 0x7f100056

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v0, 0x7f10006d

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->showSnack(Ljava/lang/String;)V

    return-void
.end method

.method private setota()V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/utils/PrefUtils;->ota(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/leo/salt/fragment/-$$Lambda$SettingsFragment$jiIhrATPcbuGHrvFjFoSdJSfxcE;

    invoke-direct {v1, p0}, Lcom/leo/salt/fragment/-$$Lambda$SettingsFragment$jiIhrATPcbuGHrvFjFoSdJSfxcE;-><init>(Lcom/leo/salt/fragment/SettingsFragment;)V

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public LinKing()V
    .locals 2

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->ChineseCSC()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mWeather:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLinKing:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLinKing:Landroid/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLinKing:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLinKing:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mWeather:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public disablePreferences()V
    .locals 6

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "leo_tools_launcher_enabled"

    const-string v2, "network_check"

    const-string v3, "checkuapkspdates"

    const-string v4, "checkupdates"

    const-string v5, "leo_shortcut"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$setota$0$SettingsFragment()V
    .locals 1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->checkOTAinfo(Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mContext:Landroid/content/Context;

    const-class v2, Lcom/leo/salt/tweaks/SplashActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncherComponent:Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "prefe_app_setting"

    invoke-virtual {p0, v0, p0, v1}, Lcom/leo/salt/fragment/SettingsFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "checkupdates"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckOTA:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckOTA:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v2, 0x0

    const-string v3, "leo_salt_checkupdates_rom"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1, v3}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckOTA:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    invoke-virtual {v1, p0}, Lcom/leo/salt/preference/SaltSettingSwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string v1, "checkuapkspdates"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckAPKS:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckAPKS:Landroid/preference/SwitchPreference;

    const-string v3, "leo_apks_check_info"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v4, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckAPKS:Landroid/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckAPKS:Landroid/preference/SwitchPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f100056

    invoke-static {v5}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u4e3b\u52a8\u66f4\u65b0\u68c0\u6d4b\u670d\u52a1"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckAPKS:Landroid/preference/SwitchPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\u542f\u7528\u4e3b\u52a8\u68c0\u6d4b\u670d\u52a1\u5f53"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u6709\u53ef\u7528\u66f4\u65b0\u7684\u65f6\u5019\u5c06\u4f1a\u81ea\u52a8\u5f39\u51fa\u63d0\u793a\u5bf9\u8bdd\u6846,\u76f8\u53cd\u4f60\u9700\u8981\u624b\u52a8\u70b9\u51fb\u9996\u9875\u5e95\u90e8\u7684"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\u9879\u76ee\u88ab\u52a8\u68c0\u6d4b"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mShortcutKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mShortcut:Landroid/preference/Preference;

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mRictureKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mRicture:Landroid/preference/Preference;

    const-string v1, "leo_tools_launcher_enabled"

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/SwitchPreference;

    iput-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Landroid/preference/SwitchPreference;

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Landroid/preference/SwitchPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v6, 0x7f10006c

    invoke-virtual {p0, v6}, Lcom/leo/salt/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/leo/salt/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " Logo"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Landroid/preference/SwitchPreference;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const v7, 0x7f10006b

    invoke-virtual {p0, v7}, Lcom/leo/salt/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Lcom/leo/salt/fragment/SettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Landroid/preference/SwitchPreference;

    iget-object v3, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncherComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v3}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p1

    const/4 v3, 0x2

    if-eq p1, v3, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v1, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "checkuaweatherpkspdates"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mWeather:Landroid/preference/SwitchPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mWeather:Landroid/preference/SwitchPreference;

    const-string v1, "leo_home_weather_info"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v4, :cond_3

    const/4 v1, 0x1

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    :goto_3
    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mWeather:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "checkuaweatherpkspdatdfdses"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLinKing:Landroid/preference/SwitchPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLinKing:Landroid/preference/SwitchPreference;

    const-string v1, "leo_home_linking_info"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v4, :cond_4

    const/4 v2, 0x1

    :cond_4
    invoke-virtual {p1, v2}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLinKing:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->LinKing()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->disablePreferences()V

    :cond_5
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckOTA:Lcom/leo/salt/preference/SaltSettingSwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_salt_checkupdates_rom"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/SettingsFragment;->setota()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mCheckAPKS:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_apks_check_info"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0}, Lcom/leo/salt/fragment/SettingsFragment;->setota()V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mWeather:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_home_weather_info"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->LinKing()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLinKing:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "leo_home_linking_info"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->LinKing()V

    return v1

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mLauncher:Landroid/preference/SwitchPreference;

    if-ne p1, v0, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/SettingsFragment;->setAeLauncherEnabled(Z)V

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mShortcut:Landroid/preference/Preference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/tweaks/view/widget/DialogView;->Shortcut(Landroid/content/Context;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SettingsFragment;->mRicture:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
