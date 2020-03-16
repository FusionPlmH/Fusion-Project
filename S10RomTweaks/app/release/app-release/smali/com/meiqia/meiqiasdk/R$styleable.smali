.class public final Lcom/meiqia/meiqiasdk/R$styleable;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "styleable"
.end annotation


# static fields
.field public static final MQImageView:[I

.field public static final MQImageView_android_src:I = 0x0

.field public static final MQImageView_mq_iv_borderColor:I = 0x1

.field public static final MQImageView_mq_iv_borderWidth:I = 0x2

.field public static final MQImageView_mq_iv_cornerRadius:I = 0x3

.field public static final MQImageView_mq_iv_isCircle:I = 0x4

.field public static final MQImageView_mq_iv_isSquare:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/meiqia/meiqiasdk/R$styleable;->MQImageView:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1010119
        0x7f04019f
        0x7f0401a0
        0x7f0401a1
        0x7f0401a2
        0x7f0401a3
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
