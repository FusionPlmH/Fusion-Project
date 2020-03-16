.class Lcom/meiqia/core/g$4;
.super Lcom/meiqia/core/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Lcom/meiqia/core/bean/MQMessage;Ljava/io/File;Lcom/meiqia/core/callback/OnProgressCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/io/File;

.field final synthetic b:Lcom/meiqia/core/callback/OnProgressCallback;

.field final synthetic c:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Ljava/io/File;Lcom/meiqia/core/callback/OnProgressCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$4;->c:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$4;->a:Ljava/io/File;

    iput-object p3, p0, Lcom/meiqia/core/g$4;->b:Lcom/meiqia/core/callback/OnProgressCallback;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/meiqia/core/g$c;-><init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$1;)V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 2

    iget-object p1, p0, Lcom/meiqia/core/g$4;->c:Lcom/meiqia/core/g;

    iget-object v0, p0, Lcom/meiqia/core/g$4;->a:Ljava/io/File;

    iget-object v1, p0, Lcom/meiqia/core/g$4;->b:Lcom/meiqia/core/callback/OnProgressCallback;

    invoke-static {p1, v0, p2, v1}, Lcom/meiqia/core/g;->a(Lcom/meiqia/core/g;Ljava/io/File;Lokhttp3/Response;Lcom/meiqia/core/callback/OnProgressCallback;)V

    return-void
.end method
