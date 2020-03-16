.class Lcom/android/systemui/bar/DataUsageBar$1;
.super Landroid/content/BroadcastReceiver;
.source "DataUsageBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/bar/DataUsageBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/DataUsageBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/DataUsageBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    sget-boolean p2, Lcom/android/systemui/bar/DataUsageBar;->DEBUG:Z

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DataUsageBar"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string p2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    invoke-virtual {p2}, Lcom/android/systemui/bar/DataUsageBar;->updateVisibility()V

    goto :goto_0

    :cond_1
    const-string p2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object p2, p2, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p2}, Lcom/android/systemui/qs/DataUsageView;->updateCurrentDataSubId()V

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object p2, p2, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object p2, p2, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object p2, p2, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p2}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    goto :goto_0

    :cond_2
    const-string p2, "com.samsung.systemui.statusbar.ANIMATING"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object p2, p2, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object p2, p2, Lcom/android/systemui/bar/DataUsageBar;->mBarRootView:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    iget-object p2, p2, Lcom/android/systemui/bar/DataUsageBar;->mDataUsageView:Lcom/android/systemui/qs/DataUsageView;

    invoke-virtual {p2}, Lcom/android/systemui/qs/DataUsageView;->updateUsageInfo()V

    :cond_3
    :goto_0
    const-string p2, "U0FMVF9VUERBVEVfUVNCQVJfREFUQVVTQUdFX1NFVFRJTkdT"

    invoke-static {p2}, Lcom/android/settingslib/salt/SaltConfigFrame;->rt100foleo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/systemui/bar/DataUsageBar$1;->this$0:Lcom/android/systemui/bar/DataUsageBar;

    invoke-virtual {p1}, Lcom/android/systemui/bar/DataUsageBar;->updateDataUsageBar()V

    :cond_4
    return-void
.end method
