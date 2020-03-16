.class public Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;
.super Landroid/widget/ImageView;
.source "PhotoView.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/third/photoview/IPhotoView;


# instance fields
.field private mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

.field private mPendingScaleType:Landroid/widget/ImageView$ScaleType;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    sget-object p1, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->init()V

    return-void
.end method


# virtual methods
.method public canZoom()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->canZoom()Z

    move-result v0

    return v0
.end method

.method public getDisplayMatrix()Landroid/graphics/Matrix;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getDisplayMatrix()Landroid/graphics/Matrix;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayMatrix(Landroid/graphics/Matrix;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getDisplayMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method public getDisplayRect()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getDisplayRect()Landroid/graphics/RectF;

    move-result-object v0

    return-object v0
.end method

.method public getIPhotoViewImplementation()Lcom/meiqia/meiqiasdk/third/photoview/IPhotoView;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    return-object v0
.end method

.method public getMaxScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMaximumScale()F
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMaximumScale()F

    move-result v0

    return v0
.end method

.method public getMediumScale()F
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMidScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->getMediumScale()F

    move-result v0

    return v0
.end method

.method public getMinScale()F
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getMinimumScale()F
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getMinimumScale()F

    move-result v0

    return v0
.end method

.method public getOnPhotoTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getOnPhotoTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getOnViewTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getOnViewTapListener()Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;

    move-result-object v0

    return-object v0
.end method

.method public getScale()F
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getScale()F

    move-result v0

    return v0
.end method

.method public getScaleType()Landroid/widget/ImageView$ScaleType;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleRectangleBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getVisibleRectangleBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected init()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;-><init>(Landroid/widget/ImageView;)V

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    :cond_1
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    :cond_2
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->init()V

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->cleanup()V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setAllowParentInterceptOnEdge(Z)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setAllowParentInterceptOnEdge(Z)V

    return-void
.end method

.method public setDisplayMatrix(Landroid/graphics/Matrix;)Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setDisplayMatrix(Landroid/graphics/Matrix;)Z

    move-result p1

    return p1
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageResource(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->update()V

    :cond_0
    return-void
.end method

.method public setMaxScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->setMaximumScale(F)V

    return-void
.end method

.method public setMaximumScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setMaximumScale(F)V

    return-void
.end method

.method public setMediumScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setMediumScale(F)V

    return-void
.end method

.method public setMidScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->setMediumScale(F)V

    return-void
.end method

.method public setMinScale(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->setMinimumScale(F)V

    return-void
.end method

.method public setMinimumScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setMinimumScale(F)V

    return-void
.end method

.method public setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public setOnMatrixChangeListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setOnMatrixChangeListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnMatrixChangedListener;)V

    return-void
.end method

.method public setOnPhotoTapListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setOnPhotoTapListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnPhotoTapListener;)V

    return-void
.end method

.method public setOnScaleChangeListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnScaleChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setOnScaleChangeListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnScaleChangeListener;)V

    return-void
.end method

.method public setOnSingleFlingListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnSingleFlingListener;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setOnSingleFlingListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnSingleFlingListener;)V

    return-void
.end method

.method public setOnViewTapListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setOnViewTapListener(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$OnViewTapListener;)V

    return-void
.end method

.method public setPhotoViewRotation(F)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setRotationBy(F)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setRotationBy(F)V

    return-void
.end method

.method public setRotationTo(F)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setRotationTo(F)V

    return-void
.end method

.method public setScale(F)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setScale(F)V

    return-void
.end method

.method public setScale(FFFZ)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setScale(FFFZ)V

    return-void
.end method

.method public setScale(FZ)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setScale(FZ)V

    return-void
.end method

.method public setScaleLevels(FFF)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1, p2, p3}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setScaleLevels(FFF)V

    return-void
.end method

.method public setScaleType(Landroid/widget/ImageView$ScaleType;)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mPendingScaleType:Landroid/widget/ImageView$ScaleType;

    :goto_0
    return-void
.end method

.method public setZoomTransitionDuration(I)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setZoomTransitionDuration(I)V

    return-void
.end method

.method public setZoomable(Z)V
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoView;->mAttacher:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->setZoomable(Z)V

    return-void
.end method
