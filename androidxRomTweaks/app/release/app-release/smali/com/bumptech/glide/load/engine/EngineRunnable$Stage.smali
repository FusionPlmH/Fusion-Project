.class final enum Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
.super Ljava/lang/Enum;
.source "EngineRunnable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/engine/EngineRunnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Stage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field public static final enum CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

.field public static final enum SOURCE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    const/4 v1, 0x0

    const-string v2, "CACHE"

    invoke-direct {v0, v2, v1}, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    new-instance v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    const/4 v2, 0x1

    const-string v3, "SOURCE"

    invoke-direct {v0, v3, v2}, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    sget-object v3, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->CACHE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    aput-object v3, v0, v1

    sget-object v1, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->SOURCE:Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    aput-object v1, v0, v2

    sput-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->$VALUES:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->$VALUES:[Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/EngineRunnable$Stage;

    return-object v0
.end method
