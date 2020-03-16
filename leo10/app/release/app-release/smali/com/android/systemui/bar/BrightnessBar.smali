.class public Lcom/android/systemui/bar/BrightnessBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "BrightnessBar.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# static fields
.field public static final BNR_QS_BRIGHTNESS_ON_TOP:Ljava/lang/String; = "brightness_on_top"

.field public static final BNR_QS_TAG:Ljava/lang/String; = "BrightnessOnTop"

.field public static final BRIGHTNESS_ON_TOP:Ljava/lang/String; = "brightness_on_top"

.field private static final TAG:Ljava/lang/String; = "BrightnessBar"


# instance fields
.field private mBrightnessDetailIcon:Landroid/widget/ImageView;

.field private mBrightnessMirrorVisible:Z

.field private mContext:Landroid/content/Context;

.field public mIsBrightnessOnTop:Z

.field private mListening:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mIsBrightnessOnTop:Z

    iput-object p1, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    return-void
.end method

.method public getBarHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/bar/BrightnessBar;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(Lorg/xmlpull/v1/XmlPullParser;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/bar/BrightnessBar;->mBarRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public refreshQsBar()V
    .locals 0

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 1

    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/bar/BrightnessBar;->mBrightnessDetailIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_0
    return-void
.end method
