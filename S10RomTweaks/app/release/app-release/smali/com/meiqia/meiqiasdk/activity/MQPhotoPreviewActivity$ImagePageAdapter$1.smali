.class Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;
.super Ljava/lang/Object;
.source "MQPhotoPreviewActivity.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/widget/MQImageView$OnDrawableChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;->instantiateItem(Landroid/view/ViewGroup;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;

.field final synthetic val$imageView:Lcom/meiqia/meiqiasdk/widget/MQImageView;

.field final synthetic val$photoViewAttacher:Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;Lcom/meiqia/meiqiasdk/widget/MQImageView;Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;->this$1:Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;->val$imageView:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;->val$photoViewAttacher:Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrawableChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;->val$imageView:Lcom/meiqia/meiqiasdk/widget/MQImageView;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/widget/MQImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/meiqia/meiqiasdk/util/MQUtils;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;->val$photoViewAttacher:Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->setIsSetTopCrop(Z)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;->val$photoViewAttacher:Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->setUpdateBaseMatrix()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/activity/MQPhotoPreviewActivity$ImagePageAdapter$1;->val$photoViewAttacher:Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->update()V

    :goto_0
    return-void
.end method
