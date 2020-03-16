.class Lcom/meiqia/core/g$32$5;
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
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lokhttp3/Response;

.field final synthetic c:Lcom/meiqia/core/g$32;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g$32;Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$32$5;->c:Lcom/meiqia/core/g$32;

    iput-object p2, p0, Lcom/meiqia/core/g$32$5;->a:Lorg/json/JSONObject;

    iput-object p3, p0, Lcom/meiqia/core/g$32$5;->b:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/meiqia/core/g$32$5;->a:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/g$32$5;->c:Lcom/meiqia/core/g$32;

    iget-object v1, v1, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/meiqia/core/g$32$5;->c:Lcom/meiqia/core/g$32;

    iget-object v1, v1, Lcom/meiqia/core/g$32;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    iget-object v2, p0, Lcom/meiqia/core/g$32$5;->b:Lokhttp3/Response;

    invoke-virtual {v2}, Lokhttp3/Response;->code()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "code = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meiqia/core/g$32$5;->b:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->code()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " msg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/meiqia/core/g$32$5;->b:Lokhttp3/Response;

    invoke-virtual {v4}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " details = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/meiqia/core/callback/OnFailureCallBack;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
