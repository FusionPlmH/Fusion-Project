.class Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;
.super Ljava/lang/Object;
.source "PhotoViewAttacher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimatedZoomRunnable"
.end annotation


# instance fields
.field private final mFocalX:F

.field private final mFocalY:F

.field private final mStartTime:J

.field private final mZoomEnd:F

.field private final mZoomStart:F

.field final synthetic this$0:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;


# direct methods
.method public constructor <init>(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p4, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iput p5, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p4

    iput-wide p4, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    iput p2, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iput p3, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    return-void
.end method

.method private interpolate()F
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mStartTime:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    iget-object v2, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    iget v2, v2, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->ZOOM_DURATION:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-static {v1}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->access$200(Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getImageView()Landroid/widget/ImageView;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->interpolate()F

    move-result v1

    iget v2, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomStart:F

    iget v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mZoomEnd:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    invoke-virtual {v3}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->getScale()F

    move-result v3

    div-float/2addr v2, v3

    iget-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->this$0:Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;

    iget v4, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalX:F

    iget v5, p0, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher$AnimatedZoomRunnable;->mFocalY:F

    invoke-virtual {v3, v2, v4, v5}, Lcom/meiqia/meiqiasdk/third/photoview/PhotoViewAttacher;->onScale(FFF)V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-static {v0, p0}, Lcom/meiqia/meiqiasdk/third/photoview/Compat;->postOnAnimation(Landroid/view/View;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
