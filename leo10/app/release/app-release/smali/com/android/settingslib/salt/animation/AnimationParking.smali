.class public Lcom/android/settingslib/salt/animation/AnimationParking;
.super Ljava/lang/Object;
.source "AnimationParking.java"


# static fields
.field public static final LEFT:Z = true

.field public static final RIGHT:Z = false

.field private static TAG:Ljava/lang/String; = "AnimationParking"

.field public static baseX:I

.field public static baseY:I

.field private static handler4Parking:Landroid/os/Handler;

.field private static handler4PosCheck:Landroid/os/Handler;

.field private static handler4Shrink:Landroid/os/Handler;

.field private static handler4Turning:Landroid/os/Handler;

.field private static homeX:I

.field private static homeY:I

.field public static mAreaChanged:Z

.field private static mAutoUpdatePeriod:J

.field public static mOriginSide:Z

.field private static mParking2Shrink:J

.field private static mStep:I

.field private static mTimeOut:Z

.field private static mVelocityTime:J

.field private static menuX:I

.field private static menuY:I

.field private static recentX:I

.field private static recentY:I

.field private static runnable4Parking:Ljava/lang/Runnable;

.field private static runnable4PosCheck:Ljava/lang/Runnable;

.field private static runnable4Shrink:Ljava/lang/Runnable;

.field private static runnable4Turning:Ljava/lang/Runnable;

.field private static velocityCheck:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Lcom/android/settingslib/salt/widget/MeterBase;->baseX:I

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v0, Lcom/android/settingslib/salt/widget/MeterBase;->baseY:I

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sput-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    const-wide/16 v0, 0xa

    sput-wide v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    const-wide/16 v0, 0x7d0

    sput-wide v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mParking2Shrink:J

    const/16 v0, 0xf

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mStep:I

    const-wide/16 v0, 0x12c

    sput-wide v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mVelocityTime:J

    sget-object v0, Lcom/android/settingslib/salt/animation/-$$Lambda$AnimationParking$kFv6-kHlNclfqhQUW_uv3cXU40I;->INSTANCE:Lcom/android/settingslib/salt/animation/-$$Lambda$AnimationParking$kFv6-kHlNclfqhQUW_uv3cXU40I;

    sput-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/settingslib/salt/animation/AnimationParking$1;

    invoke-direct {v0}, Lcom/android/settingslib/salt/animation/AnimationParking$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/settingslib/salt/animation/-$$Lambda$AnimationParking$6KB2qcwNJf_L5UTyoaDYJ1WAopA;->INSTANCE:Lcom/android/settingslib/salt/animation/-$$Lambda$AnimationParking$6KB2qcwNJf_L5UTyoaDYJ1WAopA;

    sput-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-object v0, Lcom/android/settingslib/salt/animation/-$$Lambda$AnimationParking$hDTRalv6LKVVRMPUuTKzi9Sh0gk;->INSTANCE:Lcom/android/settingslib/salt/animation/-$$Lambda$AnimationParking$hDTRalv6LKVVRMPUuTKzi9Sh0gk;

    sput-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settingslib/salt/animation/AnimationParking;->mTimeOut:Z

    return p0
.end method

