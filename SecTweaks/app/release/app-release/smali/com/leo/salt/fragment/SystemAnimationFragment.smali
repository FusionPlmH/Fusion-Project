.class public Lcom/leo/salt/fragment/SystemAnimationFragment;
.super Lcom/leo/salt/base/BasePreferenceFragment;
.source "SystemAnimationFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final GOOGLE_SERBICES:Ljava/lang/String; = "leo_tweaks_google_services"

.field private static final PREF_WIPE_BOOTANIM:Ljava/lang/String; = "leo_tweaks_wipe"

.field private static final PREF_dolby_BOOTANIM:Ljava/lang/String; = "leo_tweaks_location"

.field private static final TAG:Ljava/lang/String; = "SystemAnimationFragment"


# instance fields
.field private final APP_PACKAGE:Ljava/lang/String;

.field private GoogleServicesBinder:Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

.field private connection:Landroid/content/ServiceConnection;

.field private mAPPS:Landroid/preference/Preference;

.field private mGOOGLE:Landroid/preference/Preference;

.field private mLocation:Landroid/preference/Preference;

.field private mWipe:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/base/BasePreferenceFragment;-><init>()V

    new-instance v0, Lcom/leo/salt/fragment/SystemAnimationFragment$1;

    invoke-direct {v0, p0}, Lcom/leo/salt/fragment/SystemAnimationFragment$1;-><init>(Lcom/leo/salt/fragment/SystemAnimationFragment;)V

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->connection:Landroid/content/ServiceConnection;

    const-string v0, "com.google.android.gms"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->APP_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method private GoogleServicesInstall()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "GoogleServices"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/fragment/SystemAnimationFragment$2;

    invoke-direct {v1, p0}, Lcom/leo/salt/fragment/SystemAnimationFragment$2;-><init>(Lcom/leo/salt/fragment/SystemAnimationFragment;)V

    const v2, 0x7f03002c

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/fragment/SystemAnimationFragment;)Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->GoogleServicesBinder:Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

    return-object p0
.end method

.method static synthetic access$002(Lcom/leo/salt/fragment/SystemAnimationFragment;Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;)Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->GoogleServicesBinder:Lcom/leo/salt/utils/root/GoogleServices$GoogleServicesBinder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$500(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$700(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800(Lcom/leo/salt/fragment/SystemAnimationFragment;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object p0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private setlocation()V
    .locals 3

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f10027c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/fragment/SystemAnimationFragment$3;

    invoke-direct {v1, p0}, Lcom/leo/salt/fragment/SystemAnimationFragment$3;-><init>(Lcom/leo/salt/fragment/SystemAnimationFragment;)V

    const v2, 0x7f030030

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public createSDCardDirimg()V
    .locals 4

    const-string v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Android/ota"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "paht ok,path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "false"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public disablePreferences()V
    .locals 3

    invoke-static {}, Lcom/leo/salt/utils/AndroidUtils;->getCustomOTA()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/leo/salt/utils/Constants;->safety:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "leo_apps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_google_services"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_global_navbar_landscape_mod"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_global_navbar_portrait_mod"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v1, "leo_apps"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_google_services"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_global_navbar_landscape_mod"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    const-string v2, "leo_tweaks_global_navbar_portrait_mod"

    invoke-virtual {v0, v2}, Landroid/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setEnabled(Z)V

    :goto_0
    return-void
.end method

.method public isProKeyInstalled(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, ""

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    iget-object v0, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Lcom/leo/salt/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    const-string v0, "system_animation_prefs"

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->BasePreferenceFragment(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    const-string v0, "leo_tweaks_location"

    invoke-virtual {p0, v0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mLocation:Landroid/preference/Preference;

    const-string v0, "leo_tweaks_location"

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    const v0, 0x7f10027c

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setSummary(I)V

    const-string p1, "leo_tweaks_wipe"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mWipe:Landroid/preference/Preference;

    const-string p1, "leo_apps"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mAPPS:Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->createSDCardDirimg()V

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->isProKeyInstalled(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->disablePreferences()V

    :cond_0
    const-string p1, "leo_tweaks_google_services"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemAnimationFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mGOOGLE:Landroid/preference/Preference;

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    const-class v1, Lcom/leo/salt/utils/root/GoogleServices;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->connection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Lcom/leo/salt/base/BasePreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->connection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    invoke-virtual {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    const-string p2, "SystemAnimationFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPreferenceChange----->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mLocation:Landroid/preference/Preference;

    const/4 v1, 0x1

    if-ne p2, v0, :cond_0

    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->setlocation()V

    return v1

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mWipe:Landroid/preference/Preference;

    if-ne p2, v0, :cond_1

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/leo/salt/widget/DialogUtil;->showWipePrefs(Landroid/content/Context;)V

    return v1

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mGOOGLE:Landroid/preference/Preference;

    if-ne p2, v0, :cond_2

    invoke-direct {p0}, Lcom/leo/salt/fragment/SystemAnimationFragment;->GoogleServicesInstall()V

    return v1

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mAPPS:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    sget-object p1, Lcom/leo/salt/utils/root/Helpers;->Companion:Lcom/leo/salt/utils/root/Helpers$Companion;

    iget-object p2, p0, Lcom/leo/salt/fragment/SystemAnimationFragment;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/leo/salt/utils/root/Helpers$Companion;->APPS(Landroid/content/Context;)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Lcom/leo/salt/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
