.class Lcom/meiqia/core/g$32$2;
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
.field final synthetic a:Lcom/meiqia/core/g$32;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g$32;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$32$2;->a:Lcom/meiqia/core/g$32;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/g$32$2;->a:Lcom/meiqia/core/g$32;

    iget-object v0, v0, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/g$32$2;->a:Lcom/meiqia/core/g$32;

    iget-object v0, v0, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    const/4 v1, -0x1

    const-string v2, "GeneralSecurityException"

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/callback/OnFailureCallBack;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
