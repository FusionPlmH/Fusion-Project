.class Lcom/meiqia/core/d$6$1$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$6$1;->onFailure(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/meiqia/core/d$6$1;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$6$1;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$6$1$2;->c:Lcom/meiqia/core/d$6$1;

    iput p2, p0, Lcom/meiqia/core/d$6$1$2;->a:I

    iput-object p3, p0, Lcom/meiqia/core/d$6$1$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$6$1$2;->c:Lcom/meiqia/core/d$6$1;

    iget-object v0, v0, Lcom/meiqia/core/d$6$1;->a:Lcom/meiqia/core/d$6;

    iget-object v0, v0, Lcom/meiqia/core/d$6;->c:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$6$1$2;->c:Lcom/meiqia/core/d$6$1;

    iget-object v0, v0, Lcom/meiqia/core/d$6$1;->a:Lcom/meiqia/core/d$6;

    iget-object v0, v0, Lcom/meiqia/core/d$6;->c:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    iget v1, p0, Lcom/meiqia/core/d$6$1$2;->a:I

    iget-object v2, p0, Lcom/meiqia/core/d$6$1$2;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
