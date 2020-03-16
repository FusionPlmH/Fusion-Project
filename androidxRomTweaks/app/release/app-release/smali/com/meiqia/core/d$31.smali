.class Lcom/meiqia/core/d$31;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$31;->a:Ljava/util/List;

    iput-object p3, p0, Lcom/meiqia/core/d$31;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/meiqia/core/d$31;->c:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONArray;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/meiqia/core/d$31;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/meiqia/core/d$31;->a:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/meiqia/core/bean/MQMessage;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "created_on"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/meiqia/core/a/j;->a(Ljava/lang/String;)J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Lcom/meiqia/core/bean/MQMessage;->setCreated_on(J)V

    const-string v3, "id"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meiqia/core/bean/MQMessage;->setId(J)V

    const-string v2, "arrived"

    invoke-virtual {v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setStatus(Ljava/lang/String;)V

    const-string v2, "client"

    invoke-virtual {v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setFrom_type(Ljava/lang/String;)V

    const-string v2, "message"

    invoke-virtual {v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setType(Ljava/lang/String;)V

    sget-object v2, Lcom/meiqia/core/d;->a:Lcom/meiqia/core/bean/MQClient;

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQClient;->getTrackId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setTrack_id(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->g(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQConversation;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->f(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQAgent;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->f(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQAgent;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQAgent;->getNickname()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setAgent_nickname(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->g(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQConversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQConversation;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meiqia/core/bean/MQMessage;->setConversation_id(J)V

    iget-object v2, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->g(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQConversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQConversation;->getAgent_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meiqia/core/bean/MQMessage;->setAgent_id(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->g(Lcom/meiqia/core/d;)Lcom/meiqia/core/bean/MQConversation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meiqia/core/bean/MQConversation;->getEnterprise_id()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/meiqia/core/bean/MQMessage;->setEnterprise_id(J)V

    :cond_0
    iget-object v2, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQMessage;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_2
    iget-object p1, p0, Lcom/meiqia/core/d$31;->b:Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    iget-object p1, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    iget-object v0, p0, Lcom/meiqia/core/d$31;->b:Ljava/util/Map;

    iget-object v1, p0, Lcom/meiqia/core/d$31;->c:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-static {p1, v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    goto :goto_2

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/meiqia/core/d$31;->c:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/meiqia/core/d$31;->d:Lcom/meiqia/core/d;

    new-instance v0, Lcom/meiqia/core/d$31$1;

    invoke-direct {v0, p0}, Lcom/meiqia/core/d$31$1;-><init>(Lcom/meiqia/core/d$31;)V

    invoke-static {p1, v0}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$31;->c:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
