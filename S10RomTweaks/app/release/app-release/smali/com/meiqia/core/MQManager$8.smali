.class Lcom/meiqia/core/MQManager$8;
.super Lcom/meiqia/core/callback/SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->setClientOnlineWithClientId(Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/meiqia/core/callback/OnClientOnlineCallback;

.field final synthetic c:Lcom/meiqia/core/MQManager;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager;Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$8;->c:Lcom/meiqia/core/MQManager;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$8;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/MQManager$8;->b:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-direct {p0}, Lcom/meiqia/core/callback/SuccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/MQManager$8;->c:Lcom/meiqia/core/MQManager;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/MQManager;)Lcom/meiqia/core/f;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/MQManager$8;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/meiqia/core/MQManager;->b()Lcom/meiqia/core/a/i;

    move-result-object v1

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/meiqia/core/MQManager$8;->c:Lcom/meiqia/core/MQManager;

    invoke-static {v1}, Lcom/meiqia/core/MQManager;->b(Lcom/meiqia/core/MQManager;)V

    :cond_0
    if-eqz v0, :cond_1

    invoke-static {}, Lcom/meiqia/core/MQManager;->a()Lcom/meiqia/core/d;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQClient;)V

    iget-object v0, p0, Lcom/meiqia/core/MQManager$8;->c:Lcom/meiqia/core/MQManager;

    iget-object v1, p0, Lcom/meiqia/core/MQManager$8;->b:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-static {v0, v1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/meiqia/core/MQManager;->a()Lcom/meiqia/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/MQManager$8;->a:Ljava/lang/String;

    new-instance v2, Lcom/meiqia/core/MQManager$8$1;

    invoke-direct {v2, p0}, Lcom/meiqia/core/MQManager$8$1;-><init>(Lcom/meiqia/core/MQManager$8;)V

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V

    :goto_0
    return-void
.end method
