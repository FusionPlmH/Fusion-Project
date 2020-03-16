.class Lcom/meiqia/core/d$4$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$4;->a(Lorg/json/JSONObject;Lokhttp3/Response;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/meiqia/core/d$4;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$4;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$4$1;->c:Lcom/meiqia/core/d$4;

    iput-object p2, p0, Lcom/meiqia/core/d$4$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/d$4$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$4$1;->c:Lcom/meiqia/core/d$4;

    iget-object v0, v0, Lcom/meiqia/core/d$4;->a:Lcom/meiqia/core/g$j;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$4$1;->c:Lcom/meiqia/core/d$4;

    iget-object v0, v0, Lcom/meiqia/core/d$4;->a:Lcom/meiqia/core/g$j;

    iget-object v1, p0, Lcom/meiqia/core/d$4$1;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/meiqia/core/d$4$1;->b:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/meiqia/core/g$j;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
