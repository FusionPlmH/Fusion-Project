.class Lcom/meiqia/core/d$44$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$44;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$44;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$44;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$44$1;->a:Lcom/meiqia/core/d$44;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$44$1;->a:Lcom/meiqia/core/d$44;

    iget-object v0, v0, Lcom/meiqia/core/d$44;->a:Lcom/meiqia/core/g$a;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/g$a;->onFailure(ILjava/lang/String;)V

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

    iget-object v0, p0, Lcom/meiqia/core/d$44$1;->a:Lcom/meiqia/core/d$44;

    iget-object v0, v0, Lcom/meiqia/core/d$44;->a:Lcom/meiqia/core/g$a;

    iget-object v1, p0, Lcom/meiqia/core/d$44$1;->a:Lcom/meiqia/core/d$44;

    iget-object v1, v1, Lcom/meiqia/core/d$44;->b:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->e(Lcom/meiqia/core/d;)Z

    move-result v1

    iget-object v2, p0, Lcom/meiqia/core/d$44$1;->a:Lcom/meiqia/core/d$44;

    iget-object v2, v2, Lcom/meiqia/core/d$44;->b:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->f(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQAgent;

    move-result-object v2

    iget-object v3, p0, Lcom/meiqia/core/d$44$1;->a:Lcom/meiqia/core/d$44;

    iget-object v3, v3, Lcom/meiqia/core/d$44;->b:Lcom/meiqia/core/d;

    invoke-static {v3}, Lcom/meiqia/core/d;->g(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQConversation;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3, p1}, Lcom/meiqia/core/g$a;->a(ZLcom/meiqia/core/bean/MQAgent;Lcom/meiqia/core/bean/MQConversation;Ljava/util/List;)V

    return-void
.end method
