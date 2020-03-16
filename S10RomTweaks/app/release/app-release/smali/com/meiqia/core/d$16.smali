.class Lcom/meiqia/core/d$16;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnClientInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/meiqia/core/bean/MQClient;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic e:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Ljava/lang/String;Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$16;->e:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$16;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/d$16;->b:Lcom/meiqia/core/bean/MQClient;

    iput-object p4, p0, Lcom/meiqia/core/d$16;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/meiqia/core/d$16;->d:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$16;->d:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$16;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$16;->e:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$16;->b:Lcom/meiqia/core/bean/MQClient;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d$16;->e:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    :goto_0
    iget-object v2, p0, Lcom/meiqia/core/d$16;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/a/i;->b(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/d$16;->d:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meiqia/core/d$16;->e:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$16$1;

    invoke-direct {v1, p0}, Lcom/meiqia/core/d$16$1;-><init>(Lcom/meiqia/core/d$16;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
