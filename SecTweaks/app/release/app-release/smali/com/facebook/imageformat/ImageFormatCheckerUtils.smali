.class public Lcom/facebook/imageformat/ImageFormatCheckerUtils;
.super Ljava/lang/Object;
.source "ImageFormatCheckerUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asciiBytes(Ljava/lang/String;)[B
    .locals 2

    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_0
    const-string v0, "ASCII"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ASCII not found!"

    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static indexOfPattern([BI[BI)I
    .locals 8

    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, -0x1

    if-le p3, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    aget-byte v2, p2, v1

    sub-int/2addr p1, p3

    :goto_0
    if-gt v1, p1, :cond_4

    aget-byte v3, p0, v1

    const/4 v4, 0x1

    if-eq v3, v2, :cond_1

    :goto_1
    add-int/2addr v1, v4

    if-gt v1, p1, :cond_1

    aget-byte v3, p0, v1

    if-eq v3, v2, :cond_1

    goto :goto_1

    :cond_1
    if-gt v1, p1, :cond_3

    add-int/lit8 v3, v1, 0x1

    add-int v5, v3, p3

    sub-int/2addr v5, v4

    :goto_2
    if-ge v3, v5, :cond_2

    aget-byte v6, p0, v3

    aget-byte v7, p2, v4

    if-ne v6, v7, :cond_2

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    if-ne v3, v5, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method public static startsWithPattern([B[B)Z
    .locals 4

    invoke-static {p0}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    array-length v0, p1

    array-length v1, p0

    const/4 v2, 0x0

    if-le v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget-byte v1, p0, v0

    aget-byte v3, p1, v0

    if-eq v1, v3, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method
