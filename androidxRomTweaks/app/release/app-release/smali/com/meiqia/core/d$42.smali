.class Lcom/meiqia/core/d$42;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnClientInfoCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Map;

.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/meiqia/core/g$a;

.field final synthetic d:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$42;->d:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$42;->a:Ljava/util/Map;

    iput-object p3, p0, Lcom/meiqia/core/d$42;->b:Ljava/util/List;

    iput-object p4, p0, Lcom/meiqia/core/d$42;->c:Lcom/meiqia/core/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 2

    iget-object p1, p0, Lcom/meiqia/core/d$42;->d:Lcom/meiqia/core/d;

    iget-object p2, p0, Lcom/meiqia/core/d$42;->a:Ljava/util/Map;

    iget-object v0, p0, Lcom/meiqia/core/d$42;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/meiqia/core/d$42;->c:Lcom/meiqia/core/g$a;

    invoke-static {p1, p2, v0, v1}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    return-void
.end method

.method public onSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/meiqia/core/d$42;->d:Lcom/meiqia/core/d;

    iget-object v1, p0, Lcom/meiqia/core/d$42;->a:Ljava/util/Map;

    iget-object v2, p0, Lcom/meiqia/core/d$42;->b:Ljava/util/List;

    iget-object v3, p0, Lcom/meiqia/core/d$42;->c:Lcom/meiqia/core/g$a;

    invoke-static {v0, v1, v2, v3}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;Ljava/util/Map;Ljava/util/List;Lcom/meiqia/core/g$a;)V

    return-void
.end method
