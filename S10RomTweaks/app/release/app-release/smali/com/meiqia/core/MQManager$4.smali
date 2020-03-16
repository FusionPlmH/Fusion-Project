.class Lcom/meiqia/core/MQManager$4;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->getClientPositionInQueue(Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;

.field final synthetic b:Lcom/meiqia/core/MQManager;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$4;->b:Lcom/meiqia/core/MQManager;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$4;->a:Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$4;->a:Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;

    invoke-interface {v0, p1}, Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;->onSuccess(I)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$4;->a:Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnClientPositionInQueueCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
