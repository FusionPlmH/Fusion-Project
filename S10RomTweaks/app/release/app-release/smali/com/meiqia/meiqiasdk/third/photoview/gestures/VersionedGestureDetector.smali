.class public final Lcom/meiqia/meiqiasdk/third/photoview/gestures/VersionedGestureDetector;
.super Ljava/lang/Object;
.source "VersionedGestureDetector.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/content/Context;Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;)Lcom/meiqia/meiqiasdk/third/photoview/gestures/GestureDetector;
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    new-instance v0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/CupcakeGestureDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    if-ge v0, v1, :cond_1

    new-instance v0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/EclairGestureDetector;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/EclairGestureDetector;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v0, Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector;

    invoke-direct {v0, p0}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/FroyoGestureDetector;-><init>(Landroid/content/Context;)V

    :goto_0
    invoke-interface {v0, p1}, Lcom/meiqia/meiqiasdk/third/photoview/gestures/GestureDetector;->setOnGestureListener(Lcom/meiqia/meiqiasdk/third/photoview/gestures/OnGestureListener;)V

    return-object v0
.end method
