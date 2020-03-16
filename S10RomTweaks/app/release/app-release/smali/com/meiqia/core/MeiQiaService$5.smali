.class Lcom/meiqia/core/MeiQiaService$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MeiQiaService;->b(Lcom/meiqia/core/bean/MQMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/bean/MQMessage;

.field final synthetic b:Lcom/meiqia/core/MeiQiaService;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/bean/MQMessage;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MeiQiaService$5;->b:Lcom/meiqia/core/MeiQiaService;

    iput-object p2, p0, Lcom/meiqia/core/MeiQiaService$5;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/core/MeiQiaService$5;->b:Lcom/meiqia/core/MeiQiaService;

    iget-object p2, p0, Lcom/meiqia/core/MeiQiaService$5;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-static {p1, p2}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/bean/MQMessage;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/MeiQiaService$5;->b:Lcom/meiqia/core/MeiQiaService;

    iget-object v1, p0, Lcom/meiqia/core/MeiQiaService$5;->a:Lcom/meiqia/core/bean/MQMessage;

    invoke-static {v0, v1}, Lcom/meiqia/core/MeiQiaService;->a(Lcom/meiqia/core/MeiQiaService;Lcom/meiqia/core/bean/MQMessage;)V

    return-void
.end method
