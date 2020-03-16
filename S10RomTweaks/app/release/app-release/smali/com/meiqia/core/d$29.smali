.class Lcom/meiqia/core/d$29;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/g$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Lcom/meiqia/core/callback/OnTicketCategoriesCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/OnTicketCategoriesCallback;

.field final synthetic b:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnTicketCategoriesCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$29;->b:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$29;->a:Lcom/meiqia/core/callback/OnTicketCategoriesCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/d$29;->b:Lcom/meiqia/core/d;

    new-instance v1, Lcom/meiqia/core/d$29$1;

    invoke-direct {v1, p0, p1}, Lcom/meiqia/core/d$29$1;-><init>(Lcom/meiqia/core/d$29;Lorg/json/JSONObject;)V

    invoke-static {v0, v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method

.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$29;->a:Lcom/meiqia/core/callback/OnTicketCategoriesCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnTicketCategoriesCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method
