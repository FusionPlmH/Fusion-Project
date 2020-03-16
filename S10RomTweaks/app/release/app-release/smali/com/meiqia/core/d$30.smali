.class Lcom/meiqia/core/d$30;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$j;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[I

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Ljava/util/List;

.field final synthetic d:Ljava/util/Map;

.field final synthetic e:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic f:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;[ILjava/util/List;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$30;->f:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$30;->a:[I

    iput-object p3, p0, Lcom/meiqia/core/d$30;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/meiqia/core/d$30;->c:Ljava/util/List;

    iput-object p5, p0, Lcom/meiqia/core/d$30;->d:Ljava/util/Map;

    iput-object p6, p0, Lcom/meiqia/core/d$30;->e:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$30;->a:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    add-int/2addr v2, v3

    aput v2, v0, v1

    new-instance v0, Lcom/meiqia/core/bean/MQMessage;

    const-string v2, "photo"

    invoke-direct {v0, v2}, Lcom/meiqia/core/bean/MQMessage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/meiqia/core/bean/MQMessage;->setContent(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/meiqia/core/bean/MQMessage;->setMedia_url(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/d$30;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/meiqia/core/d$30;->a:[I

    aget p2, p1, v1

    aget p1, p1, v3

    add-int/2addr p2, p1

    iget-object p1, p0, Lcom/meiqia/core/d$30;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p2, p1, :cond_1

    iget-object p1, p0, Lcom/meiqia/core/d$30;->a:[I

    aget p1, p1, v1

    iget-object p2, p0, Lcom/meiqia/core/d$30;->c:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/d$30;->f:Lcom/meiqia/core/d;

    iget-object p2, p0, Lcom/meiqia/core/d$30;->b:Ljava/util/List;

    iget-object v0, p0, Lcom/meiqia/core/d$30;->d:Ljava/util/Map;

    iget-object v1, p0, Lcom/meiqia/core/d$30;->e:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-static {p1, p2, v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/util/List;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/d$30;->e:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz p1, :cond_1

    const/16 p2, 0x4e22

    const-string v0, "upload photo failed"

    invoke-interface {p1, p2, v0}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/meiqia/core/d$30;->a:[I

    const/4 v1, 0x1

    aget v2, v0, v1

    add-int/2addr v2, v1

    aput v2, v0, v1

    const/4 v2, 0x0

    aget v2, v0, v2

    aget v0, v0, v1

    add-int/2addr v2, v0

    iget-object v0, p0, Lcom/meiqia/core/d$30;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v2, v0, :cond_0

    iget-object v0, p0, Lcom/meiqia/core/d$30;->e:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method
