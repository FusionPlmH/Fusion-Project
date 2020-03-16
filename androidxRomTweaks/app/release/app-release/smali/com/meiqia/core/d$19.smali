.class Lcom/meiqia/core/d$19;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/bean/MQClient;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:J

.field final synthetic d:Lcom/meiqia/core/callback/OnGetMessageListCallback;

.field final synthetic e:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;JLcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$19;->e:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$19;->a:Lcom/meiqia/core/bean/MQClient;

    iput-object p3, p0, Lcom/meiqia/core/d$19;->b:Ljava/lang/String;

    iput-wide p4, p0, Lcom/meiqia/core/d$19;->c:J

    iput-object p6, p0, Lcom/meiqia/core/d$19;->d:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$19;->d:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    if-eqz v0, :cond_1

    const/16 v1, 0x194

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onSuccess(Ljava/util/List;)V

    return-void

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d$19;->e:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/d$19;->a:Lcom/meiqia/core/bean/MQClient;

    iget-object v2, p0, Lcom/meiqia/core/d$19;->b:Ljava/lang/String;

    new-instance v3, Lcom/meiqia/core/d$19$1;

    invoke-direct {v3, p0}, Lcom/meiqia/core/d$19$1;-><init>(Lcom/meiqia/core/d$19;)V

    invoke-static {v0, v1, v2, p1, v3}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Ljava/util/List;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method
