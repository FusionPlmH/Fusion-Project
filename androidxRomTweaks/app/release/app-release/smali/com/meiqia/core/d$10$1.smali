.class Lcom/meiqia/core/d$10$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$10;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$10;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$10;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$10$1;->a:Lcom/meiqia/core/d$10;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$10$1;->a:Lcom/meiqia/core/d$10;

    iget-object v0, v0, Lcom/meiqia/core/d$10;->b:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/meiqia/core/a/i;->g(Lcom/meiqia/core/bean/MQClient;J)V

    iget-object v0, p0, Lcom/meiqia/core/d$10$1;->a:Lcom/meiqia/core/d$10;

    iget-object v0, v0, Lcom/meiqia/core/d$10;->a:Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$10$1;->a:Lcom/meiqia/core/d$10;

    iget-object v0, v0, Lcom/meiqia/core/d$10;->a:Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;

    invoke-interface {v0}, Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;->onSuccess()V

    :cond_0
    return-void
.end method
