.class Lcom/meiqia/core/d$40;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$40;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$40;->a:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$40;->a:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$40;->b:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->h()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v0, v0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->survey:Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->setHas_submitted_form(Z)V

    iget-object v0, p0, Lcom/meiqia/core/d$40;->b:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const-string v3, "has_submitted_form"

    invoke-virtual {v0, v2, v3, v1}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/meiqia/core/d$40;->a:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$40;->b:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$40$1;

    invoke-direct {v1, p0}, Lcom/meiqia/core/d$40$1;-><init>(Lcom/meiqia/core/d$40;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
