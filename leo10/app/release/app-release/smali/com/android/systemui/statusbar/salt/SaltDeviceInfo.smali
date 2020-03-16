.class public Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;
.super Landroid/widget/TextView;
.source "SaltDeviceInfo.java"


# static fields
.field private static final TEMP:Ljava/lang/String; = " \u2103"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mQsBarDeviceInfo:Z

.field private mQsBarDeviceInfoFont:I

.field private mQsBarDeviceInfoStyle:I

.field private mQsBarDeviceInfoSzie:I

.field private final mTemperatureReceiver:Landroid/content/BroadcastReceiver;

.field private final mTemperatureTick:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo$1;-><init>(Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    new-instance p2, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo$2;-><init>(Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mTemperatureTick:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mTemperatureTick:Ljava/lang/Runnable;

    return-object p0
.end method

.method private getBatteryTemperature()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigCenter;->getBatteryTemp()F

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " \u2103"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getCPUTemperature()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigCenter;->getCpuTemp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \u2103"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getInfoList(I)Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "cpu"

    const/4 v4, 0x4

    const-string v5, "/"

    const/4 v6, 0x2

    const-string v7, ":"

    const-string v8, " "

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "U0VDX0ZMT0FUSU5HX0ZFQVRVUkVfU0VUVElOR1NfQ09ORklHX0JSQU5EX05BTUU="

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoFloatingFature(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ro.boot.em.model"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoSystemProper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "battery_info_current"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getCurrent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "battery_info_voltage"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getVoltage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_1
    const/4 p1, 0x0

    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object p1

    const/4 v1, -0x1

    const-string v3, "level"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getBatteryCapacity(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "device_info_quantity"

    invoke-static {v2}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "% "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "device_info_capacity"

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/settingslib/salt/SaltValues;->capacityunit:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gpu_usage"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getGPUbusy(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_3
    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->GPUTempMHZ(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_4
    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getGPUModel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getNumCpuCores(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "device_cpu_nucleus"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->isCpu64(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "64"

    goto :goto_0

    :cond_0
    const-string v0, "32"

    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "device_cpu_status"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_6
    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getCpuMhz(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_7
    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->getCPUusage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_8
    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->CpuModl(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->nextalarm(Landroid/content/Context;Landroid/content/res/Resources;I)Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_a
    const-string p1, "storage_sdcard"

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RAM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->getTotalRam()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getSystemMemoryUsableSize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getTotalExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getAvailableExternalMemorySize(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_b
    invoke-static {v3}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "battery"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getCPUTemperature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getBatteryTemperature()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto/16 :goto_2

    :pswitch_c
    const-string p1, "connectivity"

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    if-eq p1, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v0, v1}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0xa

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x6

    const-string v2, "B"

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "device_info_wifi_signal"

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "%"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_2
    :goto_1
    const-string p1, "device_info_wifi_no"

    invoke-static {p1}, Lcom/android/settingslib/salt/SaltConfigCenter;->LeoString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :pswitch_d
    sget-object p1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    goto :goto_2

    :pswitch_e
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Android\uff3b"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/settingslib/salt/SaltConfigFrame;->getAndroidSDKVersion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\uff3d"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_2
    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private intInfoView(IIILjava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getInfoList(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    const/16 v1, 0x21

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    new-instance p1, Lcom/android/settingslib/salt/SaltConfigCenter$TypefaceFonts;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string v3, "sec-roboto-light"

    invoke-static {p2, p3, v3, v2}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/salt/SaltConfigCenter$TypefaceFonts;-><init>(Landroid/graphics/Typeface;)V

    invoke-virtual {v0}, Landroid/text/SpannableString;->length()I

    move-result p2

    invoke-virtual {v0, p1, v2, p2, v1}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->append(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p4}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->append(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private refresh()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mTemperatureTick:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    mul-long v2, v2, v4

    add-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method private updateSettings()V
    .locals 18

    move-object/from16 v0, p0

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoOrientation:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_0

    const v1, 0x800005

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    const v1, 0x800003

    :goto_0
    or-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v3

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setGravity(I)V

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoSize:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setTextSize(F)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setText(Ljava/lang/CharSequence;)V

    sget v4, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoOneStyle:I

    sget v5, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoOneStyleColor:I

    sget v6, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoOneStyleFont:I

    sget v7, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoTwoStyle:I

    sget v8, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoTwoStyleColor:I

    sget v9, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoTwoStyleFont:I

    sget v10, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoThreeStyle:I

    sget v11, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoThreeStyleColor:I

    sget v12, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoThreeStyleFont:I

    sget v13, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoFourStyle:I

    sget v14, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoFourStyleColor:I

    sget v15, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoFourStyleFont:I

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoList:I

    if-ne v2, v3, :cond_2

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v3, "\n"

    move/from16 v17, v13

    const/4 v13, 0x2

    if-ne v2, v13, :cond_3

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v7, v8, v9, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    goto :goto_1

    :cond_3
    const/4 v13, 0x3

    if-ne v2, v13, :cond_4

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v7, v8, v9, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v10, v11, v12, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v13, 0x4

    if-ne v2, v13, :cond_5

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v7, v8, v9, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v10, v11, v12, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    move/from16 v13, v17

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    goto :goto_1

    :cond_5
    move-object/from16 v16, v1

    move/from16 v13, v17

    const/4 v1, 0x5

    if-ne v2, v1, :cond_6

    invoke-direct {v0, v4, v5, v6, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v7, v8, v9, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v10, v11, v12, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    invoke-direct {v0, v13, v14, v15, v3}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoFiveStyle:I

    sget v2, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoFiveStyleColor:I

    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoFiveStyleFont:I

    move-object/from16 v4, v16

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->intInfoView(IIILjava/lang/String;)V

    :cond_6
    :goto_1
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setLeoDeviceInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->updateQsBarDeviceInfo()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mTemperatureReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mTemperatureTick:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setLeoDeviceInfo()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->updateQsBarDeviceInfo()V

    :cond_0
    return-void
.end method

.method public refreshQsBarDeviceInfo(ZIII)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mQsBarDeviceInfo:Z

    iput p2, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mQsBarDeviceInfoStyle:I

    iput p3, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mQsBarDeviceInfoSzie:I

    iput p4, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mQsBarDeviceInfoFont:I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->updateQsBarDeviceInfo()V

    return-void
.end method

.method public setLeoDeviceInfo()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "salt_panel_deviceInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoDeviceInfoEnabled:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->refresh()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->updateSettings()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateQsBarDeviceInfo()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "salt_qsbar_title"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mQsBarDeviceInfo:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->refresh()V

    iget v0, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mQsBarDeviceInfoStyle:I

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->getInfoList(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setText(Ljava/lang/CharSequence;)V

    const/high16 v0, 0x40400000    # 3.0f

    iget v1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mQsBarDeviceInfoSzie:I

    int-to-float v1, v1

    mul-float v1, v1, v0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setTextSize(IF)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->mQsBarDeviceInfoFont:I

    const-string v3, "sec-roboto-light"

    invoke-static {v1, v2, v3, v0}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/salt/SaltDeviceInfo;->setVisibility(I)V

    :cond_1
    :goto_0
    return-void
.end method
