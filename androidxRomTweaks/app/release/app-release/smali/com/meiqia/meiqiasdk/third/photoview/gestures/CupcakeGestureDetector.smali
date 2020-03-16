.class public Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;
.super Ljava/lang/Object;
.source "CupcakeGestureDetector.java"

# interfaces
.implements Lcom/meiqia/meiqiasdk/third/photoview/gestures/GestureDetector;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "CupcakeGestureDetector"


# instance fields
.field private mIsDragging:Z

.field mLastTouchX:F

.field mLastTouchY:F

.field protected mListener:Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;

.field final mMinimumVelocity:F

.field final mTouchSlop:F

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    return-void
.end method


# virtual methods
.method getActiveX(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    return p1
.end method

.method getActiveY(Landroid/view/MotionEvent;)F
    .locals 0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    return p1
.end method

.method public isDragging()Z
    .locals 1

    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    return v0
.end method

.method public isScaling()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_1

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto/16 :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v3

    iget v4, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    sub-float v4, v0, v4

    iget v5, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    sub-float v5, v3, v5

    iget-boolean v6, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-nez v6, :cond_3

    mul-float v6, v4, v4

    mul-float v7, v5, v5

    add-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iget v8, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mTouchSlop:F

    float-to-double v8, v8

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    :cond_3
    iget-boolean v1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;

    invoke-interface {v1, v4, v5}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;->onDrag(FF)V

    iput v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    iput v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_8

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_4
    iget-boolean v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v0, 0x3e8

    invoke-virtual {p1, v0}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    move-result v1

    iget v4, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mMinimumVelocity:F

    cmpl-float v1, v1, v4

    if-ltz v1, :cond_5

    iget-object v1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;

    iget v4, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    iget v5, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    neg-float p1, p1

    neg-float v0, v0

    invoke-interface {v1, v4, v5, p1, v0}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;->onFling(FFFF)V

    :cond_5
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    iput-object v3, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    :cond_6
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/meiqia/meiqiasdk/third/photoview/log/LogManager;->getLogger()Lcom/meiqia/meiqiasdk/third/photoview/log/Logger;

    move-result-object v0

    const-string v3, "CupcakeGestureDetector"

    const-string v4, "Velocity tracker is null"

    invoke-interface {v0, v3, v4}, Lcom/meiqia/meiqiasdk/third/photoview/log/Logger;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->getActiveX(Landroid/view/MotionEvent;)F

    move-result v0

    iput v0, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchX:F

    invoke-virtual {p0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->getActiveY(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mLastTouchY:F

    iput-boolean v1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mIsDragging:Z

    :cond_8
    :goto_1
    return v2
.end method

.method public setOnGestureListener(Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;->mListener:Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;

    return-void
.end method
