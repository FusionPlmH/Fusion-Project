.class public final enum Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
.super Ljava/lang/Enum;
.source "DiskCacheStrategy.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/engine/DiskCacheStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

.field public static final enum SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;


# instance fields
.field private final cacheResult:Z

.field private final cacheSource:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "ALL"

    invoke-direct {v0, v3, v2, v1, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const-string v3, "NONE"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const/4 v3, 0x2

    const-string v4, "SOURCE"

    invoke-direct {v0, v4, v3, v1, v2}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    new-instance v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const/4 v4, 0x3

    const-string v5, "RESULT"

    invoke-direct {v0, v5, v4, v2, v1}, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;-><init>(Ljava/lang/String;IZZ)V

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    sget-object v5, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->ALL:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v5, v0, v2

    sget-object v2, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v2, v0, v1

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->SOURCE:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->RESULT:Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    aput-object v1, v0, v4

    sput-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->$VALUES:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    iput-boolean p4, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->$VALUES:[Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/engine/DiskCacheStrategy;

    return-object v0
.end method


# virtual methods
.method public cacheResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheResult:Z

    return v0
.end method

.method public cacheSource()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/engine/DiskCacheStrategy;->cacheSource:Z

    return v0
.end method
