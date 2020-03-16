.class Lcom/meiqia/core/d$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/bean/MQMessage;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/meiqia/core/callback/OnMessageSendCallback;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Ljava/lang/String;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$3;->d:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$3;->a:Lcom/meiqia/core/bean/MQMessage;

    iput-object p3, p0, Lcom/meiqia/core/d$3;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/meiqia/core/d$3;->c:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$3;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {v0, p2}, Lcom/meiqia/core/bean/MQMessage;->setMedia_url(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/meiqia/core/d$3;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p2, p1}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/d$3;->b:Ljava/lang/String;

    const-string p2, "file"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/d$3;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setExtra(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$3;->d:Lcom/meiqia/core/d;

    iget-object p2, p0, Lcom/meiqia/core/d$3;->a:Lcom/meiqia/core/bean/MQMessage;

    iget-object v0, p0, Lcom/meiqia/core/d$3;->c:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-static {p1, p2, v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnMessageSendCallback;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$3;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d$3;->d:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$3;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    iget-object v0, p0, Lcom/meiqia/core/d$3;->c:Lcom/meiqia/core/callback/OnMessageSendCallback;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/meiqia/core/d$3;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-interface {v0, v1, p1, p2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V

    :cond_0
    return-void
.end method
