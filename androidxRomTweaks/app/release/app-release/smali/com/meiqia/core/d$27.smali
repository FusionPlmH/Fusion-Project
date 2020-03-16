.class Lcom/meiqia/core/d$27;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;JLjava/util/Map;Lcom/meiqia/core/callback/OnMessageSendCallback;)V
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

    iput-object p1, p0, Lcom/meiqia/core/d$27;->c:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$27;->a:Lcom/meiqia/core/bean/MQMessage;

    iput-object p3, p0, Lcom/meiqia/core/d$27;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;J)V
    .locals 2

    invoke-static {p1}, Lcom/meiqia/core/a/j;->a(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/meiqia/core/d$27;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setCreated_on(J)V

    iget-object p1, p0, Lcom/meiqia/core/d$27;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, p2, p3}, Lcom/meiqia/core/bean/MQMessage;->setId(J)V

    iget-object p1, p0, Lcom/meiqia/core/d$27;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string p2, "arrived"

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/d$27;->c:Lcom/meiqia/core/d;

    new-instance p2, Lcom/meiqia/core/d$27$1;

    invoke-direct {p2, p0}, Lcom/meiqia/core/d$27$1;-><init>(Lcom/meiqia/core/d$27;)V

    invoke-static {p1, p2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$27;->a:Lcom/meiqia/core/bean/MQMessage;

    const-string v1, "failed"

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d$27;->b:Lcom/meiqia/core/callback/OnMessageSendCallback;

    iget-object v1, p0, Lcom/meiqia/core/d$27;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-interface {v0, v1, p1, p2}, Lcom/meiqia/core/callback/OnMessageSendCallback;->onFailure(Lcom/meiqia/core/bean/MQMessage;ILjava/lang/String;)V

    return-void
.end method
