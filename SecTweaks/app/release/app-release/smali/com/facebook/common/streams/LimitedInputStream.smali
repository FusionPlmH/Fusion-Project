.class public Lcom/facebook/common/streams/LimitedInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitedInputStream.java"


# instance fields
.field private mBytesToRead:I

.field private mBytesToReadWhenMarked:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    if-eqz p1, :cond_1

    if-ltz p2, :cond_0

    iput p2, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    const/4 p1, -0x1

    iput p1, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToReadWhenMarked:I

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "limit must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-direct {p1}, Ljava/lang/NullPointerException;-><init>()V

    throw p1
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    iget v1, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public mark(I)V
    .locals 1

    iget-object v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V

    iget p1, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    iput p1, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToReadWhenMarked:I

    :cond_0
    return-void
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    const/4 v1, -0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget v1, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_1

    iget p2, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    sub-int/2addr p2, p1

    iput p2, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    :cond_1
    return p1
.end method

.method public reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToReadWhenMarked:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToReadWhenMarked:I

    iput v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    return-void

    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark is not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    int-to-long v0, v0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iget-object v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    iget v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    int-to-long v0, v0

    sub-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/facebook/common/streams/LimitedInputStream;->mBytesToRead:I

    return-wide p1
.end method
