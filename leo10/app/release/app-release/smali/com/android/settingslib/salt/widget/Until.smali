.class public Lcom/android/settingslib/salt/widget/Until;
.super Ljava/lang/Object;
.source "Until.java"


# static fields
.field public static BOTTOM_LINE:I = 0x0

.field public static EXPEND_LINE:I = 0x0

.field public static EXPEND_LINE_RIGHT:I = 0x0

.field public static EXPEND_OFFSET:I = 0x0

.field private static final EXPEND_OFFSET_FACTOR:I = 0xa

.field private static final IMAGE_HEIGHT_FACTOR:I = 0x6

.field public static IMAGE_WIDTH:I = 0x0

.field public static MID_LINE:I = 0x0

.field private static final MID_LINE_FACTOR:I = 0x2

.field private static final MOVE_MAX_FACTOR:I = 0x5

.field public static MOVE_MAX_SIZE:I = 0x0

.field private static PARKING_FACTOR:F = 0.707f

.field public static PARKING_LINE:I = 0x0

.field public static PARKING_LINE_RIGHT:I = 0x0

.field public static SCREEM_HEIGHT:I = 0x0

.field public static SCREEM_WIDTH:I = 0x0

.field private static final SHRINK_FACTOR:I = 0x2

.field public static SHRINK_LINE:I

.field public static STATUS_HEIGHT:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string v0, "status_bar_height"

    const-string v1, "dimen"

    const-string v2, "android"

    invoke-virtual {p0, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    return p0
.end method

.method public static initialPop(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v1, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_HEIGHT:I

    invoke-static {p0}, Lcom/android/settingslib/salt/widget/Until;->getStatusBarHeight(Landroid/content/Context;)I

    sget p0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_HEIGHT:I

    invoke-static {p0, v0}, Ljava/lang/Math;->min(II)I

    move-result p0

    div-int/lit8 p0, p0, 0x6

    sput p0, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sget p0, Lcom/android/settingslib/salt/widget/Until;->SCREEM_WIDTH:I

    sget v0, Lcom/android/settingslib/salt/widget/Until;->IMAGE_WIDTH:I

    sub-int v1, p0, v0

    div-int/lit8 v1, v1, 0x2

    sput v1, Lcom/android/settingslib/salt/widget/Until;->MID_LINE:I

    div-int/lit8 v1, v0, 0x5

    sput v1, Lcom/android/settingslib/salt/widget/Until;->MOVE_MAX_SIZE:I

    div-int/lit8 v1, v0, 0xa

    sput v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_OFFSET:I

    int-to-double v1, v0

    const-wide v3, 0x3ff69fbe76c8b439L    # 1.414

    mul-double v1, v1, v3

    double-to-int v1, v1

    sget v2, Lcom/android/settingslib/salt/widget/Until;->EXPEND_OFFSET:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v1, v0, 0x2

    sput v1, Lcom/android/settingslib/salt/widget/Until;->SHRINK_LINE:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->PARKING_FACTOR:F

    int-to-float v2, v0

    mul-float v1, v1, v2

    float-to-int v1, v1

    sput v1, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE:I

    sget v1, Lcom/android/settingslib/salt/widget/Until;->SCREEM_HEIGHT:I

    sget v2, Lcom/android/settingslib/salt/widget/Until;->STATUS_HEIGHT:I

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    sget v2, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    sput v1, Lcom/android/settingslib/salt/widget/Until;->BOTTOM_LINE:I

    sub-int v1, p0, v0

    sub-int/2addr v1, v2

    sput v1, Lcom/android/settingslib/salt/widget/Until;->EXPEND_LINE_RIGHT:I

    sub-int/2addr p0, v0

    sget v0, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE:I

    sub-int/2addr p0, v0

    sput p0, Lcom/android/settingslib/salt/widget/Until;->PARKING_LINE_RIGHT:I

    return-void
.end method
