.class Lcom/meiqia/core/g$21;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$f;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$f;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$21;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$21;->a:Lcom/meiqia/core/g$f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 2

    const-string p2, "created_at"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/meiqia/core/g$21;->a:Lcom/meiqia/core/g$f;

    invoke-interface {p1, p2, v0, v1}, Lcom/meiqia/core/g$f;->a(Ljava/lang/String;J)V

    return-void
.end method
