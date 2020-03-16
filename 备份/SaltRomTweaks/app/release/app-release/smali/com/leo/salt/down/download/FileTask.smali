.class public Lcom/leo/salt/down/download/FileTask;
.super Ljava/lang/Object;
.source "FileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private BUFFER_SIZE:I

.field private EACH_TEMP_SIZE:I

.field private IS_CANCEL:Z

.field private IS_DESTROY:Z

.field private IS_PAUSE:Z

.field private TEMP_FILE_TOTAL_SIZE:I

.field private callList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lokhttp3/Call;",
            ">;"
        }
    .end annotation
.end field

.field private childTaskCount:I

.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private tempChildTaskCount:I

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/leo/salt/down/data/DownloadData;Landroid/os/Handler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    iput v0, p0, Lcom/leo/salt/down/download/FileTask;->EACH_TEMP_SIZE:I

    const/16 v0, 0x1000

    iput v0, p0, Lcom/leo/salt/down/download/FileTask;->BUFFER_SIZE:I

    iput-object p1, p0, Lcom/leo/salt/down/download/FileTask;->context:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/leo/salt/down/data/DownloadData;->getUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/down/download/FileTask;->url:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/leo/salt/down/data/DownloadData;->getPath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/leo/salt/down/data/DownloadData;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/leo/salt/down/data/DownloadData;->getChildTaskCount()I

    move-result p1

    iput p1, p0, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    iput-object p3, p0, Lcom/leo/salt/down/download/FileTask;->handler:Landroid/os/Handler;

    iget p1, p0, Lcom/leo/salt/down/download/FileTask;->EACH_TEMP_SIZE:I

    iget p2, p0, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    mul-int p1, p1, p2

    iput p1, p0, Lcom/leo/salt/down/download/FileTask;->TEMP_FILE_TOTAL_SIZE:I

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/down/download/FileTask;Lokhttp3/Response;ILcom/leo/salt/down/data/Ranges;Ljava/io/File;Ljava/io/File;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/leo/salt/down/download/FileTask;->startSaveRangeFile(Lokhttp3/Response;ILcom/leo/salt/down/data/Ranges;Ljava/io/File;Ljava/io/File;)V

    return-void
.end method

