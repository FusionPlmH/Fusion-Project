.class public Lcom/android/server/policy/SystemGesturesPointerEventListener;
.super Ljava/lang/Object;
.source "SystemGesturesPointerEventListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;,
        Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final MAX_FLING_TIME_MILLIS:I = 0x1388

.field private static final MAX_TRACKED_POINTERS:I = 0x20

.field private static final SWIPE_FROM_BOTTOM:I = 0x2

.field private static final SWIPE_FROM_LEFT:I = 0x4

.field private static final SWIPE_FROM_RIGHT:I = 0x3

.field private static final SWIPE_FROM_TOP:I = 0x1

.field private static final SWIPE_NONE:I = 0x0

.field private static final SWIPE_TIMEOUT_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SystemGestures"

.field private static final UNTRACKED_POINTER:I = -0x1


# instance fields
.field private final mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

.field private final mContext:Landroid/content/Context;

.field private mDebugFireable:Z

.field private final mDownPointerId:[I

.field private mDownPointers:I

.field private final mDownTime:[J

.field private final mDownX:[F

.field private final mDownY:[F

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mLastFlingTime:J

.field private mMouseHoveringAtEdge:Z

.field private mOverscroller:Landroid/widget/OverScroller;

.field private final mSwipeDistanceThreshold:I

.field private mSwipeFireable:Z

.field private final mSwipeStartThreshold:I

.field screenHeight:I

.field screenWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v1, v0, [I

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    const-string p1, "callbacks"

    invoke-static {p1, p2}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    iput-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    iput p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    return-void
.end method

.method private LeoHaptics(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeowGlobalFingerGesturesVibratorEnable:I

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerGesturesVibratorLevel:I

    invoke-static {p1, v0, v1}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoHaptics(Landroid/content/Context;II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/policy/SystemGesturesPointerEventListener;)Landroid/widget/OverScroller;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/server/policy/SystemGesturesPointerEventListener;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/android/server/policy/SystemGesturesPointerEventListener;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mLastFlingTime:J

    return-wide p1
.end method

.method private captureDown(Landroid/view/MotionEvent;I)V
    .locals 3

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    aput v2, v1, v0

    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p2

    aput p2, v1, v0

    iget-object p2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v1

    aput-wide v1, p2, v0

    :cond_0
    return-void
.end method

.method private static checkNull(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "TT;)TT;"
        }
    .end annotation

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " must not be null"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private detectSwipe(IJFF)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownX:[F

    aget v0, v0, p1

    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownY:[F

    aget v1, v1, p1

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownTime:[J

    aget-wide v3, v2, p1

    sub-long/2addr p2, v3

    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float p1, p1

    const-wide/16 v2, 0x1f4

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_0

    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p1, p1

    add-float/2addr p1, v1

    cmpl-float p1, p5, p1

    if-lez p1, :cond_0

    cmp-long p1, p2, v2

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr p1, v4

    int-to-float p1, p1

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_1

    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p1, p1

    sub-float/2addr v1, p1

    cmpg-float p1, p5, v1

    if-gez p1, :cond_1

    cmp-long p1, p2, v2

    if-gez p1, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenWidth:I

    iget p5, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    sub-int/2addr p1, p5

    int-to-float p1, p1

    cmpl-float p1, v0, p1

    if-ltz p1, :cond_2

    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p1, p1

    sub-float p1, v0, p1

    cmpg-float p1, p4, p1

    if-gez p1, :cond_2

    cmp-long p1, p2, v2

    if-gez p1, :cond_2

    const/4 p1, 0x3

    return p1

    :cond_2
    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeStartThreshold:I

    int-to-float p1, p1

    cmpg-float p1, v0, p1

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeDistanceThreshold:I

    int-to-float p1, p1

    add-float/2addr v0, p1

    cmpl-float p1, p4, v0

    if-lez p1, :cond_3

    cmp-long p1, p2, v2

    if-gez p1, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private detectSwipe(Landroid/view/MotionEvent;)I
    .locals 12

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getHistorySize()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->findIndex(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v0, :cond_1

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getHistoricalEventTime(I)J

    move-result-wide v7

    invoke-virtual {p1, v3, v11}, Landroid/view/MotionEvent;->getHistoricalX(II)F

    move-result v9

    invoke-virtual {p1, v3, v11}, Landroid/view/MotionEvent;->getHistoricalY(II)F

    move-result v10

    move-object v5, p0

    move v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v5

    if-eqz v5, :cond_0

    return v5

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    move-object v5, p0

    move v6, v4

    invoke-direct/range {v5 .. v10}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(IJFF)I

    move-result v4

    if-eqz v4, :cond_2

    return v4

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v2
.end method

.method private findIndex(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v0, 0x20

    const/4 v2, -0x1

    if-eq v1, v0, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointerId:[I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    aput p1, v0, v1

    iget p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    add-int/lit8 p1, p1, -0x1

    return p1

    :cond_3
    :goto_1
    return v2
.end method


# virtual methods
.method public BottomGestureSlide(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnableFingerGestures:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->getGesturesFingersCount(Landroid/content/Context;)I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalBottomActionGestures:Ljava/lang/String;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalBottomActionGestures:I

    invoke-static {v0, p1, v1}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->LeoHaptics(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public LeftGestureSlide(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnableFingerGestures:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->getGesturesFingersCount(Landroid/content/Context;)I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalLeftActionGestures:Ljava/lang/String;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalLeftActionGestures:I

    invoke-static {v0, p1, v1}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->LeoHaptics(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public RightGestureSlide(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnableFingerGestures:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->getGesturesFingersCount(Landroid/content/Context;)I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalRightActionGestures:Ljava/lang/String;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalRightActionGestures:I

    invoke-static {v0, p1, v1}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->LeoHaptics(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public TopGestureSlide(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget-boolean v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalEnableFingerGestures:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    invoke-virtual {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->getGesturesFingersCount(Landroid/content/Context;)I

    move-result v1

    if-ne p1, v1, :cond_0

    sget-object p1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setGlobalTopActionGestures:Ljava/lang/String;

    sget v1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalTopActionGestures:I

    invoke-static {v0, p1, v1}, Lcom/android/server/utils/salt/SaltServerFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->LeoHaptics(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public getGesturesFingersCount(Landroid/content/Context;)I
    .locals 0

    invoke-static {p1}, Lcom/android/server/utils/salt/SaltPhoneSetting;->LeoSetting(Landroid/content/Context;)V

    sget p1, Lcom/android/server/utils/salt/SaltPhoneSetting;->setLeoGlobalFingerGesturesCount:I

    return p1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    if-eq v0, v2, :cond_a

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_5

    if-eq v0, v3, :cond_a

    const/4 v3, 0x5

    if-eq v0, v3, :cond_3

    const/4 v3, 0x7

    if-eq v0, v3, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    const/4 v3, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtTop()V

    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v4, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v4, v2

    int-to-float v4, v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_2

    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseHoverAtBottom()V

    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpl-float v0, v0, v3

    if-lez v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->screenHeight:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_d

    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-eqz v0, :cond_d

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-ge p1, v3, :cond_4

    const/4 v1, 0x1

    :cond_4
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iget-boolean p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDebug()V

    goto :goto_0

    :cond_5
    iget-boolean v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-eqz v0, :cond_d

    invoke-direct {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->detectSwipe(Landroid/view/MotionEvent;)I

    move-result v0

    if-nez v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    if-ne v0, v2, :cond_7

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromTop()V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->TopGestureSlide(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_7
    if-ne v0, v4, :cond_8

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromBottom()V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->TopGestureSlide(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_8
    if-ne v0, v3, :cond_9

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromRight()V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->RightGestureSlide(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_9
    const/4 v1, 0x4

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {v0}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onSwipeFromLeft()V

    invoke-virtual {p0, p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->LeftGestureSlide(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_a
    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onUpOrCancel()V

    goto :goto_0

    :cond_b
    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mSwipeFireable:Z

    iput-boolean v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDebugFireable:Z

    iput v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mDownPointers:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/policy/SystemGesturesPointerEventListener;->captureDown(Landroid/view/MotionEvent;I)V

    iget-boolean p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    if-eqz p1, :cond_c

    iput-boolean v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mMouseHoveringAtEdge:Z

    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onMouseLeaveFromEdge()V

    :cond_c
    iget-object p1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mCallbacks:Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;

    invoke-interface {p1}, Lcom/android/server/policy/SystemGesturesPointerEventListener$Callbacks;->onDown()V

    :cond_d
    :goto_0
    return-void
.end method

.method public synthetic onPointerEvent(Landroid/view/MotionEvent;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/WindowManagerPolicyConstants$PointerEventListener$-CC;->$default$onPointerEvent(Landroid/view/WindowManagerPolicyConstants$PointerEventListener;Landroid/view/MotionEvent;I)V

    return-void
.end method

.method public systemReady()V
    .locals 5

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/policy/SystemGesturesPointerEventListener$FlingGestureDetector;-><init>(Lcom/android/server/policy/SystemGesturesPointerEventListener;Lcom/android/server/policy/SystemGesturesPointerEventListener$1;)V

    invoke-direct {v1, v2, v3, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mGestureDetector:Landroid/view/GestureDetector;

    new-instance v0, Landroid/widget/OverScroller;

    iget-object v1, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/OverScroller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/policy/SystemGesturesPointerEventListener;->mOverscroller:Landroid/widget/OverScroller;

    return-void
.end method
