.class Lcom/meiqia/core/d$15$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$15;->onSuccess(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/meiqia/core/d$15;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$15;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$15$1;->b:Lcom/meiqia/core/d$15;

    iput-object p2, p0, Lcom/meiqia/core/d$15$1;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$15$1;->b:Lcom/meiqia/core/d$15;

    iget-object v0, v0, Lcom/meiqia/core/d$15;->b:Lcom/meiqia/core/callback/OnInitCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$15$1;->b:Lcom/meiqia/core/d$15;

    iget-object v0, v0, Lcom/meiqia/core/d$15;->b:Lcom/meiqia/core/callback/OnInitCallback;

    iget-object v1, p0, Lcom/meiqia/core/d$15$1;->a:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/meiqia/core/callback/OnInitCallback;->onSuccess(Ljava/lang/String;)V

    :cond_0
    return-void
.end method