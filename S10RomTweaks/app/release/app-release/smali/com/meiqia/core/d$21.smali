.class Lcom/meiqia/core/d$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/meiqia/core/callback/OnGetMessageListCallback;

.field final synthetic c:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$21;->c:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$21;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/meiqia/core/d$21;->b:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$21;->b:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/meiqia/core/bean/MQMessage;

    int-to-long v3, v1

    invoke-static {v2, v3, v4}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;J)V

    sget-object v3, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v3}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meiqia/core/bean/MQMessage;->setTrack_id(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/core/bean/MQMessage;

    iget-object v1, p0, Lcom/meiqia/core/d$21;->c:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v1

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/meiqia/core/a/i;->c(Lcom/meiqia/core/bean/MQClient;J)V

    :cond_1
    iget-object v0, p0, Lcom/meiqia/core/d$21;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-instance p1, Lcom/meiqia/core/a/h;

    invoke-direct {p1}, Lcom/meiqia/core/a/h;-><init>()V

    iget-object v0, p0, Lcom/meiqia/core/d$21;->a:Ljava/util/List;

    invoke-static {v0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p1, p0, Lcom/meiqia/core/d$21;->b:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    iget-object v0, p0, Lcom/meiqia/core/d$21;->a:Ljava/util/List;

    invoke-interface {p1, v0}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
