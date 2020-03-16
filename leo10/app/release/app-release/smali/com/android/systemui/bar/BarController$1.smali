.class Lcom/android/systemui/bar/BarController$1;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Lcom/android/systemui/bar/QSBarItem$QSCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/BarController;->createBarItem(Ljava/lang/String;)Lcom/android/systemui/bar/BarItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/bar/BarController;


# direct methods
.method constructor <init>(Lcom/android/systemui/bar/BarController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/bar/BarController$1;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBarLayoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BarController$1;->this$0:Lcom/android/systemui/bar/BarController;

    iget-object v0, v0, Lcom/android/systemui/bar/BarController;->mQSBarCallback:Lcom/android/systemui/bar/BarController$QSBarCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BarController$1;->this$0:Lcom/android/systemui/bar/BarController;

    iget-object v0, v0, Lcom/android/systemui/bar/BarController;->mQSBarCallback:Lcom/android/systemui/bar/BarController$QSBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/BarController$QSBarCallback;->onQSBarLayoutChanged()V

    :cond_0
    return-void
.end method

.method public onBarSpecChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BarController$1;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/bar/BarController;->refreshBarList()V

    return-void
.end method

.method public onQSHeightChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/bar/BarController$1;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/bar/BarController;->calculateOnTopQSBarsHeight()V

    iget-object v0, p0, Lcom/android/systemui/bar/BarController$1;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-virtual {v0}, Lcom/android/systemui/bar/BarController;->calculateHiddenExpandedBarsHeight()V

    iget-object v0, p0, Lcom/android/systemui/bar/BarController$1;->this$0:Lcom/android/systemui/bar/BarController;

    iget-object v0, v0, Lcom/android/systemui/bar/BarController;->mQSBarCallback:Lcom/android/systemui/bar/BarController$QSBarCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/bar/BarController$1;->this$0:Lcom/android/systemui/bar/BarController;

    iget-object v0, v0, Lcom/android/systemui/bar/BarController;->mQSBarCallback:Lcom/android/systemui/bar/BarController$QSBarCallback;

    invoke-interface {v0}, Lcom/android/systemui/bar/BarController$QSBarCallback;->onQSBarHeightChanged()V

    :cond_0
    return-void
.end method
