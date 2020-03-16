.class Lcom/meiqia/core/g$18;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meiqia/core/g;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/meiqia/core/callback/SimpleCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/meiqia/core/callback/SimpleCallback;

.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/meiqia/core/g;


# direct methods
.method constructor <init>(Lcom/meiqia/core/g;Lcom/meiqia/core/callback/SimpleCallback;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/meiqia/core/g$18;->c:Lcom/meiqia/core/g;

    iput-object p2, p0, Lcom/meiqia/core/g$18;->a:Lcom/meiqia/core/callback/SimpleCallback;

    iput-object p3, p0, Lcom/meiqia/core/g$18;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 1

    iget-object p1, p0, Lcom/meiqia/core/g$18;->a:Lcom/meiqia/core/callback/SimpleCallback;

    const/4 p2, 0x0

    const-string v0, "download failed"

    invoke-interface {p1, p2, v0}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 1

    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/meiqia/core/g$18;->b:Ljava/io/File;

    invoke-static {p1}, Lokio/Okio;->sink(Ljava/io/File;)Lokio/Sink;

    move-result-object p1

    invoke-static {p1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p2

    invoke-interface {p1, p2}, Lokio/BufferedSink;->writeAll(Lokio/Source;)J

    invoke-interface {p1}, Lokio/BufferedSink;->close()V

    iget-object p1, p0, Lcom/meiqia/core/g$18;->a:Lcom/meiqia/core/callback/SimpleCallback;

    invoke-interface {p1}, Lcom/meiqia/core/callback/SimpleCallback;->onSuccess()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/meiqia/core/g$18;->a:Lcom/meiqia/core/callback/SimpleCallback;

    const/4 p2, 0x0

    const-string v0, "download failed"

    invoke-interface {p1, p2, v0}, Lcom/meiqia/core/callback/SimpleCallback;->onFailure(ILjava/lang/String;)V

    :goto_0
    return-void
.end method
