.class Lcom/meiqia/core/d$36$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$36;->onFailure(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/meiqia/core/d$36;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$36;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$36$3;->c:Lcom/meiqia/core/d$36;

    iput p2, p0, Lcom/meiqia/core/d$36$3;->a:I

    iput-object p3, p0, Lcom/meiqia/core/d$36$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$36$3;->c:Lcom/meiqia/core/d$36;

    iget-object v0, v0, Lcom/meiqia/core/d$36;->a:Lcom/meiqia/core/callback/OnProgressCallback;

    iget v1, p0, Lcom/meiqia/core/d$36$3;->a:I

    iget-object v2, p0, Lcom/meiqia/core/d$36$3;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method