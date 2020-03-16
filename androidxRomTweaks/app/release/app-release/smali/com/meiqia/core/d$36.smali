.class Lcom/meiqia/core/d$36;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnProgressCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnProgressCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$36;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$36;->a:Lcom/meiqia/core/callback/OnProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$36;->b:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$36$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/meiqia/core/d$36$3;-><init>(Lcom/meiqia/core/d$36;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$36;->b:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$36$2;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$36$2;-><init>(Lcom/meiqia/core/d$36;I)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$36;->b:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$36$1;

    invoke-direct {v1, p0}, Lcom/meiqia/core/d$36$1;-><init>(Lcom/meiqia/core/d$36;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method
