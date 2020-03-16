.class public Lcom/leo/salt/utils/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/utils/AppInfo$AppType;
    }
.end annotation


# instance fields
.field public appName:Ljava/lang/CharSequence;

.field public appType:Lcom/leo/salt/utils/AppInfo$AppType;

.field public desc:Ljava/lang/CharSequence;

.field public dir:Ljava/lang/CharSequence;

.field public enabled:Ljava/lang/Boolean;

.field public enabledState:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public mAppName:Ljava/lang/String;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIntent:Landroid/content/Intent;

.field public mPackageName:Ljava/lang/String;

.field public packageName:Ljava/lang/CharSequence;

.field public path:Ljava/lang/CharSequence;

.field public selectState:Ljava/lang/Boolean;

.field public versionCode:I

.field public versionName:Ljava/lang/String;

.field public wranState:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/utils/AppInfo;->appName:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/utils/AppInfo;->packageName:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/leo/salt/utils/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/utils/AppInfo;->enabledState:Ljava/lang/CharSequence;

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/utils/AppInfo;->wranState:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/utils/AppInfo;->selectState:Ljava/lang/Boolean;

    const-string v1, ""

    iput-object v1, p0, Lcom/leo/salt/utils/AppInfo;->path:Ljava/lang/CharSequence;

    const-string v1, ""

    iput-object v1, p0, Lcom/leo/salt/utils/AppInfo;->dir:Ljava/lang/CharSequence;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/leo/salt/utils/AppInfo;->enabled:Ljava/lang/Boolean;

    const-string v1, ""

    iput-object v1, p0, Lcom/leo/salt/utils/AppInfo;->versionName:Ljava/lang/String;

    iput v0, p0, Lcom/leo/salt/utils/AppInfo;->versionCode:I

    sget-object v0, Lcom/leo/salt/utils/AppInfo$AppType;->UNKNOW:Lcom/leo/salt/utils/AppInfo$AppType;

    iput-object v0, p0, Lcom/leo/salt/utils/AppInfo;->appType:Lcom/leo/salt/utils/AppInfo$AppType;

    return-void
.end method

.method public static getItem()Lcom/leo/salt/utils/AppInfo;
    .locals 1

    new-instance v0, Lcom/leo/salt/utils/AppInfo;

    invoke-direct {v0}, Lcom/leo/salt/utils/AppInfo;-><init>()V

    return-object v0
.end method
