.class Lcom/meiqia/core/g$32$4;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g$32;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/meiqia/core/g$32;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g$32;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$32$4;->c:Lcom/meiqia/core/g$32;

    iput p2, p0, Lcom/meiqia/core/g$32$4;->a:I

    iput-object p3, p0, Lcom/meiqia/core/g$32$4;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/g$32$4;->c:Lcom/meiqia/core/g$32;

    iget-object v0, v0, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/g$32$4;->c:Lcom/meiqia/core/g$32;

    iget-object v0, v0, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    iget v1, p0, Lcom/meiqia/core/g$32$4;->a:I

    iget-object v2, p0, Lcom/meiqia/core/g$32$4;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/callback/OnFailureCallBack;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
