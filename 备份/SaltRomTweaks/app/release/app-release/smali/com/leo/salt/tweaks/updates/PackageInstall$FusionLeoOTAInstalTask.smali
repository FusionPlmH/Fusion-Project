.class Lcom/leo/salt/tweaks/updates/PackageInstall$FusionLeoOTAInstalTask;
.super Landroid/os/AsyncTask;
.source "PackageInstall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/updates/PackageInstall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FusionLeoOTAInstalTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/updates/PackageInstall;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/updates/PackageInstall;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/leo/salt/tweaks/updates/PackageInstall$FusionLeoOTAInstalTask;->this$0:Lcom/leo/salt/tweaks/updates/PackageInstall;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-direct {v0, p2}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;-><init>(Landroid/content/Context;)V

    iput-object v0, p1, Lcom/leo/salt/tweaks/updates/PackageInstall;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/leo/salt/tweaks/updates/PackageInstall$FusionLeoOTAInstalTask;->doInBackground([Landroid/content/Context;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Landroid/content/Context;)Ljava/lang/Void;
    .locals 0

    :try_start_0
    iget-object p1, p0, Lcom/leo/salt/tweaks/updates/PackageInstall$FusionLeoOTAInstalTask;->this$0:Lcom/leo/salt/tweaks/updates/PackageInstall;

    iget-object p1, p1, Lcom/leo/salt/tweaks/updates/PackageInstall;->mRestoreUnit:Lcom/leo/salt/tools/constants/BackupRestoreUnit;

    invoke-virtual {p1}, Lcom/leo/salt/tools/constants/BackupRestoreUnit;->InstalFlashZIP()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method
