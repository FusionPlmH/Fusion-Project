.class public Lcom/leo/salt/tweaks/view/widget/Appinfo;
.super Ljava/lang/Object;
.source "Appinfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;
    }
.end annotation


# instance fields
.field public appName:Ljava/lang/CharSequence;

.field public appType:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

.field public desc:Ljava/lang/CharSequence;

.field public dir:Ljava/lang/CharSequence;

.field public enabled:Ljava/lang/Boolean;

.field public enabledState:Ljava/lang/CharSequence;

.field public icon:Landroid/graphics/drawable/Drawable;

.field public packageName:Ljava/lang/CharSequence;

.field public path:Ljava/lang/CharSequence;

.field public selectState:Ljava/lang/Boolean;

.field public updated:Ljava/lang/Boolean;

.field public versionCode:I

.field public versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appName:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->packageName:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabledState:Ljava/lang/CharSequence;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->selectState:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->path:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->dir:Ljava/lang/CharSequence;

    iput-object v2, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->enabled:Ljava/lang/Boolean;

    iput-object v2, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->updated:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->versionName:Ljava/lang/String;

    iput v1, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->versionCode:I

    sget-object v0, Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;->UNKNOW:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    iput-object v0, p0, Lcom/leo/salt/tweaks/view/widget/Appinfo;->appType:Lcom/leo/salt/tweaks/view/widget/Appinfo$AppType;

    return-void
.end method

.method public static getItem()Lcom/leo/salt/tweaks/view/widget/Appinfo;
    .locals 1

    new-instance v0, Lcom/leo/salt/tweaks/view/widget/Appinfo;

    invoke-direct {v0}, Lcom/leo/salt/tweaks/view/widget/Appinfo;-><init>()V

    return-object v0
.end method
