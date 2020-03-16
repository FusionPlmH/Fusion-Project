.class public final enum Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;
.super Ljava/lang/Enum;
.source "LeoGlobalBlur.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/os/salt/globalactions/LeoGlobalBlur;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BlurPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

.field public static final enum FAST_BLUR:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

.field public static final enum RS_BLUR:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    const/4 v1, 0x0

    const-string v2, "RS_BLUR"

    invoke-direct {v0, v2, v1}, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->RS_BLUR:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    new-instance v0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    const/4 v2, 0x1

    const-string v3, "FAST_BLUR"

    invoke-direct {v0, v3, v2}, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->FAST_BLUR:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    sget-object v3, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->RS_BLUR:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    aput-object v3, v0, v1

    sget-object v1, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->FAST_BLUR:Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    aput-object v1, v0, v2

    sput-object v0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->$VALUES:[Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;
    .locals 1

    const-class v0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    return-object p0
.end method

.method public static values()[Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;
    .locals 1

    sget-object v0, Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->$VALUES:[Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    invoke-virtual {v0}, [Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/os/salt/globalactions/LeoGlobalBlur$BlurPolicy;

    return-object v0
.end method
