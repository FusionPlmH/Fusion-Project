.class Lcom/meiqia/core/g$30;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->b(Ljava/lang/String;Ljava/util/Map;Lcom/meiqia/core/g$b;Lcom/meiqia/core/callback/OnFailureCallBack;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnFailureCallBack;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnFailureCallBack;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$30;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$30;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/g$30;->a:Lcom/meiqia/core/callback/OnFailureCallBack;

    const/4 v1, -0x1

    const-string v2, "GeneralSecurityException"

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/callback/OnFailureCallBack;->onFailure(ILjava/lang/String;)V

    return-void
.end method
