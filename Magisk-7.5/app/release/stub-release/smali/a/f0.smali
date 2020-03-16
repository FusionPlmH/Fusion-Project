.class public La/f0;
.super Ljava/io/FilterInputStream;
.source ""


# instance fields
.field public final synthetic a:La/h0;


# direct methods
.method public constructor <init>(La/h0;Ljava/io/InputStream;)V
    .locals 0

    iput-object p1, p0, La/f0;->a:La/h0;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    iget-object v0, p0, La/f0;->a:La/h0;

    iget-object v0, v0, La/h0;->a:Ljava/net/HttpURLConnection;

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    return-void
.end method
