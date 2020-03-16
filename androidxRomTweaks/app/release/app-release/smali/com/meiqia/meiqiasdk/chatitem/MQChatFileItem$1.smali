.class Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;
.super Ljava/lang/Object;
.source "MQChatFileItem.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/OnDownloadFileCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x4e26

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$100(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/model/FileMessage;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setFileState(I)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->downloadFailedState()V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$300(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$200(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$100(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/model/FileMessage;

    move-result-object v1

    invoke-interface {v0, v1, p1, p2}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;->onFileMessageDownloadFailure(Lcom/meiqia/meiqiasdk/model/FileMessage;ILjava/lang/String;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$100(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/model/FileMessage;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setProgress(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$200(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;->notifyDataSetChanged()V

    return-void
.end method

.method public onSuccess(Ljava/io/File;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$000(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$100(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/model/FileMessage;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/model/FileMessage;->setFileState(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$1;->this$0:Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;->access$200(Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem;)Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;

    move-result-object p1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/chatitem/MQChatFileItem$Callback;->notifyDataSetChanged()V

    return-void
.end method
