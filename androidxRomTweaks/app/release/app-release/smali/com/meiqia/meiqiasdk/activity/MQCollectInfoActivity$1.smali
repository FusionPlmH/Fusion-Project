.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$1;
.super Ljava/lang/Object;
.source "MQCollectInfoActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->popInvalidTip()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$1;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$1;->this$0:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity;->popInvalidTip()V

    return-void
.end method
