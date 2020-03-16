.class public final enum Lcom/meiqia/core/MQScheduleRule;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/meiqia/core/MQScheduleRule;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meiqia/core/MQScheduleRule;

.field public static final enum REDIRECT_ENTERPRISE:Lcom/meiqia/core/MQScheduleRule;

.field public static final enum REDIRECT_GROUP:Lcom/meiqia/core/MQScheduleRule;

.field public static final enum REDIRECT_NONE:Lcom/meiqia/core/MQScheduleRule;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/meiqia/core/MQScheduleRule;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "REDIRECT_NONE"

    invoke-direct {v0, v3, v1, v2}, Lcom/meiqia/core/MQScheduleRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_NONE:Lcom/meiqia/core/MQScheduleRule;

    new-instance v0, Lcom/meiqia/core/MQScheduleRule;

    const/4 v3, 0x2

    const-string v4, "REDIRECT_GROUP"

    invoke-direct {v0, v4, v2, v3}, Lcom/meiqia/core/MQScheduleRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_GROUP:Lcom/meiqia/core/MQScheduleRule;

    new-instance v0, Lcom/meiqia/core/MQScheduleRule;

    const/4 v4, 0x3

    const-string v5, "REDIRECT_ENTERPRISE"

    invoke-direct {v0, v5, v3, v4}, Lcom/meiqia/core/MQScheduleRule;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_ENTERPRISE:Lcom/meiqia/core/MQScheduleRule;

    new-array v0, v4, [Lcom/meiqia/core/MQScheduleRule;

    sget-object v4, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_NONE:Lcom/meiqia/core/MQScheduleRule;

    aput-object v4, v0, v1

    sget-object v1, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_GROUP:Lcom/meiqia/core/MQScheduleRule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meiqia/core/MQScheduleRule;->REDIRECT_ENTERPRISE:Lcom/meiqia/core/MQScheduleRule;

    aput-object v1, v0, v3

    sput-object v0, Lcom/meiqia/core/MQScheduleRule;->$VALUES:[Lcom/meiqia/core/MQScheduleRule;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/meiqia/core/MQScheduleRule;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meiqia/core/MQScheduleRule;
    .locals 1

    const-class v0, Lcom/meiqia/core/MQScheduleRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/meiqia/core/MQScheduleRule;

    return-object p0
.end method

.method public static values()[Lcom/meiqia/core/MQScheduleRule;
    .locals 1

    sget-object v0, Lcom/meiqia/core/MQScheduleRule;->$VALUES:[Lcom/meiqia/core/MQScheduleRule;

    invoke-virtual {v0}, [Lcom/meiqia/core/MQScheduleRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meiqia/core/MQScheduleRule;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/meiqia/core/MQScheduleRule;->value:I

    return v0
.end method
