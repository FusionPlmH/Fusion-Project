.class Lcom/meiqia/core/d$26;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$i;


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

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/meiqia/core/g$f;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$26;->d:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$26;->a:Lcom/meiqia/core/bean/MQMessage;

    iput-object p3, p0, Lcom/meiqia/core/d$26;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/meiqia/core/d$26;->c:Lcom/meiqia/core/g$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$26;->d:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/d$26;->a:Lcom/meiqia/core/bean/MQMessage;

    iget-object v2, p0, Lcom/meiqia/core/d$26;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/meiqia/core/d$26;->c:Lcom/meiqia/core/g$f;

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V

    return-void
.end method

.method public b()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$26;->d:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/d$26;->a:Lcom/meiqia/core/bean/MQMessage;

    iget-object v2, p0, Lcom/meiqia/core/d$26;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/meiqia/core/d$26;->c:Lcom/meiqia/core/g$f;

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQMessage;Ljava/util/Map;Lcom/meiqia/core/g$f;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$26;->c:Lcom/meiqia/core/g$f;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/g$f;->onFailure(ILjava/lang/String;)V

    return-void
.end method
