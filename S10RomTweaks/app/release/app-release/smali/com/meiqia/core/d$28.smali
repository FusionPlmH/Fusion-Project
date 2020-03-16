.class Lcom/meiqia/core/d$28;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(JLcom/meiqia/core/g$i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/g$i;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/g$i;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$28;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$28;->a:Lcom/meiqia/core/g$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 1

    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "closed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "processed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$28;->a:Lcom/meiqia/core/g$i;

    invoke-interface {p1}, Lcom/meiqia/core/g$i;->a()V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/meiqia/core/d$28;->a:Lcom/meiqia/core/g$i;

    invoke-interface {p1}, Lcom/meiqia/core/g$i;->b()V

    :goto_1
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$28;->a:Lcom/meiqia/core/g$i;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/g$i;->onFailure(ILjava/lang/String;)V

    return-void
.end method
