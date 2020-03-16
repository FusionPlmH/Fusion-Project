.class public final Lcom/meiqia/meiqiasdk/util/MQConfig$ui;
.super Ljava/lang/Object;
.source "MQConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/util/MQConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ui"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;
    }
.end annotation


# static fields
.field public static backArrowIconResId:I

.field public static leftChatBubbleColorResId:I

.field public static leftChatTextColorResId:I

.field public static rightChatBubbleColorResId:I

.field public static rightChatTextColorResId:I

.field public static robotEvaluateTextColorResId:I

.field public static robotMenuItemTextColorResId:I

.field public static robotMenuTipTextColorResId:I

.field public static titleBackgroundResId:I

.field public static titleGravity:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

.field public static titleTextColorResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->CENTER:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleGravity:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    const/4 v0, -0x1

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleBackgroundResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->titleTextColorResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->leftChatBubbleColorResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->rightChatBubbleColorResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->leftChatTextColorResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->rightChatTextColorResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->backArrowIconResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->robotMenuItemTextColorResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->robotMenuTipTextColorResId:I

    sput v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui;->robotEvaluateTextColorResId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
