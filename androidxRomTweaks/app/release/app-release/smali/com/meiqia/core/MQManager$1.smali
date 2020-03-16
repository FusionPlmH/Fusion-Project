.class final Lcom/meiqia/core/MQManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->init(Landroid/content/Context;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/meiqia/core/callback/OnInitCallback;

.field final synthetic c:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/meiqia/core/callback/OnInitCallback;Z)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$1;->b:Lcom/meiqia/core/callback/OnInitCallback;

    iput-boolean p3, p0, Lcom/meiqia/core/MQManager$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$1;->b:Lcom/meiqia/core/callback/OnInitCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnInitCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/MQManager$1;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/meiqia/core/f;->a(Landroid/content/Context;)Lcom/meiqia/core/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/MQManager$1;->b:Lcom/meiqia/core/callback/OnInitCallback;

    const/16 v0, 0x4e1b

    const-string v1, "meiqia sdk init failed"

    invoke-interface {p1, v0, v1}, Lcom/meiqia/core/callback/OnInitCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/meiqia/core/MQManager$1;->c:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/meiqia/core/MQManager;->a()Lcom/meiqia/core/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meiqia/core/d;->k()V

    :cond_1
    invoke-static {}, Lcom/meiqia/core/MQManager;->a()Lcom/meiqia/core/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQClient;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->b(Z)Z

    iget-object v0, p0, Lcom/meiqia/core/MQManager$1;->b:Lcom/meiqia/core/callback/OnInitCallback;

    invoke-interface {v0, p1}, Lcom/meiqia/core/callback/OnInitCallback;->onSuccess(Ljava/lang/String;)V

    :try_start_0
    invoke-static {}, Lcom/meiqia/core/MQManager;->b()Lcom/meiqia/core/a/i;

    move-result-object p1

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p1, v0}, Lcom/meiqia/core/a/i;->r(Lcom/meiqia/core/bean/MQClient;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/meiqia/core/MQManager;->a()Lcom/meiqia/core/d;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/SimpleCallback;)V

    invoke-static {}, Lcom/meiqia/core/MQManager;->b()Lcom/meiqia/core/a/i;

    move-result-object p1

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/meiqia/core/a/i;->c(Lcom/meiqia/core/bean/MQClient;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-void
.end method
