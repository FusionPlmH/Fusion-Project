.class Lcom/meiqia/core/d$43;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->b(Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/meiqia/core/g$a;

.field final synthetic c:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Ljava/util/List;Lcom/meiqia/core/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$43;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/meiqia/core/d$43;->b:Lcom/meiqia/core/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/meiqia/core/bean/MQAgent;Lcom/meiqia/core/bean/MQConversation;Ljava/util/List;)V
    .locals 4
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

    if-eqz p3, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p3}, Lcom/meiqia/core/bean/MQConversation;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;J)V

    :cond_0
    if-eqz p4, :cond_1

    iget-object v0, p0, Lcom/meiqia/core/d$43;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {p4, v1, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    :cond_1
    iget-object v0, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Z)V

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object p1

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;Z)V

    iget-object p1, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-virtual {p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    iget-object p1, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-static {p1, p3}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQConversation;)V

    iget-object p1, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object p1

    invoke-virtual {p1, p4}, Lcom/meiqia/core/f;->b(Ljava/util/List;)V

    :cond_2
    iget-object p1, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    iget-object p2, p0, Lcom/meiqia/core/d$43;->b:Lcom/meiqia/core/g$a;

    invoke-static {p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Lcom/meiqia/core/g$a;)V

    iget-object p1, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->c(Lcom/meiqia/core/d;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 4

    const/16 v0, 0x4e1e

    const/16 v1, 0x4e24

    if-eq p1, v1, :cond_0

    if-ne p1, v0, :cond_1

    :cond_0
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/meiqia/core/MeiQiaService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "ACTION_OPEN_SOCKET"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    nop

    :goto_0
    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/core/d;->a(Z)V

    iget-object v0, p0, Lcom/meiqia/core/d$43;->c:Lcom/meiqia/core/d;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    :cond_1
    iget-object v0, p0, Lcom/meiqia/core/d$43;->b:Lcom/meiqia/core/g$a;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/g$a;->onFailure(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
