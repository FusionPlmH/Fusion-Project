.class public Lcom/leo/salt/fragment/KeyguardDetailFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "KeyguardDetailFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mBiometricsKEY:Ljava/lang/String;

.field private mDynamiclock:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mKeyguardBiometrics:Landroid/preference/SwitchPreference;

.field private mKeyguardLunar:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mKeyguardRotation:Landroid/preference/SwitchPreference;

.field private mKeyguardRotationKEY:Ljava/lang/String;

.field private mKeyguardStatusbar:Landroid/preference/SwitchPreference;

.field private mKeyguardStatusbarKEY:Ljava/lang/String;

.field private mSaltSettingCategoryPreference:Lcom/leo/salt/preference/SaltSettingCategoryPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const-string v0, "keyguard_biometrics_unlock"

    iput-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mBiometricsKEY:Ljava/lang/String;

    const-string v0, "leo_salt_keyguard_statusbar_view"

    iput-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardStatusbarKEY:Ljava/lang/String;

    const-string v0, "notification_multi_window_peace"

    iput-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardRotationKEY:Ljava/lang/String;

    return-void
.end method

.method private getSettingValue()I
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "notification_freeform_menuitem"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method private writePreferences(I)V
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    const-string v1, "notification_multi_window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "notification_freeform_menuitem"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public appNameIcon(Lcom/leo/salt/preference/SaltSettingPreference;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "magazine_dialog_notifer_message1"

    invoke-static {p2, v0}, Lcom/leo/salt/fragment/SystemFragment;->getDynamiclockStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disableKeyguardLunar()V
    .locals 2

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->ChineseCSC()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mSaltSettingCategoryPreference:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mSaltSettingCategoryPreference:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method public disablePreferences()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "wake_Biometrics"

    const-string v2, "keyguard_statusbar"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

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

.method public isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    const-string v0, "keyguard_detail_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    const-string p1, "wake_Biometrics"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardBiometrics:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mBiometricsKEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardBiometrics:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardBiometrics:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "keyguard_statusbar"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardStatusbar:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardStatusbarKEY:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardStatusbar:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardStatusbar:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "dynamiclock"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mDynamiclock:Lcom/leo/salt/preference/SaltSettingPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mDynamiclock:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string v0, "com.samsung.android.dynamiclock"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->appNameIcon(Lcom/leo/salt/preference/SaltSettingPreference;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->disablePreferences()V

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mDynamiclock:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mDynamiclock:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_2
    const-string p1, "KeyguardLunar"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardLunar:Lcom/leo/salt/preference/SaltSettingPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardLunar:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string v0, "lock_lunar"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/leo/salt/preference/SaltSettingPreference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "CNKeyguardLunar"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mSaltSettingCategoryPreference:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mSaltSettingCategoryPreference:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getApksStringInt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingCategoryPreference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->disableKeyguardLunar()V

    const-string p1, "allow_rotation"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardRotation:Landroid/preference/SwitchPreference;

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardRotation:Landroid/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getSettingValue()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    invoke-virtual {p1, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/KeyguardDetailFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardBiometrics:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mBiometricsKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardStatusbar:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardStatusbarKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardRotation:Landroid/preference/SwitchPreference;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0x8

    :goto_0
    const-string p1, "notification_freeform_menuitem"

    invoke-static {p2, p1, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_3
    return v1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mDynamiclock:Lcom/leo/salt/preference/SaltSettingPreference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "dynamic.intent.action.SETTINGS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mKeyguardLunar:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/leo/salt/fragment/KeyguardDetailFragment;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->Locklunar:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-static {p1, p2}, Lcom/leo/salt/utils/PrefUtils;->SubMenuService(Landroid/content/Context;Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;)V

    return v1

    :cond_1
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onResume()V

    return-void
.end method
