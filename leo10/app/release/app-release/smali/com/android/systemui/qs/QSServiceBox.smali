.class public Lcom/android/systemui/qs/QSServiceBox;
.super Landroid/widget/FrameLayout;
.source "QSServiceBox.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# instance fields
.field private mBadgeBackground:Landroid/widget/LinearLayout;

.field private mBadgeText:Landroid/widget/TextView;

.field private mContactUsMenu:Landroid/view/MenuItem;

.field public mContext:Landroid/content/Context;

.field private mLeoButton:Landroid/widget/ImageButton;

.field protected mLeoButtonContainer:Landroid/view/View;

.field private mSearchButton:Landroid/widget/ImageButton;

.field protected mSearchButtonContainer:Landroid/view/View;

.field private mSettingsButton:Landroid/widget/ImageButton;

.field protected mSettingsContainer:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private dismissScreenGridDialog()V
    .locals 0

    return-void
.end method

.method static lambda$onClick$1()V
    .locals 0

    return-void
.end method

.method private launchNotiSettings()V
    .locals 0

    return-void
.end method

.method private setLeoStartAction(I)V
    .locals 2

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->startSearchActivity()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->startSettingsActivity()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->launchNotiSettings()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    const/16 v1, 0xcd

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private showScreenGridDialog()V
    .locals 0

    return-void
.end method

.method private startSearchActivity()V
    .locals 0

    return-void
.end method

.method private startSettingsActivity()V
    .locals 0

    return-void
.end method

.method private updateCustomTileBadgeState(Ljava/lang/String;I)V
    .locals 0

    return-void
.end method

.method private updateLeoQSButton()V
    .locals 0

    return-void
.end method


# virtual methods
.method public getCurrentBixbySettings()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected hideQSPopupMenu()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->dismissScreenGridDialog()V

    return-void
.end method

.method public isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "QSServiceBox"

    const/4 v1, 0x0

    if-nez p2, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, p2, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Installed - "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NOT Installed - "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isSfinderEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isSupportContactUs(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public launchContactUsApp(Landroid/content/Context;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    return-void
.end method

.method public onCustomTileListChanged(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCustomTileListChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QSServiceBox"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/QSServiceBox;->updateCustomTileBadgeState(Ljava/lang/String;I)V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDetachedFromWindowInternal()V
    .locals 0

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-direct {p0}, Lcom/android/systemui/qs/QSServiceBox;->updateLeoQSButton()V

    return-void
.end method

.method public onNotificationSumChanged(I)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public onUserInfoChanged(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method

.method public setExpanded(Z)V
    .locals 0

    return-void
.end method

.method public setLeoClickAction(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mContext:Landroid/content/Context;

    if-nez p1, :cond_0

    const/16 p1, 0xd3

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const/16 p1, 0xeb

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    const/16 p1, 0xe7

    :cond_2
    :goto_0
    const-string v1, "QSServiceBox"

    const-string v2, "StartLeoButtonAction"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/android/settingslib/salt/SaltConfigFrame;->setLeoAction(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 2

    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-virtual {p1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    const-class p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v0, 0x29

    invoke-virtual {p1, v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result p1

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/16 v1, 0x2a

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mSearchButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSServiceBox;->mLeoButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setColorFilter(I)V

    :cond_1
    return-void
.end method
