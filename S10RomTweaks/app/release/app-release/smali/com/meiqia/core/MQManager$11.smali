.class Lcom/meiqia/core/MQManager$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->getMQMessageFromDatabase(JILcom/meiqia/core/callback/OnGetMessageListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

.field final synthetic b:Lcom/meiqia/core/MQManager;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$11;->b:Lcom/meiqia/core/MQManager;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$11;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$11;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/MQManager$11;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-interface {v0, p1}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
