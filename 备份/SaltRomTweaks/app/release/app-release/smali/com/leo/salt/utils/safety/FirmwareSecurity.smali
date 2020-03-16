.class public Lcom/leo/salt/utils/safety/FirmwareSecurity;
.super Ljava/lang/Object;
.source "FirmwareSecurity.java"


# static fields
.field private static mInstance:Lcom/leo/salt/utils/safety/FirmwareSecurity;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModel(Landroid/content/Context;)V

    return-void
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

.method private exemptModel(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28K136VAZJ"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_0
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R58J44F6B3D"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RF8J52ELJFR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_2
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28J51NJ0FD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39J704L9T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39J40L2DS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto :goto_0

    :cond_5
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28JC20F09T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto :goto_0

    :cond_6
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28J51PLHQW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto :goto_0

    :cond_7
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39JA001JT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto :goto_0

    :cond_8
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R28K70TWASN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto :goto_0

    :cond_9
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R39K40GYBV"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto :goto_0

    :cond_a
    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoSafetyID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "R58J5740T7E"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->exemptModelLog(Landroid/content/Context;)V

    goto :goto_0

    :cond_b
    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->getCheckData(Landroid/content/Context;)V

    :goto_0
    return-void
.end method

.method private exemptModelLog(Landroid/content/Context;)V
    .locals 1

    invoke-static {p1}, Lcom/leo/salt/tweaks/resource/Resource;->customization(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "You are a team member or tester and will be exempt from donation checks"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/leo/salt/utils/safety/FirmwareSecurity;
    .locals 2

    sget-object v0, Lcom/leo/salt/utils/safety/FirmwareSecurity;->mInstance:Lcom/leo/salt/utils/safety/FirmwareSecurity;

    if-nez v0, :cond_1

    const-class v0, Lcom/leo/salt/utils/safety/FirmwareSecurity;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/leo/salt/utils/safety/FirmwareSecurity;->mInstance:Lcom/leo/salt/utils/safety/FirmwareSecurity;

    if-nez v1, :cond_0

    new-instance v1, Lcom/leo/salt/utils/safety/FirmwareSecurity;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/leo/salt/utils/safety/FirmwareSecurity;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/leo/salt/utils/safety/FirmwareSecurity;->mInstance:Lcom/leo/salt/utils/safety/FirmwareSecurity;

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
    sget-object p0, Lcom/leo/salt/utils/safety/FirmwareSecurity;->mInstance:Lcom/leo/salt/utils/safety/FirmwareSecurity;

    return-object p0
.end method

.method private getCheckData(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/leo/salt/utils/safety/-$$Lambda$FirmwareSecurity$ua2stXJIfhJGdYmpSe9KAP7BILA;

    invoke-direct {v1, p0, p1}, Lcom/leo/salt/utils/safety/-$$Lambda$FirmwareSecurity$ua2stXJIfhJGdYmpSe9KAP7BILA;-><init>(Lcom/leo/salt/utils/safety/FirmwareSecurity;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static getURL()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://vip.leorom.cc/?action=check&code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ril.serialnumber"

    invoke-static {v1}, Lcom/leo/salt/tweaks/resource/Resource;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->convertInputStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    return-object v0
.end method

.method public synthetic lambda$getCheckData$0$FirmwareSecurity(Landroid/content/Context;)V
    .locals 4

    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-static {}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->getURL()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1388

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const-string v1, "GET"

    invoke-virtual {v0, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    const-string v1, "Content-type"

    const-string v2, "application/x-www-form-urlencoded; charset=UTF-8"

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_1

    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/leo/salt/utils/safety/FirmwareSecurity;->convertInputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "status"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "success"

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    new-instance v1, Ljava/lang/String;

    const-string v2, "Y29tLmxlby5zYWx0LnR3ZWFrcw=="

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->decode([BI)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    const/4 v2, 0x2

    invoke-virtual {p1, v1, v2, v3}, Landroid/content/pm/PackageManager;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    :cond_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_1
    return-void
.end method
