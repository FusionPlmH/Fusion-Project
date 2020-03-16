.class Lcom/meiqia/core/d$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->b(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/bean/MQMessage;

.field final synthetic b:Lcom/meiqia/core/callback/OnMessageSendCallback;

.field final synthetic c:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    iput-object p3, p0, Lcom/meiqia/core/d$2;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/meiqia/core/bean/MQAgent;Lcom/meiqia/core/bean/MQConversation;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/meiqia/core/bean/MQAgent;",
            "Lcom/meiqia/core/bean/MQConversation;",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    iget-object p4, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-virtual {p4, p1}, Lcom/meiqia/core/d;->a(Z)V

    if-eqz p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-static {p2}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object p2

    const-class p3, Lcom/meiqia/core/MeiQiaService;

    invoke-direct {p1, p2, p3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "ACTION_OPEN_SOCKET"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    :try_start_0
    iget-object p2, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-static {p2}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iget-object p1, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string p2, "failed"

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, p2}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    iget-object p1, p0, Lcom/meiqia/core/d$2;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    iget-object p2, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    const/16 p3, 0x4e28

    const/4 p4, 0x0

    invoke-interface {p1, p2, p3, p4}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/MQMessageManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQMessageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/meiqia/core/MQMessageManager;->setCurrentAgent(Lcom/meiqia/core/bean/MQAgent;)V

    new-instance p1, Landroid/content/Intent;

    const-string p4, "agent_change_action"

    invoke-direct {p1, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/meiqia/core/bean/MQConversation;->getId()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p3

    const-string p4, "conversation_id"

    invoke-virtual {p1, p4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object p3, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-static {p3}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p1}, Lcom/meiqia/core/a/k;->a(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object p1, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-virtual {p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    iget-object p1, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    iget-object p2, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    new-instance p3, Lcom/meiqia/core/d$2$1;

    invoke-direct {p3, p0}, Lcom/meiqia/core/d$2$1;-><init>(Lcom/meiqia/core/d$2;)V

    invoke-static {p1, p2, p3}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x4e1e

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    iget-object v0, p0, Lcom/meiqia/core/d$2;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-interface {v0, v1, p1, p2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    iget-object p1, p0, Lcom/meiqia/core/d$2;->c:Lcom/meiqia/core/d;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/meiqia/core/d$2;->a:Lcom/meiqia/core/bean/MQMessage;

    iget-object v2, p0, Lcom/meiqia/core/d$2;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-virtual {p1, v0, v1, p2, v2}, Lcom/meiqia/core/d;->a(ZLcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    :cond_1
    :goto_0
    return-void
.end method
