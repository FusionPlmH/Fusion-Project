.class Lcom/meiqia/core/d$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnInitCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$1;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$1;->a:Lcom/meiqia/core/callback/OnInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$1;->a:Lcom/meiqia/core/callback/OnInitCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnInitCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$1;->a:Lcom/meiqia/core/callback/OnInitCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/meiqia/core/callback/OnInitCallback;->onSuccess(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/meiqia/core/d$1;->b:Lcom/meiqia/core/d;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method
