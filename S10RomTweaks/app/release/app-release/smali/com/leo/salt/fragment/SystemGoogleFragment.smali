.class public Lcom/leo/salt/fragment/SystemGoogleFragment;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "SystemGoogleFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static SystemPro:Ljava/lang/reflect/Method; = null

.field public static SystemProperties:Ljava/lang/reflect/Method; = null

.field public static final mGoogleServiceFreezeKEY:Ljava/lang/String; = "leo_freeze_google_service"


# instance fields
.field public XML:Ljava/lang/String;

.field private mCustomModel:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

.field private mDeviceProductModel:Lcom/leo/salt/tools/constants/DeviceProductModel;

.field private mDownloadAPK:Lcom/leo/salt/tweaks/updates/DownloadAPK;

.field private mEdXposed:Lcom/leo/salt/tweaks/updates/EdXposed;

.field private mEdXposedService:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mEdXposedServicePatch:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mEdXposedServiceUninstaller:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mFingerprint:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mFingerprintCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field private mFingerprintf:Lcom/leo/salt/tweaks/updates/Fingerprint;

.field private mFluidCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field private mFluidService:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mFontGroupService:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mGoogleCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

.field private mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

.field private mInstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mOptimizeGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mUninstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

.field private mUpdatesGoogle:Lcom/leo/salt/tweaks/updates/UpdatesGoogle;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    :try_start_0
    const-string v0, "android.os.SystemProperties"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "get"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sput-object v3, Lcom/leo/salt/fragment/SystemGoogleFragment;->SystemPro:Ljava/lang/reflect/Method;

    goto :goto_1

    :cond_0
    const-string v5, "set"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sput-object v3, Lcom/leo/salt/fragment/SystemGoogleFragment;->SystemProperties:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :cond_2
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const-string v0, "system_google_prefs"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->XML:Ljava/lang/String;

    return-void
.end method

.method private Fluid()V
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprintCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->addPreference(Landroid/preference/Preference;)Z

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprint:Lcom/leo/salt/preference/SaltSettingPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprint:Lcom/leo/salt/preference/SaltSettingPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprintCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private GoogleService()V
    .locals 3

    const-string v0, "com.google.android.gms"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mOptimizeGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mInstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mUninstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mOptimizeGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mInstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mUninstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, v2}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public static Properties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    :try_start_0
    sget-object v0, Lcom/leo/salt/fragment/SystemGoogleFragment;->SystemPro:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 p0, 0x1

    aput-object p1, v2, p0

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    :goto_0
    return-object p1
.end method


