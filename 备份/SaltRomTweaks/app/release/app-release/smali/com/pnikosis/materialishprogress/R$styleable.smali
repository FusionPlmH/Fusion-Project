.class public final Lcom/pnikosis/materialishprogress/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pnikosis/materialishprogress/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final ProgressWheel:[I

.field public static final ProgressWheel_matProg_barColor:I = 0x0

.field public static final ProgressWheel_matProg_barSpinCycleTime:I = 0x1

.field public static final ProgressWheel_matProg_barWidth:I = 0x2

.field public static final ProgressWheel_matProg_circleRadius:I = 0x3

.field public static final ProgressWheel_matProg_fillRadius:I = 0x4

.field public static final ProgressWheel_matProg_linearProgress:I = 0x5

.field public static final ProgressWheel_matProg_progressIndeterminate:I = 0x6

.field public static final ProgressWheel_matProg_rimColor:I = 0x7

.field public static final ProgressWheel_matProg_rimWidth:I = 0x8

.field public static final ProgressWheel_matProg_spinSpeed:I = 0x9


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/pnikosis/materialishprogress/R$styleable;->ProgressWheel:[I

    return-void

    :array_0
    .array-data 4
        0x7f040182
        0x7f040183
        0x7f040184
        0x7f040185
        0x7f040186
        0x7f040187
        0x7f040188
        0x7f040189
        0x7f04018a
        0x7f04018b
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
