.class public final enum Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
.super Ljava/lang/Enum;
.source "ImageHeaderParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImageType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

.field public static final enum UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;


# instance fields
.field private final hasAlpha:Z


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "GIF"

    invoke-direct {v0, v3, v2, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const-string v3, "JPEG"

    invoke-direct {v0, v3, v1, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const/4 v3, 0x2

    const-string v4, "PNG_A"

    invoke-direct {v0, v4, v3, v1}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const/4 v4, 0x3

    const-string v5, "PNG"

    invoke-direct {v0, v5, v4, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const/4 v5, 0x4

    const-string v6, "UNKNOWN"

    invoke-direct {v0, v6, v5, v2}, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    sget-object v6, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v6, v0, v2

    sget-object v2, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v2, v0, v1

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->$VALUES:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 1

    const-class v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object p0
.end method

.method public static values()[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;
    .locals 1

    sget-object v0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->$VALUES:[Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    invoke-virtual {v0}, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;

    return-object v0
.end method


# virtual methods
.method public hasAlpha()Z
    .locals 1

    iget-boolean v0, p0, Lcom/bumptech/glide/load/resource/bitmap/ImageHeaderParser$ImageType;->hasAlpha:Z

    return v0
.end method
