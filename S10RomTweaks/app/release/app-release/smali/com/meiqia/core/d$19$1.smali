.class Lcom/meiqia/core/d$19$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$19;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$19;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$19;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    iget-object v0, v0, Lcom/meiqia/core/d$19;->d:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    if-eqz v0, :cond_1

    const/16 v0, 0x194

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    iget-object p1, p1, Lcom/meiqia/core/d$19;->d:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1, p2}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    iget-object v0, v0, Lcom/meiqia/core/d$19;->d:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    iget-object v0, v0, Lcom/meiqia/core/d$19;->e:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    iget-wide v1, v1, Lcom/meiqia/core/d$19;->c:J

    invoke-static {v0, p1, v1, v2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/util/List;J)V

    iget-object v0, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    iget-object v0, v0, Lcom/meiqia/core/d$19;->d:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    iget-object v0, v0, Lcom/meiqia/core/d$19;->e:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/meiqia/core/d$19$1;->a:Lcom/meiqia/core/d$19;

    iget-object v0, v0, Lcom/meiqia/core/d$19;->e:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$19$1$1;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$19$1$1;-><init>(Lcom/meiqia/core/d$19$1;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
