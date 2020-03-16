.class public Lcom/leo/salt/tweaks/updates/PackageInstall;
.super Ljava/lang/Object;
.source "PackageInstall.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/updates/PackageInstall$FusionLeoOTAInstalTask;
    }
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field public mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public ZipInstall(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/PackageInstall;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/leo/salt/tweaks/updates/PackageInstall;->showFusionLeoOTADialog()V

    return-void
.end method

.method public showFusionLeoOTADialog()V
    .locals 4

    new-instance v0, Lcom/leo/salt/tweaks/updates/PackageInstall$1;

    iget-object v1, p0, Lcom/leo/salt/tweaks/updates/PackageInstall;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/leo/salt/tweaks/updates/PackageInstall$1;-><init>(Lcom/leo/salt/tweaks/updates/PackageInstall;Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/content/Context;

    iget-object v2, p0, Lcom/leo/salt/tweaks/updates/PackageInstall;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/leo/salt/tweaks/updates/PackageInstall$FusionLeoOTAInstalTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method
