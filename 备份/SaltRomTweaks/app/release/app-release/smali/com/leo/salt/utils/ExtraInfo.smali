.class public Lcom/leo/salt/utils/ExtraInfo;
.super Ljava/lang/Object;
.source "ExtraInfo.java"


# static fields
.field private static final CORES:I

.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final cpuFreq:Ljava/lang/String; = "CPU%1$s: %2$s"

.field static mDisplay:Landroid/view/Display; = null

.field static mDisplayMetrics:Landroid/util/DisplayMetrics; = null

.field public static mEmpty:Ljava/lang/String; = " "

.field private static mac:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/leo/salt/utils/ExtraInfo;->CORES:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p1

    sput-object p1, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object p1, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    sget-object p1, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
.end method

.method public static ReadFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {p0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->read()I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :cond_0
    int-to-char v0, v0

    :try_start_3
    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_0
    :catchall_0
    move-object v1, v2

    goto :goto_0

    :catchall_1
    move-exception v0

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :catch_1
    :cond_1
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :catch_2
    :goto_1
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_3
    invoke-virtual {p0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static RemoveLast(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-virtual {p0, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public static busyboxInstalled()Z
    .locals 1

    const-string v0, "busybox"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->existBinary(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static existBinary(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "PATH"

    invoke-static {v0}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    if-lez v1, :cond_2

    aget-object v0, v0, v2

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    return v2
.end method

.method public static getCPUInfo()Ljava/lang/String;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/FileReader;

    const-string v1, "/proc/cpuinfo"

    invoke-direct {v0, v1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Hardware"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    aget-object v0, v0, v1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getCpuMhz(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    sget v0, Lcom/leo/salt/utils/ExtraInfo;->CORES:I

    const-string v1, " "

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "0-3"

    aput-object v5, v4, v2

    invoke-static {p0, v2}, Lcom/leo/salt/utils/ExtraInfo;->getFrequencyText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    const-string v5, "CPU%1$s: %2$s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v3, [Ljava/lang/Object;

    const-string v3, "4-7"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    invoke-static {p0, v2}, Lcom/leo/salt/utils/ExtraInfo;->getFrequencyText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v1, v6

    invoke-static {v5, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, ""

    :goto_0
    sget v3, Lcom/leo/salt/utils/ExtraInfo;->CORES:I

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v2}, Lcom/leo/salt/utils/ExtraInfo;->getFrequencyText(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getCurrentNetType()Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mEmpty:Ljava/lang/String;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ExtraInfo;->mEmpty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WIFI"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    if-eq v0, v2, :cond_5

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/4 v1, 0x6

    if-eq v0, v1, :cond_4

    const/4 v1, 0x5

    if-eq v0, v1, :cond_4

    const/16 v1, 0xc

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-ne v0, v1, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ExtraInfo;->mEmpty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "4G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ExtraInfo;->mEmpty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "3G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/leo/salt/utils/ExtraInfo;->mEmpty:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "2G"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_6
    const-string v0, ""

    :goto_2
    return-object v0
.end method

.method public static getDisplayDensity()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const-string v2, "LDPI"

    const/16 v3, 0x78

    if-ne v0, v3, :cond_0

    return-object v2

    :cond_0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x79

    if-ne v0, v3, :cond_1

    return-object v2

    :cond_1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x7a

    if-ne v0, v3, :cond_2

    return-object v2

    :cond_2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x7b

    if-ne v0, v3, :cond_3

    return-object v2

    :cond_3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x7c

    if-ne v0, v3, :cond_4

    return-object v2

    :cond_4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x7d

    if-ne v0, v3, :cond_5

    return-object v2

    :cond_5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x7e

    if-ne v0, v3, :cond_6

    return-object v2

    :cond_6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x7f

    if-ne v0, v3, :cond_7

    return-object v2

    :cond_7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x80

    if-ne v0, v3, :cond_8

    return-object v2

    :cond_8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x81

    if-ne v0, v3, :cond_9

    return-object v2

    :cond_9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x82

    if-ne v0, v3, :cond_a

    return-object v2

    :cond_a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x83

    if-ne v0, v3, :cond_b

    return-object v2

    :cond_b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x84

    if-ne v0, v3, :cond_c

    return-object v2

    :cond_c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x85

    if-ne v0, v3, :cond_d

    return-object v2

    :cond_d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x86

    if-ne v0, v3, :cond_e

    return-object v2

    :cond_e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x87

    if-ne v0, v3, :cond_f

    return-object v2

    :cond_f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x88

    if-ne v0, v3, :cond_10

    return-object v2

    :cond_10
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x89

    if-ne v0, v3, :cond_11

    return-object v2

    :cond_11
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x8a

    if-ne v0, v3, :cond_12

    return-object v2

    :cond_12
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x8b

    if-ne v0, v3, :cond_13

    return-object v2

    :cond_13
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x8c

    if-ne v0, v3, :cond_14

    return-object v2

    :cond_14
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x8d

    if-ne v0, v3, :cond_15

    return-object v2

    :cond_15
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x8e

    if-ne v0, v3, :cond_16

    return-object v2

    :cond_16
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x8f

    if-ne v0, v3, :cond_17

    return-object v2

    :cond_17
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x90

    if-ne v0, v3, :cond_18

    return-object v2

    :cond_18
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x91

    if-ne v0, v3, :cond_19

    return-object v2

    :cond_19
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x92

    if-ne v0, v3, :cond_1a

    return-object v2

    :cond_1a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x93

    if-ne v0, v3, :cond_1b

    return-object v2

    :cond_1b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x94

    if-ne v0, v3, :cond_1c

    return-object v2

    :cond_1c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x95

    if-ne v0, v3, :cond_1d

    return-object v2

    :cond_1d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x96

    if-ne v0, v3, :cond_1e

    return-object v2

    :cond_1e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x97

    if-ne v0, v3, :cond_1f

    return-object v2

    :cond_1f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x98

    if-ne v0, v3, :cond_20

    return-object v2

    :cond_20
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x99

    if-ne v0, v3, :cond_21

    return-object v2

    :cond_21
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x9a

    if-ne v0, v3, :cond_22

    return-object v2

    :cond_22
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x9b

    if-ne v0, v3, :cond_23

    return-object v2

    :cond_23
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x9c

    if-ne v0, v3, :cond_24

    return-object v2

    :cond_24
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x9d

    if-ne v0, v3, :cond_25

    return-object v2

    :cond_25
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x9e

    if-ne v0, v3, :cond_26

    return-object v2

    :cond_26
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v3, 0x9f

    if-ne v0, v3, :cond_27

    return-object v2

    :cond_27
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa0

    const-string v3, "MDPI"

    if-ne v0, v2, :cond_28

    return-object v3

    :cond_28
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa1

    if-ne v0, v2, :cond_29

    return-object v3

    :cond_29
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa2

    if-ne v0, v2, :cond_2a

    return-object v3

    :cond_2a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_2b

    return-object v3

    :cond_2b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_2c

    return-object v3

    :cond_2c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa5

    if-ne v0, v2, :cond_2d

    return-object v3

    :cond_2d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa6

    if-ne v0, v2, :cond_2e

    return-object v3

    :cond_2e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_2f

    return-object v3

    :cond_2f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa8

    if-ne v0, v2, :cond_30

    return-object v3

    :cond_30
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_31

    return-object v3

    :cond_31
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xaa

    if-ne v0, v2, :cond_32

    return-object v3

    :cond_32
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xab

    if-ne v0, v2, :cond_33

    return-object v3

    :cond_33
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xac

    if-ne v0, v2, :cond_34

    return-object v3

    :cond_34
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xad

    if-ne v0, v2, :cond_35

    return-object v3

    :cond_35
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xae

    if-ne v0, v2, :cond_36

    return-object v3

    :cond_36
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xaf

    if-ne v0, v2, :cond_37

    return-object v3

    :cond_37
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb0

    if-ne v0, v2, :cond_38

    return-object v3

    :cond_38
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb1

    if-ne v0, v2, :cond_39

    return-object v3

    :cond_39
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb2

    if-ne v0, v2, :cond_3a

    return-object v3

    :cond_3a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb3

    if-ne v0, v2, :cond_3b

    return-object v3

    :cond_3b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_3c

    return-object v3

    :cond_3c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb5

    if-ne v0, v2, :cond_3d

    return-object v3

    :cond_3d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb6

    if-ne v0, v2, :cond_3e

    return-object v3

    :cond_3e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb7

    if-ne v0, v2, :cond_3f

    return-object v3

    :cond_3f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb8

    if-ne v0, v2, :cond_40

    return-object v3

    :cond_40
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb9

    if-ne v0, v2, :cond_41

    return-object v3

    :cond_41
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xba

    if-ne v0, v2, :cond_42

    return-object v3

    :cond_42
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_43

    return-object v3

    :cond_43
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbc

    if-ne v0, v2, :cond_44

    return-object v3

    :cond_44
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbd

    if-ne v0, v2, :cond_45

    return-object v3

    :cond_45
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbe

    if-ne v0, v2, :cond_46

    return-object v3

    :cond_46
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbf

    if-ne v0, v2, :cond_47

    return-object v3

    :cond_47
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_48

    return-object v3

    :cond_48
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc1

    if-ne v0, v2, :cond_49

    return-object v3

    :cond_49
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc2

    if-ne v0, v2, :cond_4a

    return-object v3

    :cond_4a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc3

    if-ne v0, v2, :cond_4b

    return-object v3

    :cond_4b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc4

    if-ne v0, v2, :cond_4c

    return-object v3

    :cond_4c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc5

    if-ne v0, v2, :cond_4d

    return-object v3

    :cond_4d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc6

    if-ne v0, v2, :cond_4e

    return-object v3

    :cond_4e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc7

    if-ne v0, v2, :cond_4f

    return-object v3

    :cond_4f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_50

    return-object v3

    :cond_50
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_51

    return-object v3

    :cond_51
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xca

    if-ne v0, v2, :cond_52

    return-object v3

    :cond_52
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xcb

    if-ne v0, v2, :cond_53

    return-object v3

    :cond_53
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_54

    return-object v3

    :cond_54
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xcd

    if-ne v0, v2, :cond_55

    return-object v3

    :cond_55
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xce

    if-ne v0, v2, :cond_56

    return-object v3

    :cond_56
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xcf

    if-ne v0, v2, :cond_57

    return-object v3

    :cond_57
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd0

    if-ne v0, v2, :cond_58

    return-object v3

    :cond_58
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd1

    if-ne v0, v2, :cond_59

    return-object v3

    :cond_59
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd2

    if-ne v0, v2, :cond_5a

    return-object v3

    :cond_5a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd3

    if-ne v0, v2, :cond_5b

    return-object v3

    :cond_5b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd4

    if-ne v0, v2, :cond_5c

    return-object v3

    :cond_5c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd5

    if-ne v0, v2, :cond_5d

    return-object v3

    :cond_5d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd6

    if-ne v0, v2, :cond_5e

    return-object v3

    :cond_5e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd7

    if-ne v0, v2, :cond_5f

    return-object v3

    :cond_5f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd8

    if-ne v0, v2, :cond_60

    return-object v3

    :cond_60
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd9

    if-ne v0, v2, :cond_61

    return-object v3

    :cond_61
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xda

    if-ne v0, v2, :cond_62

    return-object v3

    :cond_62
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xdb

    if-ne v0, v2, :cond_63

    return-object v3

    :cond_63
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xdc

    if-ne v0, v2, :cond_64

    return-object v3

    :cond_64
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xdd

    if-ne v0, v2, :cond_65

    return-object v3

    :cond_65
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xde

    if-ne v0, v2, :cond_66

    return-object v3

    :cond_66
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xdf

    if-ne v0, v2, :cond_67

    return-object v3

    :cond_67
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_68

    return-object v3

    :cond_68
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe1

    if-ne v0, v2, :cond_69

    return-object v3

    :cond_69
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe2

    if-ne v0, v2, :cond_6a

    return-object v3

    :cond_6a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe3

    if-ne v0, v2, :cond_6b

    return-object v3

    :cond_6b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe4

    if-ne v0, v2, :cond_6c

    return-object v3

    :cond_6c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe5

    if-ne v0, v2, :cond_6d

    return-object v3

    :cond_6d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe6

    if-ne v0, v2, :cond_6e

    return-object v3

    :cond_6e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe7

    if-ne v0, v2, :cond_6f

    return-object v3

    :cond_6f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe8

    if-ne v0, v2, :cond_70

    return-object v3

    :cond_70
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe9

    if-ne v0, v2, :cond_71

    return-object v3

    :cond_71
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xea

    if-ne v0, v2, :cond_72

    return-object v3

    :cond_72
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xeb

    if-ne v0, v2, :cond_73

    return-object v3

    :cond_73
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xec

    if-ne v0, v2, :cond_74

    return-object v3

    :cond_74
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xed

    if-ne v0, v2, :cond_75

    return-object v3

    :cond_75
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xee

    if-ne v0, v2, :cond_76

    return-object v3

    :cond_76
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_77

    return-object v3

    :cond_77
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf0

    const-string v3, "HDPI"

    if-ne v0, v2, :cond_78

    return-object v3

    :cond_78
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf1

    if-ne v0, v2, :cond_79

    return-object v3

    :cond_79
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf2

    if-ne v0, v2, :cond_7a

    return-object v3

    :cond_7a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf3

    if-ne v0, v2, :cond_7b

    return-object v3

    :cond_7b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf4

    if-ne v0, v2, :cond_7c

    return-object v3

    :cond_7c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf5

    if-ne v0, v2, :cond_7d

    return-object v3

    :cond_7d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf6

    if-ne v0, v2, :cond_7e

    return-object v3

    :cond_7e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf7

    if-ne v0, v2, :cond_7f

    return-object v3

    :cond_7f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf8

    if-ne v0, v2, :cond_80

    return-object v3

    :cond_80
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf9

    if-ne v0, v2, :cond_81

    return-object v3

    :cond_81
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_82

    return-object v3

    :cond_82
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfb

    if-ne v0, v2, :cond_83

    return-object v3

    :cond_83
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfc

    if-ne v0, v2, :cond_84

    return-object v3

    :cond_84
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfd

    if-ne v0, v2, :cond_85

    return-object v3

    :cond_85
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_86

    return-object v3

    :cond_86
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_87

    return-object v3

    :cond_87
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x100

    if-ne v0, v2, :cond_88

    return-object v3

    :cond_88
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x101

    if-ne v0, v2, :cond_89

    return-object v3

    :cond_89
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x102

    if-ne v0, v2, :cond_8a

    return-object v3

    :cond_8a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x103

    if-ne v0, v2, :cond_8b

    return-object v3

    :cond_8b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x104

    if-ne v0, v2, :cond_8c

    return-object v3

    :cond_8c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x105

    if-ne v0, v2, :cond_8d

    return-object v3

    :cond_8d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x106

    if-ne v0, v2, :cond_8e

    return-object v3

    :cond_8e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x107

    if-ne v0, v2, :cond_8f

    return-object v3

    :cond_8f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x108

    if-ne v0, v2, :cond_90

    return-object v3

    :cond_90
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x109

    if-ne v0, v2, :cond_91

    return-object v3

    :cond_91
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10a

    if-ne v0, v2, :cond_92

    return-object v3

    :cond_92
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10b

    if-ne v0, v2, :cond_93

    return-object v3

    :cond_93
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10c

    if-ne v0, v2, :cond_94

    return-object v3

    :cond_94
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10d

    if-ne v0, v2, :cond_95

    return-object v3

    :cond_95
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_96

    return-object v3

    :cond_96
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10f

    if-ne v0, v2, :cond_97

    return-object v3

    :cond_97
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x110

    if-ne v0, v2, :cond_98

    return-object v3

    :cond_98
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x111

    if-ne v0, v2, :cond_99

    return-object v3

    :cond_99
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x112

    if-ne v0, v2, :cond_9a

    return-object v3

    :cond_9a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x113

    if-ne v0, v2, :cond_9b

    return-object v3

    :cond_9b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x114

    if-ne v0, v2, :cond_9c

    return-object v3

    :cond_9c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x115

    if-ne v0, v2, :cond_9d

    return-object v3

    :cond_9d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x116

    if-ne v0, v2, :cond_9e

    return-object v3

    :cond_9e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x117

    if-ne v0, v2, :cond_9f

    return-object v3

    :cond_9f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x118

    if-ne v0, v2, :cond_a0

    return-object v3

    :cond_a0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x119

    if-ne v0, v2, :cond_a1

    return-object v3

    :cond_a1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11a

    if-ne v0, v2, :cond_a2

    return-object v3

    :cond_a2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11b

    if-ne v0, v2, :cond_a3

    return-object v3

    :cond_a3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11c

    if-ne v0, v2, :cond_a4

    return-object v3

    :cond_a4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11d

    if-ne v0, v2, :cond_a5

    return-object v3

    :cond_a5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11e

    if-ne v0, v2, :cond_a6

    return-object v3

    :cond_a6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11f

    if-ne v0, v2, :cond_a7

    return-object v3

    :cond_a7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x120

    if-ne v0, v2, :cond_a8

    return-object v3

    :cond_a8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x121

    if-ne v0, v2, :cond_a9

    return-object v3

    :cond_a9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x122

    if-ne v0, v2, :cond_aa

    return-object v3

    :cond_aa
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x123

    if-ne v0, v2, :cond_ab

    return-object v3

    :cond_ab
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x124

    if-ne v0, v2, :cond_ac

    return-object v3

    :cond_ac
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x125

    if-ne v0, v2, :cond_ad

    return-object v3

    :cond_ad
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x126

    if-ne v0, v2, :cond_ae

    return-object v3

    :cond_ae
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x127

    if-ne v0, v2, :cond_af

    return-object v3

    :cond_af
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x128

    if-ne v0, v2, :cond_b0

    return-object v3

    :cond_b0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x129

    if-ne v0, v2, :cond_b1

    return-object v3

    :cond_b1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12a

    if-ne v0, v2, :cond_b2

    return-object v3

    :cond_b2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12b

    if-ne v0, v2, :cond_b3

    return-object v3

    :cond_b3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12c

    if-ne v0, v2, :cond_b4

    return-object v3

    :cond_b4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12d

    if-ne v0, v2, :cond_b5

    return-object v3

    :cond_b5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12e

    if-ne v0, v2, :cond_b6

    return-object v3

    :cond_b6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12f

    if-ne v0, v2, :cond_b7

    return-object v3

    :cond_b7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_b8

    return-object v3

    :cond_b8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x131

    if-ne v0, v2, :cond_b9

    return-object v3

    :cond_b9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x132

    if-ne v0, v2, :cond_ba

    return-object v3

    :cond_ba
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x133

    if-ne v0, v2, :cond_bb

    return-object v3

    :cond_bb
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x134

    if-ne v0, v2, :cond_bc

    return-object v3

    :cond_bc
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x135

    if-ne v0, v2, :cond_bd

    return-object v3

    :cond_bd
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x136

    if-ne v0, v2, :cond_be

    return-object v3

    :cond_be
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x137

    if-ne v0, v2, :cond_bf

    return-object v3

    :cond_bf
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x138

    if-ne v0, v2, :cond_c0

    return-object v3

    :cond_c0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x139

    if-ne v0, v2, :cond_c1

    return-object v3

    :cond_c1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13a

    if-ne v0, v2, :cond_c2

    return-object v3

    :cond_c2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13b

    if-ne v0, v2, :cond_c3

    return-object v3

    :cond_c3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13c

    if-ne v0, v2, :cond_c4

    return-object v3

    :cond_c4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13d

    if-ne v0, v2, :cond_c5

    return-object v3

    :cond_c5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13e

    if-ne v0, v2, :cond_c6

    return-object v3

    :cond_c6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13f

    if-ne v0, v2, :cond_c7

    return-object v3

    :cond_c7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x140

    const-string v3, "XHDPI"

    if-ne v0, v2, :cond_c8

    return-object v3

    :cond_c8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x141

    if-ne v0, v2, :cond_c9

    return-object v3

    :cond_c9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x142

    if-ne v0, v2, :cond_ca

    return-object v3

    :cond_ca
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x143

    if-ne v0, v2, :cond_cb

    return-object v3

    :cond_cb
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x144

    if-ne v0, v2, :cond_cc

    return-object v3

    :cond_cc
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x145

    if-ne v0, v2, :cond_cd

    return-object v3

    :cond_cd
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x146

    if-ne v0, v2, :cond_ce

    return-object v3

    :cond_ce
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x147

    if-ne v0, v2, :cond_cf

    return-object v3

    :cond_cf
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x148

    if-ne v0, v2, :cond_d0

    return-object v3

    :cond_d0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x149

    if-ne v0, v2, :cond_d1

    return-object v3

    :cond_d1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14a

    if-ne v0, v2, :cond_d2

    return-object v3

    :cond_d2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14b

    if-ne v0, v2, :cond_d3

    return-object v3

    :cond_d3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14c

    if-ne v0, v2, :cond_d4

    return-object v3

    :cond_d4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14d

    if-ne v0, v2, :cond_d5

    return-object v3

    :cond_d5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14e

    if-ne v0, v2, :cond_d6

    return-object v3

    :cond_d6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14f

    if-ne v0, v2, :cond_d7

    return-object v3

    :cond_d7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x150

    if-ne v0, v2, :cond_d8

    return-object v3

    :cond_d8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x151

    if-ne v0, v2, :cond_d9

    return-object v3

    :cond_d9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x152

    if-ne v0, v2, :cond_da

    return-object v3

    :cond_da
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x153

    if-ne v0, v2, :cond_db

    return-object v3

    :cond_db
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x154

    if-ne v0, v2, :cond_dc

    return-object v3

    :cond_dc
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x155

    if-ne v0, v2, :cond_dd

    return-object v3

    :cond_dd
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x156

    if-ne v0, v2, :cond_de

    return-object v3

    :cond_de
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x157

    if-ne v0, v2, :cond_df

    return-object v3

    :cond_df
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x158

    if-ne v0, v2, :cond_e0

    return-object v3

    :cond_e0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x159

    if-ne v0, v2, :cond_e1

    return-object v3

    :cond_e1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15a

    if-ne v0, v2, :cond_e2

    return-object v3

    :cond_e2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15b

    if-ne v0, v2, :cond_e3

    return-object v3

    :cond_e3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15c

    if-ne v0, v2, :cond_e4

    return-object v3

    :cond_e4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15d

    if-ne v0, v2, :cond_e5

    return-object v3

    :cond_e5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15e

    if-ne v0, v2, :cond_e6

    return-object v3

    :cond_e6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15f

    if-ne v0, v2, :cond_e7

    return-object v3

    :cond_e7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x160

    if-ne v0, v2, :cond_e8

    return-object v3

    :cond_e8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x161

    if-ne v0, v2, :cond_e9

    return-object v3

    :cond_e9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x162

    if-ne v0, v2, :cond_ea

    return-object v3

    :cond_ea
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x163

    if-ne v0, v2, :cond_eb

    return-object v3

    :cond_eb
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x164

    if-ne v0, v2, :cond_ec

    return-object v3

    :cond_ec
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x165

    if-ne v0, v2, :cond_ed

    return-object v3

    :cond_ed
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x166

    if-ne v0, v2, :cond_ee

    return-object v3

    :cond_ee
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x167

    if-ne v0, v2, :cond_ef

    return-object v3

    :cond_ef
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x168

    if-ne v0, v2, :cond_f0

    return-object v3

    :cond_f0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x169

    if-ne v0, v2, :cond_f1

    return-object v3

    :cond_f1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16a

    if-ne v0, v2, :cond_f2

    return-object v3

    :cond_f2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16b

    if-ne v0, v2, :cond_f3

    return-object v3

    :cond_f3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16c

    if-ne v0, v2, :cond_f4

    return-object v3

    :cond_f4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16d

    if-ne v0, v2, :cond_f5

    return-object v3

    :cond_f5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16e

    if-ne v0, v2, :cond_f6

    return-object v3

    :cond_f6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16f

    if-ne v0, v2, :cond_f7

    return-object v3

    :cond_f7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x170

    if-ne v0, v2, :cond_f8

    return-object v3

    :cond_f8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x171

    if-ne v0, v2, :cond_f9

    return-object v3

    :cond_f9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x172

    if-ne v0, v2, :cond_fa

    return-object v3

    :cond_fa
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x173

    if-ne v0, v2, :cond_fb

    return-object v3

    :cond_fb
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x174

    if-ne v0, v2, :cond_fc

    return-object v3

    :cond_fc
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x175

    if-ne v0, v2, :cond_fd

    return-object v3

    :cond_fd
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x176

    if-ne v0, v2, :cond_fe

    return-object v3

    :cond_fe
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x177

    if-ne v0, v2, :cond_ff

    return-object v3

    :cond_ff
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x178

    if-ne v0, v2, :cond_100

    return-object v3

    :cond_100
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x179

    if-ne v0, v2, :cond_101

    return-object v3

    :cond_101
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17a

    if-ne v0, v2, :cond_102

    return-object v3

    :cond_102
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17b

    if-ne v0, v2, :cond_103

    return-object v3

    :cond_103
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17c

    if-ne v0, v2, :cond_104

    return-object v3

    :cond_104
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17d

    if-ne v0, v2, :cond_105

    return-object v3

    :cond_105
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17e

    if-ne v0, v2, :cond_106

    return-object v3

    :cond_106
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17f

    if-ne v0, v2, :cond_107

    return-object v3

    :cond_107
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x180

    if-ne v0, v2, :cond_108

    return-object v3

    :cond_108
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x181

    if-ne v0, v2, :cond_109

    return-object v3

    :cond_109
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x182

    if-ne v0, v2, :cond_10a

    return-object v3

    :cond_10a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x183

    if-ne v0, v2, :cond_10b

    return-object v3

    :cond_10b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x184

    if-ne v0, v2, :cond_10c

    return-object v3

    :cond_10c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x185

    if-ne v0, v2, :cond_10d

    return-object v3

    :cond_10d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x186

    if-ne v0, v2, :cond_10e

    return-object v3

    :cond_10e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x187

    if-ne v0, v2, :cond_10f

    return-object v3

    :cond_10f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x188

    if-ne v0, v2, :cond_110

    return-object v3

    :cond_110
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x189

    if-ne v0, v2, :cond_111

    return-object v3

    :cond_111
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18a

    if-ne v0, v2, :cond_112

    return-object v3

    :cond_112
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18b

    if-ne v0, v2, :cond_113

    return-object v3

    :cond_113
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18c

    if-ne v0, v2, :cond_114

    return-object v3

    :cond_114
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18d

    if-ne v0, v2, :cond_115

    return-object v3

    :cond_115
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18e

    if-ne v0, v2, :cond_116

    return-object v3

    :cond_116
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18f

    if-ne v0, v2, :cond_117

    return-object v3

    :cond_117
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x190

    if-ne v0, v2, :cond_118

    return-object v3

    :cond_118
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_119

    return-object v3

    :cond_119
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x192

    if-ne v0, v2, :cond_11a

    return-object v3

    :cond_11a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_11b

    return-object v3

    :cond_11b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_11c

    return-object v3

    :cond_11c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x195

    if-ne v0, v2, :cond_11d

    return-object v3

    :cond_11d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x196

    if-ne v0, v2, :cond_11e

    return-object v3

    :cond_11e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x197

    if-ne v0, v2, :cond_11f

    return-object v3

    :cond_11f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x198

    if-ne v0, v2, :cond_120

    return-object v3

    :cond_120
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x199

    if-ne v0, v2, :cond_121

    return-object v3

    :cond_121
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19a

    if-ne v0, v2, :cond_122

    return-object v3

    :cond_122
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19b

    if-ne v0, v2, :cond_123

    return-object v3

    :cond_123
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19c

    if-ne v0, v2, :cond_124

    return-object v3

    :cond_124
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19d

    if-ne v0, v2, :cond_125

    return-object v3

    :cond_125
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19e

    if-ne v0, v2, :cond_126

    return-object v3

    :cond_126
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19f

    if-ne v0, v2, :cond_127

    return-object v3

    :cond_127
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_128

    return-object v3

    :cond_128
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a1

    if-ne v0, v2, :cond_129

    return-object v3

    :cond_129
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a2

    if-ne v0, v2, :cond_12a

    return-object v3

    :cond_12a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a3

    if-ne v0, v2, :cond_12b

    return-object v3

    :cond_12b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a4

    if-ne v0, v2, :cond_12c

    return-object v3

    :cond_12c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a5

    if-ne v0, v2, :cond_12d

    return-object v3

    :cond_12d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a6

    if-ne v0, v2, :cond_12e

    return-object v3

    :cond_12e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a7

    if-ne v0, v2, :cond_12f

    return-object v3

    :cond_12f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a8

    if-ne v0, v2, :cond_130

    return-object v3

    :cond_130
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a9

    if-ne v0, v2, :cond_131

    return-object v3

    :cond_131
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1aa

    if-ne v0, v2, :cond_132

    return-object v3

    :cond_132
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ab

    if-ne v0, v2, :cond_133

    return-object v3

    :cond_133
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ac

    if-ne v0, v2, :cond_134

    return-object v3

    :cond_134
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_135

    return-object v3

    :cond_135
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ae

    if-ne v0, v2, :cond_136

    return-object v3

    :cond_136
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1af

    if-ne v0, v2, :cond_137

    return-object v3

    :cond_137
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b0

    if-ne v0, v2, :cond_138

    return-object v3

    :cond_138
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b1

    if-ne v0, v2, :cond_139

    return-object v3

    :cond_139
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b2

    if-ne v0, v2, :cond_13a

    return-object v3

    :cond_13a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b3

    if-ne v0, v2, :cond_13b

    return-object v3

    :cond_13b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b4

    if-ne v0, v2, :cond_13c

    return-object v3

    :cond_13c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b5

    if-ne v0, v2, :cond_13d

    return-object v3

    :cond_13d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b6

    if-ne v0, v2, :cond_13e

    return-object v3

    :cond_13e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b7

    if-ne v0, v2, :cond_13f

    return-object v3

    :cond_13f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b8

    if-ne v0, v2, :cond_140

    return-object v3

    :cond_140
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b9

    if-ne v0, v2, :cond_141

    return-object v3

    :cond_141
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ba

    if-ne v0, v2, :cond_142

    return-object v3

    :cond_142
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1bb

    if-ne v0, v2, :cond_143

    return-object v3

    :cond_143
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1bc

    if-ne v0, v2, :cond_144

    return-object v3

    :cond_144
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1bd

    if-ne v0, v2, :cond_145

    return-object v3

    :cond_145
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1be

    if-ne v0, v2, :cond_146

    return-object v3

    :cond_146
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1bf

    if-ne v0, v2, :cond_147

    return-object v3

    :cond_147
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c0

    if-ne v0, v2, :cond_148

    return-object v3

    :cond_148
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c1

    if-ne v0, v2, :cond_149

    return-object v3

    :cond_149
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c2

    if-ne v0, v2, :cond_14a

    return-object v3

    :cond_14a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c3

    if-ne v0, v2, :cond_14b

    return-object v3

    :cond_14b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c4

    if-ne v0, v2, :cond_14c

    return-object v3

    :cond_14c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c5

    if-ne v0, v2, :cond_14d

    return-object v3

    :cond_14d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c6

    if-ne v0, v2, :cond_14e

    return-object v3

    :cond_14e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c7

    if-ne v0, v2, :cond_14f

    return-object v3

    :cond_14f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c8

    if-ne v0, v2, :cond_150

    return-object v3

    :cond_150
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c9

    if-ne v0, v2, :cond_151

    return-object v3

    :cond_151
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ca

    if-ne v0, v2, :cond_152

    return-object v3

    :cond_152
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1cb

    if-ne v0, v2, :cond_153

    return-object v3

    :cond_153
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1cc

    if-ne v0, v2, :cond_154

    return-object v3

    :cond_154
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1cd

    if-ne v0, v2, :cond_155

    return-object v3

    :cond_155
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ce

    if-ne v0, v2, :cond_156

    return-object v3

    :cond_156
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1cf

    if-ne v0, v2, :cond_157

    return-object v3

    :cond_157
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d0

    if-ne v0, v2, :cond_158

    return-object v3

    :cond_158
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d1

    if-ne v0, v2, :cond_159

    return-object v3

    :cond_159
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d2

    if-ne v0, v2, :cond_15a

    return-object v3

    :cond_15a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d3

    if-ne v0, v2, :cond_15b

    return-object v3

    :cond_15b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d4

    if-ne v0, v2, :cond_15c

    return-object v3

    :cond_15c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d5

    if-ne v0, v2, :cond_15d

    return-object v3

    :cond_15d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d6

    if-ne v0, v2, :cond_15e

    return-object v3

    :cond_15e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d7

    if-ne v0, v2, :cond_15f

    return-object v3

    :cond_15f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d8

    if-ne v0, v2, :cond_160

    return-object v3

    :cond_160
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d9

    if-ne v0, v2, :cond_161

    return-object v3

    :cond_161
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1da

    if-ne v0, v2, :cond_162

    return-object v3

    :cond_162
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1db

    if-ne v0, v2, :cond_163

    return-object v3

    :cond_163
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1dc

    if-ne v0, v2, :cond_164

    return-object v3

    :cond_164
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1dd

    if-ne v0, v2, :cond_165

    return-object v3

    :cond_165
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1de

    if-ne v0, v2, :cond_166

    return-object v3

    :cond_166
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1df

    if-ne v0, v2, :cond_167

    return-object v3

    :cond_167
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e0

    const-string v3, "XXHDPI"

    if-ne v0, v2, :cond_168

    return-object v3

    :cond_168
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e1

    if-ne v0, v2, :cond_169

    return-object v3

    :cond_169
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e2

    if-ne v0, v2, :cond_16a

    return-object v3

    :cond_16a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e3

    if-ne v0, v2, :cond_16b

    return-object v3

    :cond_16b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e4

    if-ne v0, v2, :cond_16c

    return-object v3

    :cond_16c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e5

    if-ne v0, v2, :cond_16d

    return-object v3

    :cond_16d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e6

    if-ne v0, v2, :cond_16e

    return-object v3

    :cond_16e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e7

    if-ne v0, v2, :cond_16f

    return-object v3

    :cond_16f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e8

    if-ne v0, v2, :cond_170

    return-object v3

    :cond_170
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e9

    if-ne v0, v2, :cond_171

    return-object v3

    :cond_171
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ea

    if-ne v0, v2, :cond_172

    return-object v3

    :cond_172
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1eb

    if-ne v0, v2, :cond_173

    return-object v3

    :cond_173
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ec

    if-ne v0, v2, :cond_174

    return-object v3

    :cond_174
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ed

    if-ne v0, v2, :cond_175

    return-object v3

    :cond_175
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ee

    if-ne v0, v2, :cond_176

    return-object v3

    :cond_176
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ef

    if-ne v0, v2, :cond_177

    return-object v3

    :cond_177
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f0

    if-ne v0, v2, :cond_178

    return-object v3

    :cond_178
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f1

    if-ne v0, v2, :cond_179

    return-object v3

    :cond_179
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f2

    if-ne v0, v2, :cond_17a

    return-object v3

    :cond_17a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f3

    if-ne v0, v2, :cond_17b

    return-object v3

    :cond_17b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_17c

    return-object v3

    :cond_17c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f5

    if-ne v0, v2, :cond_17d

    return-object v3

    :cond_17d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f6

    if-ne v0, v2, :cond_17e

    return-object v3

    :cond_17e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f7

    if-ne v0, v2, :cond_17f

    return-object v3

    :cond_17f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f8

    if-ne v0, v2, :cond_180

    return-object v3

    :cond_180
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f9

    if-ne v0, v2, :cond_181

    return-object v3

    :cond_181
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fa

    if-ne v0, v2, :cond_182

    return-object v3

    :cond_182
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fb

    if-ne v0, v2, :cond_183

    return-object v3

    :cond_183
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fc

    if-ne v0, v2, :cond_184

    return-object v3

    :cond_184
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fd

    if-ne v0, v2, :cond_185

    return-object v3

    :cond_185
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fe

    if-ne v0, v2, :cond_186

    return-object v3

    :cond_186
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ff

    if-ne v0, v2, :cond_187

    return-object v3

    :cond_187
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x200

    if-ne v0, v2, :cond_188

    return-object v3

    :cond_188
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x201

    if-ne v0, v2, :cond_189

    return-object v3

    :cond_189
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x202

    if-ne v0, v2, :cond_18a

    return-object v3

    :cond_18a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x203

    if-ne v0, v2, :cond_18b

    return-object v3

    :cond_18b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x204

    if-ne v0, v2, :cond_18c

    return-object v3

    :cond_18c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x205

    if-ne v0, v2, :cond_18d

    return-object v3

    :cond_18d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x206

    if-ne v0, v2, :cond_18e

    return-object v3

    :cond_18e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x207

    if-ne v0, v2, :cond_18f

    return-object v3

    :cond_18f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x208

    if-ne v0, v2, :cond_190

    return-object v3

    :cond_190
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x209

    if-ne v0, v2, :cond_191

    return-object v3

    :cond_191
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20a

    if-ne v0, v2, :cond_192

    return-object v3

    :cond_192
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20b

    if-ne v0, v2, :cond_193

    return-object v3

    :cond_193
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20c

    if-ne v0, v2, :cond_194

    return-object v3

    :cond_194
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20d

    if-ne v0, v2, :cond_195

    return-object v3

    :cond_195
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20e

    if-ne v0, v2, :cond_196

    return-object v3

    :cond_196
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20f

    if-ne v0, v2, :cond_197

    return-object v3

    :cond_197
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x210

    if-ne v0, v2, :cond_198

    return-object v3

    :cond_198
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x211

    if-ne v0, v2, :cond_199

    return-object v3

    :cond_199
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x212

    if-ne v0, v2, :cond_19a

    return-object v3

    :cond_19a
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x213

    if-ne v0, v2, :cond_19b

    return-object v3

    :cond_19b
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x214

    if-ne v0, v2, :cond_19c

    return-object v3

    :cond_19c
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x215

    if-ne v0, v2, :cond_19d

    return-object v3

    :cond_19d
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x216

    if-ne v0, v2, :cond_19e

    return-object v3

    :cond_19e
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x217

    if-ne v0, v2, :cond_19f

    return-object v3

    :cond_19f
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x218

    if-ne v0, v2, :cond_1a0

    return-object v3

    :cond_1a0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x219

    if-ne v0, v2, :cond_1a1

    return-object v3

    :cond_1a1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21a

    if-ne v0, v2, :cond_1a2

    return-object v3

    :cond_1a2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21b

    if-ne v0, v2, :cond_1a3

    return-object v3

    :cond_1a3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21c

    if-ne v0, v2, :cond_1a4

    return-object v3

    :cond_1a4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21d

    if-ne v0, v2, :cond_1a5

    return-object v3

    :cond_1a5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21e

    if-ne v0, v2, :cond_1a6

    return-object v3

    :cond_1a6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21f

    if-ne v0, v2, :cond_1a7

    return-object v3

    :cond_1a7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x220

    if-ne v0, v2, :cond_1a8

    return-object v3

    :cond_1a8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x221

    if-ne v0, v2, :cond_1a9

    return-object v3

    :cond_1a9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x222

    if-ne v0, v2, :cond_1aa

    return-object v3

    :cond_1aa
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x223

    if-ne v0, v2, :cond_1ab

    return-object v3

    :cond_1ab
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x224

    if-ne v0, v2, :cond_1ac

    return-object v3

    :cond_1ac
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x225

    if-ne v0, v2, :cond_1ad

    return-object v3

    :cond_1ad
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x226

    if-ne v0, v2, :cond_1ae

    return-object v3

    :cond_1ae
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x227

    if-ne v0, v2, :cond_1af

    return-object v3

    :cond_1af
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x228

    if-ne v0, v2, :cond_1b0

    return-object v3

    :cond_1b0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x229

    if-ne v0, v2, :cond_1b1

    return-object v3

    :cond_1b1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22a

    if-ne v0, v2, :cond_1b2

    return-object v3

    :cond_1b2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22b

    if-ne v0, v2, :cond_1b3

    return-object v3

    :cond_1b3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22c

    if-ne v0, v2, :cond_1b4

    return-object v3

    :cond_1b4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22d

    if-ne v0, v2, :cond_1b5

    return-object v3

    :cond_1b5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22e

    if-ne v0, v2, :cond_1b6

    return-object v3

    :cond_1b6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22f

    if-ne v0, v2, :cond_1b7

    return-object v3

    :cond_1b7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x230

    if-ne v0, v2, :cond_1b8

    return-object v3

    :cond_1b8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x231

    if-ne v0, v2, :cond_1b9

    return-object v3

    :cond_1b9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x232

    if-ne v0, v2, :cond_1ba

    return-object v3

    :cond_1ba
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x233

    if-ne v0, v2, :cond_1bb

    return-object v3

    :cond_1bb
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x234

    if-ne v0, v2, :cond_1bc

    return-object v3

    :cond_1bc
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x235

    if-ne v0, v2, :cond_1bd

    return-object v3

    :cond_1bd
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x236

    if-ne v0, v2, :cond_1be

    return-object v3

    :cond_1be
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x237

    if-ne v0, v2, :cond_1bf

    return-object v3

    :cond_1bf
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x238

    if-ne v0, v2, :cond_1c0

    return-object v3

    :cond_1c0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x239

    if-ne v0, v2, :cond_1c1

    return-object v3

    :cond_1c1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23a

    if-ne v0, v2, :cond_1c2

    return-object v3

    :cond_1c2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23b

    if-ne v0, v2, :cond_1c3

    return-object v3

    :cond_1c3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23c

    if-ne v0, v2, :cond_1c4

    return-object v3

    :cond_1c4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23d

    if-ne v0, v2, :cond_1c5

    return-object v3

    :cond_1c5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23e

    if-ne v0, v2, :cond_1c6

    return-object v3

    :cond_1c6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23f

    if-ne v0, v2, :cond_1c7

    return-object v3

    :cond_1c7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x240

    if-ne v0, v2, :cond_1c8

    return-object v3

    :cond_1c8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x241

    if-ne v0, v2, :cond_1c9

    return-object v3

    :cond_1c9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x242

    if-ne v0, v2, :cond_1ca

    return-object v3

    :cond_1ca
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x243

    if-ne v0, v2, :cond_1cb

    return-object v3

    :cond_1cb
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x244

    if-ne v0, v2, :cond_1cc

    return-object v3

    :cond_1cc
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x245

    if-ne v0, v2, :cond_1cd

    return-object v3

    :cond_1cd
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x246

    if-ne v0, v2, :cond_1ce

    return-object v3

    :cond_1ce
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x247

    if-ne v0, v2, :cond_1cf

    return-object v3

    :cond_1cf
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x248

    if-ne v0, v2, :cond_1d0

    return-object v3

    :cond_1d0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x249

    if-ne v0, v2, :cond_1d1

    return-object v3

    :cond_1d1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24a

    if-ne v0, v2, :cond_1d2

    return-object v3

    :cond_1d2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24b

    if-ne v0, v2, :cond_1d3

    return-object v3

    :cond_1d3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24c

    if-ne v0, v2, :cond_1d4

    return-object v3

    :cond_1d4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24d

    if-ne v0, v2, :cond_1d5

    return-object v3

    :cond_1d5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24e

    if-ne v0, v2, :cond_1d6

    return-object v3

    :cond_1d6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24f

    if-ne v0, v2, :cond_1d7

    return-object v3

    :cond_1d7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x250

    if-ne v0, v2, :cond_1d8

    return-object v3

    :cond_1d8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x251

    if-ne v0, v2, :cond_1d9

    return-object v3

    :cond_1d9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x252

    if-ne v0, v2, :cond_1da

    return-object v3

    :cond_1da
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x253

    if-ne v0, v2, :cond_1db

    return-object v3

    :cond_1db
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x254

    if-ne v0, v2, :cond_1dc

    return-object v3

    :cond_1dc
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x255

    if-ne v0, v2, :cond_1dd

    return-object v3

    :cond_1dd
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x256

    if-ne v0, v2, :cond_1de

    return-object v3

    :cond_1de
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x257

    if-ne v0, v2, :cond_1df

    return-object v3

    :cond_1df
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x258

    if-ne v0, v2, :cond_1e0

    return-object v3

    :cond_1e0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x259

    if-ne v0, v2, :cond_1e1

    return-object v3

    :cond_1e1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25a

    if-ne v0, v2, :cond_1e2

    return-object v3

    :cond_1e2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25b

    if-ne v0, v2, :cond_1e3

    return-object v3

    :cond_1e3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25c

    if-ne v0, v2, :cond_1e4

    return-object v3

    :cond_1e4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25d

    if-ne v0, v2, :cond_1e5

    return-object v3

    :cond_1e5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25e

    if-ne v0, v2, :cond_1e6

    return-object v3

    :cond_1e6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25f

    if-ne v0, v2, :cond_1e7

    return-object v3

    :cond_1e7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x260

    if-ne v0, v2, :cond_1e8

    return-object v3

    :cond_1e8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x261

    if-ne v0, v2, :cond_1e9

    return-object v3

    :cond_1e9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x262

    if-ne v0, v2, :cond_1ea

    return-object v3

    :cond_1ea
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x263

    if-ne v0, v2, :cond_1eb

    return-object v3

    :cond_1eb
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x264

    if-ne v0, v2, :cond_1ec

    return-object v3

    :cond_1ec
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x265

    if-ne v0, v2, :cond_1ed

    return-object v3

    :cond_1ed
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x266

    if-ne v0, v2, :cond_1ee

    return-object v3

    :cond_1ee
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x267

    if-ne v0, v2, :cond_1ef

    return-object v3

    :cond_1ef
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x268

    if-ne v0, v2, :cond_1f0

    return-object v3

    :cond_1f0
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x269

    if-ne v0, v2, :cond_1f1

    return-object v3

    :cond_1f1
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26a

    if-ne v0, v2, :cond_1f2

    return-object v3

    :cond_1f2
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26b

    if-ne v0, v2, :cond_1f3

    return-object v3

    :cond_1f3
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26c

    if-ne v0, v2, :cond_1f4

    return-object v3

    :cond_1f4
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26d

    if-ne v0, v2, :cond_1f5

    return-object v3

    :cond_1f5
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26e

    if-ne v0, v2, :cond_1f6

    return-object v3

    :cond_1f6
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26f

    if-ne v0, v2, :cond_1f7

    return-object v3

    :cond_1f7
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x270

    if-ne v0, v2, :cond_1f8

    return-object v3

    :cond_1f8
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x271

    if-ne v0, v2, :cond_1f9

    return-object v3

    :cond_1f9
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x272

    if-ne v0, v2, :cond_1fa

    return-object v3

    :cond_1fa
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x273

    if-ne v0, v2, :cond_1fb

    return-object v3

    :cond_1fb
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x274

    if-ne v0, v2, :cond_1fc

    return-object v3

    :cond_1fc
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x275

    if-ne v0, v2, :cond_1fd

    return-object v3

    :cond_1fd
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x276

    if-ne v0, v2, :cond_1fe

    return-object v3

    :cond_1fe
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x277

    if-ne v0, v2, :cond_1ff

    return-object v3

    :cond_1ff
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x278

    if-ne v0, v2, :cond_200

    return-object v3

    :cond_200
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x279

    if-ne v0, v2, :cond_201

    return-object v3

    :cond_201
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27a

    if-ne v0, v2, :cond_202

    return-object v3

    :cond_202
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27b

    if-ne v0, v2, :cond_203

    return-object v3

    :cond_203
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27c

    if-ne v0, v2, :cond_204

    return-object v3

    :cond_204
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27d

    if-ne v0, v2, :cond_205

    return-object v3

    :cond_205
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27e

    if-ne v0, v2, :cond_206

    return-object v3

    :cond_206
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27f

    if-ne v0, v2, :cond_207

    return-object v3

    :cond_207
    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v1, 0x280

    if-ne v0, v1, :cond_208

    const-string v0, "XXXHDPI"

    return-object v0

    :cond_208
    const-string v0, "unknown"

    return-object v0
.end method

.method public static getDisplayDiagonalInches()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    sget-object v1, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    sget-object v5, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    sget-object v6, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v6, v6, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayDpi()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayDpiX()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayDpiY()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayHeight()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayHeightInches()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    sget-object v1, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayRefreshRate()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayWidth()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayWidthInches()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    sget-object v1, Lcom/leo/salt/utils/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sget-object v2, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getFrequencyText(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/sys/devices/system/cpu/cpu"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/online"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/leo/salt/utils/ExtraInfo;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "1"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object p0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/cpufreq/scaling_cur_freq"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ExtraInfo;->ReadFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/utils/ExtraInfo;->RemoveLast(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p1, v0

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p1, "MHz"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method public static getIMEI()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getKenel()Ljava/lang/String;
    .locals 3

    const-string v0, "os.version"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "V"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FusionLeo-Kernel."

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "uname -a"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->readCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getKenel2()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.build.display.id"

    invoke-static {v0}, Lcom/leo/salt/tweaks/resource/Resource;->getLeoBuild(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMac(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mac:Ljava/lang/String;

    if-nez v0, :cond_2

    :try_start_0
    const-string v0, "wlan0"

    invoke-static {v0}, Ljava/net/NetworkInterface;->getByName(Ljava/lang/String;)Ljava/net/NetworkInterface;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_0

    aget-byte v6, v0, v4

    const-string v7, "%02X:"

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-static {v7, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/leo/salt/utils/ExtraInfo;->mac:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    :try_start_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/leo/salt/utils/ExtraInfo;->mac:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NullPointerException;->printStackTrace()V

    const-string p0, "02:00:00:00:00:00"

    sput-object p0, Lcom/leo/salt/utils/ExtraInfo;->mac:Ljava/lang/String;

    :cond_2
    :goto_1
    sget-object p0, Lcom/leo/salt/utils/ExtraInfo;->mac:Ljava/lang/String;

    return-object p0
.end method

.method public static getOperator()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/leo/salt/tweaks/resource/Resource;->isChineseLanguage()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getOperatorType()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getStockCarrier()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static getOperatorType()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "46001"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "46006"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "46009"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    const-string v1, "46000"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46002"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46004"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "46007"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "46003"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46005"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "46011"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "\u672a\u4f7f\u7528\u79fb\u52a8\u6570\u636e"

    goto :goto_3

    :cond_3
    :goto_0
    const-string v0, "\u4e2d\u56fd\u7535\u4fe1 CTCC"

    goto :goto_3

    :cond_4
    :goto_1
    const-string v0, "\u4e2d\u56fd\u79fb\u52a8 CMCC"

    goto :goto_3

    :cond_5
    :goto_2
    const-string v0, "\u4e2d\u56fd\u8054\u901a CUCC"

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->getCurrentNetType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProc(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat /proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/leo/salt/utils/ExtraInfoLib;->shellExec(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    :goto_0
    return-object v0
.end method

.method public static getProcCpuArchitecture()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU architecture"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcCpuBogoMips()Ljava/lang/String;
    .locals 1

    const-string v0, "BogoMIPS"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcCpuDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Processor"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcCpuFeatures()Ljava/lang/String;
    .locals 1

    const-string v0, "Features"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcCpuField(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "unknown"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "cpuinfo"

    invoke-static {v1}, Lcom/leo/salt/utils/ExtraInfo;->getProc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, ":"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    aget-object p0, v2, p0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public static getProcCpuImplementer()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU implementer"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcCpuPart()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU part"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProcCpuRevision()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU revision"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const-string v0, "unknown"

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getprop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/leo/salt/utils/ExtraInfoLib;->shellExec(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-object p0, v0

    :goto_0
    const-string v1, "[]"

    if-ne p0, v1, :cond_1

    return-object v0

    :cond_1
    return-object p0

    :cond_2
    :goto_1
    return-object v0
.end method

.method public static getPropCpuAbi2()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.cpu.abi2"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSerialNumber()Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "get"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "ril.serialnumber"

    aput-object v4, v3, v6

    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v1, v0

    :catch_1
    :goto_0
    return-object v1
.end method

.method public static getStockCarrier()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTimes(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    const-wide/16 v2, 0x3c

    div-long v4, v0, v2

    rem-long/2addr v4, v2

    long-to-int p0, v4

    const-wide/16 v2, 0xe10

    div-long/2addr v0, v2

    long-to-int v1, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "unit_run_time"

    invoke-static {v2, v3}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "unit_run_hour"

    invoke-static {v1, v2}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/leo/salt/tweaks/LeoAmberApplication;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v1, "unit_run_minute"

    invoke-static {p0, v1}, Lcom/leo/salt/tweaks/resource/Resource;->getStringIdentifier(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getbusybox()Ljava/lang/String;
    .locals 3

    const-string v0, "busybox"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->readCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/leo/salt/utils/ExtraInfo;->busyboxInstalled()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->readCommandOutput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, ""

    :goto_1
    return-object v0
.end method

.method public static gets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "unknown"

    :cond_1
    return-object p0
.end method

.method public static readCommandOutput(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Process;->waitFor()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    :goto_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getDevice()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.model"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLogicalDensity()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/leo/salt/utils/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcMemField(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, "unknown"

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "meminfo"

    invoke-static {v1}, Lcom/leo/salt/utils/ExtraInfo;->getProc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x2

    const-string v4, ":"

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p1, 0x1

    aget-object p1, v2, p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    :goto_0
    return-object v0
.end method

.method public getProcMemTotal()Ljava/lang/String;
    .locals 1

    const-string v0, "MemTotal"

    invoke-virtual {p0, v0}, Lcom/leo/salt/utils/ExtraInfo;->getProcMemField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropHardware()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.hardware"

    invoke-static {v0}, Lcom/leo/salt/utils/ExtraInfo;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSize()Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/system"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v3, v0

    mul-long v1, v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSystemSize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/system"

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-double v4, v0

    mul-double v2, v2, v4

    const-string v0, "B"

    invoke-static {v2, v3, v0, p1}, Lcom/leo/salt/utils/ExtraInfoLib;->scaleData(DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lcom/leo/salt/utils/ExtraInfoLib;->round(DI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
