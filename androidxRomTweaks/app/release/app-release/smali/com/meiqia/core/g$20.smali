.class Lcom/meiqia/core/g$20;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$g;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$g;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$20;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$20;->a:Lcom/meiqia/core/g$g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 1

    iget-object p2, p0, Lcom/meiqia/core/g$20;->a:Lcom/meiqia/core/g$g;

    const-string v0, "replies"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/meiqia/core/g$g;->a(Lorg/json/JSONArray;)V

    return-void
.end method
