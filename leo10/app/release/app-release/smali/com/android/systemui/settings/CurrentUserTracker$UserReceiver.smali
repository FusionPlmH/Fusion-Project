.class Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CurrentUserTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/settings/CurrentUserTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UserReceiver"
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;


# instance fields
.field private mAppContext:Landroid/content/Context;

.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mCurrentUserId:I

.field private mReceiverRegistered:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->addTracker(Ljava/util/function/Consumer;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->removeTracker(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private addTracker(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;
    .locals 1

    sget-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    :cond_0
    sget-object p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->sInstance:Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;

    return-object p0
.end method

.method private notifyUserSwitched(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    new-instance p1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/Consumer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removeTracker(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCallbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mAppContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mReceiverRegistered:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentUserId()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/settings/CurrentUserTracker$UserReceiver;->mCurrentUserId:I

    return v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    return-void
.end method