# virtual methods
.method public disablePreferences()V
    .locals 4

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->DonatePermission()Z

    move-result v0

    const-string v1, "leo_EdXposed_Category"

    const-string v2, "leo_model_Category"

    const-string v3, "leo_Google_Category"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/tweaks/view/widget/DialogView;->PermissionFunction(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

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

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->XML:Ljava/lang/String;

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    new-instance p1, Lcom/leo/salt/tools/DeleteApps;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/DeleteApps;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    new-instance p1, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mUpdatesGoogle:Lcom/leo/salt/tweaks/updates/UpdatesGoogle;

    new-instance p1, Lcom/leo/salt/tweaks/updates/DownloadAPK;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tweaks/updates/DownloadAPK;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDownloadAPK:Lcom/leo/salt/tweaks/updates/DownloadAPK;

    new-instance p1, Lcom/leo/salt/tweaks/updates/Fingerprint;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tweaks/updates/Fingerprint;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprintf:Lcom/leo/salt/tweaks/updates/Fingerprint;

    new-instance p1, Lcom/leo/salt/tools/constants/DeviceProductModel;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/constants/DeviceProductModel;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDeviceProductModel:Lcom/leo/salt/tools/constants/DeviceProductModel;

    const-string p1, "leo_freeze_google_service"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/SwitchPreference;

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const-string v0, "google_services"

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    iget-object v3, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "freeze_no"

    invoke-static {v0, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "freeze_yes"

    invoke-static {v0, v5}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-virtual {v0, p1}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    const-string p1, "leo_google_remove"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mUninstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "com.google.android.gms"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mUninstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string v0, "\u5378\u8f7d\u8c37\u6b4c\u670d\u52a1\u53ef\u4e3a\u7cfb\u7edf\u5206\u533a\u6362\u53d6\u66f4\u591a\u53ef\u7528\u7a7a\u95f4"

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mUninstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string v0, "\u8c37\u6b4c\u670d\u52a1\u5df2\u4ece\u7cfb\u7edf\u4e2d\u5378\u8f7d"

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_2
    const-string p1, "leo_install_google_service"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mInstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "leo_optimize_google_service"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mOptimizeGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "leo_fluid_service"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "com.fb.fluid"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    const-string v0, "\u5df2\u5b89\u88c5"

    const-string v3, "\u672a\u5b89\u88c5"

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v3}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_3
    const-string p1, "leo_fluid_Category"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string p1, "leo_fonts_service"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFontGroupService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "com.monotype.android.font.samsungsans"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFontGroupService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v0}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFontGroupService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v3}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_4
    const-string p1, "leo_model_service"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mCustomModel:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "ro.product.model"

    const-string v0, ""

    invoke-static {p1, v0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->Properties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mCustomModel:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {v0, p1}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p1, "leo_Google_Category"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string p1, "leo_fingerprint_Category"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprintCategory:Lcom/leo/salt/preference/SaltSettingCategoryPreference;

    const-string p1, "leo_EdXposed_service_install"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "leo_EdXposed_service_patch"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedServicePatch:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string p1, "leo_EdXposed_service_Uninstaller"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedServiceUninstaller:Lcom/leo/salt/preference/SaltSettingPreference;

    :try_start_0
    const-string p1, "org.meowcat.edxposed.manager"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedServicePatch:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v2}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedServiceUninstaller:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v2}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedServicePatch:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedServiceUninstaller:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    nop

    :goto_5
    const-string p1, "leo_fingerprint"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/leo/salt/preference/SaltSettingPreference;

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprint:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->GoogleService()V

    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->Fluid()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->disablePreferences()V

    :cond_6
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    if-ne p1, v1, :cond_1

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string p2, "leo_freeze_google_service"

    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0, p1}, Lcom/leo/salt/tools/DeleteApps;->FreezeGoogleServices(Landroid/content/Context;Z)V

    const-string p2, "google_services"

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "freeze_no"

    invoke-static {p2, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mGoogleServiceFreeze:Landroid/preference/SwitchPreference;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v1, "freeze_yes"

    invoke-static {p2, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/SwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemGoogleFragment;->GoogleService()V

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 5

    new-instance v0, Lcom/leo/salt/tweaks/updates/EdXposed;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/leo/salt/tweaks/updates/EdXposed;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposed:Lcom/leo/salt/tweaks/updates/EdXposed;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mUninstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string v1, "com.google.android.gms"

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    invoke-virtual {p1}, Lcom/leo/salt/tools/DeleteApps;->DeleteGoogleServices()V

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mOptimizeGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    const/16 v3, 0x3e8

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    const-string p2, "/data/data/com.leo.salt.tweaks/files/scripts/fix_google.sh"

    invoke-static {p1, p2, v3}, Lcom/leo/salt/utils/PrefUtils;->ScriptsLogClear(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mInstallGoogleService:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mUpdatesGoogle:Lcom/leo/salt/tweaks/updates/UpdatesGoogle;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/updates/UpdatesGoogle;->GoogleDownloadView()V

    :goto_0
    return v2

    :cond_5
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidService:Lcom/leo/salt/preference/SaltSettingPreference;

    const-string v1, "\u5df2\u5b89\u88c5"

    const-string v4, "\u672a\u5b89\u88c5"

    if-ne p2, v0, :cond_7

    const-string p1, "com.fb.fluid"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    const-string v0, "\u5378\u8f7d\u6d41\u4f53\u624b\u52bf"

    invoke-static {p2, p1, v3, v0}, Lcom/leo/salt/utils/PrefUtils;->uninstallAPPS(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFluidService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v4}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDownloadAPK:Lcom/leo/salt/tweaks/updates/DownloadAPK;

    const-string p2, "Fluid.apk"

    const-string v0, "\u6d41\u4f53\u624b\u52bf"

    const-string v1, "TIzs5OdB"

    invoke-virtual {p1, p2, v0, v1}, Lcom/leo/salt/tweaks/updates/DownloadAPK;->UpdatesDownloadAPKView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2

    :cond_7
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFontGroupService:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_9

    const-string p1, "com.monotype.android.font.samsungsans"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemGoogleFragment;->isAvilible(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "\u5b57\u4f53\u7ec4\u5408\u5305"

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v3, v0}, Lcom/leo/salt/utils/PrefUtils;->uninstallAPPS(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFontGroupService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v1}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    :cond_8
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFontGroupService:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p1, v4}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDownloadAPK:Lcom/leo/salt/tweaks/updates/DownloadAPK;

    const-string p2, "LeoFontModes.apk"

    const-string v1, "HX56st35"

    invoke-virtual {p1, p2, v0, v1}, Lcom/leo/salt/tweaks/updates/DownloadAPK;->UpdatesDownloadAPKView(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    return v2

    :cond_9
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedService:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_a

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposed:Lcom/leo/salt/tweaks/updates/EdXposed;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/updates/EdXposed;->intView()V

    return v2

    :cond_a
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedServicePatch:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_b

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposed:Lcom/leo/salt/tweaks/updates/EdXposed;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/updates/EdXposed;->EdXposedPatch()V

    return v2

    :cond_b
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mEdXposedServiceUninstaller:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_c

    return v2

    :cond_c
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprint:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_d

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mFingerprintf:Lcom/leo/salt/tweaks/updates/Fingerprint;

    invoke-virtual {p1}, Lcom/leo/salt/tweaks/updates/Fingerprint;->intView()V

    return v2

    :cond_d
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mCustomModel:Lcom/leo/salt/preference/SaltSettingPreference;

    if-ne p2, v0, :cond_e

    const-string p1, "ro.product.model"

    const-string p2, ""

    invoke-static {p1, p2}, Lcom/leo/salt/fragment/SystemGoogleFragment;->Properties(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mCustomModel:Lcom/leo/salt/preference/SaltSettingPreference;

    invoke-virtual {p2, p1}, Lcom/leo/salt/preference/SaltSettingPreference;->setSummary(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemGoogleFragment;->mDeviceProductModel:Lcom/leo/salt/tools/constants/DeviceProductModel;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/DeviceProductModel;->DeviceProductModelInfo()V

    return v2

    :cond_e
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
