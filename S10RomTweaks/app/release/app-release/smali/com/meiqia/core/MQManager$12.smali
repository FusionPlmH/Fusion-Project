.class Lcom/meiqia/core/MQManager$12;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/MQManager;->sendClientInputtingWithContent(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/MQManager;


# direct methods
.method constructor <init>(Lcom/meiqia/core/MQManager;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/MQManager$12;->a:Lcom/meiqia/core/MQManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/meiqia/core/MQManager$12;->a:Lcom/meiqia/core/MQManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/meiqia/core/MQManager;->a(Lcom/meiqia/core/MQManager;Z)Z

    return-void
.end method
