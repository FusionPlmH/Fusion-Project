.class Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$4;
.super Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;
.source "MQPhotoPickerPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->hiddenTitlebarAndChoosebar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$4;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;

    invoke-direct {p0}, Landroid/support/v4/view/ViewPropertyAnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$4;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->access$302(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;Z)Z

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity$4;->this$0:Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;->access$400(Lcom/meiqia/meiqiasdk/activity/MQPhotoPickerPreviewActivity;)Landroid/widget/RelativeLayout;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method
