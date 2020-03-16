.class Lcom/meiqia/core/d$7;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnRegisterDeviceTokenCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$7;->a:Lcom/meiqia/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$7;->a:Lcom/meiqia/core/d;

    invoke-static {v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v0

    sget-object v1, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/a/i;->b(Lcom/meiqia/core/bean/MQClient;Z)V

    return-void
.end method
