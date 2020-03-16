.class public Lcom/meiqia/core/a/c;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQMessage;
    .locals 24

    move-object/from16 v0, p0

    const-string v1, "sub_type"

    new-instance v2, Lcom/meiqia/core/bean/MQMessage;

    const-string v3, "text"

    invoke-direct {v2, v3}, Lcom/meiqia/core/bean/MQMessage;-><init>(Ljava/lang/String;)V

    const-string v3, "id"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v3

    const-string v5, "conversation_id"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    const-string v7, "content_type"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "content"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "type"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "created_on"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    const-string v10, "created_at"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    :cond_0
    invoke-static {v10}, Lcom/meiqia/core/a/j;->a(Ljava/lang/String;)J

    move-result-wide v10

    const-string v12, "from_type"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "track_id"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "agent"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v14

    const-string v15, ""

    if-eqz v14, :cond_1

    const-string v15, "nickname"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    const-string v15, "avatar"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    const-string v15, "token"

    invoke-virtual {v14, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object v14, v15

    move-object/from16 v23, v17

    move-object/from16 v17, v16

    move-object/from16 v16, v23

    goto :goto_0

    :cond_1
    move-object v14, v15

    move-object/from16 v16, v14

    move-object/from16 v17, v16

    :goto_0
    const-string v15, "media_url"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v18, v15

    const-string v15, "enterprise_id"

    move-wide/from16 v19, v10

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    const-string v15, "extra"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v21, v13

    const-string v13, "bot"

    invoke-static {v13, v12}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_4

    invoke-static {v0, v15}, Lcom/meiqia/core/a/c;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v15}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    move-object/from16 v22, v13

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 p0, v15

    :try_start_1
    const-string v15, "redirect"

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "manual_redirect"

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "queueing"

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v15, "evaluate"

    invoke-static {v13, v15}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_2

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "reply"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    const-string v0, "hybrid"

    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v0, :cond_3

    move-object/from16 v7, v22

    goto :goto_1

    :catch_0
    move-object/from16 p0, v15

    :catch_1
    :cond_3
    :goto_1
    move-object/from16 v15, p0

    :cond_4
    invoke-virtual {v2, v15}, Lcom/meiqia/core/bean/MQMessage;->setExtra(Ljava/lang/String;)V

    invoke-virtual {v2, v10, v11}, Lcom/meiqia/core/bean/MQMessage;->setEnterprise_id(J)V

    invoke-virtual {v2, v14}, Lcom/meiqia/core/bean/MQMessage;->setAgent_id(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Lcom/meiqia/core/bean/MQMessage;->setId(J)V

    invoke-virtual {v2, v5, v6}, Lcom/meiqia/core/bean/MQMessage;->setConversation_id(J)V

    invoke-virtual {v2, v7}, Lcom/meiqia/core/bean/MQMessage;->setContent_type(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Lcom/meiqia/core/bean/MQMessage;->setType(Ljava/lang/String;)V

    move-wide/from16 v0, v19

    invoke-virtual {v2, v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setCreated_on(J)V

    invoke-virtual {v2, v8}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {v2, v12}, Lcom/meiqia/core/bean/MQMessage;->setFrom_type(Ljava/lang/String;)V

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/meiqia/core/bean/MQMessage;->setTrack_id(Ljava/lang/String;)V

    move-object/from16 v15, v17

    invoke-virtual {v2, v15}, Lcom/meiqia/core/bean/MQMessage;->setAgent_nickname(Ljava/lang/String;)V

    move-object/from16 v15, v16

    invoke-virtual {v2, v15}, Lcom/meiqia/core/bean/MQMessage;->setAvatar(Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Lcom/meiqia/core/bean/MQMessage;->setMedia_url(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/meiqia/core/a/c;->a(Lcom/meiqia/core/bean/MQMessage;)V

    return-object v2
.end method

.method public static a(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_2

    :cond_0
    new-instance p0, Ljava/lang/StringBuffer;

    invoke-direct {p0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v3, "?"

    goto :goto_1

    :cond_1
    const-string v3, "&"

    :goto_1
    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v3, "="

    invoke-virtual {p0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_2
    const-string p0, ""

    return-object p0
.end method

.method private static a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "question_id"

    const-string v1, "sub_type"

    const-string v2, "content_robot"

    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v1, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-virtual {v3, v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_2

    if-eqz p0, :cond_0

    :try_start_2
    new-instance p0, Lorg/json/JSONObject;

    invoke-direct {p0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    :try_start_3
    const-string p0, "parseRobotPropertyToExtra JSONException"

    invoke-static {p0}, Lcom/meiqia/core/a/f;->a(Ljava/lang/String;)V

    :cond_0
    :goto_1
    invoke-virtual {v3, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catch_2
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :goto_2
    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Lorg/json/JSONArray;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONArray;",
            ")",
            "Ljava/util/List<",
            "Lcom/meiqia/core/bean/MQMessage;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "action"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "message"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "ticket_reply"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-static {v2}, Lcom/meiqia/core/a/c;->a(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQMessage;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static a(Ljava/lang/Object;)Lorg/json/JSONArray;
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    invoke-static {p0, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lcom/meiqia/core/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1

    :cond_1
    new-instance v0, Lorg/json/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a primitive data: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a(Ljava/util/Collection;)Lorg/json/JSONArray;
    .locals 2

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/meiqia/core/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static a(Ljava/util/Map;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Lorg/json/JSONObject;"
        }
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lcom/meiqia/core/a/c;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v1, "mapToJson Exception"

    invoke-static {v1}, Lcom/meiqia/core/a/f;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "key == null"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public static a(Lokhttp3/Response;)Lorg/json/JSONObject;
    .locals 3

    :try_start_0
    invoke-static {p0}, Lcom/meiqia/core/a/c;->b(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseToJsonObj : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meiqia/core/a/f;->a(Ljava/lang/String;)V

    :goto_0
    return-object v0
.end method

.method public static a(Lcom/meiqia/core/bean/MQEnterpriseConfig;Lorg/json/JSONObject;Lcom/meiqia/core/a/i;Lcom/meiqia/core/bean/MQClient;)V
    .locals 11

    const-string v0, "ticket_config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "service_evaluation_config"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "robot_settings"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "survey"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "form"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "ent_welcome_message"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "status"

    if-eqz v5, :cond_1

    const-string v8, "content"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "open"

    invoke-virtual {v5, v7, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v9}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v8, ""

    :cond_0
    const-string v5, "avatar"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v9, "public_nickname"

    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "scheduler_after_client_send_msg"

    invoke-virtual {p1, v10, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-object v5, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->avatar:Ljava/lang/String;

    iput-object v9, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->public_nickname:Ljava/lang/String;

    iput-object v8, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ent_welcome_message:Ljava/lang/String;

    iput-boolean p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->scheduler_after_client_send_msg:Z

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    const-string v5, "intro"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->setIntro(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    const-string v5, "contactRule"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->setContactRule(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    const-string v5, "defaultTemplateContent"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->setDefaultTemplateContent(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    const-string v5, "email"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->setEmail(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    const-string v5, "qq"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->setQq(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    const-string v5, "tel"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->setTel(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    const-string v5, "wechat"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->setWechat(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->ticketConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;

    const-string v5, "name"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$TicketConfig;->setName(Ljava/lang/String;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->serviceEvaluationConfig:Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;

    const-string v0, "prompt_text"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$ServiceEvaluationConfig;->setPrompt_text(Ljava/lang/String;)V

    :cond_3
    if-eqz v2, :cond_4

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->robotSettings:Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;

    const-string v0, "show_switch"

    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/meiqia/core/bean/MQEnterpriseConfig$RobotSettings;->setShow_switch(Z)V

    :cond_4
    if-eqz v3, :cond_5

    const-string p1, "has_submitted_form"

    invoke-virtual {p2, p3, p1, v6}, Lcom/meiqia/core/a/i;->b(Lcom/meiqia/core/bean/MQClient;Ljava/lang/String;Z)Z

    move-result p1

    iget-object p2, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->survey:Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;

    invoke-virtual {p2, p1}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->setHas_submitted_form(Z)V

    iget-object p1, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->survey:Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Survey;->setStatus(Ljava/lang/String;)V

    :cond_5
    if-eqz v4, :cond_6

    iget-object p0, p0, Lcom/meiqia/core/bean/MQEnterpriseConfig;->form:Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;

    const-string p1, "form_def"

    invoke-virtual {v4, p1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/meiqia/core/bean/MQEnterpriseConfig$Form;->setForm_def(Ljava/lang/String;)V

    :cond_6
    return-void
.end method

.method public static a(Lcom/meiqia/core/bean/MQMessage;)V
    .locals 2

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->isRobot()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getExtra()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "content_robot"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meiqia/core/bean/MQMessage;->setContent_robot(Ljava/lang/String;)V

    const-string v1, "sub_type"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/meiqia/core/bean/MQMessage;->setSub_type(Ljava/lang/String;)V

    const-string v1, "question_id"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/meiqia/core/bean/MQMessage;->setQuestion_id(J)V

    sget-object v0, Lcom/meiqia/core/bean/MQMessage;->ALL_SUB_TYPE:Ljava/util/List;

    invoke-virtual {p0}, Lcom/meiqia/core/bean/MQMessage;->getSub_type()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "unknown"

    invoke-virtual {p0, v0}, Lcom/meiqia/core/bean/MQMessage;->setSub_type(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "parseExtraToRobotProperty JSONException"

    invoke-static {p0}, Lcom/meiqia/core/a/f;->a(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public static b(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQAgent;
    .locals 18

    move-object/from16 v0, p0

    new-instance v1, Lcom/meiqia/core/bean/MQAgent;

    invoke-direct {v1}, Lcom/meiqia/core/bean/MQAgent;-><init>()V

    const-string v2, "enterprise_id"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v2

    const-string v4, "avatar"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "cellphone"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "nickname"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "public_cellphone"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "public_email"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "qq"

    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "signature"

    invoke-virtual {v0, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "telephone"

    invoke-virtual {v0, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v12, "weixin"

    invoke-virtual {v0, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "token"

    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v14, "status"

    invoke-virtual {v0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    const-string v15, "is_online"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v15

    move/from16 v16, v15

    const-string v15, "privilege"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v17, v15

    const-string v15, "id"

    invoke-virtual {v0, v15}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v3}, Lcom/meiqia/core/bean/MQAgent;->setEnterprise_id(J)V

    invoke-virtual {v1, v4}, Lcom/meiqia/core/bean/MQAgent;->setAvatar(Ljava/lang/String;)V

    invoke-virtual {v1, v5}, Lcom/meiqia/core/bean/MQAgent;->setCellphone(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Lcom/meiqia/core/bean/MQAgent;->setNickname(Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Lcom/meiqia/core/bean/MQAgent;->setPublic_cellphone(Ljava/lang/String;)V

    invoke-virtual {v1, v8}, Lcom/meiqia/core/bean/MQAgent;->setPublic_email(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Lcom/meiqia/core/bean/MQAgent;->setQq(Ljava/lang/String;)V

    invoke-virtual {v1, v10}, Lcom/meiqia/core/bean/MQAgent;->setSignature(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Lcom/meiqia/core/bean/MQAgent;->setTelephone(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Lcom/meiqia/core/bean/MQAgent;->setWeixin(Ljava/lang/String;)V

    invoke-virtual {v1, v13}, Lcom/meiqia/core/bean/MQAgent;->setId(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Lcom/meiqia/core/bean/MQAgent;->setStatus(Ljava/lang/String;)V

    move/from16 v2, v16

    invoke-virtual {v1, v2}, Lcom/meiqia/core/bean/MQAgent;->setIsOnline(Z)V

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Lcom/meiqia/core/bean/MQAgent;->setPrivilege(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/meiqia/core/bean/MQAgent;->setAgentId(I)V

    return-object v1
.end method

.method private static b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    instance-of v1, p0, Lorg/json/JSONArray;

    if-nez v1, :cond_8

    instance-of v1, p0, Lorg/json/JSONObject;

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    :try_start_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    check-cast p0, Ljava/util/Collection;

    invoke-static {p0}, Lcom/meiqia/core/a/c;->a(Ljava/util/Collection;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {p0}, Lcom/meiqia/core/a/c;->a(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_4

    check-cast p0, Ljava/util/Map;

    invoke-static {p0}, Lcom/meiqia/core/a/c;->a(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v1, p0, Ljava/lang/Boolean;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/Byte;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/Character;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/Double;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/Float;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/Integer;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/Long;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/Short;

    if-nez v1, :cond_6

    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "java."

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    return-object p0

    :catch_0
    :cond_7
    return-object v0

    :cond_8
    :goto_1
    return-object p0
.end method

.method public static b(Lokhttp3/Response;)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object p0

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "responseToJsonObj : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meiqia/core/a/f;->a(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static c(Lorg/json/JSONObject;)Lcom/meiqia/core/bean/MQConversation;
    .locals 8

    new-instance v0, Lcom/meiqia/core/bean/MQConversation;

    invoke-direct {v0}, Lcom/meiqia/core/bean/MQConversation;-><init>()V

    const-string v1, "id"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v1

    const-string v3, "assignee"

    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "enterprise_id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    const-string v6, "created_on"

    invoke-virtual {p0, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/meiqia/core/a/j;->a(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v3}, Lcom/meiqia/core/bean/MQConversation;->setAssignee(I)V

    invoke-virtual {v0, v4, v5}, Lcom/meiqia/core/bean/MQConversation;->setEnterprise_id(J)V

    invoke-virtual {v0, v6, v7}, Lcom/meiqia/core/bean/MQConversation;->setCreated_on(J)V

    invoke-virtual {v0, v1, v2}, Lcom/meiqia/core/bean/MQConversation;->setId(J)V

    return-object v0
.end method
