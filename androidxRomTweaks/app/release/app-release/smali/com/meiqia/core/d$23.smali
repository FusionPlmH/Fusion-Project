.class Lcom/meiqia/core/d$23;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnClientInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnEndConversationCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnEndConversationCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnEndConversationCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$23;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$23;->a:Lcom/meiqia/core/callback/OnEndConversationCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$23;->a:Lcom/meiqia/core/callback/OnEndConversationCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnEndConversationCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$23;->b:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d$23;->b:Lcom/meiqia/core/d;

    invoke-virtual {v0, v2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQAgent;)V

    iget-object v0, p0, Lcom/meiqia/core/d$23;->b:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$23$1;

    invoke-direct {v1, p0}, Lcom/meiqia/core/d$23$1;-><init>(Lcom/meiqia/core/d$23;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/meiqia/core/d$23;->b:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meiqia/core/MQManager;->closeMeiqiaService()V

    return-void
.end method
