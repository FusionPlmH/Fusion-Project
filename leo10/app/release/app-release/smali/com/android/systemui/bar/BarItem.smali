.class public abstract Lcom/android/systemui/bar/BarItem;
.super Ljava/lang/Object;
.source "BarItem.java"


# instance fields
.field public final TAG:Ljava/lang/String;

.field protected mContext:Landroid/content/Context;

.field protected mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bar."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/bar/BarItem;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public abstract inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
.end method

.method public abstract isAvailable()Z
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onQsClosed()V
    .locals 0

    return-void
.end method

.method public setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BarItem;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method
