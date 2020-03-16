.class public La/a0;
.super La/h0;
.source ""


# instance fields
.field public d:Ljava/io/IOException;


# direct methods
.method public constructor <init>(Ljava/io/IOException;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, La/h0;-><init>(Ljava/net/HttpURLConnection;)V

    iput-object p1, p0, La/a0;->d:Ljava/io/IOException;

    return-void
.end method


# virtual methods
.method public a(La/i0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La/i0<",
            "Lorg/json/JSONObject;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, La/h0;->c:La/b0;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    iget-object v1, p0, La/a0;->d:Ljava/io/IOException;

    invoke-interface {p1, v0, v1}, La/b0;->a(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/io/File;La/i0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "La/i0<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, La/h0;->c:La/b0;

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iget-object v0, p0, La/a0;->d:Ljava/io/IOException;

    invoke-interface {p1, p2, v0}, La/b0;->a(Ljava/net/HttpURLConnection;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
