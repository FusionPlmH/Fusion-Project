.class Lcom/meiqia/core/d$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$6;->onSuccess(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$6;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$6;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$6$1;->a:Lcom/meiqia/core/d$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$6$1;->a:Lcom/meiqia/core/d$6;

    iget-object v0, v0, Lcom/meiqia/core/d$6;->d:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$6$1$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/meiqia/core/d$6$1$2;-><init>(Lcom/meiqia/core/d$6$1;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

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

    iget-object v0, p0, Lcom/meiqia/core/d$6$1;->a:Lcom/meiqia/core/d$6;

    iget-object v0, v0, Lcom/meiqia/core/d$6;->d:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$6$1$1;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$6$1$1;-><init>(Lcom/meiqia/core/d$6$1;Ljava/util/List;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method
