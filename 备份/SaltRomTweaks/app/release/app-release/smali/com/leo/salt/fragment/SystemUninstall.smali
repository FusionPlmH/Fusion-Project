.class public Lcom/leo/salt/fragment/SystemUninstall;
.super Lcom/leo/salt/tweaks/base/BasePreferenceFragment;
.source "SystemUninstall.java"


# static fields
.field private static final ANTRadioService:Ljava/lang/String; = "com.dsi.ant.service.socket"

.field private static final AllshareFileShare:Ljava/lang/String; = "com.samsung.android.allshare.service.fileshare"

.field private static final GameHome:Ljava/lang/String; = "com.samsung.android.game.gamehome"

.field private static final SBrowser:Ljava/lang/String; = "com.sec.android.app.sbrowser"

.field private static final SHealth6:Ljava/lang/String; = "com.sec.android.app.shealth"

.field private static final SPrintSpooler:Ljava/lang/String; = "com.android.printspooler"

.field private static final SamsungMarket:Ljava/lang/String; = "com.sec.android.app.samsungapps"


# instance fields
.field public XML:Ljava/lang/String;

.field private mANTRadioService:Landroid/preference/Preference;

.field private mAllshareFileShare:Landroid/preference/Preference;

.field private mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

.field private mGameHome:Landroid/preference/Preference;

.field private mSBrowser:Landroid/preference/Preference;

.field private mSHealth6:Landroid/preference/Preference;

.field private mSPrintSpooler:Landroid/preference/Preference;

