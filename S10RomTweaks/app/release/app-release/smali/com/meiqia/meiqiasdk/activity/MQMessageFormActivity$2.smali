.class Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;
.super Ljava/lang/Object;
.source "MQMessageFormActivity.java"

# interfaces
.implements Lcom/meiqia/core/callback/OnTicketCategoriesCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->popTicketCategoriesChooseDialog()V
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

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(ILjava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onSuccess(Lorg/json/JSONArray;)V
    .locals 6

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$200(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v5, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$300(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$300(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    new-instance v0, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    sget v1, Lcom/meiqia/meiqiasdk/R$string;->mq_choose_ticket_category:I

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-static {v2}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$300(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2$1;

    invoke-direct {v3, p0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2$1;-><init>(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;)V

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;-><init>(Landroid/app/Activity;ILjava/util/List;Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$402(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;Lcom/meiqia/meiqiasdk/dialog/MQListDialog;)Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    :try_start_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity$2;->this$0:Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQMessageFormActivity;)Lcom/meiqia/meiqiasdk/dialog/MQListDialog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/dialog/MQListDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_4
    :goto_1
    return-void
.end method
