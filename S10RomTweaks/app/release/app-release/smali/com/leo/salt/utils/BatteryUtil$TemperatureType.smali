.class public final enum Lcom/leo/salt/utils/BatteryUtil$TemperatureType;
.super Ljava/lang/Enum;
.source "BatteryUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/salt/utils/BatteryUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TemperatureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/salt/utils/BatteryUtil$TemperatureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

.field public static final enum Battery:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

.field public static final enum CPU:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

.field public static final enum GPU:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

.field public static final enum GPUMHZ:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    const/4 v1, 0x0

    const-string v2, "Battery"

    invoke-direct {v0, v2, v1}, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->Battery:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    new-instance v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    const/4 v2, 0x1

    const-string v3, "GPU"

    invoke-direct {v0, v3, v2}, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->GPU:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    new-instance v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    const/4 v3, 0x2

    const-string v4, "GPUMHZ"

    invoke-direct {v0, v4, v3}, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->GPUMHZ:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    new-instance v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    const/4 v4, 0x3

    const-string v5, "CPU"

    invoke-direct {v0, v5, v4}, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->CPU:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    sget-object v5, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->Battery:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    aput-object v5, v0, v1

    sget-object v1, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->GPU:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->GPUMHZ:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->CPU:Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->$VALUES:[Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/leo/salt/utils/BatteryUtil$TemperatureType;
    .locals 1

    const-class v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    return-object p0
.end method

.method public static values()[Lcom/leo/salt/utils/BatteryUtil$TemperatureType;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->$VALUES:[Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    invoke-virtual {v0}, [Lcom/leo/salt/utils/BatteryUtil$TemperatureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/salt/utils/BatteryUtil$TemperatureType;

    return-object v0
.end method
