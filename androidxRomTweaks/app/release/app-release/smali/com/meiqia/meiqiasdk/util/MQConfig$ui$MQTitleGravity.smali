.class public final enum Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;
.super Ljava/lang/Enum;
.source "MQConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meiqia/meiqiasdk/util/MQConfig$ui;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MQTitleGravity"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

.field public static final enum CENTER:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

.field public static final enum LEFT:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    const/4 v1, 0x0

    const-string v2, "LEFT"

    invoke-direct {v0, v2, v1}, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->LEFT:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    new-instance v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    const/4 v2, 0x1

    const-string v3, "CENTER"

    invoke-direct {v0, v3, v2}, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->CENTER:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    sget-object v3, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->LEFT:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    aput-object v3, v0, v1

    sget-object v1, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->CENTER:Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    aput-object v1, v0, v2

    sput-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->$VALUES:[Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;
    .locals 1

    const-class v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    return-object p0
.end method

.method public static values()[Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;
    .locals 1

    sget-object v0, Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->$VALUES:[Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    invoke-virtual {v0}, [Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meiqia/meiqiasdk/util/MQConfig$ui$MQTitleGravity;

    return-object v0
.end method
