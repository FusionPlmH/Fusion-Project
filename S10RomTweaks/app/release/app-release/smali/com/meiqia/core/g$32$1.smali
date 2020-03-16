.class Lcom/meiqia/core/g$32$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g$32;->onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/IOException;

.field final synthetic b:Lokhttp3/Call;

.field final synthetic c:Lcom/meiqia/core/g$32;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g$32;Ljava/io/IOException;Lokhttp3/Call;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$32$1;->c:Lcom/meiqia/core/g$32;

    iput-object p2, p0, Lcom/meiqia/core/g$32$1;->a:Ljava/io/IOException;

    iput-object p3, p0, Lcom/meiqia/core/g$32$1;->b:Lokhttp3/Call;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/g$32$1;->a:Ljava/io/IOException;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "IOException"

    :goto_0
    iget-object v1, p0, Lcom/meiqia/core/g$32$1;->c:Lcom/meiqia/core/g$32;

    iget-object v1, v1, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/meiqia/core/g$32$1;->b:Lokhttp3/Call;

    invoke-interface {v1}, Lokhttp3/Call;->isCanceled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meiqia/core/g$32$1;->c:Lcom/meiqia/core/g$32;

    iget-object v1, v1, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    const/16 v2, 0x4e2a

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/meiqia/core/g$32$1;->c:Lcom/meiqia/core/g$32;

    iget-object v1, v1, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    const/16 v2, 0x4e1f

    :goto_1
    invoke-interface {v1, v2, v0}, Lcom/meiqia/core/callback/OnFailureCallBack;->onFailure(ILjava/lang/String;)V

    :cond_2
    return-void
.end method
