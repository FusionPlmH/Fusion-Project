.class public Lcom/leo/salt/tools/constants/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tools/constants/AppInfo$AppType;
    }
.end annotation


# instance fields
.field public appName:Ljava/lang/CharSequence;

.field public appType:Lcom/leo/salt/tools/constants/AppInfo$AppType;

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
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppInfo;->appName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppInfo;->packageName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/leo/salt/tools/constants/AppInfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppInfo;->enabledState:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppInfo;->wranState:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/leo/salt/tools/constants/AppInfo;->selectState:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppInfo;->path:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppInfo;->dir:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/leo/salt/tools/constants/AppInfo;->enabled:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppInfo;->versionName:Ljava/lang/String;

    iput v1, p0, Lcom/leo/salt/tools/constants/AppInfo;->versionCode:I

    sget-object v0, Lcom/leo/salt/tools/constants/AppInfo$AppType;->UNKNOW:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    iput-object v0, p0, Lcom/leo/salt/tools/constants/AppInfo;->appType:Lcom/leo/salt/tools/constants/AppInfo$AppType;

    return-void
.end method

.method public static getItem()Lcom/leo/salt/tools/constants/AppInfo;
    .locals 1

    new-instance v0, Lcom/leo/salt/tools/constants/AppInfo;

    invoke-direct {v0}, Lcom/leo/salt/tools/constants/AppInfo;-><init>()V

    return-object v0
.end method
