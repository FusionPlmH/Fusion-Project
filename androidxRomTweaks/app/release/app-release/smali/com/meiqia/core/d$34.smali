.class Lcom/meiqia/core/d$34;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/SimpleCallback;)V
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

    iput-object p1, p0, Lcom/meiqia/core/d$34;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$34;->a:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$34;->b:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/meiqia/core/a/i;->h(Lcom/meiqia/core/bean/MQClient;J)V

    iget-object v0, p0, Lcom/meiqia/core/d$34;->b:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/a/i;->g(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d$34;->b:Lcom/meiqia/core/d;

    invoke-virtual {v0}, Lcom/meiqia/core/d;->h()Lcom/meiqia/core/bean/MQEnterpriseConfig;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$34;->b:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v1

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-static {v0, p1, v1, v2}, Lcom/meiqia/core/a/c;->a(Lcom/meiqia/core/bean/MQEnterpriseConfig;Lorg/json/JSONObject;Lcom/meiqia/core/a/i;Lcom/meiqia/core/bean/MQClient;)V

    iget-object p1, p0, Lcom/meiqia/core/d$34;->a:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/d$34;->b:Lcom/meiqia/core/d;

    new-instance v0, Lcom/meiqia/core/d$34$1;

    invoke-direct {v0, p0}, Lcom/meiqia/core/d$34$1;-><init>(Lcom/meiqia/core/d$34;)V

    invoke-static {p1, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$34;->a:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
