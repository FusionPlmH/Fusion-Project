.class public Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector;
.super Lcom/meiqia/meiqiasdk/third/photoview/gestures/EclairGestureDetector;
.source "FroyoGestureDetector.java"


# instance fields
.field protected final mDetector:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector$1;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector$1;-><init>(Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector;)V

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    return-void
.end method


# virtual methods
.method public isScaling()Z
    .locals 1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector;->mDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    invoke-super {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/EclairGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x1

    return p1
.end method
