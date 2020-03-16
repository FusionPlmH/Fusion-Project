.class Lcom/meiqia/core/d$11;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMessageListCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/f;Ljava/lang/String;Ljava/lang/String;ZLcom/meiqia/core/MQScheduleRule;Lcom/meiqia/core/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/f;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/meiqia/core/g$a;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/f;Ljava/util/Map;Lcom/meiqia/core/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$11;->d:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$11;->a:Lcom/meiqia/core/f;

    iput-object p3, p0, Lcom/meiqia/core/d$11;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/meiqia/core/d$11;->c:Lcom/meiqia/core/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    const/16 v0, 0x4e2a

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$11;->c:Lcom/meiqia/core/g$a;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/g$a;->onFailure(ILjava/lang/String;)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$11;->d:Lcom/meiqia/core/d;

    iget-object p2, p0, Lcom/meiqia/core/d$11;->b:Ljava/util/Map;

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/meiqia/core/d$11;->c:Lcom/meiqia/core/g$a;

    invoke-static {p1, p2, v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/meiqia/core/d$11;->a:Lcom/meiqia/core/f;

    invoke-virtual {v0, p1}, Lcom/meiqia/core/f;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/meiqia/core/d$11;->d:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/d$11;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/meiqia/core/d$11;->c:Lcom/meiqia/core/g$a;

    invoke-static {v0, v1, p1, v2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    return-void
.end method
