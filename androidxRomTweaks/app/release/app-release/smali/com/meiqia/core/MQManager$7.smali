.class Lcom/meiqia/core/MQManager$7;
.super Lcom/meiqia/core/callback/SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->setClientOnlineWithCustomizedId(Ljava/lang/String;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
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

    iput-object p1, p0, Lcom/meiqia/core/MQManager$7;->c:Lcom/meiqia/core/MQManager;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$7;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/MQManager$7;->b:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-direct {p0}, Lcom/meiqia/core/callback/SuccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 3

    invoke-static {}, Lcom/meiqia/core/MQManager;->a()Lcom/meiqia/core/d;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/MQManager$7;->a:Ljava/lang/String;

    new-instance v2, Lcom/meiqia/core/MQManager$7$1;

    invoke-direct {v2, p0}, Lcom/meiqia/core/MQManager$7$1;-><init>(Lcom/meiqia/core/MQManager$7;)V

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V

    return-void
.end method
