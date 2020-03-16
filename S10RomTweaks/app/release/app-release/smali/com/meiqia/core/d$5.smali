.class Lcom/meiqia/core/d$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/g$j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$j;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/g$j;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$5;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$5;->a:Lcom/meiqia/core/g$j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 2

    const-string p2, "audio_url"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "audio_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/core/d$5;->b:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$5$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/meiqia/core/d$5$1;-><init>(Lcom/meiqia/core/d$5;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method
