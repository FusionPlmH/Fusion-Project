.class Lcom/meiqia/core/MQManager$6;
.super Lcom/meiqia/core/callback/SuccessCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->setCurrentClientOnline(Lcom/meiqia/core/callback/OnClientOnlineCallback;)V
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

    iput-object p1, p0, Lcom/meiqia/core/MQManager$6;->b:Lcom/meiqia/core/MQManager;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$6;->a:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-direct {p0}, Lcom/meiqia/core/callback/SuccessCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/MQManager$6;->b:Lcom/meiqia/core/MQManager;

    iget-object v1, p0, Lcom/meiqia/core/MQManager$6;->a:Lcom/meiqia/core/callback/OnClientOnlineCallback;

    invoke-static {v0, v1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnClientOnlineCallback;)V

    return-void
.end method
