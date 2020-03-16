.class Lcom/meiqia/core/MQManager$7$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager$7;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/MQManager$7;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager$7;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$7$1;->a:Lcom/meiqia/core/MQManager$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$7$1;->a:Lcom/meiqia/core/MQManager$7;

    iget-object v0, v0, Lcom/meiqia/core/MQManager$7;->b:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnClientOnlineCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/MQManager$7$1;->a:Lcom/meiqia/core/MQManager$7;

    iget-object v0, v0, Lcom/meiqia/core/MQManager$7;->c:Lcom/meiqia/core/MQManager;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/MQManager;)Lcom/meiqia/core/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->a(Ljava/lang/String;)Lcom/meiqia/core/bean/MQClient;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v1}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/meiqia/core/MQManager;->b()Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/a/i;->a(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/meiqia/core/MQManager$7$1;->a:Lcom/meiqia/core/MQManager$7;

    iget-object v0, v0, Lcom/meiqia/core/MQManager$7;->c:Lcom/meiqia/core/MQManager;

    invoke-static {v0}, Lcom/meiqia/core/MQManager;->b(Lcom/meiqia/core/MQManager;)V

    :cond_0
    invoke-static {}, Lcom/meiqia/core/MQManager;->a()Lcom/meiqia/core/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQClient;)V

    iget-object p1, p0, Lcom/meiqia/core/MQManager$7$1;->a:Lcom/meiqia/core/MQManager$7;

    iget-object p1, p1, Lcom/meiqia/core/MQManager$7;->c:Lcom/meiqia/core/MQManager;

    iget-object v0, p0, Lcom/meiqia/core/MQManager$7$1;->a:Lcom/meiqia/core/MQManager$7;

    iget-object v0, v0, Lcom/meiqia/core/MQManager$7;->b:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-static {p1, v0}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    return-void
.end method
