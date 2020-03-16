.class public Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;
.super Landroid/os/Binder;
.source "DownloadService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/tools/service/DownloadService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DownloadBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/salt/tools/service/DownloadService;


# direct methods
.method public constructor <init>(Lcom/leo/salt/tools/service/DownloadService;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->cancel(Ljava/lang/String;)V

    return-void
.end method

.method public getProgress(Ljava/lang/String;)F
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->getCurrentData(Ljava/lang/String;)Lcom/leo/salt/down/data/DownloadData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->getCurrentData(Ljava/lang/String;)Lcom/leo/salt/down/data/DownloadData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/down/data/DownloadData;->getPercentage()F

    move-result p1

    return p1

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    return p1
.end method

.method public pauseDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->pause(Ljava/lang/String;)V

    return-void
.end method

.method public restartDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->restart(Ljava/lang/String;)V

    return-void
.end method

.method public resumeDownload(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/download/DownloadManger;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/download/DownloadManger;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/download/DownloadManger;->resume(Ljava/lang/String;)V

    return-void
.end method

.method public startDownload(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;->this$0:Lcom/leo/salt/tools/service/DownloadService;

    iget-object v0, v0, Lcom/leo/salt/tools/service/DownloadService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/DUtil;->init(Landroid/content/Context;)Lcom/leo/salt/down/download/DBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/leo/salt/down/download/DBuilder;->path(Ljava/lang/String;)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/leo/salt/down/download/DBuilder;->name(Ljava/lang/String;)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcom/leo/salt/down/download/DBuilder;->url(Ljava/lang/String;)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Lcom/leo/salt/down/download/DBuilder;->childTaskCount(I)Lcom/leo/salt/down/download/DBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/leo/salt/down/download/DBuilder;->build()Lcom/leo/salt/down/download/DownloadManger;

    move-result-object p1

    new-instance p3, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;

    invoke-direct {p3, p0, p2, p4}, Lcom/leo/salt/tools/service/DownloadService$DownloadBinder$1;-><init>(Lcom/leo/salt/tools/service/DownloadService$DownloadBinder;Ljava/lang/String;I)V

    invoke-virtual {p1, p3}, Lcom/leo/salt/down/download/DownloadManger;->start(Lcom/leo/salt/down/callback/DownloadCallback;)Lcom/leo/salt/down/download/DownloadManger;

    return-void
.end method
