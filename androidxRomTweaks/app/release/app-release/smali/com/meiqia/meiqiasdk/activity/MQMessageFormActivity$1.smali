.class Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$1;
.super Ljava/lang/Object;
.source "MQMessageFormActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/callback/SimpleCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->refreshEnterpriseConfigAndContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$1;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$1;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$000(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)V

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$1;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$100(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)V

    return-void
.end method
