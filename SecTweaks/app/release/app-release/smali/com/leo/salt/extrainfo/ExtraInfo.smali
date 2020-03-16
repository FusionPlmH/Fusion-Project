.class public Lcom/leo/salt/extrainfo/ExtraInfo;
.super Ljava/lang/Object;
.source "ExtraInfo.java"


# static fields
.field private static final UNKNOWN:Ljava/lang/String; = "unknown"

.field public static mEmpty:Ljava/lang/String; = " "


# instance fields
.field private final mDisplay:Landroid/view/Display;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 0

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

    iput-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget-object p1, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {p1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    return-void
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

.method public static getCarrier(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    return-object v1

    :cond_1
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v2, "46020"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xd

    goto/16 :goto_1

    :sswitch_1
    const-string v2, "46011"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v2, "46007"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v2, "46006"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x4

    goto/16 :goto_1

    :sswitch_4
    const-string v2, "46005"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x6

    goto :goto_1

    :sswitch_5
    const-string v2, "46003"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x5

    goto :goto_1

    :sswitch_6
    const-string v2, "46002"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_7
    const-string v2, "46001"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_8
    const-string v2, "46000"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_9
    const-string v2, "45504"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xc

    goto :goto_1

    :sswitch_a
    const-string v2, "45502"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x8

    goto :goto_1

    :sswitch_b
    const-string v2, "45501"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xb

    goto :goto_1

    :sswitch_c
    const-string v2, "45413"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0xa

    goto :goto_1

    :sswitch_d
    const-string v2, "45412"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v1, 0x9

    :cond_2
    :goto_1
    packed-switch v1, :pswitch_data_0

    return-object v0

    :pswitch_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10010a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100106

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100108

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_3
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100109

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10010b

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f100107

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2f5a734 -> :sswitch_d
        0x2f5a735 -> :sswitch_c
        0x2f5aad5 -> :sswitch_b
        0x2f5aad6 -> :sswitch_a
        0x2f5aad8 -> :sswitch_9
        0x2f60c6e -> :sswitch_8
        0x2f60c6f -> :sswitch_7
        0x2f60c70 -> :sswitch_6
        0x2f60c71 -> :sswitch_5
        0x2f60c73 -> :sswitch_4
        0x2f60c74 -> :sswitch_3
        0x2f60c75 -> :sswitch_2
        0x2f60c8e -> :sswitch_1
        0x2f60cac -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getCurrentNetType(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    const-string v1, "connectivity"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    invoke-virtual {p0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p0

    if-nez p0, :cond_0

    sget-object v0, Lcom/leo/salt/extrainfo/ExtraInfo;->mEmpty:Ljava/lang/String;

    goto/16 :goto_2

    :cond_0
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/leo/salt/extrainfo/ExtraInfo;->mEmpty:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "WIFI"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_1
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    if-nez v1, :cond_6

    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result p0

    const/4 v1, 0x4

    if-eq p0, v1, :cond_5

    if-eq p0, v2, :cond_5

    const/4 v1, 0x2

    if-ne p0, v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-eq p0, v1, :cond_4

    const/16 v1, 0x8

    if-eq p0, v1, :cond_4

    const/4 v1, 0x6

    if-eq p0, v1, :cond_4

    const/4 v1, 0x5

    if-eq p0, v1, :cond_4

    const/16 v1, 0xc

    if-ne p0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0xd

    if-ne p0, v1, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/leo/salt/extrainfo/ExtraInfo;->mEmpty:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "4G"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/leo/salt/extrainfo/ExtraInfo;->mEmpty:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "3G"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Lcom/leo/salt/extrainfo/ExtraInfo;->mEmpty:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "2G"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    :goto_2
    return-object v0
.end method

.method private getProc(Ljava/lang/String;)Ljava/util/List;
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

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cat /proc/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoLib;->shellExec(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object v0

    :cond_1
    :goto_0
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

.method public static getTimes(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v0, 0x1

    :cond_0
    const-wide/16 v2, 0x3c

    div-long v4, v0, v2

    rem-long/2addr v4, v2

    long-to-int v2, v4

    const-wide/16 v3, 0xe10

    div-long/2addr v0, v3

    long-to-int v0, v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10041b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f100419

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f10041a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private gets(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p1, "unknown"

    :cond_1
    return-object p1
.end method


# virtual methods
.method public getBuildBootloader()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->gets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildCpuAbi()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->gets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildCpuAbi2()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->gets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildDisplay()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->gets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildManufacturer()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->gets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBuildVersionCodename()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->gets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDataSize()Ljava/lang/String;
    .locals 5

    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

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

.method public getDataSize(Ljava/lang/String;I)Ljava/lang/String;
    .locals 6

    new-instance v0, Landroid/os/StatFs;

    const-string v1, "/data"

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

    invoke-static {v2, v3, v0, p1}, Lcom/leo/salt/extrainfo/ExtraInfoLib;->scaleData(DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lcom/leo/salt/extrainfo/ExtraInfoLib;->round(DI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getDevice()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.model"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDensity()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x43200000    # 160.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x78

    if-ne v0, v2, :cond_0

    const-string v0, "LDPI"

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x79

    if-ne v0, v2, :cond_1

    const-string v0, "LDPI"

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x7a

    if-ne v0, v2, :cond_2

    const-string v0, "LDPI"

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x7b

    if-ne v0, v2, :cond_3

    const-string v0, "LDPI"

    return-object v0

    :cond_3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x7c

    if-ne v0, v2, :cond_4

    const-string v0, "LDPI"

    return-object v0

    :cond_4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x7d

    if-ne v0, v2, :cond_5

    const-string v0, "LDPI"

    return-object v0

    :cond_5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x7e

    if-ne v0, v2, :cond_6

    const-string v0, "LDPI"

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x7f

    if-ne v0, v2, :cond_7

    const-string v0, "LDPI"

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x80

    if-ne v0, v2, :cond_8

    const-string v0, "LDPI"

    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x81

    if-ne v0, v2, :cond_9

    const-string v0, "LDPI"

    return-object v0

    :cond_9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x82

    if-ne v0, v2, :cond_a

    const-string v0, "LDPI"

    return-object v0

    :cond_a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x83

    if-ne v0, v2, :cond_b

    const-string v0, "LDPI"

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x84

    if-ne v0, v2, :cond_c

    const-string v0, "LDPI"

    return-object v0

    :cond_c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x85

    if-ne v0, v2, :cond_d

    const-string v0, "LDPI"

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x86

    if-ne v0, v2, :cond_e

    const-string v0, "LDPI"

    return-object v0

    :cond_e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x87

    if-ne v0, v2, :cond_f

    const-string v0, "LDPI"

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x88

    if-ne v0, v2, :cond_10

    const-string v0, "LDPI"

    return-object v0

    :cond_10
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x89

    if-ne v0, v2, :cond_11

    const-string v0, "LDPI"

    return-object v0

    :cond_11
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x8a

    if-ne v0, v2, :cond_12

    const-string v0, "LDPI"

    return-object v0

    :cond_12
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x8b

    if-ne v0, v2, :cond_13

    const-string v0, "LDPI"

    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x8c

    if-ne v0, v2, :cond_14

    const-string v0, "LDPI"

    return-object v0

    :cond_14
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x8d

    if-ne v0, v2, :cond_15

    const-string v0, "LDPI"

    return-object v0

    :cond_15
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x8e

    if-ne v0, v2, :cond_16

    const-string v0, "LDPI"

    return-object v0

    :cond_16
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x8f

    if-ne v0, v2, :cond_17

    const-string v0, "LDPI"

    return-object v0

    :cond_17
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x90

    if-ne v0, v2, :cond_18

    const-string v0, "LDPI"

    return-object v0

    :cond_18
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x91

    if-ne v0, v2, :cond_19

    const-string v0, "LDPI"

    return-object v0

    :cond_19
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x92

    if-ne v0, v2, :cond_1a

    const-string v0, "LDPI"

    return-object v0

    :cond_1a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x93

    if-ne v0, v2, :cond_1b

    const-string v0, "LDPI"

    return-object v0

    :cond_1b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x94

    if-ne v0, v2, :cond_1c

    const-string v0, "LDPI"

    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x95

    if-ne v0, v2, :cond_1d

    const-string v0, "LDPI"

    return-object v0

    :cond_1d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x96

    if-ne v0, v2, :cond_1e

    const-string v0, "LDPI"

    return-object v0

    :cond_1e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x97

    if-ne v0, v2, :cond_1f

    const-string v0, "LDPI"

    return-object v0

    :cond_1f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x98

    if-ne v0, v2, :cond_20

    const-string v0, "LDPI"

    return-object v0

    :cond_20
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x99

    if-ne v0, v2, :cond_21

    const-string v0, "LDPI"

    return-object v0

    :cond_21
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x9a

    if-ne v0, v2, :cond_22

    const-string v0, "LDPI"

    return-object v0

    :cond_22
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x9b

    if-ne v0, v2, :cond_23

    const-string v0, "LDPI"

    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x9c

    if-ne v0, v2, :cond_24

    const-string v0, "LDPI"

    return-object v0

    :cond_24
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x9d

    if-ne v0, v2, :cond_25

    const-string v0, "LDPI"

    return-object v0

    :cond_25
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x9e

    if-ne v0, v2, :cond_26

    const-string v0, "LDPI"

    return-object v0

    :cond_26
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x9f

    if-ne v0, v2, :cond_27

    const-string v0, "LDPI"

    return-object v0

    :cond_27
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa0

    if-ne v0, v2, :cond_28

    const-string v0, "MDPI"

    return-object v0

    :cond_28
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa1

    if-ne v0, v2, :cond_29

    const-string v0, "MDPI"

    return-object v0

    :cond_29
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa2

    if-ne v0, v2, :cond_2a

    const-string v0, "MDPI"

    return-object v0

    :cond_2a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa3

    if-ne v0, v2, :cond_2b

    const-string v0, "MDPI"

    return-object v0

    :cond_2b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa4

    if-ne v0, v2, :cond_2c

    const-string v0, "MDPI"

    return-object v0

    :cond_2c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa5

    if-ne v0, v2, :cond_2d

    const-string v0, "MDPI"

    return-object v0

    :cond_2d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa6

    if-ne v0, v2, :cond_2e

    const-string v0, "MDPI"

    return-object v0

    :cond_2e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa7

    if-ne v0, v2, :cond_2f

    const-string v0, "MDPI"

    return-object v0

    :cond_2f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa8

    if-ne v0, v2, :cond_30

    const-string v0, "MDPI"

    return-object v0

    :cond_30
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xa9

    if-ne v0, v2, :cond_31

    const-string v0, "MDPI"

    return-object v0

    :cond_31
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xaa

    if-ne v0, v2, :cond_32

    const-string v0, "MDPI"

    return-object v0

    :cond_32
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xab

    if-ne v0, v2, :cond_33

    const-string v0, "MDPI"

    return-object v0

    :cond_33
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xac

    if-ne v0, v2, :cond_34

    const-string v0, "MDPI"

    return-object v0

    :cond_34
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xad

    if-ne v0, v2, :cond_35

    const-string v0, "MDPI"

    return-object v0

    :cond_35
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xae

    if-ne v0, v2, :cond_36

    const-string v0, "MDPI"

    return-object v0

    :cond_36
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xaf

    if-ne v0, v2, :cond_37

    const-string v0, "MDPI"

    return-object v0

    :cond_37
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb0

    if-ne v0, v2, :cond_38

    const-string v0, "MDPI"

    return-object v0

    :cond_38
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb1

    if-ne v0, v2, :cond_39

    const-string v0, "MDPI"

    return-object v0

    :cond_39
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb2

    if-ne v0, v2, :cond_3a

    const-string v0, "MDPI"

    return-object v0

    :cond_3a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb3

    if-ne v0, v2, :cond_3b

    const-string v0, "MDPI"

    return-object v0

    :cond_3b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb4

    if-ne v0, v2, :cond_3c

    const-string v0, "MDPI"

    return-object v0

    :cond_3c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb5

    if-ne v0, v2, :cond_3d

    const-string v0, "MDPI"

    return-object v0

    :cond_3d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb6

    if-ne v0, v2, :cond_3e

    const-string v0, "MDPI"

    return-object v0

    :cond_3e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb7

    if-ne v0, v2, :cond_3f

    const-string v0, "MDPI"

    return-object v0

    :cond_3f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb8

    if-ne v0, v2, :cond_40

    const-string v0, "MDPI"

    return-object v0

    :cond_40
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xb9

    if-ne v0, v2, :cond_41

    const-string v0, "MDPI"

    return-object v0

    :cond_41
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xba

    if-ne v0, v2, :cond_42

    const-string v0, "MDPI"

    return-object v0

    :cond_42
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbb

    if-ne v0, v2, :cond_43

    const-string v0, "MDPI"

    return-object v0

    :cond_43
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbc

    if-ne v0, v2, :cond_44

    const-string v0, "MDPI"

    return-object v0

    :cond_44
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbd

    if-ne v0, v2, :cond_45

    const-string v0, "MDPI"

    return-object v0

    :cond_45
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbe

    if-ne v0, v2, :cond_46

    const-string v0, "MDPI"

    return-object v0

    :cond_46
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xbf

    if-ne v0, v2, :cond_47

    const-string v0, "MDPI"

    return-object v0

    :cond_47
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc0

    if-ne v0, v2, :cond_48

    const-string v0, "MDPI"

    return-object v0

    :cond_48
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc1

    if-ne v0, v2, :cond_49

    const-string v0, "MDPI"

    return-object v0

    :cond_49
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc2

    if-ne v0, v2, :cond_4a

    const-string v0, "MDPI"

    return-object v0

    :cond_4a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc3

    if-ne v0, v2, :cond_4b

    const-string v0, "MDPI"

    return-object v0

    :cond_4b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc4

    if-ne v0, v2, :cond_4c

    const-string v0, "MDPI"

    return-object v0

    :cond_4c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc5

    if-ne v0, v2, :cond_4d

    const-string v0, "MDPI"

    return-object v0

    :cond_4d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc6

    if-ne v0, v2, :cond_4e

    const-string v0, "MDPI"

    return-object v0

    :cond_4e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc7

    if-ne v0, v2, :cond_4f

    const-string v0, "MDPI"

    return-object v0

    :cond_4f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_50

    const-string v0, "MDPI"

    return-object v0

    :cond_50
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xc9

    if-ne v0, v2, :cond_51

    const-string v0, "MDPI"

    return-object v0

    :cond_51
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xca

    if-ne v0, v2, :cond_52

    const-string v0, "MDPI"

    return-object v0

    :cond_52
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xcb

    if-ne v0, v2, :cond_53

    const-string v0, "MDPI"

    return-object v0

    :cond_53
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xcc

    if-ne v0, v2, :cond_54

    const-string v0, "MDPI"

    return-object v0

    :cond_54
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xcd

    if-ne v0, v2, :cond_55

    const-string v0, "MDPI"

    return-object v0

    :cond_55
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xce

    if-ne v0, v2, :cond_56

    const-string v0, "MDPI"

    return-object v0

    :cond_56
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xcf

    if-ne v0, v2, :cond_57

    const-string v0, "MDPI"

    return-object v0

    :cond_57
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd0

    if-ne v0, v2, :cond_58

    const-string v0, "MDPI"

    return-object v0

    :cond_58
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd1

    if-ne v0, v2, :cond_59

    const-string v0, "MDPI"

    return-object v0

    :cond_59
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd2

    if-ne v0, v2, :cond_5a

    const-string v0, "MDPI"

    return-object v0

    :cond_5a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd3

    if-ne v0, v2, :cond_5b

    const-string v0, "MDPI"

    return-object v0

    :cond_5b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd4

    if-ne v0, v2, :cond_5c

    const-string v0, "MDPI"

    return-object v0

    :cond_5c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd5

    if-ne v0, v2, :cond_5d

    const-string v0, "MDPI"

    return-object v0

    :cond_5d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd6

    if-ne v0, v2, :cond_5e

    const-string v0, "MDPI"

    return-object v0

    :cond_5e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd7

    if-ne v0, v2, :cond_5f

    const-string v0, "MDPI"

    return-object v0

    :cond_5f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd8

    if-ne v0, v2, :cond_60

    const-string v0, "MDPI"

    return-object v0

    :cond_60
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xd9

    if-ne v0, v2, :cond_61

    const-string v0, "MDPI"

    return-object v0

    :cond_61
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xda

    if-ne v0, v2, :cond_62

    const-string v0, "MDPI"

    return-object v0

    :cond_62
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xdb

    if-ne v0, v2, :cond_63

    const-string v0, "MDPI"

    return-object v0

    :cond_63
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xdc

    if-ne v0, v2, :cond_64

    const-string v0, "MDPI"

    return-object v0

    :cond_64
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xdd

    if-ne v0, v2, :cond_65

    const-string v0, "MDPI"

    return-object v0

    :cond_65
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xde

    if-ne v0, v2, :cond_66

    const-string v0, "MDPI"

    return-object v0

    :cond_66
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xdf

    if-ne v0, v2, :cond_67

    const-string v0, "MDPI"

    return-object v0

    :cond_67
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe0

    if-ne v0, v2, :cond_68

    const-string v0, "MDPI"

    return-object v0

    :cond_68
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe1

    if-ne v0, v2, :cond_69

    const-string v0, "MDPI"

    return-object v0

    :cond_69
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe2

    if-ne v0, v2, :cond_6a

    const-string v0, "MDPI"

    return-object v0

    :cond_6a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe3

    if-ne v0, v2, :cond_6b

    const-string v0, "MDPI"

    return-object v0

    :cond_6b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe4

    if-ne v0, v2, :cond_6c

    const-string v0, "MDPI"

    return-object v0

    :cond_6c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe5

    if-ne v0, v2, :cond_6d

    const-string v0, "MDPI"

    return-object v0

    :cond_6d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe6

    if-ne v0, v2, :cond_6e

    const-string v0, "MDPI"

    return-object v0

    :cond_6e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe7

    if-ne v0, v2, :cond_6f

    const-string v0, "MDPI"

    return-object v0

    :cond_6f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe8

    if-ne v0, v2, :cond_70

    const-string v0, "MDPI"

    return-object v0

    :cond_70
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xe9

    if-ne v0, v2, :cond_71

    const-string v0, "MDPI"

    return-object v0

    :cond_71
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xea

    if-ne v0, v2, :cond_72

    const-string v0, "MDPI"

    return-object v0

    :cond_72
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xeb

    if-ne v0, v2, :cond_73

    const-string v0, "MDPI"

    return-object v0

    :cond_73
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xec

    if-ne v0, v2, :cond_74

    const-string v0, "MDPI"

    return-object v0

    :cond_74
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xed

    if-ne v0, v2, :cond_75

    const-string v0, "MDPI"

    return-object v0

    :cond_75
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xee

    if-ne v0, v2, :cond_76

    const-string v0, "MDPI"

    return-object v0

    :cond_76
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xef

    if-ne v0, v2, :cond_77

    const-string v0, "MDPI"

    return-object v0

    :cond_77
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf0

    if-ne v0, v2, :cond_78

    const-string v0, "HDPI"

    return-object v0

    :cond_78
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf1

    if-ne v0, v2, :cond_79

    const-string v0, "HDPI"

    return-object v0

    :cond_79
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf2

    if-ne v0, v2, :cond_7a

    const-string v0, "HDPI"

    return-object v0

    :cond_7a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf3

    if-ne v0, v2, :cond_7b

    const-string v0, "HDPI"

    return-object v0

    :cond_7b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf4

    if-ne v0, v2, :cond_7c

    const-string v0, "HDPI"

    return-object v0

    :cond_7c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf5

    if-ne v0, v2, :cond_7d

    const-string v0, "HDPI"

    return-object v0

    :cond_7d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf6

    if-ne v0, v2, :cond_7e

    const-string v0, "HDPI"

    return-object v0

    :cond_7e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf7

    if-ne v0, v2, :cond_7f

    const-string v0, "HDPI"

    return-object v0

    :cond_7f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf8

    if-ne v0, v2, :cond_80

    const-string v0, "HDPI"

    return-object v0

    :cond_80
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xf9

    if-ne v0, v2, :cond_81

    const-string v0, "HDPI"

    return-object v0

    :cond_81
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfa

    if-ne v0, v2, :cond_82

    const-string v0, "HDPI"

    return-object v0

    :cond_82
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfb

    if-ne v0, v2, :cond_83

    const-string v0, "HDPI"

    return-object v0

    :cond_83
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfc

    if-ne v0, v2, :cond_84

    const-string v0, "HDPI"

    return-object v0

    :cond_84
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfd

    if-ne v0, v2, :cond_85

    const-string v0, "HDPI"

    return-object v0

    :cond_85
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xfe

    if-ne v0, v2, :cond_86

    const-string v0, "HDPI"

    return-object v0

    :cond_86
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0xff

    if-ne v0, v2, :cond_87

    const-string v0, "HDPI"

    return-object v0

    :cond_87
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x100

    if-ne v0, v2, :cond_88

    const-string v0, "HDPI"

    return-object v0

    :cond_88
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x101

    if-ne v0, v2, :cond_89

    const-string v0, "HDPI"

    return-object v0

    :cond_89
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x102

    if-ne v0, v2, :cond_8a

    const-string v0, "HDPI"

    return-object v0

    :cond_8a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x103

    if-ne v0, v2, :cond_8b

    const-string v0, "HDPI"

    return-object v0

    :cond_8b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x104

    if-ne v0, v2, :cond_8c

    const-string v0, "HDPI"

    return-object v0

    :cond_8c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x105

    if-ne v0, v2, :cond_8d

    const-string v0, "HDPI"

    return-object v0

    :cond_8d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x106

    if-ne v0, v2, :cond_8e

    const-string v0, "HDPI"

    return-object v0

    :cond_8e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x107

    if-ne v0, v2, :cond_8f

    const-string v0, "HDPI"

    return-object v0

    :cond_8f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x108

    if-ne v0, v2, :cond_90

    const-string v0, "HDPI"

    return-object v0

    :cond_90
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x109

    if-ne v0, v2, :cond_91

    const-string v0, "HDPI"

    return-object v0

    :cond_91
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10a

    if-ne v0, v2, :cond_92

    const-string v0, "HDPI"

    return-object v0

    :cond_92
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10b

    if-ne v0, v2, :cond_93

    const-string v0, "HDPI"

    return-object v0

    :cond_93
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10c

    if-ne v0, v2, :cond_94

    const-string v0, "HDPI"

    return-object v0

    :cond_94
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10d

    if-ne v0, v2, :cond_95

    const-string v0, "HDPI"

    return-object v0

    :cond_95
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10e

    if-ne v0, v2, :cond_96

    const-string v0, "HDPI"

    return-object v0

    :cond_96
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x10f

    if-ne v0, v2, :cond_97

    const-string v0, "HDPI"

    return-object v0

    :cond_97
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x110

    if-ne v0, v2, :cond_98

    const-string v0, "HDPI"

    return-object v0

    :cond_98
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x111

    if-ne v0, v2, :cond_99

    const-string v0, "HDPI"

    return-object v0

    :cond_99
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x112

    if-ne v0, v2, :cond_9a

    const-string v0, "HDPI"

    return-object v0

    :cond_9a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x113

    if-ne v0, v2, :cond_9b

    const-string v0, "HDPI"

    return-object v0

    :cond_9b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x114

    if-ne v0, v2, :cond_9c

    const-string v0, "HDPI"

    return-object v0

    :cond_9c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x115

    if-ne v0, v2, :cond_9d

    const-string v0, "HDPI"

    return-object v0

    :cond_9d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x116

    if-ne v0, v2, :cond_9e

    const-string v0, "HDPI"

    return-object v0

    :cond_9e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x117

    if-ne v0, v2, :cond_9f

    const-string v0, "HDPI"

    return-object v0

    :cond_9f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x118

    if-ne v0, v2, :cond_a0

    const-string v0, "HDPI"

    return-object v0

    :cond_a0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x119

    if-ne v0, v2, :cond_a1

    const-string v0, "HDPI"

    return-object v0

    :cond_a1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11a

    if-ne v0, v2, :cond_a2

    const-string v0, "HDPI"

    return-object v0

    :cond_a2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11b

    if-ne v0, v2, :cond_a3

    const-string v0, "HDPI"

    return-object v0

    :cond_a3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11c

    if-ne v0, v2, :cond_a4

    const-string v0, "HDPI"

    return-object v0

    :cond_a4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11d

    if-ne v0, v2, :cond_a5

    const-string v0, "HDPI"

    return-object v0

    :cond_a5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11e

    if-ne v0, v2, :cond_a6

    const-string v0, "HDPI"

    return-object v0

    :cond_a6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x11f

    if-ne v0, v2, :cond_a7

    const-string v0, "HDPI"

    return-object v0

    :cond_a7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x120

    if-ne v0, v2, :cond_a8

    const-string v0, "HDPI"

    return-object v0

    :cond_a8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x121

    if-ne v0, v2, :cond_a9

    const-string v0, "HDPI"

    return-object v0

    :cond_a9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x122

    if-ne v0, v2, :cond_aa

    const-string v0, "HDPI"

    return-object v0

    :cond_aa
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x123

    if-ne v0, v2, :cond_ab

    const-string v0, "HDPI"

    return-object v0

    :cond_ab
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x124

    if-ne v0, v2, :cond_ac

    const-string v0, "HDPI"

    return-object v0

    :cond_ac
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x125

    if-ne v0, v2, :cond_ad

    const-string v0, "HDPI"

    return-object v0

    :cond_ad
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x126

    if-ne v0, v2, :cond_ae

    const-string v0, "HDPI"

    return-object v0

    :cond_ae
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x127

    if-ne v0, v2, :cond_af

    const-string v0, "HDPI"

    return-object v0

    :cond_af
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x128

    if-ne v0, v2, :cond_b0

    const-string v0, "HDPI"

    return-object v0

    :cond_b0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x129

    if-ne v0, v2, :cond_b1

    const-string v0, "HDPI"

    return-object v0

    :cond_b1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12a

    if-ne v0, v2, :cond_b2

    const-string v0, "HDPI"

    return-object v0

    :cond_b2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12b

    if-ne v0, v2, :cond_b3

    const-string v0, "HDPI"

    return-object v0

    :cond_b3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12c

    if-ne v0, v2, :cond_b4

    const-string v0, "HDPI"

    return-object v0

    :cond_b4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12d

    if-ne v0, v2, :cond_b5

    const-string v0, "HDPI"

    return-object v0

    :cond_b5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12e

    if-ne v0, v2, :cond_b6

    const-string v0, "HDPI"

    return-object v0

    :cond_b6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x12f

    if-ne v0, v2, :cond_b7

    const-string v0, "HDPI"

    return-object v0

    :cond_b7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x130

    if-ne v0, v2, :cond_b8

    const-string v0, "HDPI"

    return-object v0

    :cond_b8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x131

    if-ne v0, v2, :cond_b9

    const-string v0, "HDPI"

    return-object v0

    :cond_b9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x132

    if-ne v0, v2, :cond_ba

    const-string v0, "HDPI"

    return-object v0

    :cond_ba
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x133

    if-ne v0, v2, :cond_bb

    const-string v0, "HDPI"

    return-object v0

    :cond_bb
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x134

    if-ne v0, v2, :cond_bc

    const-string v0, "HDPI"

    return-object v0

    :cond_bc
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x135

    if-ne v0, v2, :cond_bd

    const-string v0, "HDPI"

    return-object v0

    :cond_bd
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x136

    if-ne v0, v2, :cond_be

    const-string v0, "HDPI"

    return-object v0

    :cond_be
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x137

    if-ne v0, v2, :cond_bf

    const-string v0, "HDPI"

    return-object v0

    :cond_bf
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x138

    if-ne v0, v2, :cond_c0

    const-string v0, "HDPI"

    return-object v0

    :cond_c0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x139

    if-ne v0, v2, :cond_c1

    const-string v0, "HDPI"

    return-object v0

    :cond_c1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13a

    if-ne v0, v2, :cond_c2

    const-string v0, "HDPI"

    return-object v0

    :cond_c2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13b

    if-ne v0, v2, :cond_c3

    const-string v0, "HDPI"

    return-object v0

    :cond_c3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13c

    if-ne v0, v2, :cond_c4

    const-string v0, "HDPI"

    return-object v0

    :cond_c4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13d

    if-ne v0, v2, :cond_c5

    const-string v0, "HDPI"

    return-object v0

    :cond_c5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13e

    if-ne v0, v2, :cond_c6

    const-string v0, "HDPI"

    return-object v0

    :cond_c6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x13f

    if-ne v0, v2, :cond_c7

    const-string v0, "HDPI"

    return-object v0

    :cond_c7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x140

    if-ne v0, v2, :cond_c8

    const-string v0, "XHDPI"

    return-object v0

    :cond_c8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x141

    if-ne v0, v2, :cond_c9

    const-string v0, "XHDPI"

    return-object v0

    :cond_c9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x142

    if-ne v0, v2, :cond_ca

    const-string v0, "XHDPI"

    return-object v0

    :cond_ca
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x143

    if-ne v0, v2, :cond_cb

    const-string v0, "XHDPI"

    return-object v0

    :cond_cb
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x144

    if-ne v0, v2, :cond_cc

    const-string v0, "XHDPI"

    return-object v0

    :cond_cc
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x145

    if-ne v0, v2, :cond_cd

    const-string v0, "XHDPI"

    return-object v0

    :cond_cd
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x146

    if-ne v0, v2, :cond_ce

    const-string v0, "XHDPI"

    return-object v0

    :cond_ce
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x147

    if-ne v0, v2, :cond_cf

    const-string v0, "XHDPI"

    return-object v0

    :cond_cf
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x148

    if-ne v0, v2, :cond_d0

    const-string v0, "XHDPI"

    return-object v0

    :cond_d0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x149

    if-ne v0, v2, :cond_d1

    const-string v0, "XHDPI"

    return-object v0

    :cond_d1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14a

    if-ne v0, v2, :cond_d2

    const-string v0, "XHDPI"

    return-object v0

    :cond_d2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14b

    if-ne v0, v2, :cond_d3

    const-string v0, "XHDPI"

    return-object v0

    :cond_d3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14c

    if-ne v0, v2, :cond_d4

    const-string v0, "XHDPI"

    return-object v0

    :cond_d4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14d

    if-ne v0, v2, :cond_d5

    const-string v0, "XHDPI"

    return-object v0

    :cond_d5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14e

    if-ne v0, v2, :cond_d6

    const-string v0, "XHDPI"

    return-object v0

    :cond_d6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x14f

    if-ne v0, v2, :cond_d7

    const-string v0, "XHDPI"

    return-object v0

    :cond_d7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x150

    if-ne v0, v2, :cond_d8

    const-string v0, "XHDPI"

    return-object v0

    :cond_d8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x151

    if-ne v0, v2, :cond_d9

    const-string v0, "XHDPI"

    return-object v0

    :cond_d9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x152

    if-ne v0, v2, :cond_da

    const-string v0, "XHDPI"

    return-object v0

    :cond_da
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x153

    if-ne v0, v2, :cond_db

    const-string v0, "XHDPI"

    return-object v0

    :cond_db
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x154

    if-ne v0, v2, :cond_dc

    const-string v0, "XHDPI"

    return-object v0

    :cond_dc
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x155

    if-ne v0, v2, :cond_dd

    const-string v0, "XHDPI"

    return-object v0

    :cond_dd
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x156

    if-ne v0, v2, :cond_de

    const-string v0, "XHDPI"

    return-object v0

    :cond_de
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x157

    if-ne v0, v2, :cond_df

    const-string v0, "XHDPI"

    return-object v0

    :cond_df
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x158

    if-ne v0, v2, :cond_e0

    const-string v0, "XHDPI"

    return-object v0

    :cond_e0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x159

    if-ne v0, v2, :cond_e1

    const-string v0, "XHDPI"

    return-object v0

    :cond_e1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15a

    if-ne v0, v2, :cond_e2

    const-string v0, "XHDPI"

    return-object v0

    :cond_e2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15b

    if-ne v0, v2, :cond_e3

    const-string v0, "XHDPI"

    return-object v0

    :cond_e3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15c

    if-ne v0, v2, :cond_e4

    const-string v0, "XHDPI"

    return-object v0

    :cond_e4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15d

    if-ne v0, v2, :cond_e5

    const-string v0, "XHDPI"

    return-object v0

    :cond_e5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15e

    if-ne v0, v2, :cond_e6

    const-string v0, "XHDPI"

    return-object v0

    :cond_e6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x15f

    if-ne v0, v2, :cond_e7

    const-string v0, "XHDPI"

    return-object v0

    :cond_e7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x160

    if-ne v0, v2, :cond_e8

    const-string v0, "XHDPI"

    return-object v0

    :cond_e8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x161

    if-ne v0, v2, :cond_e9

    const-string v0, "XHDPI"

    return-object v0

    :cond_e9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x162

    if-ne v0, v2, :cond_ea

    const-string v0, "XHDPI"

    return-object v0

    :cond_ea
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x163

    if-ne v0, v2, :cond_eb

    const-string v0, "XHDPI"

    return-object v0

    :cond_eb
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x164

    if-ne v0, v2, :cond_ec

    const-string v0, "XHDPI"

    return-object v0

    :cond_ec
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x165

    if-ne v0, v2, :cond_ed

    const-string v0, "XHDPI"

    return-object v0

    :cond_ed
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x166

    if-ne v0, v2, :cond_ee

    const-string v0, "XHDPI"

    return-object v0

    :cond_ee
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x167

    if-ne v0, v2, :cond_ef

    const-string v0, "XHDPI"

    return-object v0

    :cond_ef
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x168

    if-ne v0, v2, :cond_f0

    const-string v0, "XHDPI"

    return-object v0

    :cond_f0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x169

    if-ne v0, v2, :cond_f1

    const-string v0, "XHDPI"

    return-object v0

    :cond_f1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16a

    if-ne v0, v2, :cond_f2

    const-string v0, "XHDPI"

    return-object v0

    :cond_f2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16b

    if-ne v0, v2, :cond_f3

    const-string v0, "XHDPI"

    return-object v0

    :cond_f3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16c

    if-ne v0, v2, :cond_f4

    const-string v0, "XHDPI"

    return-object v0

    :cond_f4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16d

    if-ne v0, v2, :cond_f5

    const-string v0, "XHDPI"

    return-object v0

    :cond_f5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16e

    if-ne v0, v2, :cond_f6

    const-string v0, "XHDPI"

    return-object v0

    :cond_f6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x16f

    if-ne v0, v2, :cond_f7

    const-string v0, "XHDPI"

    return-object v0

    :cond_f7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x170

    if-ne v0, v2, :cond_f8

    const-string v0, "XHDPI"

    return-object v0

    :cond_f8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x171

    if-ne v0, v2, :cond_f9

    const-string v0, "XHDPI"

    return-object v0

    :cond_f9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x172

    if-ne v0, v2, :cond_fa

    const-string v0, "XHDPI"

    return-object v0

    :cond_fa
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x173

    if-ne v0, v2, :cond_fb

    const-string v0, "XHDPI"

    return-object v0

    :cond_fb
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x174

    if-ne v0, v2, :cond_fc

    const-string v0, "XHDPI"

    return-object v0

    :cond_fc
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x175

    if-ne v0, v2, :cond_fd

    const-string v0, "XHDPI"

    return-object v0

    :cond_fd
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x176

    if-ne v0, v2, :cond_fe

    const-string v0, "XHDPI"

    return-object v0

    :cond_fe
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x177

    if-ne v0, v2, :cond_ff

    const-string v0, "XHDPI"

    return-object v0

    :cond_ff
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x178

    if-ne v0, v2, :cond_100

    const-string v0, "XHDPI"

    return-object v0

    :cond_100
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x179

    if-ne v0, v2, :cond_101

    const-string v0, "XHDPI"

    return-object v0

    :cond_101
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17a

    if-ne v0, v2, :cond_102

    const-string v0, "XHDPI"

    return-object v0

    :cond_102
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17b

    if-ne v0, v2, :cond_103

    const-string v0, "XHDPI"

    return-object v0

    :cond_103
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17c

    if-ne v0, v2, :cond_104

    const-string v0, "XHDPI"

    return-object v0

    :cond_104
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17d

    if-ne v0, v2, :cond_105

    const-string v0, "XHDPI"

    return-object v0

    :cond_105
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17e

    if-ne v0, v2, :cond_106

    const-string v0, "XHDPI"

    return-object v0

    :cond_106
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x17f

    if-ne v0, v2, :cond_107

    const-string v0, "XHDPI"

    return-object v0

    :cond_107
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x180

    if-ne v0, v2, :cond_108

    const-string v0, "XHDPI"

    return-object v0

    :cond_108
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x181

    if-ne v0, v2, :cond_109

    const-string v0, "XHDPI"

    return-object v0

    :cond_109
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x182

    if-ne v0, v2, :cond_10a

    const-string v0, "XHDPI"

    return-object v0

    :cond_10a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x183

    if-ne v0, v2, :cond_10b

    const-string v0, "XHDPI"

    return-object v0

    :cond_10b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x184

    if-ne v0, v2, :cond_10c

    const-string v0, "XHDPI"

    return-object v0

    :cond_10c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x185

    if-ne v0, v2, :cond_10d

    const-string v0, "XHDPI"

    return-object v0

    :cond_10d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x186

    if-ne v0, v2, :cond_10e

    const-string v0, "XHDPI"

    return-object v0

    :cond_10e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x187

    if-ne v0, v2, :cond_10f

    const-string v0, "XHDPI"

    return-object v0

    :cond_10f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x188

    if-ne v0, v2, :cond_110

    const-string v0, "XHDPI"

    return-object v0

    :cond_110
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x189

    if-ne v0, v2, :cond_111

    const-string v0, "XHDPI"

    return-object v0

    :cond_111
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18a

    if-ne v0, v2, :cond_112

    const-string v0, "XHDPI"

    return-object v0

    :cond_112
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18b

    if-ne v0, v2, :cond_113

    const-string v0, "XHDPI"

    return-object v0

    :cond_113
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18c

    if-ne v0, v2, :cond_114

    const-string v0, "XHDPI"

    return-object v0

    :cond_114
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18d

    if-ne v0, v2, :cond_115

    const-string v0, "XHDPI"

    return-object v0

    :cond_115
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18e

    if-ne v0, v2, :cond_116

    const-string v0, "XHDPI"

    return-object v0

    :cond_116
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x18f

    if-ne v0, v2, :cond_117

    const-string v0, "XHDPI"

    return-object v0

    :cond_117
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x190

    if-ne v0, v2, :cond_118

    const-string v0, "XHDPI"

    return-object v0

    :cond_118
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x191

    if-ne v0, v2, :cond_119

    const-string v0, "XHDPI"

    return-object v0

    :cond_119
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x192

    if-ne v0, v2, :cond_11a

    const-string v0, "XHDPI"

    return-object v0

    :cond_11a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x193

    if-ne v0, v2, :cond_11b

    const-string v0, "XHDPI"

    return-object v0

    :cond_11b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x194

    if-ne v0, v2, :cond_11c

    const-string v0, "XHDPI"

    return-object v0

    :cond_11c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x195

    if-ne v0, v2, :cond_11d

    const-string v0, "XHDPI"

    return-object v0

    :cond_11d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x196

    if-ne v0, v2, :cond_11e

    const-string v0, "XHDPI"

    return-object v0

    :cond_11e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x197

    if-ne v0, v2, :cond_11f

    const-string v0, "XHDPI"

    return-object v0

    :cond_11f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x198

    if-ne v0, v2, :cond_120

    const-string v0, "XHDPI"

    return-object v0

    :cond_120
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x199

    if-ne v0, v2, :cond_121

    const-string v0, "XHDPI"

    return-object v0

    :cond_121
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19a

    if-ne v0, v2, :cond_122

    const-string v0, "XHDPI"

    return-object v0

    :cond_122
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19b

    if-ne v0, v2, :cond_123

    const-string v0, "XHDPI"

    return-object v0

    :cond_123
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19c

    if-ne v0, v2, :cond_124

    const-string v0, "XHDPI"

    return-object v0

    :cond_124
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19d

    if-ne v0, v2, :cond_125

    const-string v0, "XHDPI"

    return-object v0

    :cond_125
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19e

    if-ne v0, v2, :cond_126

    const-string v0, "XHDPI"

    return-object v0

    :cond_126
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x19f

    if-ne v0, v2, :cond_127

    const-string v0, "XHDPI"

    return-object v0

    :cond_127
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a0

    if-ne v0, v2, :cond_128

    const-string v0, "XHDPI"

    return-object v0

    :cond_128
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a1

    if-ne v0, v2, :cond_129

    const-string v0, "XHDPI"

    return-object v0

    :cond_129
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a2

    if-ne v0, v2, :cond_12a

    const-string v0, "XHDPI"

    return-object v0

    :cond_12a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a3

    if-ne v0, v2, :cond_12b

    const-string v0, "XHDPI"

    return-object v0

    :cond_12b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a4

    if-ne v0, v2, :cond_12c

    const-string v0, "XHDPI"

    return-object v0

    :cond_12c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a5

    if-ne v0, v2, :cond_12d

    const-string v0, "XHDPI"

    return-object v0

    :cond_12d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a6

    if-ne v0, v2, :cond_12e

    const-string v0, "XHDPI"

    return-object v0

    :cond_12e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a7

    if-ne v0, v2, :cond_12f

    const-string v0, "XHDPI"

    return-object v0

    :cond_12f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a8

    if-ne v0, v2, :cond_130

    const-string v0, "XHDPI"

    return-object v0

    :cond_130
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1a9

    if-ne v0, v2, :cond_131

    const-string v0, "XHDPI"

    return-object v0

    :cond_131
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1aa

    if-ne v0, v2, :cond_132

    const-string v0, "XHDPI"

    return-object v0

    :cond_132
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ab

    if-ne v0, v2, :cond_133

    const-string v0, "XHDPI"

    return-object v0

    :cond_133
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ac

    if-ne v0, v2, :cond_134

    const-string v0, "XHDPI"

    return-object v0

    :cond_134
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ad

    if-ne v0, v2, :cond_135

    const-string v0, "XHDPI"

    return-object v0

    :cond_135
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ae

    if-ne v0, v2, :cond_136

    const-string v0, "XHDPI"

    return-object v0

    :cond_136
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1af

    if-ne v0, v2, :cond_137

    const-string v0, "XHDPI"

    return-object v0

    :cond_137
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b0

    if-ne v0, v2, :cond_138

    const-string v0, "XHDPI"

    return-object v0

    :cond_138
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b1

    if-ne v0, v2, :cond_139

    const-string v0, "XHDPI"

    return-object v0

    :cond_139
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b2

    if-ne v0, v2, :cond_13a

    const-string v0, "XHDPI"

    return-object v0

    :cond_13a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b3

    if-ne v0, v2, :cond_13b

    const-string v0, "XHDPI"

    return-object v0

    :cond_13b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b4

    if-ne v0, v2, :cond_13c

    const-string v0, "XHDPI"

    return-object v0

    :cond_13c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b5

    if-ne v0, v2, :cond_13d

    const-string v0, "XHDPI"

    return-object v0

    :cond_13d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b6

    if-ne v0, v2, :cond_13e

    const-string v0, "XHDPI"

    return-object v0

    :cond_13e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b7

    if-ne v0, v2, :cond_13f

    const-string v0, "XHDPI"

    return-object v0

    :cond_13f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b8

    if-ne v0, v2, :cond_140

    const-string v0, "XHDPI"

    return-object v0

    :cond_140
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1b9

    if-ne v0, v2, :cond_141

    const-string v0, "XHDPI"

    return-object v0

    :cond_141
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ba

    if-ne v0, v2, :cond_142

    const-string v0, "XHDPI"

    return-object v0

    :cond_142
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1bb

    if-ne v0, v2, :cond_143

    const-string v0, "XHDPI"

    return-object v0

    :cond_143
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1bc

    if-ne v0, v2, :cond_144

    const-string v0, "XHDPI"

    return-object v0

    :cond_144
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1bd

    if-ne v0, v2, :cond_145

    const-string v0, "XHDPI"

    return-object v0

    :cond_145
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1be

    if-ne v0, v2, :cond_146

    const-string v0, "XHDPI"

    return-object v0

    :cond_146
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1bf

    if-ne v0, v2, :cond_147

    const-string v0, "XHDPI"

    return-object v0

    :cond_147
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c0

    if-ne v0, v2, :cond_148

    const-string v0, "XHDPI"

    return-object v0

    :cond_148
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c1

    if-ne v0, v2, :cond_149

    const-string v0, "XHDPI"

    return-object v0

    :cond_149
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c2

    if-ne v0, v2, :cond_14a

    const-string v0, "XHDPI"

    return-object v0

    :cond_14a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c3

    if-ne v0, v2, :cond_14b

    const-string v0, "XHDPI"

    return-object v0

    :cond_14b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c4

    if-ne v0, v2, :cond_14c

    const-string v0, "XHDPI"

    return-object v0

    :cond_14c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c5

    if-ne v0, v2, :cond_14d

    const-string v0, "XHDPI"

    return-object v0

    :cond_14d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c6

    if-ne v0, v2, :cond_14e

    const-string v0, "XHDPI"

    return-object v0

    :cond_14e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c7

    if-ne v0, v2, :cond_14f

    const-string v0, "XHDPI"

    return-object v0

    :cond_14f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c8

    if-ne v0, v2, :cond_150

    const-string v0, "XHDPI"

    return-object v0

    :cond_150
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1c9

    if-ne v0, v2, :cond_151

    const-string v0, "XHDPI"

    return-object v0

    :cond_151
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ca

    if-ne v0, v2, :cond_152

    const-string v0, "XHDPI"

    return-object v0

    :cond_152
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1cb

    if-ne v0, v2, :cond_153

    const-string v0, "XHDPI"

    return-object v0

    :cond_153
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1cc

    if-ne v0, v2, :cond_154

    const-string v0, "XHDPI"

    return-object v0

    :cond_154
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1cd

    if-ne v0, v2, :cond_155

    const-string v0, "XHDPI"

    return-object v0

    :cond_155
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ce

    if-ne v0, v2, :cond_156

    const-string v0, "XHDPI"

    return-object v0

    :cond_156
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1cf

    if-ne v0, v2, :cond_157

    const-string v0, "XHDPI"

    return-object v0

    :cond_157
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d0

    if-ne v0, v2, :cond_158

    const-string v0, "XHDPI"

    return-object v0

    :cond_158
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d1

    if-ne v0, v2, :cond_159

    const-string v0, "XHDPI"

    return-object v0

    :cond_159
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d2

    if-ne v0, v2, :cond_15a

    const-string v0, "XHDPI"

    return-object v0

    :cond_15a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d3

    if-ne v0, v2, :cond_15b

    const-string v0, "XHDPI"

    return-object v0

    :cond_15b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d4

    if-ne v0, v2, :cond_15c

    const-string v0, "XHDPI"

    return-object v0

    :cond_15c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d5

    if-ne v0, v2, :cond_15d

    const-string v0, "XHDPI"

    return-object v0

    :cond_15d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d6

    if-ne v0, v2, :cond_15e

    const-string v0, "XHDPI"

    return-object v0

    :cond_15e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d7

    if-ne v0, v2, :cond_15f

    const-string v0, "XHDPI"

    return-object v0

    :cond_15f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d8

    if-ne v0, v2, :cond_160

    const-string v0, "XHDPI"

    return-object v0

    :cond_160
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1d9

    if-ne v0, v2, :cond_161

    const-string v0, "XHDPI"

    return-object v0

    :cond_161
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1da

    if-ne v0, v2, :cond_162

    const-string v0, "XHDPI"

    return-object v0

    :cond_162
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1db

    if-ne v0, v2, :cond_163

    const-string v0, "XHDPI"

    return-object v0

    :cond_163
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1dc

    if-ne v0, v2, :cond_164

    const-string v0, "XHDPI"

    return-object v0

    :cond_164
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1dd

    if-ne v0, v2, :cond_165

    const-string v0, "XHDPI"

    return-object v0

    :cond_165
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1de

    if-ne v0, v2, :cond_166

    const-string v0, "XHDPI"

    return-object v0

    :cond_166
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1df

    if-ne v0, v2, :cond_167

    const-string v0, "XHDPI"

    return-object v0

    :cond_167
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e0

    if-ne v0, v2, :cond_168

    const-string v0, "XXHDPI"

    return-object v0

    :cond_168
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e1

    if-ne v0, v2, :cond_169

    const-string v0, "XXHDPI"

    return-object v0

    :cond_169
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e2

    if-ne v0, v2, :cond_16a

    const-string v0, "XXHDPI"

    return-object v0

    :cond_16a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e3

    if-ne v0, v2, :cond_16b

    const-string v0, "XXHDPI"

    return-object v0

    :cond_16b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e4

    if-ne v0, v2, :cond_16c

    const-string v0, "XXHDPI"

    return-object v0

    :cond_16c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e5

    if-ne v0, v2, :cond_16d

    const-string v0, "XXHDPI"

    return-object v0

    :cond_16d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e6

    if-ne v0, v2, :cond_16e

    const-string v0, "XXHDPI"

    return-object v0

    :cond_16e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e7

    if-ne v0, v2, :cond_16f

    const-string v0, "XXHDPI"

    return-object v0

    :cond_16f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e8

    if-ne v0, v2, :cond_170

    const-string v0, "XXHDPI"

    return-object v0

    :cond_170
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1e9

    if-ne v0, v2, :cond_171

    const-string v0, "XXHDPI"

    return-object v0

    :cond_171
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ea

    if-ne v0, v2, :cond_172

    const-string v0, "XXHDPI"

    return-object v0

    :cond_172
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1eb

    if-ne v0, v2, :cond_173

    const-string v0, "XXHDPI"

    return-object v0

    :cond_173
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ec

    if-ne v0, v2, :cond_174

    const-string v0, "XXHDPI"

    return-object v0

    :cond_174
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ed

    if-ne v0, v2, :cond_175

    const-string v0, "XXHDPI"

    return-object v0

    :cond_175
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ee

    if-ne v0, v2, :cond_176

    const-string v0, "XXHDPI"

    return-object v0

    :cond_176
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ef

    if-ne v0, v2, :cond_177

    const-string v0, "XXHDPI"

    return-object v0

    :cond_177
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f0

    if-ne v0, v2, :cond_178

    const-string v0, "XXHDPI"

    return-object v0

    :cond_178
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f1

    if-ne v0, v2, :cond_179

    const-string v0, "XXHDPI"

    return-object v0

    :cond_179
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f2

    if-ne v0, v2, :cond_17a

    const-string v0, "XXHDPI"

    return-object v0

    :cond_17a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f3

    if-ne v0, v2, :cond_17b

    const-string v0, "XXHDPI"

    return-object v0

    :cond_17b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f4

    if-ne v0, v2, :cond_17c

    const-string v0, "XXHDPI"

    return-object v0

    :cond_17c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f5

    if-ne v0, v2, :cond_17d

    const-string v0, "XXHDPI"

    return-object v0

    :cond_17d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f6

    if-ne v0, v2, :cond_17e

    const-string v0, "XXHDPI"

    return-object v0

    :cond_17e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f7

    if-ne v0, v2, :cond_17f

    const-string v0, "XXHDPI"

    return-object v0

    :cond_17f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f8

    if-ne v0, v2, :cond_180

    const-string v0, "XXHDPI"

    return-object v0

    :cond_180
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1f9

    if-ne v0, v2, :cond_181

    const-string v0, "XXHDPI"

    return-object v0

    :cond_181
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fa

    if-ne v0, v2, :cond_182

    const-string v0, "XXHDPI"

    return-object v0

    :cond_182
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fb

    if-ne v0, v2, :cond_183

    const-string v0, "XXHDPI"

    return-object v0

    :cond_183
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fc

    if-ne v0, v2, :cond_184

    const-string v0, "XXHDPI"

    return-object v0

    :cond_184
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fd

    if-ne v0, v2, :cond_185

    const-string v0, "XXHDPI"

    return-object v0

    :cond_185
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1fe

    if-ne v0, v2, :cond_186

    const-string v0, "XXHDPI"

    return-object v0

    :cond_186
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x1ff

    if-ne v0, v2, :cond_187

    const-string v0, "XXHDPI"

    return-object v0

    :cond_187
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x200

    if-ne v0, v2, :cond_188

    const-string v0, "XXHDPI"

    return-object v0

    :cond_188
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x201

    if-ne v0, v2, :cond_189

    const-string v0, "XXHDPI"

    return-object v0

    :cond_189
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x202

    if-ne v0, v2, :cond_18a

    const-string v0, "XXHDPI"

    return-object v0

    :cond_18a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x203

    if-ne v0, v2, :cond_18b

    const-string v0, "XXHDPI"

    return-object v0

    :cond_18b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x204

    if-ne v0, v2, :cond_18c

    const-string v0, "XXHDPI"

    return-object v0

    :cond_18c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x205

    if-ne v0, v2, :cond_18d

    const-string v0, "XXHDPI"

    return-object v0

    :cond_18d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x206

    if-ne v0, v2, :cond_18e

    const-string v0, "XXHDPI"

    return-object v0

    :cond_18e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x207

    if-ne v0, v2, :cond_18f

    const-string v0, "XXHDPI"

    return-object v0

    :cond_18f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x208

    if-ne v0, v2, :cond_190

    const-string v0, "XXHDPI"

    return-object v0

    :cond_190
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x209

    if-ne v0, v2, :cond_191

    const-string v0, "XXHDPI"

    return-object v0

    :cond_191
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20a

    if-ne v0, v2, :cond_192

    const-string v0, "XXHDPI"

    return-object v0

    :cond_192
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20b

    if-ne v0, v2, :cond_193

    const-string v0, "XXHDPI"

    return-object v0

    :cond_193
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20c

    if-ne v0, v2, :cond_194

    const-string v0, "XXHDPI"

    return-object v0

    :cond_194
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20d

    if-ne v0, v2, :cond_195

    const-string v0, "XXHDPI"

    return-object v0

    :cond_195
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20e

    if-ne v0, v2, :cond_196

    const-string v0, "XXHDPI"

    return-object v0

    :cond_196
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x20f

    if-ne v0, v2, :cond_197

    const-string v0, "XXHDPI"

    return-object v0

    :cond_197
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x210

    if-ne v0, v2, :cond_198

    const-string v0, "XXHDPI"

    return-object v0

    :cond_198
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x211

    if-ne v0, v2, :cond_199

    const-string v0, "XXHDPI"

    return-object v0

    :cond_199
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x212

    if-ne v0, v2, :cond_19a

    const-string v0, "XXHDPI"

    return-object v0

    :cond_19a
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x213

    if-ne v0, v2, :cond_19b

    const-string v0, "XXHDPI"

    return-object v0

    :cond_19b
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x214

    if-ne v0, v2, :cond_19c

    const-string v0, "XXHDPI"

    return-object v0

    :cond_19c
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x215

    if-ne v0, v2, :cond_19d

    const-string v0, "XXHDPI"

    return-object v0

    :cond_19d
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x216

    if-ne v0, v2, :cond_19e

    const-string v0, "XXHDPI"

    return-object v0

    :cond_19e
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x217

    if-ne v0, v2, :cond_19f

    const-string v0, "XXHDPI"

    return-object v0

    :cond_19f
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x218

    if-ne v0, v2, :cond_1a0

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x219

    if-ne v0, v2, :cond_1a1

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21a

    if-ne v0, v2, :cond_1a2

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21b

    if-ne v0, v2, :cond_1a3

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21c

    if-ne v0, v2, :cond_1a4

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21d

    if-ne v0, v2, :cond_1a5

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21e

    if-ne v0, v2, :cond_1a6

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x21f

    if-ne v0, v2, :cond_1a7

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x220

    if-ne v0, v2, :cond_1a8

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x221

    if-ne v0, v2, :cond_1a9

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1a9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x222

    if-ne v0, v2, :cond_1aa

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1aa
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x223

    if-ne v0, v2, :cond_1ab

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ab
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x224

    if-ne v0, v2, :cond_1ac

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ac
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x225

    if-ne v0, v2, :cond_1ad

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ad
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x226

    if-ne v0, v2, :cond_1ae

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ae
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x227

    if-ne v0, v2, :cond_1af

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1af
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x228

    if-ne v0, v2, :cond_1b0

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x229

    if-ne v0, v2, :cond_1b1

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22a

    if-ne v0, v2, :cond_1b2

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22b

    if-ne v0, v2, :cond_1b3

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22c

    if-ne v0, v2, :cond_1b4

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22d

    if-ne v0, v2, :cond_1b5

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22e

    if-ne v0, v2, :cond_1b6

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x22f

    if-ne v0, v2, :cond_1b7

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x230

    if-ne v0, v2, :cond_1b8

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x231

    if-ne v0, v2, :cond_1b9

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1b9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x232

    if-ne v0, v2, :cond_1ba

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ba
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x233

    if-ne v0, v2, :cond_1bb

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1bb
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x234

    if-ne v0, v2, :cond_1bc

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1bc
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x235

    if-ne v0, v2, :cond_1bd

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1bd
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x236

    if-ne v0, v2, :cond_1be

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1be
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x237

    if-ne v0, v2, :cond_1bf

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1bf
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x238

    if-ne v0, v2, :cond_1c0

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x239

    if-ne v0, v2, :cond_1c1

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23a

    if-ne v0, v2, :cond_1c2

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23b

    if-ne v0, v2, :cond_1c3

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23c

    if-ne v0, v2, :cond_1c4

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23d

    if-ne v0, v2, :cond_1c5

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23e

    if-ne v0, v2, :cond_1c6

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x23f

    if-ne v0, v2, :cond_1c7

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x240

    if-ne v0, v2, :cond_1c8

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x241

    if-ne v0, v2, :cond_1c9

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1c9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x242

    if-ne v0, v2, :cond_1ca

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ca
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x243

    if-ne v0, v2, :cond_1cb

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1cb
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x244

    if-ne v0, v2, :cond_1cc

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1cc
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x245

    if-ne v0, v2, :cond_1cd

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1cd
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x246

    if-ne v0, v2, :cond_1ce

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ce
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x247

    if-ne v0, v2, :cond_1cf

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1cf
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x248

    if-ne v0, v2, :cond_1d0

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x249

    if-ne v0, v2, :cond_1d1

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24a

    if-ne v0, v2, :cond_1d2

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24b

    if-ne v0, v2, :cond_1d3

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24c

    if-ne v0, v2, :cond_1d4

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24d

    if-ne v0, v2, :cond_1d5

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24e

    if-ne v0, v2, :cond_1d6

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x24f

    if-ne v0, v2, :cond_1d7

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x250

    if-ne v0, v2, :cond_1d8

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x251

    if-ne v0, v2, :cond_1d9

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1d9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x252

    if-ne v0, v2, :cond_1da

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1da
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x253

    if-ne v0, v2, :cond_1db

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1db
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x254

    if-ne v0, v2, :cond_1dc

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1dc
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x255

    if-ne v0, v2, :cond_1dd

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1dd
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x256

    if-ne v0, v2, :cond_1de

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1de
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x257

    if-ne v0, v2, :cond_1df

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1df
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x258

    if-ne v0, v2, :cond_1e0

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x259

    if-ne v0, v2, :cond_1e1

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25a

    if-ne v0, v2, :cond_1e2

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25b

    if-ne v0, v2, :cond_1e3

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25c

    if-ne v0, v2, :cond_1e4

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25d

    if-ne v0, v2, :cond_1e5

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25e

    if-ne v0, v2, :cond_1e6

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x25f

    if-ne v0, v2, :cond_1e7

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x260

    if-ne v0, v2, :cond_1e8

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x261

    if-ne v0, v2, :cond_1e9

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1e9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x262

    if-ne v0, v2, :cond_1ea

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ea
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x263

    if-ne v0, v2, :cond_1eb

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1eb
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x264

    if-ne v0, v2, :cond_1ec

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ec
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x265

    if-ne v0, v2, :cond_1ed

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ed
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x266

    if-ne v0, v2, :cond_1ee

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ee
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x267

    if-ne v0, v2, :cond_1ef

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ef
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x268

    if-ne v0, v2, :cond_1f0

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f0
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x269

    if-ne v0, v2, :cond_1f1

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f1
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26a

    if-ne v0, v2, :cond_1f2

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f2
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26b

    if-ne v0, v2, :cond_1f3

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f3
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26c

    if-ne v0, v2, :cond_1f4

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f4
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26d

    if-ne v0, v2, :cond_1f5

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f5
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26e

    if-ne v0, v2, :cond_1f6

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f6
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x26f

    if-ne v0, v2, :cond_1f7

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f7
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x270

    if-ne v0, v2, :cond_1f8

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f8
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x271

    if-ne v0, v2, :cond_1f9

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1f9
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x272

    if-ne v0, v2, :cond_1fa

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1fa
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x273

    if-ne v0, v2, :cond_1fb

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1fb
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x274

    if-ne v0, v2, :cond_1fc

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1fc
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x275

    if-ne v0, v2, :cond_1fd

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1fd
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x276

    if-ne v0, v2, :cond_1fe

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1fe
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x277

    if-ne v0, v2, :cond_1ff

    const-string v0, "XXHDPI"

    return-object v0

    :cond_1ff
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x278

    if-ne v0, v2, :cond_200

    const-string v0, "XXHDPI"

    return-object v0

    :cond_200
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x279

    if-ne v0, v2, :cond_201

    const-string v0, "XXHDPI"

    return-object v0

    :cond_201
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27a

    if-ne v0, v2, :cond_202

    const-string v0, "XXHDPI"

    return-object v0

    :cond_202
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27b

    if-ne v0, v2, :cond_203

    const-string v0, "XXHDPI"

    return-object v0

    :cond_203
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27c

    if-ne v0, v2, :cond_204

    const-string v0, "XXHDPI"

    return-object v0

    :cond_204
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27d

    if-ne v0, v2, :cond_205

    const-string v0, "XXHDPI"

    return-object v0

    :cond_205
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27e

    if-ne v0, v2, :cond_206

    const-string v0, "XXHDPI"

    return-object v0

    :cond_206
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float v0, v0, v1

    float-to-int v0, v0

    const/16 v2, 0x27f

    if-ne v0, v2, :cond_207

    const-string v0, "XXHDPI"

    return-object v0

    :cond_207
    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

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

.method public getDisplayDiagonalInches()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget-object v1, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget-object v5, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v5}, Landroid/view/Display;->getHeight()I

    move-result v5

    int-to-float v5, v5

    iget-object v6, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

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

.method public getDisplayDpi()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDpiX()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->xdpi:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayDpiY()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->ydpi:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeight()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayHeightInches()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget-object v1, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->ydpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayLogicalDensity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayRefreshRate()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getRefreshRate()F

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayWidth()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayWidthInches()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    iget-object v1, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplay:Landroid/view/Display;

    invoke-virtual {v1}, Landroid/view/Display;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/leo/salt/extrainfo/ExtraInfo;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v2, v2, Landroid/util/DisplayMetrics;->xdpi:F

    div-float/2addr v1, v2

    float-to-double v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuArchitecture()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU architecture"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuBogoMips()Ljava/lang/String;
    .locals 1

    const-string v0, "BogoMIPS"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuDescription()Ljava/lang/String;
    .locals 1

    const-string v0, "Processor"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuFeatures()Ljava/lang/String;
    .locals 1

    const-string v0, "Features"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuField(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "cpuinfo"

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "unknown"

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "unknown"

    return-object p1
.end method

.method public getProcCpuImplementer()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU implementer"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "cpuinfo"

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuPart()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU part"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuRevision()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU revision"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcCpuVariant()Ljava/lang/String;
    .locals 1

    const-string v0, "CPU variant"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcCpuField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcMemField(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "meminfo"

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    aget-object p1, v1, p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string p1, "unknown"

    return-object p1

    :cond_3
    :goto_0
    const-string p1, "unknown"

    return-object p1
.end method

.method public getProcMemInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "meminfo"

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProcMemTotal()Ljava/lang/String;
    .locals 1

    const-string v0, "MemTotal"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcMemField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProcMemTotal(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "unknown"

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProcMemTotal()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s"

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    aget-object v4, v0, v3

    invoke-static {v4}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    aget-object v0, v0, v3

    invoke-static {v1, v2, v0, p1}, Lcom/leo/salt/extrainfo/ExtraInfoLib;->scaleData(DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getProcVersion()Ljava/lang/String;
    .locals 2

    const-string v0, "version"

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getProcVersionKernel()Ljava/lang/String;
    .locals 2

    const-string v0, "version"

    invoke-direct {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProc(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "\\s"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getProp(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "unknown"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getprop "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/leo/salt/extrainfo/ExtraInfoLib;->shellExec(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const-string p1, "[]"

    if-ne v0, p1, :cond_1

    const-string p1, "unknown"

    return-object p1

    :cond_1
    return-object v0

    :cond_2
    :goto_0
    const-string p1, "unknown"

    return-object p1
.end method

.method public getPropBootloader()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.bootloader"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropCpuAbi2()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.cpu.abi2"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropHardware()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.hardware"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPropName()Ljava/lang/String;
    .locals 1

    const-string v0, "ro.product.name"

    invoke-virtual {p0, v0}, Lcom/leo/salt/extrainfo/ExtraInfo;->getProp(Ljava/lang/String;)Ljava/lang/String;

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

    invoke-static {v2, v3, v0, p1}, Lcom/leo/salt/extrainfo/ExtraInfoLib;->scaleData(DLjava/lang/String;Ljava/lang/String;)D

    move-result-wide v2

    invoke-static {v2, v3, p2}, Lcom/leo/salt/extrainfo/ExtraInfoLib;->round(DI)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
