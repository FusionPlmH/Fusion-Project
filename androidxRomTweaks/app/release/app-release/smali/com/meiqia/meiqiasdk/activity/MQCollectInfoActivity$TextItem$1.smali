.class Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem$1;
.super Ljava/lang/Object;
.source "MQCollectInfoActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->setListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/activity/MQCollectInfoActivity$TextItem;->checkValid()Z

    return-void
.end method