.field private mUninstalSamsungMarket:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;-><init>()V

    const-string v0, "system_apps_uninstal_prefs"

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->XML:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Uninstal(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "data/app/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/DeleteApps;->DeleteAPPSTaskServices(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/data/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/DeleteApps;->DeleteAPPSTaskServices(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system/priv-app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->DeleteAPPSTaskServices(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system/app/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/leo/salt/tools/DeleteApps;->DeleteAPPSTaskServices(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system/preload/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/leo/salt/tools/DeleteApps;->DeleteAPPSTaskServices(Ljava/lang/String;)V

    return-void
.end method

.method public appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string p2, "\u672a\u7cbe\u7b80"

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public appNameUninstal(Landroid/preference/Preference;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    const-string p2, "\u5df2\u7cbe\u7b80"

    invoke-virtual {p1, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

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

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    iget-object v1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->XML:Ljava/lang/String;

    invoke-virtual {p0, p1, p0, v0}, Lcom/leo/salt/fragment/SystemUninstall;->BasePreferenceFragment(Landroid/content/Context;Lcom/leo/salt/tweaks/base/BasePreferenceFragment;Ljava/lang/String;)V

    new-instance p1, Lcom/leo/salt/tools/DeleteApps;

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/leo/salt/tools/DeleteApps;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mDeleteApps:Lcom/leo/salt/tools/DeleteApps;

    const-string p1, "com.sec.android.app.samsungapps"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mUninstalSamsungMarket:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mUninstalSamsungMarket:Landroid/preference/Preference;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mUninstalSamsungMarket:Landroid/preference/Preference;

    const-string v0, "SamsungaApps"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemUninstall;->appNameUninstal(Landroid/preference/Preference;Ljava/lang/String;)V

    :goto_0
    const-string p1, "com.sec.android.app.sbrowser"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSBrowser:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSBrowser:Landroid/preference/Preference;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSBrowser:Landroid/preference/Preference;

    const-string v0, "SBrowser"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemUninstall;->appNameUninstal(Landroid/preference/Preference;Ljava/lang/String;)V

    :goto_1
    const-string p1, "com.android.printspooler"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSPrintSpooler:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSPrintSpooler:Landroid/preference/Preference;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSPrintSpooler:Landroid/preference/Preference;

    const-string v0, "SPrintSpooler"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemUninstall;->appNameUninstal(Landroid/preference/Preference;Ljava/lang/String;)V

    :goto_2
    const-string p1, "com.dsi.ant.service.socket"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mANTRadioService:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mANTRadioService:Landroid/preference/Preference;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mANTRadioService:Landroid/preference/Preference;

    const-string v0, "ANTRadioService"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemUninstall;->appNameUninstal(Landroid/preference/Preference;Ljava/lang/String;)V

    :goto_3
    const-string p1, "com.samsung.android.allshare.service.fileshare"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mAllshareFileShare:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mAllshareFileShare:Landroid/preference/Preference;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mAllshareFileShare:Landroid/preference/Preference;

    const-string v0, "AllshareFileShare"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemUninstall;->appNameUninstal(Landroid/preference/Preference;Ljava/lang/String;)V

    :goto_4
    const-string p1, "com.sec.android.app.shealth"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSHealth6:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSHealth6:Landroid/preference/Preference;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_5

    :cond_5
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSHealth6:Landroid/preference/Preference;

    const-string v0, "SHealth6"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemUninstall;->appNameUninstal(Landroid/preference/Preference;Ljava/lang/String;)V

    :goto_5
    const-string p1, "com.samsung.android.game.gamehome"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mGameHome:Landroid/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mGameHome:Landroid/preference/Preference;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->appNameIcon(Landroid/preference/Preference;Ljava/lang/String;)V

    goto :goto_6

    :cond_6
    iget-object p1, p0, Lcom/leo/salt/fragment/SystemUninstall;->mGameHome:Landroid/preference/Preference;

    const-string v0, "GameHome"

    invoke-virtual {p0, p1, v0}, Lcom/leo/salt/fragment/SystemUninstall;->appNameUninstal(Landroid/preference/Preference;Ljava/lang/String;)V

    :goto_6
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mUninstalSamsungMarket:Landroid/preference/Preference;

    const-string v1, "com.sec.android.app.samsungapps"

    const/4 v2, 0x1

    if-ne p2, v0, :cond_1

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "GalaxyApps_OPEN"

    invoke-virtual {p0, v1, p1}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.sec.android.widgetapp.samsungapps"

    const-string p2, "GalaxyAppsWidget_Phone_Dream"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return v2

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSBrowser:Landroid/preference/Preference;

    if-ne p2, v0, :cond_3

    invoke-virtual {p0, v1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "SBrowser_9.0"

    invoke-virtual {p0, v1, p1}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "SBrowser_10.0"

    invoke-virtual {p0, v1, p1}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.samsung.android.app.sbrowseredge"

    const-string p2, "SBrowserEdge"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSPrintSpooler:Landroid/preference/Preference;

    if-ne p2, v0, :cond_5

    const-string p1, "com.android.printspooler"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "SPrintSpooler"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    return v2

    :cond_5
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mANTRadioService:Landroid/preference/Preference;

    if-ne p2, v0, :cond_7

    const-string p1, "com.dsi.ant.service.socket"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const-string p2, "ANTRadioService"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.dsi.ant.server"

    const-string p2, "AntHalService"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.dsi.ant.plugins.antplus"

    const-string p2, "ANTPlusPlugins"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.dsi.ant.sample.acquirechannels"

    const-string p2, "ANTPlusTest"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    return v2

    :cond_7
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mAllshareFileShare:Landroid/preference/Preference;

    if-ne p2, v0, :cond_9

    const-string p1, "com.samsung.android.allshare.service.fileshare"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    const-string p2, "AllshareFileShare"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "com.samsung.android.allshare.service.mediashare"

    const-string p2, "AllshareMediaShare"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    return v2

    :cond_9
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mSHealth6:Landroid/preference/Preference;

    const-string v1, "com.samsung.android.game.gametools"

    if-ne p2, v0, :cond_b

    const-string p1, "com.sec.android.app.shealth"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    const-string p2, "SHealth6"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "HealthService"

    invoke-virtual {p0, v1, p1}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    return v2

    :cond_b
    iget-object v0, p0, Lcom/leo/salt/fragment/SystemUninstall;->mGameHome:Landroid/preference/Preference;

    if-ne p2, v0, :cond_d

    const-string p1, "com.samsung.android.game.gamehome"

    invoke-virtual {p0, p1}, Lcom/leo/salt/fragment/SystemUninstall;->isAvilible(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_c

    const-string p2, "GameOptimizer"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GameTools_Dream"

    invoke-virtual {p0, v1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "com.samsung.android.game.gos"

    const-string v0, "GameHome"

    invoke-virtual {p0, p2, v0}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "GameHome_CHN"

    invoke-virtual {p0, p1, p2}, Lcom/leo/salt/fragment/SystemUninstall;->Uninstal(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    return v2

    :cond_d
    invoke-super {p0, p1, p2}, Lcom/leo/salt/tweaks/base/BasePreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result p1

    return p1
.end method
