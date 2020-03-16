.class Lcom/meiqia/core/d$33;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$33;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$33;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 3

    const/16 v0, 0x4e2a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$33;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$33;->b:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object p1

    sget-object p2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {p1, p2}, Lcom/meiqia/core/a/i;->c(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/meiqia/core/a/j;->a(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lcom/meiqia/core/d$33;->b:Lcom/meiqia/core/d;

    sget-object v0, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/meiqia/core/d$33;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-static {p2, v0, p1, v1, v2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d$33;->b:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/a/i;->c(Lcom/meiqia/core/bean/MQClient;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/meiqia/core/a/j;->a(J)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$33;->b:Lcom/meiqia/core/d;

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    iget-object v3, p0, Lcom/meiqia/core/d$33;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-static {v1, v2, v0, p1, v3}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method
