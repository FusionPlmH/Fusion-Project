.class public Lcom/leo/salt/utils/root/Verify;
.super Ljava/lang/Object;
.source "Verify.java"


# static fields
.field private static mInstance:Lcom/leo/salt/utils/root/Verify;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/root/Verify;->getUpdate(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/leo/salt/utils/root/Verify;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/leo/salt/utils/root/Verify;->getURL()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/leo/salt/utils/root/Verify;Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/root/Verify;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private convertInputStreamToByteArray(Ljava/io/InputStream;)[B
    .locals 5

    const/16 v0, 0x80

    const/4 v1, 0x0

    :try_start_0
    new-array v0, v0, [B

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {p1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    throw v0

    :catch_2
    move-object v2, v1

    :catch_3
    :try_start_4
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    return-object v1
.end method

.method private convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/root/Verify;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public static get(Landroid/content/Context;)Lcom/leo/salt/utils/root/Verify;
    .locals 2

    sget-object v0, Lcom/leo/salt/utils/root/Verify;->mInstance:Lcom/leo/salt/utils/root/Verify;

    if-nez v0, :cond_1

    const-class v0, Lcom/leo/salt/utils/root/Verify;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/leo/salt/utils/root/Verify;->mInstance:Lcom/leo/salt/utils/root/Verify;

    if-nez v1, :cond_0

    new-instance v1, Lcom/leo/salt/utils/root/Verify;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/root/Verify;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/leo/salt/utils/root/Verify;->mInstance:Lcom/leo/salt/utils/root/Verify;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/leo/salt/utils/root/Verify;->mInstance:Lcom/leo/salt/utils/root/Verify;

    return-object p0
.end method

.method private getURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://vip.leorom.cc/?action=check&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ril.serialnumber"

    invoke-static {v1}, Lcom/leo/salt/utils/AndroidUtils;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUpdate(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/utils/root/Verify$1;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/utils/root/Verify$1;-><init>(Lcom/leo/salt/utils/root/Verify;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
