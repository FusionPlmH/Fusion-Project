.class public Lcom/leo/salt/fragment/SystemFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "SystemFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field public static KernelVersion:Ljava/lang/String;


# instance fields
.field public XML:Ljava/lang/String;

.field downloadDialog:Landroid/app/ProgressDialog;

.field private mAirplane:Landroid/preference/SwitchPreference;

.field private mAirplaneKEY:Ljava/lang/String;

.field private mBatteryLog:Landroid/preference/Preference;

.field private mBiometricsKEY:Ljava/lang/String;

.field private mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

.field private mDynamiclock:Landroid/preference/Preference;

.field private mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

.field private mGoogleServiceFreezeKEY:Ljava/lang/String;

.field private mKernelInstall:Landroid/preference/Preference;

.field private mKernelInstallKEY:Ljava/lang/String;

.field private mKeyguardBiometrics:Landroid/preference/SwitchPreference;

.field private mKeyguardStatusbar:Landroid/preference/SwitchPreference;

.field private mKeyguardStatusbarKEY:Ljava/lang/String;

.field private mSTK:Landroid/preference/SwitchPreference;

.field private mSTKKEY:Ljava/lang/String;

.field private mSimSdBlock:Landroid/preference/SwitchPreference;

.field private mUSB:Landroid/preference/SwitchPreference;

.field private mUninstallAPPS:Landroid/preference/Preference;

.field private mUninstallGoogleService:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const-string v0, "system_prefs"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->XML:Ljava/lang/String;

    const-string v0, "leo_instal_kernel"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mKernelInstallKEY:Ljava/lang/String;

    const-string v0, "leo_airplane"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplaneKEY:Ljava/lang/String;

    const-string v0, "leo_stk"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTKKEY:Ljava/lang/String;

    const-string v0, "leo_freeze_google_service"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreezeKEY:Ljava/lang/String;

    const-string v0, "keyguard_biometrics_unlock"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mBiometricsKEY:Ljava/lang/String;

    const-string v0, "leo_salt_keyguard_statusbar_view"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardStatusbarKEY:Ljava/lang/String;

    return-void
.end method

