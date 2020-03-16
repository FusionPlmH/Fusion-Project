.class public Lcom/android/systemui/statusbar/phone/NavigationBarFrame;
.super Landroid/widget/FrameLayout;
.source "NavigationBarFrame.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;
    }
.end annotation


# instance fields
.field private mIsDoubleTapEnabled:Z

.field private mLeoNavDoubleTap:Landroid/view/GestureDetector;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/NavigationBarFrame$LeoGestureDetector;-><init>(Lcom/android/systemui/statusbar/phone/NavigationBarFrame;Landroid/content/Context;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mLeoNavDoubleTap:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mIsDoubleTapEnabled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mLeoNavDoubleTap:Landroid/view/GestureDetector;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    :goto_0
    return p1
.end method

.method public setDoubleTapToSleep(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NavigationBarFrame;->mIsDoubleTapEnabled:Z

    return-void
.end method
