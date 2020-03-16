.class Lcom/meiqia/core/d$37;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/bean/MQMessage;Lcom/meiqia/core/callback/OnProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnProgressCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$37;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$37;->a:Lcom/meiqia/core/callback/OnProgressCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$37;->a:Lcom/meiqia/core/callback/OnProgressCallback;

    const/16 v1, 0x4e20

    const-string v2, "download file failed"

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/callback/OnProgressCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
