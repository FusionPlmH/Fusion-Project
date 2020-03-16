.class Lcom/meiqia/core/d$39;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$39;->d:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$39;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/meiqia/core/d$39;->b:Ljava/util/Map;

    iput-object p4, p0, Lcom/meiqia/core/d$39;->c:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$39;->c:Lcom/meiqia/core/callback/SimpleCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$39;->d:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/d$39;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/meiqia/core/d$39;->b:Ljava/util/Map;

    iget-object v3, p0, Lcom/meiqia/core/d$39;->c:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/meiqia/core/d;->b(Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;Lcom/meiqia/core/callback/SimpleCallback;)V

    return-void
.end method
