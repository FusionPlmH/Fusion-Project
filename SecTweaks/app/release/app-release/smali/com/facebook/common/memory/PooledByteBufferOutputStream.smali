.class public abstract Lcom/facebook/common/memory/PooledByteBufferOutputStream;
.super Ljava/io/OutputStream;
.source "PooledByteBufferOutputStream.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/facebook/common/internal/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public abstract size()I
.end method

.method public abstract toByteBuffer()Lcom/facebook/common/memory/PooledByteBuffer;
.end method
