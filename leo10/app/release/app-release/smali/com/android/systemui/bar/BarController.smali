.class public Lcom/android/systemui/bar/BarController;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/bar/BarController$QSBarCallback;
    }
.end annotation


# static fields
.field public static final BAR_ITEM_TAG:Ljava/lang/String; = "BarItem"

.field private static final TAG:Ljava/lang/String; = "BarController"


# instance fields
.field private final BAR_ITEM_TYPE_QS:Ljava/lang/String;

.field private final BAR_ITEM_TYPE_SCROLLABLE:Ljava/lang/String;

.field public mBars:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Lcom/android/systemui/bar/BarItem;",
            ">;"
        }
    .end annotation
.end field

.field public mContext:Landroid/content/Context;

.field private mCurrentOrientation:I

.field private mExpandedFraction:F

.field public mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

.field public mHiddenExpandedBarsHeight:I

.field private mOnTopQSBarsHeight:I

.field protected mQSBarCallback:Lcom/android/systemui/bar/BarController$QSBarCallback;

.field public mQSTileLayoutTop:I

.field private mQsDisabled:Z

.field public mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field public mQuickQSPanelTop:I

.field private mShowButtonBackground:Z

.field private mStackScroller:Landroid/view/ViewGroup;

.field private final mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mStatusBarState:I

