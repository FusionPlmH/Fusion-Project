.class Lcom/meiqia/core/MeiQiaService$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MeiQiaService;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/MeiQiaService;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MeiQiaService;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MeiQiaService$6;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
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

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meiqia/core/bean/MQMessage;

    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService$6;->a:Lcom/meiqia/core/MeiQiaService;

    invoke-static {v1}, Lcom/meiqia/core/MeiQiaService;->o(Lcom/meiqia/core/MeiQiaService;)Lcom/meiqia/core/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meiqia/core/c;->a(Lcom/meiqia/core/bean/MQMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method
