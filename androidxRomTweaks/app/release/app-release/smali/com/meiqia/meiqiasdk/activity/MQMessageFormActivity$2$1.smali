.class Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2$1;
.super Ljava/lang/Object;
.source "MQMessageFormActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->onSuccess(Lorg/json/JSONArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;

    iget-object p1, p1, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$300(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;

    iget-object p2, p2, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    const-string p3, "id"

    invoke-interface {p1, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p2, p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$502(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method