.field public mUselessHiddenExpandedBarsHeight:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/ScrimController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p3, "QSBarItem"

    iput-object p3, p0, Lcom/android/systemui/bar/BarController;->BAR_ITEM_TYPE_QS:Ljava/lang/String;

    const-string p3, "ScrollableBarItem"

    iput-object p3, p0, Lcom/android/systemui/bar/BarController;->BAR_ITEM_TYPE_SCROLLABLE:Ljava/lang/String;

    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p3, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    iput-boolean p3, p0, Lcom/android/systemui/bar/BarController;->mShowButtonBackground:Z

    iput p3, p0, Lcom/android/systemui/bar/BarController;->mUselessHiddenExpandedBarsHeight:I

    iput-object p2, p0, Lcom/android/systemui/bar/BarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object p1, p0, Lcom/android/systemui/bar/BarController;->mContext:Landroid/content/Context;

    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/ConfigurationController;->addCallback(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/android/systemui/bar/BarController;->refreshBarList()V

    return-void
.end method

.method private addAllBarItems(Ljava/lang/String;Z)V
    .locals 6

    const-string v0, "QSBarItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/bar/BarController;->mStackScroller:Landroid/view/ViewGroup;

    :goto_0
    if-eqz v1, :cond_7

    iget-object v2, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bar/BarItem;

    iget-object v4, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-ne v1, v4, :cond_2

    instance-of v4, v3, Lcom/android/systemui/bar/QSBarItem;

    if-nez v4, :cond_3

    :cond_2
    iget-object v4, p0, Lcom/android/systemui/bar/BarController;->mStackScroller:Landroid/view/ViewGroup;

    if-ne v1, v4, :cond_1

    instance-of v4, v3, Lcom/android/systemui/bar/ScrollableBarItem;

    if-eqz v4, :cond_1

    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/systemui/bar/BarItem;->TAG:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BarController"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v1, p2}, Lcom/android/systemui/bar/BarItem;->inflateViews(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    instance-of v5, v3, Lcom/android/systemui/bar/ScrollableBarItem;

    if-eqz v5, :cond_4

    move-object v5, v3

    check-cast v5, Lcom/android/systemui/bar/ScrollableBarItem;

    invoke-virtual {v5, v1}, Lcom/android/systemui/bar/ScrollableBarItem;->getScrollableBarItemView(Landroid/view/ViewGroup;)Lcom/android/systemui/bar/ScrollableBarItemView;

    :cond_4
    const-string v5, "BarItem"

    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    if-ne v1, v5, :cond_5

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v5

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v3}, Lcom/android/systemui/bar/QSBarItem;->isShowingWhenExpanded()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->isKeyguardShowing()Z

    move-result v4

    if-eqz v4, :cond_6

    iget v4, p0, Lcom/android/systemui/bar/BarController;->mStatusBarState:I

    invoke-virtual {v3, v4}, Lcom/android/systemui/bar/QSBarItem;->setStatusBarState(I)V

    :cond_6
    iget v4, p0, Lcom/android/systemui/bar/BarController;->mExpandedFraction:F

    invoke-virtual {v3, v4}, Lcom/android/systemui/bar/QSBarItem;->setPosition(F)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method private createBarItem(Ljava/lang/String;)Lcom/android/systemui/bar/BarItem;
    .locals 6

    const-string v0, "BarController"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "com.android.systemui.bar."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "Bar"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createBar "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/systemui/bar/BarController;->mContext:Landroid/content/Context;

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    instance-of p1, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz p1, :cond_0

    move-object p1, v1

    check-cast p1, Lcom/android/systemui/bar/QSBarItem;

    new-instance v0, Lcom/android/systemui/bar/BarController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/bar/BarController$1;-><init>(Lcom/android/systemui/bar/BarController;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/bar/QSBarItem;->setQSCallback(Lcom/android/systemui/bar/QSBarItem$QSCallback;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bar/BarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, p1}, Lcom/android/systemui/bar/BarItem;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    :cond_1
    return-object v1
.end method

.method private isKeyguardShowing()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getBarState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isLandscape()Z
    .locals 2

    iget v0, p0, Lcom/android/systemui/bar/BarController;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadBarSpecs(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private removeAllBarItems(Ljava/lang/String;)V
    .locals 3

    const-string v0, "QSBarItem"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bar/BarController;->mStackScroller:Landroid/view/ViewGroup;

    :goto_0
    if-eqz p1, :cond_3

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    const-string v2, "BarItem"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeViewAt(I)V

    move v0, v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private replaceAllBarItems(Z)V
    .locals 1

    const-string v0, "QSBarItem"

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->removeAllBarItems(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/BarController;->addAllBarItems(Ljava/lang/String;Z)V

    const-string v0, "ScrollableBarItem"

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->removeAllBarItems(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/BarController;->addAllBarItems(Ljava/lang/String;Z)V

    return-void
.end method

.method private updateBarHeight()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/systemui/bar/BarController;->calculateOnTopQSBarsHeight()V

    invoke-virtual {p0}, Lcom/android/systemui/bar/BarController;->calculateHiddenExpandedBarsHeight()V

    return-void
.end method


# virtual methods
.method public calculateHiddenExpandedBarsHeight()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/systemui/bar/BarController;->mHiddenExpandedBarsHeight:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/bar/BarItem;

    instance-of v4, v3, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v4, :cond_1

    check-cast v3, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v3}, Lcom/android/systemui/bar/QSBarItem;->isShowingWhenExpanded()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Lcom/android/systemui/bar/QSBarItem;->getBarHeight()I

    move-result v3

    add-int/2addr v2, v3

    goto :goto_0

    :cond_2
    iput v2, p0, Lcom/android/systemui/bar/BarController;->mHiddenExpandedBarsHeight:I

    iput v1, p0, Lcom/android/systemui/bar/BarController;->mUselessHiddenExpandedBarsHeight:I

    return-void
.end method

.method public calculateOnTopQSBarsHeight()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput v1, p0, Lcom/android/systemui/bar/BarController;->mOnTopQSBarsHeight:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/bar/BarItem;

    instance-of v3, v2, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v3, :cond_1

    check-cast v2, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v2}, Lcom/android/systemui/bar/QSBarItem;->isOnTop()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2}, Lcom/android/systemui/bar/QSBarItem;->getBarHeight()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_2
    iput v1, p0, Lcom/android/systemui/bar/BarController;->mOnTopQSBarsHeight:I

    return-void
.end method

.method public disable(IIZ)V
    .locals 0

    const/4 p1, 0x1

    and-int/2addr p2, p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget-boolean p2, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    if-eq p1, p2, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->updateBarHeight()V

    :cond_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/systemui/bar/BarItem;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getBarItem(Ljava/lang/String;)Lcom/android/systemui/bar/BarItem;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/bar/BarItem;

    return-object p1
.end method

.method public getHiddenExpandedBarsHeight()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/BarController;->mHiddenExpandedBarsHeight:I

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public getOnTopQSBarsHeight()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/bar/BarController;->mQsDisabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/BarController;->mOnTopQSBarsHeight:I

    :goto_0
    return v0
.end method

.method public getQSBarsTranslation()I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->isKeyguardShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/bar/BarController;->mOnTopQSBarsHeight:I

    :goto_0
    return v0
.end method

.method public onColorChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v1, p1}, Lcom/android/systemui/bar/QSBarItem;->onColorChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p0, Lcom/android/systemui/bar/BarController;->mCurrentOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_2

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/bar/BarController;->mCurrentOrientation:I

    iget-object p1, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bar/BarItem;

    instance-of v1, v0, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/bar/QSBarItem;

    iget v1, p0, Lcom/android/systemui/bar/BarController;->mCurrentOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/systemui/bar/QSBarItem;->onOrientationChanged(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->updateBarHeight()V

    :cond_2
    return-void
.end method

.method public onPanelHeightUpdated(FI)V
    .locals 3

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->isKeyguardShowing()Z

    move-result v0

    if-nez v0, :cond_0

    int-to-float p2, p2

    const v0, 0x3f333333    # 0.7f

    mul-float v0, v0, p2

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    sub-float/2addr p2, v0

    div-float/2addr p1, p2

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(FF)F

    iget-object p1, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bar/BarItem;

    instance-of p2, p2, Lcom/android/systemui/bar/QSBarItem;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onQsClosed()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    invoke-virtual {v1}, Lcom/android/systemui/bar/BarItem;->onQsClosed()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public refreshBarList()V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bar specs newValue :  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "BarController"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/android/systemui/bar/BarController;->loadBarSpecs(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bar specs :  "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v4, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/bar/BarItem;

    if-nez v4, :cond_1

    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/systemui/bar/BarController;->createBarItem(Ljava/lang/String;)Lcom/android/systemui/bar/BarItem;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error creating tile for spec: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_1
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/android/systemui/bar/BarItem;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v1, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcom/android/systemui/bar/BarItem;->destroy()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->replaceAllBarItems(Z)V

    invoke-direct {p0}, Lcom/android/systemui/bar/BarController;->updateBarHeight()V

    return-void
.end method

.method public saltQsBarRefresh()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v1}, Lcom/android/systemui/bar/QSBarItem;->refreshQsBar()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHeader(Lcom/android/systemui/qs/SecQuickStatusBarHeader;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BarController;->mHeader:Lcom/android/systemui/qs/SecQuickStatusBarHeader;

    return-void
.end method

.method public setListening(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v1, p1}, Lcom/android/systemui/bar/QSBarItem;->setListening(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPosition(F)V
    .locals 2

    iput p1, p0, Lcom/android/systemui/bar/BarController;->mExpandedFraction:F

    iget-object p1, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/bar/BarItem;

    instance-of v1, v0, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/android/systemui/bar/QSBarItem;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setQSBarCallback(Lcom/android/systemui/bar/BarController$QSBarCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BarController;->mQSBarCallback:Lcom/android/systemui/bar/BarController$QSBarCallback;

    return-void
.end method

.method public setQSPanel(Landroid/view/ViewGroup;)V
    .locals 2

    const-string v0, "QSBarItem"

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->removeAllBarItems(Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/qs/QSPanel;

    iput-object p1, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object p1, p0, Lcom/android/systemui/bar/BarController;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    new-instance v1, Lcom/android/systemui/bar/BarController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/bar/BarController$2;-><init>(Lcom/android/systemui/bar/BarController;)V

    invoke-virtual {p1, v1}, Lcom/android/systemui/qs/QSPanel;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    const/4 p1, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/BarController;->addAllBarItems(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/android/systemui/bar/BarController;->calculateOnTopQSBarsHeight()V

    invoke-virtual {p0}, Lcom/android/systemui/bar/BarController;->calculateHiddenExpandedBarsHeight()V

    const-string v0, "ScrollableBarItem"

    invoke-direct {p0, v0}, Lcom/android/systemui/bar/BarController;->removeAllBarItems(Ljava/lang/String;)V

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/bar/BarController;->addAllBarItems(Ljava/lang/String;Z)V

    return-void
.end method

.method public setStatusBarState(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/bar/BarController;->mStatusBarState:I

    iget-object v0, p0, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/bar/BarItem;

    instance-of v2, v1, Lcom/android/systemui/bar/QSBarItem;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/android/systemui/bar/QSBarItem;

    invoke-virtual {v1, p1}, Lcom/android/systemui/bar/QSBarItem;->setStatusBarState(I)V

    goto :goto_0

    :cond_1
    return-void
.end method
