.class public Lcom/android/systemui/bar/DataUsageBar;
.super Lcom/android/systemui/bar/QSBarItem;
.source "DataUsageBar.java"

# interfaces
.implements Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;


# static fields
.field public static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "DataUsageBar"


# instance fields
.field private mContext:Landroid/content/Context;

.field public mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x3

    const-string v1, "DataUsageBar"

    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/bar/DataUsageBar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/systemui/bar/QSBarItem;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    new-instance v0, Lcom/android/systemui/bar/DataUsageBar$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/DataUsageBar$1;-><init>(Lcom/android/systemui/bar/DataUsageBar;)V

    iput-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Lcom/android/settingslib/salt/utils/LeoReceiver;

    invoke-direct {v1, p0}, Lcom/android/settingslib/salt/utils/LeoReceiver;-><init>(Lcom/android/settingslib/salt/utils/LeoReceiver$BroadcastListener;)V

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private getBarVisibility()Z
    .locals 3

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsDataUsageBarEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getActiveSimCount(Landroid/content/Context;)I

    move-result v0

    sget-boolean v1, Lcom/android/systemui/bar/DataUsageBar;->DEBUG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBarVisibility activeSimCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DataUsageBar"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/systemui/bar/DataUsageBar;->DEBUG:Z

    return v0
.end method

.method private setColorChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSDataUsageColorEnabled:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSDataUsageColor:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    const-string v1, "color/data_usage_text_color"

    invoke-static {v1}, Lcom/android/settingslib/salt/SaltConfigFrame;->getLeoUIResource(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/DataUsageView;->setTextColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/bar/DataUsageBar;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public getBarHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public hideShowingExpandedBar(Z)V
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->getBarVisibility()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 2

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget-boolean v0, Lcom/android/systemui/bar/DataUsageBar;->DEBUG:Z

    const/4 v1, 0x0

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    iget-object p1, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/qs/DataUsageView;

    iput-object p1, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p0}, Lcom/android/systemui/bar/DataUsageBar;->updateDataUsageBar()V

    iget-object p1, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isShowingWhenExpanded()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    sget-boolean v0, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQsDataUsageBarExpandedEnabled:Z

    return v0
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->setColorChanged()V

    return-void
.end method

.method public onLeoChange(Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"

    invoke-static {v0}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/bar/DataUsageBar;->updateDataUsageBar()V

    :cond_0
    return-void
.end method

.method public refreshQsBar()V
    .locals 0

    return-void
.end method

.method public updateDataUsageBar()V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/salt/utils/LeoManages;->LeoSysUiManages(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    if-eqz v0, :cond_2

    sget v1, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSDataUsageOrientation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const v1, 0x800005

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    goto :goto_0

    :cond_1
    const v1, 0x800003

    :goto_0
    sget v3, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSDataUsageSize:I

    sget v4, Lcom/android/settingslib/salt/utils/LeoManages;->setLeoQSDataUsageFont:I

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/DataUsageView;->setTextSize(F)V

    iget-object v3, p0, Lcom/android/systemui/bar/DataUsageBar;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const-string v6, "sec-roboto-condensed"

    invoke-static {v3, v4, v6, v5}, Lcom/android/settingslib/salt/SaltConfigCenter;->setLeoTextFont(Landroid/content/Context;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/qs/DataUsageView;->setTypeface(Landroid/graphics/Typeface;)V

    or-int/lit8 v1, v1, 0x10

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/DataUsageView;->setGravity(I)V

    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->getBarVisibility()Z

    return-void
.end method

.method public updateVisibility()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-direct {p0}, Lcom/android/systemui/bar/DataUsageBar;->getBarVisibility()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/bar/DataUsageBar;->mQSCallback:Lcom/android/systemui/bar/QSBarItem$QSCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/QSBarItem$QSCallback;->onQSHeightChanged()V

    :cond_2
    return-void
.end method
