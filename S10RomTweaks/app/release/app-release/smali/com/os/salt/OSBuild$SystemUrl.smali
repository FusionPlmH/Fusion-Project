.class public Lcom/os/salt/OSBuild$SystemUrl;
.super Ljava/lang/Object;
.source "OSBuild.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/os/salt/OSBuild;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemUrl"
.end annotation


# static fields
.field public static RootSystemABUrl:Ljava/lang/String; = "/system_root/system/"

.field public static SystemUrl:Ljava/lang/String; = "/system/"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ChineseCSC()Z
    .locals 2

    const-string v0, "ro.csc.sales_code"

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemPropString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CHC"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static FloatingFature(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static LeoDonate()Z
    .locals 2

    const-string v0, "ro.leo.os.vip.donate"

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemPropString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static LeoDonateUnlock()Z
    .locals 2

    invoke-static {}, Lcom/os/salt/OSBuild$SystemUrl;->LeoDonate()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ro.leo.ota.mdec"

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemPropString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MHgyNTgwMjU4TDkyNDg2MTgzNTZlMjQ3MDkxNDc4bzk2Mw=="

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static Phonebootloader(I)Ljava/lang/String;
    .locals 2

    const-string v0, "ro.boot.bootloader"

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemProperties;->getLeoSystemPropString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static SystemABUrl()Ljava/lang/String;
    .locals 2

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/os/salt/OSBuild$SystemUrl;->Phonebootloader(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "G97"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/os/salt/OSBuild$SystemUrl;->RootSystemABUrl:Ljava/lang/String;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/os/salt/OSBuild$SystemUrl;->SystemUrl:Ljava/lang/String;

    :goto_0
    return-object v0
.end method
