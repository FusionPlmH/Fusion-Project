.class Lcom/meiqia/core/d$36$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$36;->onProgress(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/meiqia/core/d$36;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$36;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$36$2;->b:Lcom/meiqia/core/d$36;

    iput p2, p0, Lcom/meiqia/core/d$36$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$36$2;->b:Lcom/meiqia/core/d$36;

    iget-object v0, v0, Lcom/meiqia/core/d$36;->a:Lcom/meiqia/core/callback/OnProgressCallback;

    iget v1, p0, Lcom/meiqia/core/d$36$2;->a:I

    invoke-interface {v0, v1}, Lcom/meiqia/core/callback/OnProgressCallback;->onProgress(I)V

    return-void
.end method
