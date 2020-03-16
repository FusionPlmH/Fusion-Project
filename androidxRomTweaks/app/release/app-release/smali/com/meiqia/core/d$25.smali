.class Lcom/meiqia/core/d$25;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(ZLcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/bean/MQMessage;

.field final synthetic b:Z

.field final synthetic c:Lcom/meiqia/core/callback/OnMessageSendCallback;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;ZLcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$25;->d:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    iput-boolean p3, p0, Lcom/meiqia/core/d$25;->b:Z

    iput-object p4, p0, Lcom/meiqia/core/d$25;->c:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$25;->d:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-static {p1}, Lcom/meiqia/core/a/j;->a(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/meiqia/core/a/i;->c(Lcom/meiqia/core/bean/MQClient;J)V

    iget-object v0, p0, Lcom/meiqia/core/d$25;->d:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1, p2, p3}, Lcom/meiqia/core/a/i;->d(Lcom/meiqia/core/bean/MQClient;J)V

    invoke-static {p1}, Lcom/meiqia/core/a/j;->a(Ljava/lang/String;)J

    move-result-wide p1

    iget-object p3, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p3}, Lcom/meiqia/core/bean/MQMessage;->getId()J

    move-result-wide v0

    iget-object p3, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p3, p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setCreated_on(J)V

    iget-object p1, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;J)V

    iget-object p1, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string p2, "arrived"

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string p2, "sdk"

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setType(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/meiqia/core/d$25;->b:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/d$25;->d:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, p2, v0, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;J)V

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$25;->d:Lcom/meiqia/core/d;

    new-instance p2, Lcom/meiqia/core/d$25$1;

    invoke-direct {p2, p0}, Lcom/meiqia/core/d$25$1;-><init>(Lcom/meiqia/core/d$25;)V

    invoke-static {p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/meiqia/core/d$25;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$25;->d:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d$25;->c:Lcom/meiqia/core/callback/OnMessageSendCallback;

    iget-object v1, p0, Lcom/meiqia/core/d$25;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-interface {v0, v1, p1, p2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V

    return-void
.end method
