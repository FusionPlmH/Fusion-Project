.class Lcom/meiqia/core/g$26$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g$26;->a(Lorg/json/JSONObject;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$26;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g$26;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$26$1;->a:Lcom/meiqia/core/g$26;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/g$26$1;->a:Lcom/meiqia/core/g$26;

    iget-object v0, v0, Lcom/meiqia/core/g$26;->a:Lcom/meiqia/core/g$e;

    const/16 v1, 0x4e20

    const-string v2, "UNKNOW"

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/g$e;->onFailure(ILjava/lang/String;)V

    return-void
.end method
