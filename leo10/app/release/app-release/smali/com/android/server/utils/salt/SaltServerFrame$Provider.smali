.class public Lcom/android/server/utils/salt/SaltServerFrame$Provider;
.super Ljava/lang/Object;
.source "SaltServerFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/utils/salt/SaltServerFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Provider"
.end annotation


# static fields
.field static LeoGlobal:Landroid/provider/Settings$Global;

.field static LeoSettings:Landroid/provider/Settings$System;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIntLeoGlobal(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoGlobal:Landroid/provider/Settings$Global;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLeoBoolean(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoSettings:Landroid/provider/Settings$System;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public static getLeoCustomString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "TGVvUk9N"

    invoke-static {p0}, Lcom/android/server/utils/salt/SaltServerFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public static getLeoGlobalStr(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoGlobal:Landroid/provider/Settings$Global;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLeoInt(Landroid/content/Context;Ljava/lang/String;I)I
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoSettings:Landroid/provider/Settings$System;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static getLeoString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoSettings:Landroid/provider/Settings$System;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getLeoUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoSettings:Landroid/provider/Settings$System;

    invoke-static {p0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public static putIntLeo(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoSettings:Landroid/provider/Settings$System;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public static putIntLeoGlobal(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoGlobal:Landroid/provider/Settings$Global;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    xor-int/lit8 p2, p2, 0x1

    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public putLeoGlobalStr(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/utils/salt/SaltServerFrame$Provider;->LeoGlobal:Landroid/provider/Settings$Global;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
