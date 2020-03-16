.class Lcom/meiqia/core/g$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Ljava/util/Map;Lcom/meiqia/core/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$a;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/g$a;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$5;->c:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$5;->a:Lcom/meiqia/core/g$a;

    iput-object p3, p0, Lcom/meiqia/core/g$5;->b:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 3

    const-string p2, "result"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "queueing"

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/g$5;->a:Lcom/meiqia/core/g$a;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0, v0, v0}, Lcom/meiqia/core/g$a;->a(ZLcom/meiqia/core/bean/MQAgent;Lcom/meiqia/core/bean/MQConversation;Ljava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p2, "agent"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-static {p2}, Lcom/meiqia/core/a/c;->b(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQAgent;

    move-result-object p2

    const-string v0, "conv"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/core/a/c;->c(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQConversation;

    move-result-object v0

    invoke-virtual {p2}, Lcom/meiqia/core/bean/MQAgent;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/meiqia/core/bean/MQConversation;->setAgent_id(Ljava/lang/String;)V

    const-string v1, "messages"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/c;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/meiqia/core/g$5;->a:Lcom/meiqia/core/g$a;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p2, v0, p1}, Lcom/meiqia/core/g$a;->a(ZLcom/meiqia/core/bean/MQAgent;Lcom/meiqia/core/bean/MQConversation;Ljava/util/List;)V

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "scheduler "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/meiqia/core/g$5;->b:Ljava/util/Map;

    const-string v0, "track_id"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/f;->b(Ljava/lang/String;)V

    return-void
.end method
