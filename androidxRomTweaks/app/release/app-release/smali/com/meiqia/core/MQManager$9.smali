.class Lcom/meiqia/core/MQManager$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnClientOnlineCallback;

.field final synthetic b:Lcom/meiqia/core/MQManager;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$9;->b:Lcom/meiqia/core/MQManager;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$9;->a:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/meiqia/core/bean/MQAgent;Lcom/meiqia/core/bean/MQConversation;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/meiqia/core/bean/MQAgent;",
            "Lcom/meiqia/core/bean/MQConversation;",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/meiqia/core/bean/MQConversation;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-object p3, p0, Lcom/meiqia/core/MQManager$9;->a:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-interface {p3, p2, p1, p4}, Lcom/meiqia/core/callback/OnClientOnlineCallback;->onSuccess(Lcom/meiqia/core/bean/MQAgent;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$9;->a:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnClientOnlineCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
