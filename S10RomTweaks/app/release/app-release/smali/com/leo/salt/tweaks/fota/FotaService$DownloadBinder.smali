.class public Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;
.super Landroid/os/Binder;
.source "FotaService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tweaks/fota/FotaService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tweaks/fota/FotaService;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tweaks/fota/FotaService;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->this$0:Lcom/leo/salt/tweaks/fota/FotaService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->this$0:Lcom/leo/salt/tweaks/fota/FotaService;

    iget-object v0, v0, Lcom/leo/salt/tweaks/fota/FotaService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/download/provider/download/DownloadManger;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public getProgress(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->this$0:Lcom/leo/salt/tweaks/fota/FotaService;

    iget-object v0, v0, Lcom/leo/salt/tweaks/fota/FotaService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/download/provider/download/DownloadManger;->getCurrentData(Ljava/lang/String;)Lcom/leo/download/provider/data/DownloadData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->this$0:Lcom/leo/salt/tweaks/fota/FotaService;

    iget-object v0, v0, Lcom/leo/salt/tweaks/fota/FotaService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/download/provider/download/DownloadManger;->getCurrentData(Ljava/lang/String;)Lcom/leo/download/provider/data/DownloadData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/download/provider/data/DownloadData;->getPercentage()F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public pauseDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->this$0:Lcom/leo/salt/tweaks/fota/FotaService;

    iget-object v0, v0, Lcom/leo/salt/tweaks/fota/FotaService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/download/provider/download/DownloadManger;->pause(Ljava/lang/String;)V

    return-void
.end method

.method public restartDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->this$0:Lcom/leo/salt/tweaks/fota/FotaService;

    iget-object v0, v0, Lcom/leo/salt/tweaks/fota/FotaService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/download/provider/download/DownloadManger;->restart(Ljava/lang/String;)V

    return-void
.end method

.method public resumeDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->this$0:Lcom/leo/salt/tweaks/fota/FotaService;

    iget-object v0, v0, Lcom/leo/salt/tweaks/fota/FotaService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/download/provider/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/download/provider/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/download/provider/download/DownloadManger;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;->this$0:Lcom/leo/salt/tweaks/fota/FotaService;

    iget-object v0, v0, Lcom/leo/salt/tweaks/fota/FotaService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/download/provider/DUtil;->init(Landroid/content/Context;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/download/provider/download/DBuilder;->path(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/leo/download/provider/download/DBuilder;->name(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/leo/download/provider/download/DBuilder;->url(Ljava/lang/String;)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    const/4 p3, 0x5

    invoke-virtual {p1, p3}, Lcom/leo/download/provider/download/DBuilder;->childTaskCount(I)Lcom/leo/download/provider/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/download/provider/download/DBuilder;->build()Lcom/leo/download/provider/download/DownloadManger;

    move-result-object p1

    new-instance p3, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder$1;

    invoke-direct {p3, p0, p2, p4}, Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder$1;-><init>(Lcom/leo/salt/tweaks/fota/FotaService$DownloadBinder;Ljava/lang/String;I)V

    invoke-virtual {p1, p3}, Lcom/leo/download/provider/download/DownloadManger;->start(Lcom/leo/download/provider/callback/DownloadCallback;)Lcom/leo/download/provider/download/DownloadManger;

    return-void
.end method
