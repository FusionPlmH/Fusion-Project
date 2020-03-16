.class Lcom/meiqia/core/d$13;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnClientInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(ZLjava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/meiqia/core/callback/OnClientInfoCallback;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;ZLjava/util/Map;Lcom/meiqia/core/callback/OnClientInfoCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$13;->d:Lcom/meiqia/core/d;

    iput-boolean p2, p0, Lcom/meiqia/core/d$13;->a:Z

    iput-object p3, p0, Lcom/meiqia/core/d$13;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/meiqia/core/d$13;->c:Lcom/meiqia/core/callback/OnClientInfoCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$13;->c:Lcom/meiqia/core/callback/OnClientInfoCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnClientInfoCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-boolean v0, p0, Lcom/meiqia/core/d$13;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$13;->b:Ljava/util/Map;

    invoke-static {v0}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$13;->d:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v1

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1, v2, v0}, Lcom/meiqia/core/a/i;->d(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d$13;->c:Lcom/meiqia/core/callback/OnClientInfoCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/core/d$13;->d:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$13$1;

    invoke-direct {v1, p0}, Lcom/meiqia/core/d$13$1;-><init>(Lcom/meiqia/core/d$13;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
