.class Lcom/meiqia/core/MQManager$3;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/callback/SuccessCallback;Lcom/meiqia/core/callback/OnFailureCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/SuccessCallback;

.field final synthetic b:Lcom/meiqia/core/callback/OnFailureCallBack;

.field final synthetic c:Lcom/meiqia/core/MQManager;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/SuccessCallback;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$3;->c:Lcom/meiqia/core/MQManager;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$3;->a:Lcom/meiqia/core/callback/SuccessCallback;

    iput-object p3, p0, Lcom/meiqia/core/MQManager$3;->b:Lcom/meiqia/core/callback/OnFailureCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$3;->b:Lcom/meiqia/core/callback/OnFailureCallBack;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnFailureCallBack;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/core/MQManager$3;->a:Lcom/meiqia/core/callback/SuccessCallback;

    invoke-virtual {p1}, Lcom/meiqia/core/callback/SuccessCallback;->onSuccess()V

    return-void
.end method
