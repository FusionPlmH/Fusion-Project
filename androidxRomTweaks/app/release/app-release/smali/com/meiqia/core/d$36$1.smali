.class Lcom/meiqia/core/d$36$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$36;->onSuccess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d$36;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$36;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$36$1;->a:Lcom/meiqia/core/d$36;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$36$1;->a:Lcom/meiqia/core/d$36;

    iget-object v0, v0, Lcom/meiqia/core/d$36;->a:Lcom/meiqia/core/callback/OnProgressCallback;

    invoke-interface {v0}, Lcom/meiqia/core/callback/OnProgressCallback;->onSuccess()V

    return-void
.end method
