.class Lcom/meiqia/core/d$12$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$12;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$12;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$12;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$12$1;->a:Lcom/meiqia/core/d$12;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$12$1;->a:Lcom/meiqia/core/d$12;

    iget-object v0, v0, Lcom/meiqia/core/d$12;->c:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    iget-object v2, p0, Lcom/meiqia/core/d$12$1;->a:Lcom/meiqia/core/d$12;

    iget-object v2, v2, Lcom/meiqia/core/d$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/a/i;->c(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d$12$1;->a:Lcom/meiqia/core/d$12;

    iget-object v0, v0, Lcom/meiqia/core/d$12;->b:Lcom/meiqia/core/callback/OnClientInfoCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$12$1;->a:Lcom/meiqia/core/d$12;

    iget-object v0, v0, Lcom/meiqia/core/d$12;->b:Lcom/meiqia/core/callback/OnClientInfoCallback;

    invoke-interface {v0}, Lcom/meiqia/core/callback/OnClientInfoCallback;->onSuccess()V

    :cond_0
    return-void
.end method
