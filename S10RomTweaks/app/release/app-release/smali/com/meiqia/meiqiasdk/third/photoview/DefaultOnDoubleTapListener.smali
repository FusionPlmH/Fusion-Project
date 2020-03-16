.class public Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;
.super Ljava/lang/Object;
.source "DefaultOnDoubleTapListener.java"

# interfaces
.implements Landroid/view/GestureDetector$OnDoubleTapListener;


# instance fields
.field private photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->setPhotoViewAttacher(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;)V

    return-void
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v3

    cmpl-float v3, v0, v3

    if-ltz v3, :cond_2

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v3

    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v3

    invoke-virtual {v0, v3, v2, p1, v1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setScale(FFFZ)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return v1
.end method

.method public onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_1

    iget p1, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result p1

    div-float/2addr v3, p1

    iget p1, v2, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result p1

    div-float/2addr v4, p1

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object p1

    invoke-interface {p1, v0, v3, v4}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;->onPhotoTap(Landroid/view/View;FF)V

    const/4 p1, 0x1

    return p1

    :cond_1
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v2

    invoke-interface {v2}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;->onOutsidePhotoTap()V

    :cond_2
    iget-object v2, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v2}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-interface {v2, v0, v3, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;->onViewTap(Landroid/view/View;FF)V

    :cond_3
    return v1
.end method

.method public setPhotoViewAttacher(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/DefaultOnDoubleTapListener;->photoViewAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    return-void
.end method
