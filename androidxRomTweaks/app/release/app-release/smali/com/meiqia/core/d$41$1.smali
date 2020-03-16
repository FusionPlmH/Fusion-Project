.class Lcom/meiqia/core/d$41$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$41;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/meiqia/core/d$41;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$41;I)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$41$1;->b:Lcom/meiqia/core/d$41;

    iput p2, p0, Lcom/meiqia/core/d$41$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$41$1;->b:Lcom/meiqia/core/d$41;

    iget-object v0, v0, Lcom/meiqia/core/d$41;->a:Lcom/meiqia/core/g$d;

    iget-object v1, p0, Lcom/meiqia/core/d$41$1;->b:Lcom/meiqia/core/d$41;

    iget-object v1, v1, Lcom/meiqia/core/d$41;->b:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->e(Lcom/meiqia/core/d;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/meiqia/core/d$41$1;->a:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0, v1}, Lcom/meiqia/core/g$d;->a(I)V

    return-void
.end method
