.class public Lcom/android/settingslib/salt/SaltConfigFrame$Prefs;
.super Ljava/lang/Object;
.source "SaltConfigFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/salt/SaltConfigFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Prefs"
.end annotation


# static fields
.field public static final LAST_BATTERY_LEVEL:Ljava/lang/String; = "last_battery_level"

.field private static final SHARED_PREFS_NAME:Ljava/lang/String; = "status_bar"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;
    .locals 2

    const-string v0, "status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    return-object p0
.end method

.method public static getLastBatteryLevel(Landroid/content/Context;)I
    .locals 2

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltConfigFrame$Prefs;->read(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "last_battery_level"

    const/16 v1, 0x32

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static read(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2

    const-string v0, "status_bar"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public static setLastBatteryLevel(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p0}, Lcom/android/settingslib/salt/SaltConfigFrame$Prefs;->edit(Landroid/content/Context;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "last_battery_level"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
