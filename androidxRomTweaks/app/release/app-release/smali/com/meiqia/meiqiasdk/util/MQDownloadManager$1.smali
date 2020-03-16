.class Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;
.super Ljava/lang/Object;
.source "MQDownloadManager.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->downloadVoice(Ljava/lang/String;Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

.field final synthetic val$callback:Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/meiqia/meiqiasdk/util/MQDownloadManager;Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->this$0:Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    iput-object p2, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->val$callback:Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;

    iput-object p3, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 0

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->val$callback:Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;->onFailure()V

    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->this$0:Lcom/meiqia/meiqiasdk/util/MQDownloadManager;

    invoke-static {p1}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager;->access$000(Lcom/meiqia/meiqiasdk/util/MQDownloadManager;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->val$url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/meiqia/meiqiasdk/util/MQAudioRecorderManager;->getCachedVoiceFileByUrl(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object v0

    invoke-static {v0}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p2

    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->val$callback:Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->val$callback:Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;

    invoke-interface {p2, p1}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;->onSuccess(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->val$callback:Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;->onFailure()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$1;->val$callback:Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/meiqia/meiqiasdk/util/MQDownloadManager$Callback;->onFailure()V

    :cond_1
    :goto_0
    return-void
.end method