.method static synthetic access$102(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/settingslib/salt/animation/AnimationParking;->velocityCheck:Z

    return p0
.end method

.method private static hideSub()V
    .locals 3

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/salt/widget/MeterBase;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/settingslib/salt/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/settingslib/salt/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    return-void
.end method

.method private static initial()V
    .locals 1

    sget v0, Lcom/android/settingslib/salt/widget/MeterBase;->baseX:I

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v0, Lcom/android/settingslib/salt/widget/MeterBase;->baseY:I

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    return-void
.end method

.method static synthetic lambda$static$0()V
    .locals 0

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->parking()V

    return-void
.end method

.method static synthetic lambda$static$1()V
    .locals 0

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->shrinking()V

    return-void
.end method

.method static synthetic lambda$static$2()V
    .locals 0

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->turning()V

    return-void
.end method

.method public static land()V
    .locals 2

    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->stop()V

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    :cond_0
    sget v0, Lcom/android/settingslib/salt/widget/MeterBase;->baseY:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->SCREEM_HEIGHT:I

    if-le v0, v1, :cond_1

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateBottom(II)V

    :cond_1
    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->shrinkStart()V

    return-void
.end method

.method private static parking()V
    .locals 2

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/settingslib/salt/animation/AnimationParking;->parking2Margin(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settingslib/salt/animation/AnimationParking;->parking2Margin(Z)V

    :goto_0
    return-void
.end method

.method private static parking2Margin(Z)V
    .locals 3

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    if-nez p0, :cond_0

    sget p0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr p0, v0

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    :cond_0
    sget p0, Lcom/android/settingslib/salt/animation/AnimationParking;->mStep:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    if-le v1, v0, :cond_1

    neg-int p0, p0

    :cond_1
    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    add-int/2addr p0, v1

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget p0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {p0, v1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    sget p0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sub-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result p0

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->mStep:I

    if-gt p0, v1, :cond_2

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget p0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {p0, v0}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    sget-object p0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    sget-wide v1, Lcom/android/settingslib/salt/animation/AnimationParking;->mParking2Shrink:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2
    sget-object p0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object p0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v1, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static posCalculateLeftX(II)V
    .locals 3

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    if-gt p0, v0, :cond_0

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    div-int/lit8 p0, p0, 0x2

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sub-int v0, p1, p0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    add-int/2addr p1, p0

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-ge p0, v0, :cond_1

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p0, v0

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sget p0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    return-void

    :cond_1
    sget v0, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    add-int/2addr v0, v1

    if-ge p0, v0, :cond_2

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sub-int v0, p0, v0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p0, v0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v0, v1

    sget v1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int/2addr p0, v1

    mul-int v0, v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr p1, v0

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    return-void

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->hideSub()V

    return-void
.end method

.method private static quickSlide()V
    .locals 2

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mTimeOut:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->velocityCheck:Z

    :cond_0
    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->velocityCheck:Z

    :cond_1
    return-void
.end method

.method private static showOrHide(I)V
    .locals 2

    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->velocityCheck:Z

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->hideSub()V

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->hideSub()V

    return-void

    :cond_1
    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    if-gt p0, v0, :cond_3

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->showSub()V

    :goto_0
    return-void

    :cond_3
    :goto_1
    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->hideSub()V

    return-void
.end method

.method private static showSub()V
    .locals 3

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/salt/widget/MeterBase;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/settingslib/salt/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v2, Lcom/android/settingslib/salt/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/salt/widget/MeterBase;->setVisibility(I)V

    return-void
.end method

.method public static shrinkStart()V
    .locals 4

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static shrinking()V
    .locals 4

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mStep:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-ge v1, v2, :cond_0

    neg-int v0, v0

    :cond_0
    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    sput-boolean v2, Lcom/android/settingslib/salt/animation/AnimationParking;->velocityCheck:Z

    sput-boolean v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    sput-boolean v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationTransparent;->start()V

    return-void

    :cond_1
    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    sput v2, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v3, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {v0, v3}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    sput-boolean v2, Lcom/android/settingslib/salt/animation/AnimationParking;->velocityCheck:Z

    sput-boolean v1, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    sput-boolean v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationTransparent;->start()V

    return-void

    :cond_2
    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static start()V
    .locals 4

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->quickSlide()V

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->initial()V

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    sput-boolean v1, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    sput-boolean v1, Lcom/android/settingslib/salt/animation/AnimationParking;->velocityCheck:Z

    sput v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationTransparent;->start()V

    return-void

    :cond_0
    sget v2, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v3, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v2, v3

    if-lt v0, v2, :cond_1

    sput-boolean v1, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    sput-boolean v1, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    sput-boolean v1, Lcom/android/settingslib/salt/animation/AnimationParking;->velocityCheck:Z

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationTransparent;->start()V

    return-void

    :cond_1
    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateTop(II)V

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {v0, v1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateBottom(II)V

    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    if-nez v0, :cond_6

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE:I

    if-lt v0, v1, :cond_5

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE_RIGHT:I

    if-le v0, v1, :cond_2

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-le v0, v1, :cond_3

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_3
    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_4

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-ge v0, v1, :cond_4

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_4
    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_5
    :goto_0
    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_6
    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static stop()V
    .locals 4

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationTransparent;->stop()V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Parking:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Parking:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mTimeOut:Z

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4PosCheck:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4PosCheck:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mVelocityTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private static turning()V
    .locals 4

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Shrink:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Shrink:Ljava/lang/Runnable;

    sget-wide v2, Lcom/android/settingslib/salt/animation/AnimationParking;->mAutoUpdatePeriod:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    sget-object v0, Lcom/android/settingslib/salt/animation/AnimationParking;->handler4Turning:Landroid/os/Handler;

    sget-object v1, Lcom/android/settingslib/salt/animation/AnimationParking;->runnable4Turning:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static updateAll(II)V
    .locals 3

    const/4 v0, 0x0

    if-gez p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    sget v1, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v1, v2

    if-le p0, v1, :cond_1

    sget p0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr p0, v1

    :cond_1
    if-gez p1, :cond_2

    const/4 p1, 0x0

    :cond_2
    sget-object v0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object v1, Lcom/android/settingslib/salt/widget/MeterHome;->NAME:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/salt/widget/MeterBase;

    invoke-virtual {v0, p0, p1}, Lcom/android/settingslib/salt/widget/MeterBase;->update(II)V

    sput p0, Lcom/android/settingslib/salt/widget/MeterBase;->baseX:I

    sput p1, Lcom/android/settingslib/salt/widget/MeterBase;->baseY:I

    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    if-eqz v0, :cond_3

    invoke-static {p0, p1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAllLeft(II)V

    goto :goto_0

    :cond_3
    invoke-static {p0, p1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAllRight(II)V

    :goto_0
    return-void
.end method

.method private static updateAllLeft(II)V
    .locals 1

    invoke-static {p0}, Lcom/android/settingslib/salt/animation/AnimationParking;->showOrHide(I)V

    invoke-static {p0, p1}, Lcom/android/settingslib/salt/animation/AnimationParking;->posCalculateLeftX(II)V

    sget-object p0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/salt/widget/MeterBase;

    sget p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->update(II)V

    sget-object p0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/salt/widget/MeterBase;

    sget p1, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->update(II)V

    sget-object p0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/salt/widget/MeterBase;

    sget p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->update(II)V

    return-void
.end method

.method private static updateAllRight(II)V
    .locals 3

    invoke-static {p0}, Lcom/android/settingslib/salt/animation/AnimationParking;->showOrHide(I)V

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE_RIGHT:I

    if-lt p0, v0, :cond_0

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    add-int/2addr v0, p0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    add-int/2addr v0, p0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    goto/16 :goto_0

    :cond_0
    sget v0, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-le p0, v0, :cond_1

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    add-int/2addr v0, p0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p0, v0

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sget p0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 p0, p0, 0x2

    add-int/2addr p1, p0

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    goto/16 :goto_0

    :cond_1
    sget v0, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    sub-int/2addr v0, v1

    if-le p0, v0, :cond_2

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    add-int/2addr v0, p0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    add-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    sub-int v0, p1, v0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p0

    sget v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v1, v2

    sget v2, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int v2, p0, v2

    mul-int v1, v1, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sget v0, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    div-int/2addr v0, v1

    sget v1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    sub-int/2addr p0, v1

    mul-int v0, v0, p0

    div-int/lit8 v0, v0, 0x2

    add-int/2addr p1, v0

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    if-nez v0, :cond_3

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/salt/animation/AnimationParking;->mAreaChanged:Z

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    invoke-static {}, Lcom/android/settingslib/salt/animation/AnimationParking;->hideSub()V

    :cond_3
    :goto_0
    sget-object p0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterRecent;->NAME:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/salt/widget/MeterBase;

    sget p1, Lcom/android/settingslib/salt/animation/AnimationParking;->recentX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->recentY:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->update(II)V

    sget-object p0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterBack;->NAME:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/salt/widget/MeterBase;

    sget p1, Lcom/android/settingslib/salt/animation/AnimationParking;->homeX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->homeY:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->update(II)V

    sget-object p0, Lcom/android/settingslib/salt/widget/MeterBase;->MeterMap:Ljava/util/Map;

    sget-object p1, Lcom/android/settingslib/salt/widget/MeterFlashlight;->NAME:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/salt/widget/MeterBase;

    sget p1, Lcom/android/settingslib/salt/animation/AnimationParking;->menuX:I

    sget v0, Lcom/android/settingslib/salt/animation/AnimationParking;->menuY:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/salt/widget/MeterBase;->update(II)V

    return-void
.end method

.method private static updateBottom(II)V
    .locals 1

    sget v0, Lcom/android/settingslib/salt/widget/Until;->BOTTOM_LINE:I

    if-gt p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE:I

    if-lt p0, p1, :cond_2

    sget p1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-gt p0, p1, :cond_2

    sget p1, Lcom/android/settingslib/salt/widget/Until;->BOTTOM_LINE:I

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {p0, p1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE:I

    sub-int/2addr p1, v0

    if-gt p0, p1, :cond_2

    sget p1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-le p0, p1, :cond_2

    sget p1, Lcom/android/settingslib/salt/widget/Until;->BOTTOM_LINE:I

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {p0, p1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method private static updateTop(II)V
    .locals 4

    sget v0, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    int-to-double v0, v0

    const-wide v2, 0x3fe69fbe76c8b439L    # 0.707

    mul-double v0, v0, v2

    double-to-int v0, v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/settingslib/salt/animation/AnimationParking;->mOriginSide:Z

    if-eqz p1, :cond_1

    sget p1, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE:I

    if-lt p0, p1, :cond_2

    sget p1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-gt p0, p1, :cond_2

    sget p1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 p1, p1, 0x2

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {p0, p1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE:I

    sub-int/2addr p1, v0

    if-gt p0, p1, :cond_2

    sget p1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    if-le p0, p1, :cond_2

    sget p1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 p1, p1, 0x2

    sput p0, Lcom/android/settingslib/salt/animation/AnimationParking;->baseX:I

    sput p1, Lcom/android/settingslib/salt/animation/AnimationParking;->baseY:I

    invoke-static {p0, p1}, Lcom/android/settingslib/salt/animation/AnimationParking;->updateAll(II)V

    :cond_2
    :goto_0
    return-void
.end method
