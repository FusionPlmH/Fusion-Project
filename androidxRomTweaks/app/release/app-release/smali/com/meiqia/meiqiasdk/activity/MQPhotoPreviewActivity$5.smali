.class Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$5;
.super Ljava/lang/Object;
.source "MQPhotoPreviewActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/imageloader/MQImageLoader$MQDownloadImageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->savePic()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$5;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$5;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->access$402(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;)Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$5;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    sget v0, Lcom/meiqia/meiqiasdk/R$string;->mq_save_img_failure:I

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->showSafe(Landroid/content/Context;I)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$5;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$5;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity;)Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/meiqia/meiqiasdk/util/MQSavePhotoTask;->setBitmapAndPerform(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
