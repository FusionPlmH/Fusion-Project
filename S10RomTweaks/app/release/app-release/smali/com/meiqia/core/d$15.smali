.class Lcom/meiqia/core/d$15;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/d;->a(Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/meiqia/core/callback/OnInitCallback;

.field final synthetic c:Lcom/meiqia/core/d;


# direct methods
.method constructor <init>(Lcom/meiqia/core/d;Ljava/lang/String;Lcom/meiqia/core/callback/OnInitCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$15;->c:Lcom/meiqia/core/d;

    iput-object p2, p0, Lcom/meiqia/core/d$15;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/meiqia/core/d$15;->b:Lcom/meiqia/core/callback/OnInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$15;->b:Lcom/meiqia/core/callback/OnInitCallback;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnInitCallback;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/meiqia/core/d$15;->c:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/meiqia/core/bean/MQClient;

    iget-object v4, v0, Lcom/meiqia/core/d$15;->a:Ljava/lang/String;

    move-object v2, v1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/meiqia/core/bean/MQClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/meiqia/core/d$15;->c:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQClient;)V

    iget-object v1, v0, Lcom/meiqia/core/d$15;->c:Lcom/meiqia/core/d;

    new-instance v2, Lcom/meiqia/core/d$15$1;

    move-object v3, p3

    invoke-direct {v2, p0, p3}, Lcom/meiqia/core/d$15$1;-><init>(Lcom/meiqia/core/d$15;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method
