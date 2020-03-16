.class Lcom/meiqia/core/MQManager$10;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/meiqia/core/callback/OnInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->setCurrentClient(Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic b:Lcom/meiqia/core/MQManager;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager;Lcom/meiqia/core/callback/SimpleCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$10;->b:Lcom/meiqia/core/MQManager;

    iput-object p2, p0, Lcom/meiqia/core/MQManager$10;->a:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$10;->a:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-interface {v0, p1, p2}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/core/MQManager$10;->b:Lcom/meiqia/core/MQManager;

    invoke-static {v0, p1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/MQManager;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/meiqia/core/MQManager$10;->a:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-interface {p1}, Lcom/meiqia/core/callback/SimpleCallback;->onSuccess()V

    return-void
.end method
