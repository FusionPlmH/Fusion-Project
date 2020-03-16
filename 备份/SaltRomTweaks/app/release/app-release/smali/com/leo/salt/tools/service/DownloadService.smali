.class public Lcom/leo/salt/tools/service/DownloadService;
.super Landroid/app/Service;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;
    }
.end annotation


# instance fields
.field private mBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

.field public mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    new-instance v0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    invoke-direct {v0, p0}, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;-><init>(Lcom/leo/salt/tools/service/DownloadService;)V

    iput-object v0, p0, Lcom/leo/salt/tools/service/DownloadService;->mBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    iget-object p1, p0, Lcom/leo/salt/tools/service/DownloadService;->mBinder:Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;

    return-object p1
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    iput-object p0, p0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
