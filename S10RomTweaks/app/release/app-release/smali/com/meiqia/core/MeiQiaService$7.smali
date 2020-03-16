.class Lcom/meiqia/core/MeiQiaService$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MeiQiaService;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Lcom/meiqia/core/MeiQiaService;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MeiQiaService;J)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MeiQiaService$7;->b:Lcom/meiqia/core/MeiQiaService;

    iput-wide p2, p0, Lcom/meiqia/core/MeiQiaService$7;->a:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/meiqia/core/MeiQiaService$7;->a:J

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService$7;->b:Lcom/meiqia/core/MeiQiaService;

    invoke-static {v1}, Lcom/meiqia/core/MeiQiaService;->p(Lcom/meiqia/core/MeiQiaService;)Lcom/meiqia/core/a/i;

    move-result-object v1

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQMessage;->getCreated_on()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Lcom/meiqia/core/a/i;->b(Lcom/meiqia/core/bean/MQClient;J)V

    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService$7;->b:Lcom/meiqia/core/MeiQiaService;

    invoke-static {v1}, Lcom/meiqia/core/MeiQiaService;->n(Lcom/meiqia/core/MeiQiaService;)V

    :cond_0
    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService$7;->b:Lcom/meiqia/core/MeiQiaService;

    invoke-static {v1}, Lcom/meiqia/core/MeiQiaService;->o(Lcom/meiqia/core/MeiQiaService;)Lcom/meiqia/core/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meiqia/core/c;->a(Lcom/meiqia/core/bean/MQMessage;)V

    goto :goto_0

    :cond_1
    return-void
.end method
