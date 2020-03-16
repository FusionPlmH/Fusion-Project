.class public Lcom/leo/salt/tools/DeleteApps;
.super Ljava/lang/Object;
.source "DeleteApps.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;,
        Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;,
        Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private progressDialog:Landroid/app/ProgressDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/tools/DeleteApps;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/leo/salt/tools/DeleteApps;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/tools/DeleteApps;->mPackageManager:Landroid/content/pm/PackageManager;

    new-instance p1, Landroid/app/ProgressDialog;

    iget-object v0, p0, Lcom/leo/salt/tools/DeleteApps;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/leo/salt/tools/DeleteApps;->progressDialog:Landroid/app/ProgressDialog;

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/tools/DeleteApps;)Landroid/app/ProgressDialog;
    .locals 0

    iget-object p0, p0, Lcom/leo/salt/tools/DeleteApps;->progressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method


# virtual methods
.method public DeleteAPPSTaskServices(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;

    invoke-direct {v0, p0, p1}, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;-><init>(Lcom/leo/salt/tools/DeleteApps;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/DeleteApps$DeleteAPPSTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public DeleteGoogleServices()V
    .locals 2

    new-instance v0, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;-><init>(Lcom/leo/salt/tools/DeleteApps;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/leo/salt/tools/DeleteApps$DeleteGoogleServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public FreezeGoogleServices(Landroid/content/Context;Z)V
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;

    invoke-direct {v0, p0, p1, p2}, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;-><init>(Lcom/leo/salt/tools/DeleteApps;Landroid/content/Context;Z)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p1}, Lcom/leo/salt/tools/DeleteApps$FreezeGoogleServicesTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public LeoRT100(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    invoke-virtual {v0, p1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public LeoRT100(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/leo/salt/tools/DeleteApps;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/tools/DeleteApps;->isLeoAvilible(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tools/DeleteApps;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    return-void
.end method

.method public StkBoolean(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    :try_start_0
    const-string v0, "com.android.stk"

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/tools/DeleteApps;->LeoRT100(Ljava/lang/String;I)V

    const-string v0, "com.android.stk2"

    invoke-virtual {p0, v0, p1}, Lcom/leo/salt/tools/DeleteApps;->LeoRT100(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
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

.method public uninstall(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v1, "mount -o remount,rw /system"

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    const-string v1, "mount -o remount,rw /data"

    invoke-virtual {v0, v1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    sget-object v0, Lcom/leo/script/KeepShellPublic;->INSTANCE:Lcom/leo/script/KeepShellPublic;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rm -rf /"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/leo/script/KeepShellPublic;->doCmdSync(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