.method private Airplane(Z)V
    .locals 2

    const-string v0, "airplane_mode_radios"

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "cell,bluetooth,nfc,wimax"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "cell,bluetooth,wifi,nfc,wimax"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public static getDynamiclockStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "com.samsung.android.dynamiclock"

    invoke-static {p0, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getResourcesForPackage(Landroid/content/Context;Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object p0

    const-string v1, "string"

    invoke-virtual {p0, p1, v1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0, p1, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v0, "magazine_dialog_notifer_message1"

    invoke-static {p2, v0}, Lcom/leo/salt/fragment/SystemFragment;->getDynamiclockStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public disablePreferences()V
    .locals 6

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "wake_Biometrics"

    const-string v2, "keyguard_statusbar"

    const-string v3, "leo_google_remove"

    const-string v4, "SimSdBlock"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v5, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreezeKEY:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    iget-object v5, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreezeKEY:Ljava/lang/String;

    invoke-virtual {v0, v5}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public isAvilible(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->XML:Ljava/lang/String;

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/SystemFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    new-instance p1, Lcom/leo/salt/tools/DeleteApps;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/DeleteApps;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->downloadDialog:Landroid/app/ProgressDialog;

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mKernelInstallKEY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mKernelInstall:Landroid/preference/Preference;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "kernel_info"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android_versions"

    invoke-static {v0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mKernelInstall:Landroid/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplaneKEY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplane:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplaneKEY:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplane:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplane:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "SimSdBlock"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSimSdBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "LeoSimSdBlock"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mSimSdBlock:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSimSdBlock:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "wake_unplugged"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUSB:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "usb_wake_unplugged"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mUSB:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    :goto_2
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUSB:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTKKEY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTK:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTKKEY:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTK:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_3

    :cond_3
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTK:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreezeKEY:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreezeKEY:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "google_services"

    if-ne p1, v2, :cond_4

    iget-object v3, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "freeze_no"

    invoke-static {v0, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    iget-object v3, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "freeze_yes"

    invoke-static {v0, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    goto :goto_5

    :cond_5
    const/4 p1, 0x0

    :goto_5
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "leo_google_remove"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUninstallGoogleService:Landroid/preference/Preference;

    const-string p1, "com.google.android.gms"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUninstallGoogleService:Landroid/preference/Preference;

    const-string v0, "\u5378\u8f7d\u8c37\u6b4c\u670d\u52a1\u53ef\u4e3a\u7cfb\u7edf\u5206\u533a\u6362\u53d6\u66f4\u591a\u53ef\u7528\u7a7a\u95f4"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUninstallGoogleService:Landroid/preference/Preference;

    const-string v0, "\u8c37\u6b4c\u670d\u52a1\u5df2\u4ece\u7cfb\u7edf\u4e2d\u5378\u8f7d"

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_6
    const-string p1, "apps"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUninstallAPPS:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUninstallAPPS:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "recommend_uninstall_apps"

    invoke-static {v0, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p1, "leo_battery_log"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mBatteryLog:Landroid/preference/Preference;

    const-string p1, "wake_Biometrics"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardBiometrics:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mBiometricsKEY:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardBiometrics:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_7

    const/4 p1, 0x1

    goto :goto_7

    :cond_7
    const/4 p1, 0x0

    :goto_7
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardBiometrics:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "keyguard_statusbar"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/SwitchPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardStatusbar:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardStatusbarKEY:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardStatusbar:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardStatusbar:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "dynamiclock"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mDynamiclock:Landroid/preference/Preference;

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mDynamiclock:Landroid/preference/Preference;

    const-string v0, "com.samsung.android.dynamiclock"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemFragment;->appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_9

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->disablePreferences()V

    :cond_9
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplane:Landroid/preference/SwitchPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mAirplaneKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->Airplane(Z)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTK:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mSTKKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    invoke-virtual {p2, p1}, Lcom/leo/salt/tools/DeleteApps;->StkBoolean(Z)V

    return v2

    :cond_1
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_3

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreezeKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/leo/salt/tools/DeleteApps;->FreezeGoogleServices(Landroid/content/Context;Z)V

    const-string p2, "google_services"

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "freeze_no"

    invoke-static {p2, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "freeze_yes"

    invoke-static {p2, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return v2

    :cond_3
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mSimSdBlock:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_4

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "LeoSimSdBlock"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_4
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mUSB:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_5

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "usb_wake_unplugged"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_5
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardBiometrics:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_6

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mBiometricsKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_6
    iget-object v1, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardStatusbar:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_7

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mKeyguardStatusbarKEY:Ljava/lang/String;

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return v2

    :cond_7
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mKernelInstall:Landroid/preference/Preference;

    const/high16 v1, 0x10000000

    const/4 v2, 0x1

    if-ne p2, v0, :cond_0

    :try_start_0
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "com.leo.fusionleo_kernel"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    const-string p2, "\u7f3a\u5c11\u5185\u6838\u7ba1\u7406\u5668"

    invoke-static {p1, p2, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :goto_0
    return v2

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mUninstallGoogleService:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    const-string p1, "com.google.android.gms"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    invoke-virtual {p1}, Lcom/leo/salt/tools/DeleteApps;->DeleteGoogleServices()V

    :cond_1
    return v2

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mBatteryLog:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    const/16 p2, 0x3e8

    const-string v0, "/data/data/com.leo.salt.tweaks/files/scripts/battery_history_clear.sh"

    invoke-static {p1, v0, p2}, Lcom/leo/salt/utils/PrefUtils;->BatteryLogClear(Landroid/content/Context;Ljava/lang/String;I)V

    return v2

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mUninstallAPPS:Landroid/preference/Preference;

    if-ne p2, v0, :cond_4

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    const-class v0, Lcom/leo/salt/tweaks/FragSubActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sget-object p2, Lcom/leo/salt/tweaks/FragSubActivity;->KEY_TYPE:Ljava/lang/String;

    sget-object v0, Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;->SystemUninstall:Lcom/leo/salt/tweaks/FragSubActivity$FragmentType;

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_4
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemFragment;->mDynamiclock:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string p2, "dynamic.intent.action.SETTINGS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return v2

    :cond_5
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
