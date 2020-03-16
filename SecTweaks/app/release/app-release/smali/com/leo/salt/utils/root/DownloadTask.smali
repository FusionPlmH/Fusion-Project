.class public Lcom/leo/salt/utils/root/DownloadTask;
.super Landroid/os/AsyncTask;
.source "DownloadTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_CANCELED:I = 0x3

.field public static final TYPE_FAILED:I = 0x1

.field public static final TYPE_PAUSED:I = 0x2

.field public static final TYPE_SUCCESS:I


# instance fields
.field private isCanceled:Z

.field private isPaused:Z

.field private lastProgress:I

.field private listener:Lcom/leo/salt/utils/root/DownloadListener;


# direct methods
.method public constructor <init>(Lcom/leo/salt/utils/root/DownloadListener;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    iput-boolean v0, p0, Lcom/leo/salt/utils/root/DownloadTask;->isPaused:Z

    iput-object p1, p0, Lcom/leo/salt/utils/root/DownloadTask;->listener:Lcom/leo/salt/utils/root/DownloadListener;

    return-void
.end method

.method private getContentLength(Ljava/lang/String;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v1, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method


# virtual methods
.method public cancelDownload()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Integer;
    .locals 17

    move-object/from16 v1, p0

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v0, 0x0

    :try_start_0
    aget-object v4, p1, v0

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v6}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    sget-object v6, Lcom/leo/salt/utils/Constants;->OTAURL:Ljava/lang/String;

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_8
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v5

    const-wide/16 v8, 0x0

    if-eqz v5, :cond_0

    invoke-virtual {v7}, Ljava/io/File;->length()J

    move-result-wide v5

    goto :goto_0

    :cond_0
    move-wide v5, v8

    :goto_0
    invoke-direct {v1, v4}, Lcom/leo/salt/utils/root/DownloadTask;->getContentLength(Ljava/lang/String;)J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-nez v8, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-boolean v0, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v0, :cond_1

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-object v2

    :cond_2
    cmp-long v8, v10, v5

    if-nez v8, :cond_4

    :try_start_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    iget-boolean v0, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v0, :cond_3

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_2
    return-object v2

    :cond_4
    :try_start_5
    new-instance v8, Lokhttp3/OkHttpClient;

    invoke-direct {v8}, Lokhttp3/OkHttpClient;-><init>()V

    new-instance v9, Lokhttp3/Request$Builder;

    invoke-direct {v9}, Lokhttp3/Request$Builder;-><init>()V

    const-string v12, "RANGE"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "bytes="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v14, "-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v12, v13}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v8, v4}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v4

    invoke-interface {v4}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v8
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_7
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    new-instance v9, Ljava/io/RandomAccessFile;

    const-string v12, "rw"

    invoke-direct {v9, v7, v12}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-virtual {v9, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const/16 v3, 0x400

    new-array v3, v3, [B

    const/4 v12, 0x0

    :goto_3
    invoke-virtual {v8, v3}, Ljava/io/InputStream;->read([B)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_b

    iget-boolean v14, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v14, :cond_7

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    if-eqz v8, :cond_5

    :try_start_8
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_5
    :goto_4
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    iget-boolean v0, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v0, :cond_6

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    goto :goto_6

    :goto_5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_6
    return-object v2

    :cond_7
    :try_start_9
    iget-boolean v14, v1, Lcom/leo/salt/utils/root/DownloadTask;->isPaused:Z

    if-eqz v14, :cond_a

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    if-eqz v8, :cond_8

    :try_start_a
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_7

    :catch_3
    move-exception v0

    goto :goto_8

    :cond_8
    :goto_7
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    iget-boolean v0, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v0, :cond_9

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_9

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_9
    :goto_9
    return-object v2

    :cond_a
    add-int/2addr v12, v13

    :try_start_b
    invoke-virtual {v9, v3, v0, v13}, Ljava/io/RandomAccessFile;->write([BII)V

    int-to-long v13, v12

    add-long/2addr v13, v5

    const-wide/16 v15, 0x64

    mul-long v13, v13, v15

    div-long/2addr v13, v10

    long-to-int v13, v13

    new-array v14, v2, [Ljava/lang/Integer;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v13, v14, v0

    invoke-virtual {v1, v14}, Lcom/leo/salt/utils/root/DownloadTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_3

    :cond_b
    invoke-virtual {v4}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->close()V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    if-eqz v8, :cond_c

    :try_start_c
    invoke-virtual {v8}, Ljava/io/InputStream;->close()V

    goto :goto_a

    :catch_4
    move-exception v0

    goto :goto_b

    :cond_c
    :goto_a
    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    iget-boolean v0, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v0, :cond_d

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    goto :goto_c

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_d
    :goto_c
    return-object v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    goto :goto_d

    :catch_5
    move-exception v0

    goto :goto_e

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    :goto_d
    move-object v3, v8

    goto :goto_13

    :catch_6
    move-exception v0

    move-object v9, v3

    :goto_e
    move-object v3, v8

    goto :goto_f

    :cond_e
    :try_start_d
    iget-boolean v0, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v0, :cond_11

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_9

    goto :goto_12

    :catchall_2
    move-exception v0

    move-object v2, v0

    move-object v9, v3

    goto :goto_13

    :catch_7
    move-exception v0

    move-object v9, v3

    goto :goto_f

    :catchall_3
    move-exception v0

    move-object v2, v0

    move-object v7, v3

    move-object v9, v7

    goto :goto_13

    :catch_8
    move-exception v0

    move-object v7, v3

    move-object v9, v7

    :goto_f
    :try_start_e
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    if-eqz v3, :cond_f

    :try_start_f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_10

    :catch_9
    move-exception v0

    goto :goto_11

    :cond_f
    :goto_10
    if-eqz v9, :cond_10

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :cond_10
    iget-boolean v0, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v0, :cond_11

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_9

    goto :goto_12

    :goto_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_11
    :goto_12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :catchall_4
    move-exception v0

    move-object v2, v0

    :goto_13
    if-eqz v3, :cond_12

    :try_start_10
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    goto :goto_14

    :catch_a
    move-exception v0

    goto :goto_15

    :cond_12
    :goto_14
    if-eqz v9, :cond_13

    invoke-virtual {v9}, Ljava/io/RandomAccessFile;->close()V

    :cond_13
    iget-boolean v0, v1, Lcom/leo/salt/utils/root/DownloadTask;->isCanceled:Z

    if-eqz v0, :cond_14

    if-eqz v7, :cond_14

    invoke-virtual {v7}, Ljava/io/File;->delete()Z
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_a

    goto :goto_16

    :goto_15
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_14
    :goto_16
    throw v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/leo/salt/utils/root/DownloadTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object p1, p0, Lcom/leo/salt/utils/root/DownloadTask;->listener:Lcom/leo/salt/utils/root/DownloadListener;

    invoke-interface {p1}, Lcom/leo/salt/utils/root/DownloadListener;->onCanceled()V

    goto :goto_0

    :pswitch_1
    iget-object p1, p0, Lcom/leo/salt/utils/root/DownloadTask;->listener:Lcom/leo/salt/utils/root/DownloadListener;

    invoke-interface {p1}, Lcom/leo/salt/utils/root/DownloadListener;->onPaused()V

    goto :goto_0

    :pswitch_2
    iget-object p1, p0, Lcom/leo/salt/utils/root/DownloadTask;->listener:Lcom/leo/salt/utils/root/DownloadListener;

    invoke-interface {p1}, Lcom/leo/salt/utils/root/DownloadListener;->onFailed()V

    goto :goto_0

    :pswitch_3
    iget-object p1, p0, Lcom/leo/salt/utils/root/DownloadTask;->listener:Lcom/leo/salt/utils/root/DownloadListener;

    invoke-interface {p1}, Lcom/leo/salt/utils/root/DownloadListener;->onSuccess()V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/leo/salt/utils/root/DownloadTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget v0, p0, Lcom/leo/salt/utils/root/DownloadTask;->lastProgress:I

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lcom/leo/salt/utils/root/DownloadTask;->listener:Lcom/leo/salt/utils/root/DownloadListener;

    invoke-interface {v0, p1}, Lcom/leo/salt/utils/root/DownloadListener;->onProgress(I)V

    iput p1, p0, Lcom/leo/salt/utils/root/DownloadTask;->lastProgress:I

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/leo/salt/utils/root/DownloadTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method

.method public pauseDownload()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/leo/salt/utils/root/DownloadTask;->isPaused:Z

    return-void
.end method