.method private declared-synchronized addCount()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/leo/salt/down/download/FileTask;->tempChildTaskCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/leo/salt/down/download/FileTask;->tempChildTaskCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private onStart(JJLjava/lang/String;Z)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1001

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    long-to-int p2, p1

    const-string p1, "totalLength"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    long-to-int p1, p3

    const-string p2, "currentLength"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "lastModify"

    invoke-virtual {v1, p1, p5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "isSupportRange"

    invoke-virtual {v1, p1, p6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/leo/salt/down/download/FileTask;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private prepareRangeFile(Lokhttp3/Response;)V
    .locals 21

    move-object/from16 v8, p0

    const-string v0, "rws"

    const-string v9, ".temp"

    const/4 v10, 0x0

    :try_start_0
    new-instance v11, Ljava/io/File;

    iget-object v1, v8, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    iget-object v2, v8, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-direct {v11, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v12, Ljava/io/File;

    iget-object v1, v8, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v8, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v12, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v13

    const-wide/16 v4, 0x0

    invoke-static/range {p1 .. p1}, Lcom/leo/salt/down/utils/Utils;->getLastModify(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    move-object/from16 v1, p0

    move-wide v2, v13

    invoke-direct/range {v1 .. v7}, Lcom/leo/salt/down/download/FileTask;->onStart(JJLjava/lang/String;Z)V

    iget-object v1, v8, Lcom/leo/salt/down/download/FileTask;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/leo/salt/down/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/db/Db;

    move-result-object v1

    iget-object v2, v8, Lcom/leo/salt/down/download/FileTask;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/leo/salt/down/db/Db;->deleteData(Ljava/lang/String;)V

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/io/File;

    const/4 v2, 0x0

    aput-object v11, v1, v2

    const/4 v3, 0x1

    aput-object v12, v1, v3

    invoke-static {v1}, Lcom/leo/salt/down/utils/Utils;->deleteFile([Ljava/io/File;)V

    iget-object v1, v8, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    iget-object v4, v8, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-static {v1, v4}, Lcom/leo/salt/down/utils/Utils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    iget-object v4, v8, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v8, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/leo/salt/down/utils/Utils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    new-instance v5, Ljava/io/RandomAccessFile;

    invoke-direct {v5, v1, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v5, v13, v14}, Ljava/io/RandomAccessFile;->setLength(J)V

    new-instance v1, Ljava/io/RandomAccessFile;

    invoke-direct {v1, v4, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget v0, v8, Lcom/leo/salt/down/download/FileTask;->TEMP_FILE_TOTAL_SIZE:I

    int-to-long v6, v0

    invoke-virtual {v1, v6, v7}, Ljava/io/RandomAccessFile;->setLength(J)V

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v16, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v17, 0x0

    iget v0, v8, Lcom/leo/salt/down/download/FileTask;->TEMP_FILE_TOTAL_SIZE:I

    int-to-long v6, v0

    move-object v15, v4

    move-wide/from16 v19, v6

    invoke-virtual/range {v15 .. v20}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iget v6, v8, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    int-to-long v6, v6

    div-long v6, v13, v6

    long-to-int v7, v6

    :goto_0
    iget v6, v8, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    if-ge v2, v6, :cond_1

    iget v6, v8, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    sub-int/2addr v6, v3

    if-ne v2, v6, :cond_0

    mul-int v6, v2, v7

    int-to-long v9, v6

    const-wide/16 v11, 0x1

    sub-long v11, v13, v11

    goto :goto_1

    :cond_0
    mul-int v6, v2, v7

    int-to-long v9, v6

    add-int/lit8 v6, v2, 0x1

    mul-int v6, v6, v7

    sub-int/2addr v6, v3

    int-to-long v11, v6

    :goto_1
    invoke-virtual {v0, v9, v10}, Ljava/nio/MappedByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v11, v12}, Ljava/nio/MappedByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v4, v10

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v4, v10

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object v1, v10

    move-object v4, v1

    :goto_2
    move-object v10, v5

    goto :goto_6

    :catch_2
    move-exception v0

    move-object v1, v10

    move-object v4, v1

    :goto_3
    move-object v10, v5

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v1, v10

    move-object v4, v1

    goto :goto_6

    :catch_3
    move-exception v0

    move-object v1, v10

    move-object v4, v1

    :goto_4
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lcom/leo/salt/down/download/FileTask;->onError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    invoke-static {v10}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_5
    invoke-static {v1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static/range {p1 .. p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_4
    move-exception v0

    :goto_6
    invoke-static {v10}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static/range {p1 .. p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method private saveCommonFile(Lokhttp3/Response;)V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, ""

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/leo/salt/down/download/FileTask;->onStart(JJLjava/lang/String;Z)V

    iget-object v1, p0, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/leo/salt/down/utils/Utils;->deleteFile(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/leo/salt/down/utils/Utils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    invoke-static {v0}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v0}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget v0, p0, Lcom/leo/salt/down/download/FileTask;->BUFFER_SIZE:I

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v4, -0x1

    if-eq v1, v4, :cond_3

    iget-boolean v4, p0, Lcom/leo/salt/down/download/FileTask;->IS_CANCEL:Z

    if-eqz v4, :cond_1

    iget-object v0, p0, Lcom/leo/salt/down/download/FileTask;->handler:Landroid/os/Handler;

    const/16 v1, 0x1005

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_1
    iget-boolean v4, p0, Lcom/leo/salt/down/download/FileTask;->IS_DESTROY:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4, v1}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p0, v1}, Lcom/leo/salt/down/download/FileTask;->onProgress(I)V

    goto :goto_0

    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v2}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    goto :goto_5

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v1, v0

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v3, v0

    :goto_2
    move-object v0, v2

    goto :goto_6

    :catch_1
    move-exception v1

    move-object v3, v0

    :goto_3
    move-object v0, v2

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v3, v0

    goto :goto_6

    :catch_2
    move-exception v1

    move-object v3, v0

    :goto_4
    :try_start_4
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/leo/salt/down/download/FileTask;->onError(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    invoke-static {v0}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_5
    invoke-static {v3}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_3
    move-exception v1

    :goto_6
    invoke-static {v0}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v1
.end method

.method private saveRangeFile()V
    .locals 18

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    iget-object v1, v6, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/leo/salt/down/utils/Utils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v7

    iget-object v0, v6, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v6, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".temp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/leo/salt/down/utils/Utils;->createFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/leo/salt/down/download/FileTask;->readDownloadRange(Ljava/io/File;)Lcom/leo/salt/down/data/Ranges;

    move-result-object v9

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/leo/salt/down/download/FileTask;->callList:Ljava/util/ArrayList;

    iget-object v0, v6, Lcom/leo/salt/down/download/FileTask;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/leo/salt/down/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/db/Db;

    move-result-object v0

    iget-object v1, v6, Lcom/leo/salt/down/download/FileTask;->url:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1002

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/leo/salt/down/db/Db;->updateProgress(IFILjava/lang/String;)V

    const/4 v10, 0x0

    :goto_0
    iget v0, v6, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    if-ge v10, v0, :cond_0

    invoke-static {}, Lcom/leo/salt/down/net/OkHttpManager;->getInstance()Lcom/leo/salt/down/net/OkHttpManager;

    move-result-object v11

    iget-object v12, v6, Lcom/leo/salt/down/download/FileTask;->url:Ljava/lang/String;

    iget-object v0, v9, Lcom/leo/salt/down/data/Ranges;->start:[J

    aget-wide v13, v0, v10

    iget-object v0, v9, Lcom/leo/salt/down/data/Ranges;->end:[J

    aget-wide v15, v0, v10

    new-instance v17, Lcom/leo/salt/down/download/FileTask$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v10

    move-object v3, v9

    move-object v4, v7

    move-object v5, v8

    invoke-direct/range {v0 .. v5}, Lcom/leo/salt/down/download/FileTask$1;-><init>(Lcom/leo/salt/down/download/FileTask;ILcom/leo/salt/down/data/Ranges;Ljava/io/File;Ljava/io/File;)V

    invoke-virtual/range {v11 .. v17}, Lcom/leo/salt/down/net/OkHttpManager;->initRequest(Ljava/lang/String;JJLokhttp3/Callback;)Lokhttp3/Call;

    move-result-object v0

    iget-object v1, v6, Lcom/leo/salt/down/download/FileTask;->callList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget v0, v6, Lcom/leo/salt/down/download/FileTask;->tempChildTaskCount:I

    iget v1, v6, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    if-ge v0, v1, :cond_1

    goto :goto_1

    :cond_1
    return-void
.end method

.method private startSaveRangeFile(Lokhttp3/Response;ILcom/leo/salt/down/data/Ranges;Ljava/io/File;Ljava/io/File;)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v0, p2

    move-object/from16 v2, p3

    const-string v3, "rws"

    const/4 v4, 0x0

    :try_start_0
    new-instance v5, Ljava/io/RandomAccessFile;

    move-object/from16 v6, p4

    invoke-direct {v5, v6, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    :try_start_1
    invoke-virtual {v5}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    :try_start_2
    sget-object v7, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    iget-object v6, v2, Lcom/leo/salt/down/data/Ranges;->start:[J

    aget-wide v8, v6, v0

    iget-object v6, v2, Lcom/leo/salt/down/data/Ranges;->end:[J

    aget-wide v10, v6, v0

    iget-object v2, v2, Lcom/leo/salt/down/data/Ranges;->start:[J

    aget-wide v13, v2, v0

    sub-long/2addr v10, v13

    const-wide/16 v13, 0x1

    add-long/2addr v10, v13

    move-object v6, v12

    invoke-virtual/range {v6 .. v11}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    new-instance v6, Ljava/io/RandomAccessFile;

    move-object/from16 v7, p5

    invoke-direct {v6, v7, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v6}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    sget-object v14, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v15, 0x0

    iget v7, v1, Lcom/leo/salt/down/download/FileTask;->TEMP_FILE_TOTAL_SIZE:I

    int-to-long v7, v7

    move-object v13, v3

    move-wide/from16 v17, v7

    invoke-virtual/range {v13 .. v18}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v4

    iget v8, v1, Lcom/leo/salt/down/download/FileTask;->BUFFER_SIZE:I

    new-array v8, v8, [B

    :goto_0
    invoke-virtual {v4, v8}, Ljava/io/InputStream;->read([B)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_3

    iget-boolean v10, v1, Lcom/leo/salt/down/download/FileTask;->IS_CANCEL:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-eqz v10, :cond_0

    :try_start_5
    iget-object v2, v1, Lcom/leo/salt/down/download/FileTask;->handler:Landroid/os/Handler;

    const/16 v7, 0x1005

    invoke-virtual {v2, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, v1, Lcom/leo/salt/down/download/FileTask;->callList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    goto/16 :goto_3

    :cond_0
    const/4 v10, 0x0

    :try_start_6
    invoke-virtual {v2, v8, v10, v9}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget v10, v1, Lcom/leo/salt/down/download/FileTask;->EACH_TEMP_SIZE:I

    mul-int v10, v10, v0

    iget v11, v1, Lcom/leo/salt/down/download/FileTask;->EACH_TEMP_SIZE:I

    mul-int v11, v11, v0

    invoke-virtual {v7, v11}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v13
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    move-object/from16 p4, v2

    move-object/from16 p3, v3

    int-to-long v2, v9

    add-long/2addr v13, v2

    :try_start_7
    invoke-virtual {v7, v10, v13, v14}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v9}, Lcom/leo/salt/down/download/FileTask;->onProgress(I)V

    iget-boolean v2, v1, Lcom/leo/salt/down/download/FileTask;->IS_DESTROY:Z

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/leo/salt/down/download/FileTask;->handler:Landroid/os/Handler;

    const/16 v3, 0x1010

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, v1, Lcom/leo/salt/down/download/FileTask;->callList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_2

    :cond_1
    iget-boolean v2, v1, Lcom/leo/salt/down/download/FileTask;->IS_PAUSE:Z

    if-eqz v2, :cond_2

    iget-object v2, v1, Lcom/leo/salt/down/download/FileTask;->handler:Landroid/os/Handler;

    const/16 v3, 0x1003

    invoke-virtual {v2, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v2, v1, Lcom/leo/salt/down/download/FileTask;->callList:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    goto :goto_2

    :cond_2
    move-object/from16 v3, p3

    move-object/from16 v2, p4

    goto :goto_0

    :cond_3
    :goto_1
    move-object/from16 p3, v3

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/leo/salt/down/download/FileTask;->addCount()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    invoke-static {v5}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static/range {p3 .. p3}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    goto/16 :goto_7

    :catchall_1
    move-exception v0

    move-object/from16 v3, p3

    goto/16 :goto_8

    :catch_1
    move-exception v0

    move-object/from16 v3, p3

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 p3, v3

    goto/16 :goto_8

    :catch_2
    move-exception v0

    move-object/from16 p3, v3

    :goto_3
    move-object v2, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    move-object v3, v4

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v2, v4

    move-object v3, v2

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v3, v4

    move-object v6, v3

    goto :goto_8

    :catch_4
    move-exception v0

    move-object v2, v4

    move-object v3, v2

    move-object v6, v3

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v3, v4

    move-object v6, v3

    goto :goto_5

    :catch_5
    move-exception v0

    move-object v2, v4

    move-object v3, v2

    move-object v6, v3

    move-object v12, v6

    :goto_4
    move-object v4, v5

    goto :goto_6

    :catchall_6
    move-exception v0

    move-object v3, v4

    move-object v5, v3

    move-object v6, v5

    :goto_5
    move-object v12, v6

    goto :goto_8

    :catch_6
    move-exception v0

    move-object v2, v4

    move-object v3, v2

    move-object v6, v3

    move-object v12, v6

    :goto_6
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/leo/salt/down/download/FileTask;->onError(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    invoke-static {v4}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v2}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    :goto_7
    invoke-static/range {p1 .. p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    return-void

    :catchall_7
    move-exception v0

    move-object v5, v4

    move-object v4, v2

    :goto_8
    invoke-static {v5}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v12}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v4}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v6}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v3}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static/range {p1 .. p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/down/download/FileTask;->IS_CANCEL:Z

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/down/download/FileTask;->IS_DESTROY:Z

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1008

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p1, p0, Lcom/leo/salt/down/download/FileTask;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onProgress(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x1002

    iput v1, v0, Landroid/os/Message;->what:I

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p1, p0, Lcom/leo/salt/down/download/FileTask;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public pause()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/down/download/FileTask;->IS_PAUSE:Z

    return-void
.end method

.method public readDownloadRange(Ljava/io/File;)Lcom/leo/salt/down/data/Ranges;
    .locals 10

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object v4, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v5, 0x0

    iget v2, p0, Lcom/leo/salt/down/download/FileTask;->TEMP_FILE_TOTAL_SIZE:I

    int-to-long v7, v2

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v2

    iget v3, p0, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    new-array v3, v3, [J

    iget v4, p0, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    new-array v4, v4, [J

    const/4 v5, 0x0

    :goto_0
    iget v6, p0, Lcom/leo/salt/down/download/FileTask;->childTaskCount:I

    if-ge v5, v6, :cond_0

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v3, v5

    invoke-virtual {v2}, Ljava/nio/MappedByteBuffer;->getLong()J

    move-result-wide v6

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/leo/salt/down/data/Ranges;

    invoke-direct {v2, v3, v4}, Lcom/leo/salt/down/data/Ranges;-><init>([J[J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    invoke-static {p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    return-object v2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception p1

    move-object v9, v0

    move-object v0, p1

    move-object p1, v9

    goto :goto_2

    :catch_1
    move-exception v2

    move-object p1, v0

    goto :goto_1

    :catchall_1
    move-exception p1

    move-object v1, v0

    move-object v0, p1

    move-object p1, v1

    goto :goto_2

    :catch_2
    move-exception v2

    move-object p1, v0

    move-object v1, p1

    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/leo/salt/down/download/FileTask;->onError(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception v0

    :goto_2
    invoke-static {p1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    invoke-static {v1}, Lcom/leo/salt/down/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v0
.end method

.method public run()V
    .locals 10

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    iget-object v2, p0, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/leo/salt/down/download/FileTask;->path:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/leo/salt/down/download/FileTask;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ".temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/leo/salt/down/download/FileTask;->context:Landroid/content/Context;

    invoke-static {v2}, Lcom/leo/salt/down/db/Db;->getInstance(Landroid/content/Context;)Lcom/leo/salt/down/db/Db;

    move-result-object v2

    iget-object v3, p0, Lcom/leo/salt/down/download/FileTask;->url:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/leo/salt/down/db/Db;->getData(Ljava/lang/String;)Lcom/leo/salt/down/data/DownloadData;

    move-result-object v2

    invoke-static {v0}, Lcom/leo/salt/down/utils/Utils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Lcom/leo/salt/down/utils/Utils;->isFileExists(Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/leo/salt/down/data/DownloadData;->getStatus()I

    move-result v0

    const/16 v1, 0x1002

    if-eq v0, v1, :cond_1

    invoke-static {}, Lcom/leo/salt/down/net/OkHttpManager;->getInstance()Lcom/leo/salt/down/net/OkHttpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/down/download/FileTask;->url:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/leo/salt/down/data/DownloadData;->getLastModify()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/leo/salt/down/net/OkHttpManager;->initRequest(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/leo/salt/down/utils/Utils;->isNotServerFileChanged(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/leo/salt/down/download/FileTask;->EACH_TEMP_SIZE:I

    invoke-virtual {v2}, Lcom/leo/salt/down/data/DownloadData;->getChildTaskCount()I

    move-result v1

    mul-int v0, v0, v1

    iput v0, p0, Lcom/leo/salt/down/download/FileTask;->TEMP_FILE_TOTAL_SIZE:I

    invoke-virtual {v2}, Lcom/leo/salt/down/data/DownloadData;->getTotalLength()I

    move-result v0

    int-to-long v4, v0

    invoke-virtual {v2}, Lcom/leo/salt/down/data/DownloadData;->getCurrentLength()I

    move-result v0

    int-to-long v6, v0

    const-string v8, ""

    const/4 v9, 0x1

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/leo/salt/down/download/FileTask;->onStart(JJLjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lcom/leo/salt/down/download/FileTask;->prepareRangeFile(Lokhttp3/Response;)V

    :goto_0
    invoke-direct {p0}, Lcom/leo/salt/down/download/FileTask;->saveRangeFile()V

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/leo/salt/down/net/OkHttpManager;->getInstance()Lcom/leo/salt/down/net/OkHttpManager;

    move-result-object v0

    iget-object v1, p0, Lcom/leo/salt/down/download/FileTask;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/leo/salt/down/net/OkHttpManager;->initRequest(Ljava/lang/String;)Lokhttp3/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v0}, Lcom/leo/salt/down/utils/Utils;->isSupportRange(Lokhttp3/Response;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/leo/salt/down/download/FileTask;->prepareRangeFile(Lokhttp3/Response;)V

    invoke-direct {p0}, Lcom/leo/salt/down/download/FileTask;->saveRangeFile()V

    goto :goto_1

    :cond_2
    invoke-direct {p0, v0}, Lcom/leo/salt/down/download/FileTask;->saveCommonFile(Lokhttp3/Response;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/down/download/FileTask;->onError(Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
