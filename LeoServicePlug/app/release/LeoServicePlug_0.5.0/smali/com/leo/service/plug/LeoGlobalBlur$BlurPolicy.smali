.class public final enum Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;
.super Ljava/lang/Enum;
.source "LeoGlobalBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/leo/service/plug/LeoGlobalBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlurPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

.field public static final enum FAST_BLUR:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

.field public static final enum RS_BLUR:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    const-string v1, "RS_BLUR"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->RS_BLUR:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    new-instance v0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    const-string v1, "FAST_BLUR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->FAST_BLUR:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    sget-object v1, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->RS_BLUR:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    aput-object v1, v0, v2

    sget-object v1, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->FAST_BLUR:Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    aput-object v1, v0, v3

    sput-object v0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->$VALUES:[Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;
    .locals 1

    const-class v0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    return-object p0
.end method

.method public static values()[Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;
    .locals 1

    sget-object v0, Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->$VALUES:[Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    invoke-virtual {v0}, [Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/leo/service/plug/LeoGlobalBlur$BlurPolicy;

    return-object v0
.end method
