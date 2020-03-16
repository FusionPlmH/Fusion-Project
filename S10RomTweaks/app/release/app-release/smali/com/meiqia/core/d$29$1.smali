.class Lcom/meiqia/core/d$29$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d$29;->a(Lorg/json/JSONObject;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lorg/json/JSONObject;

.field final synthetic b:Lcom/meiqia/core/d$29;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d$29;Lorg/json/JSONObject;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$29$1;->b:Lcom/meiqia/core/d$29;

    iput-object p2, p0, Lcom/meiqia/core/d$29$1;->a:Lorg/json/JSONObject;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$29$1;->a:Lorg/json/JSONObject;

    const-string v1, "categories"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    iget-object v1, p0, Lcom/meiqia/core/d$29$1;->b:Lcom/meiqia/core/d$29;

    iget-object v1, v1, Lcom/meiqia/core/d$29;->a:Lcom/meiqia/core/callback/OnTicketCategoriesCallback;

    invoke-interface {v1, v0}, Lcom/meiqia/core/callback/OnTicketCategoriesCallback;->onSuccess(Lorg/json/JSONArray;)V

    return-void
.end method
