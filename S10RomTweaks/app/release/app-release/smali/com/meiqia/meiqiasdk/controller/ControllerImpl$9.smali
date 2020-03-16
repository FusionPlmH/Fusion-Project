.class Lcom/meiqia/meiqiasdk/controller/ControllerImpl$9;
.super Ljava/lang/Object;
.source "ControllerImpl.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/controller/ControllerImpl;->downloadFile(Lcom/meiqia/meiqiasdk/model/BaseMessage;Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

.field final synthetic val$onDownloadFileCallback:Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/controller/ControllerImpl;Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$9;->this$0:Lcom/meiqia/meiqiasdk/controller/ControllerImpl;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$9;->val$onDownloadFileCallback:Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$9;->val$onDownloadFileCallback:Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$9;->val$onDownloadFileCallback:Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0, p1}, Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;->onProgress(I)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/controller/ControllerImpl$9;->val$onDownloadFileCallback:Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;->onSuccess(Ljava/io/File;)V

    return-void
.end method
