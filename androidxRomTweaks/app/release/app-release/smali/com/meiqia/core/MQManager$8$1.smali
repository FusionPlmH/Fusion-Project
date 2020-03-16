.class Lcom/meiqia/core/MQManager$8$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager$8;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/MQManager$8;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager$8;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$8$1;->a:Lcom/meiqia/core/MQManager$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/core/MQManager$8$1;->a:Lcom/meiqia/core/MQManager$8;

    iget-object p1, p1, Lcom/meiqia/core/MQManager$8;->b:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    const/16 p2, 0x4e23

    const-string v0, "clientId is wrong"

    invoke-interface {p1, p2, v0}, Lcom/meiqia/core/callback/OnClientOnlineCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/MQManager$8$1;->a:Lcom/meiqia/core/MQManager$8;

    iget-object v0, v0, Lcom/meiqia/core/MQManager$8;->c:Lcom/meiqia/core/MQManager;

    iget-object v1, p0, Lcom/meiqia/core/MQManager$8$1;->a:Lcom/meiqia/core/MQManager$8;

    iget-object v1, v1, Lcom/meiqia/core/MQManager$8;->b:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-virtual {v0, p1, v1}, Lcom/meiqia/core/MQManager;->setClientOnlineWithClientId(Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    return-void
.end method
