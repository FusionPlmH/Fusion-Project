.class Lcom/meiqia/core/g$26;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$e;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$e;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$26;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$26;->a:Lcom/meiqia/core/g$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/meiqia/core/g$26;->a:Lcom/meiqia/core/g$e;

    invoke-interface {p2, p1}, Lcom/meiqia/core/g$e;->a(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/g$26;->b:Lcom/meiqia/core/g;

    invoke-static {p1}, Lcom/meiqia/core/g;->b(Lcom/meiqia/core/g;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/meiqia/core/g$26$1;

    invoke-direct {p2, p0}, Lcom/meiqia/core/g$26$1;-><init>(Lcom/meiqia/core/g$26;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
