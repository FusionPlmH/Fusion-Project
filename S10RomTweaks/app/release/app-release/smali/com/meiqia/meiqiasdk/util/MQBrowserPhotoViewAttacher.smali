.class public Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;
.super Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;
.source "MQBrowserPhotoViewAttacher.java"


# instance fields
.field private isSetTopCrop:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->isSetTopCrop:Z

    return-void
.end method

.method private setTopCrop(Landroid/graphics/drawable/Drawable;)V
    .locals 4

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->getImageViewWidth(Landroid/widget/ImageView;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->getImageViewHeight(Landroid/widget/ImageView;)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v2, v2

    div-float/2addr v1, v2

    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v3, p1, p1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 p1, 0x0

    invoke-virtual {v3, p1, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {p0, v3}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/Matrix;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public setIsSetTopCrop(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->isSetTopCrop:Z

    return-void
.end method

.method public setUpdateBaseMatrix()V
    .locals 1

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method protected updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->isSetTopCrop:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/util/MQBrowserPhotoViewAttacher;->setTopCrop(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->updateBaseMatrix(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
