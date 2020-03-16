.class Lcom/meiqia/core/g$6;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Ljava/lang/String;IIILjava/lang/String;ILcom/meiqia/core/callback/OnGetMessageListCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

.field final synthetic b:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/OnGetMessageListCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$6;->b:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$6;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;Lokhttp3/Response;)V
    .locals 0

    const-string p2, "messages"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p1}, Lcom/meiqia/core/a/c;->a(Lorg/json/JSONArray;)Ljava/util/List;

    move-result-object p1

    new-instance p2, Lcom/meiqia/core/a/h;

    invoke-direct {p2}, Lcom/meiqia/core/a/h;-><init>()V

    invoke-static {p1, p2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object p2, p0, Lcom/meiqia/core/g$6;->a:Lcom/meiqia/core/callback/OnGetMessageListCallback;

    invoke-interface {p2, p1}, Lcom/meiqia/core/callback/OnGetMessageListCallback;->onSuccess(Ljava/util/List;)V

    return-void
.end method
