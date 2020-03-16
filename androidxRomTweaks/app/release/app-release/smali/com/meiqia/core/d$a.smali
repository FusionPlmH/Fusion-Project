.class Lcom/meiqia/core/d$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnGetClientCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/core/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/d;

.field private b:Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;


# direct methods
.method public constructor <init>(Lcom/meiqia/core/d;Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/d$a;->a:Lcom/meiqia/core/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/meiqia/core/d$a;->b:Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;

    return-void
.end method

.method static synthetic a(Lcom/meiqia/core/d$a;)Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;
    .locals 0

    iget-object p0, p0, Lcom/meiqia/core/d$a;->b:Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;

    return-object p0
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/d$a;->b:Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/OnGetMQClientIdCallBackOn;->onFailure(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onSuccess(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lcom/meiqia/core/d$a;->a:Lcom/meiqia/core/d;

    invoke-static {v1}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;)Lcom/meiqia/core/a/i;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meiqia/core/a/i;->a()Ljava/lang/String;

    move-result-object v3

    new-instance v1, Lcom/meiqia/core/bean/MQClient;

    const-string v4, ""

    move-object v2, v1

    move-object v5, p3

    move-object v6, p2

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-direct/range {v2 .. v10}, Lcom/meiqia/core/bean/MQClient;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/meiqia/core/d$a;->a:Lcom/meiqia/core/d;

    invoke-static {v2}, Lcom/meiqia/core/d;->b(Lcom/meiqia/core/d;)Lcom/meiqia/core/f;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/meiqia/core/f;->a(Lcom/meiqia/core/bean/MQClient;)V

    iget-object v1, v0, Lcom/meiqia/core/d$a;->a:Lcom/meiqia/core/d;

    new-instance v2, Lcom/meiqia/core/d$a$1;

    move-object v3, p3

    invoke-direct {v2, p0, p3}, Lcom/meiqia/core/d$a$1;-><init>(Lcom/meiqia/core/d$a;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/meiqia/core/d;->a(Lcom/meiqia/core/d;Ljava/lang/Runnable;)V

    return-void
.end method
