.class Lcom/meiqia/core/d$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(IIJILcom/meiqia/core/callback/OnGetMessageListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:I

.field final synthetic c:Lcom/meiqia/core/callback/OnGetMessageListCallback;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;JILcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$6;->d:Lcom/meiqia/core/d;

    iput-wide p2, p0, Lcom/meiqia/core/d$6;->a:J

    iput p4, p0, Lcom/meiqia/core/d$6;->b:I

    iput-object p5, p0, Lcom/meiqia/core/d$6;->c:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$6;->c:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
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

    iget-object v0, p0, Lcom/meiqia/core/d$6;->d:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->b(Ljava/util/List;)V

    iget-object p1, p0, Lcom/meiqia/core/d$6;->d:Lcom/meiqia/core/d;

    invoke-static {p1}, Lcom/meiqia/core/d;->d(Lcom/meiqia/core/d;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/MQManager;->getInstance(Landroid/content/Context;)Lcom/meiqia/core/MQManager;

    move-result-object p1

    iget-wide v0, p0, Lcom/meiqia/core/d$6;->a:J

    iget v2, p0, Lcom/meiqia/core/d$6;->b:I

    new-instance v3, Lcom/meiqia/core/d$6$1;

    invoke-direct {v3, p0}, Lcom/meiqia/core/d$6$1;-><init>(Lcom/meiqia/core/d$6;)V

    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/meiqia/core/MQManager;->getMQMessageFromDatabase(JILcom/meiqia/core/callback/OnGetMessageListCallback;)V

    return-void
.end method
