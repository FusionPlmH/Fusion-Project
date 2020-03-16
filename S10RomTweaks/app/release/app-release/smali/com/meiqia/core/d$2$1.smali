.class Lcom/meiqia/core/d$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnMessageSendCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$2;->a(ZLcom/meiqia/core/bean/MQAgent;Lcom/meiqia/core/bean/MQConversation;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$2;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$2;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$2$1;->a:Lcom/meiqia/core/d$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$2$1;->a:Lcom/meiqia/core/d$2;

    iget-object v0, v0, Lcom/meiqia/core/d$2;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-interface {v0, p1, p2, p3}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Lcom/meiqia/core/bean/MQMessage;I)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/meiqia/core/d$2$1;->a:Lcom/meiqia/core/d$2;

    iget-object v1, v1, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/meiqia/core/MeiQiaService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "ACTION_OPEN_SOCKET"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object v1, p0, Lcom/meiqia/core/d$2$1;->a:Lcom/meiqia/core/d$2;

    iget-object v1, v1, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object v0, p0, Lcom/meiqia/core/d$2$1;->a:Lcom/meiqia/core/d$2;

    iget-object v0, v0, Lcom/meiqia/core/d$2;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onSuccess(Lcom/meiqia/core/bean/MQMessage;I)V

    return-void
.end method
