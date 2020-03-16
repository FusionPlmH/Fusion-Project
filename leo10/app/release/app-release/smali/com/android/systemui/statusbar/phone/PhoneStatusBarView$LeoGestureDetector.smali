.class public Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "PhoneStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LeoGestureDetector"
.end annotation


# instance fields
.field public mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->this$0:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public aVibrator(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarGestureVibratorEnable:I

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarGestureVibratorLevel:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method

.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    sub-float v1, p4, v0

    const/high16 v2, 0x41f00000    # 30.0f

    const/4 v3, 0x0

    const/high16 v4, 0x43160000    # 150.0f

    cmpl-float v1, v1, v4

    if-lez v1, :cond_0

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v3

    if-lez v1, :cond_0

    sub-float v1, p2, p1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/4 p3, 0x2

    aget-object p2, p2, p3

    sget p3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarGestureRightSlide:I

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->aVibrator(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    sub-float/2addr v0, p4

    cmpl-float p4, v0, v4

    if-lez p4, :cond_1

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p3

    cmpl-float p3, p3, v3

    if-lez p3, :cond_1

    sub-float/2addr p2, p1

    cmpg-float p1, p2, v2

    if-gez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    sget-object p2, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/4 p3, 0x1

    aget-object p2, p2, p3

    sget p3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarGestureLeftSlide:I

    invoke-static {p1, p2, p3}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->aVibrator(Landroid/content/Context;)V

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->aVibrator(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView$LeoGestureDetector;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/settingslib/salt/utils/LeoManages;->mLeoStatusBarGesture:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoStatusBarGestureLongPress:I

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method
