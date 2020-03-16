.class Lcom/android/systemui/bar/BarController$2;
.super Ljava/lang/Object;
.source "BarController.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/bar/BarController;->setQSPanel(Landroid/view/ViewGroup;)V
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

    iput-object p1, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p1, p1, Lcom/android/systemui/bar/BarController;->mQSTileLayoutTop:I

    const/4 p2, 0x1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p1, p1, Lcom/android/systemui/bar/BarController;->mQuickQSPanelTop:I

    if-eq p1, p2, :cond_3

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    const/4 p3, 0x0

    iput p3, p1, Lcom/android/systemui/bar/BarController;->mQSTileLayoutTop:I

    iput p2, p1, Lcom/android/systemui/bar/BarController;->mQuickQSPanelTop:I

    iget p1, p1, Lcom/android/systemui/bar/BarController;->mQSTileLayoutTop:I

    iget-object p2, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p2, p2, Lcom/android/systemui/bar/BarController;->mHiddenExpandedBarsHeight:I

    add-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p2, p2, Lcom/android/systemui/bar/BarController;->mUselessHiddenExpandedBarsHeight:I

    sub-int/2addr p1, p2

    iget-object p2, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p2, p2, Lcom/android/systemui/bar/BarController;->mQuickQSPanelTop:I

    if-le p2, p1, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "qqsPanelTop = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p4, p4, Lcom/android/systemui/bar/BarController;->mQuickQSPanelTop:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", tileLayoutTop = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p4, p4, Lcom/android/systemui/bar/BarController;->mQSTileLayoutTop:I

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, ", threshold = "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mHiddenExpandedBarsHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p3, p3, Lcom/android/systemui/bar/BarController;->mHiddenExpandedBarsHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mUselessHiddenExpandedBarsHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p3, p3, Lcom/android/systemui/bar/BarController;->mUselessHiddenExpandedBarsHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "BarController"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget p2, p2, Lcom/android/systemui/bar/BarController;->mQuickQSPanelTop:I

    sub-int/2addr p2, p1

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    iget-object p1, p1, Lcom/android/systemui/bar/BarController;->mBars:Ljava/util/LinkedHashMap;

    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/bar/BarItem;

    instance-of p2, p2, Lcom/android/systemui/bar/QSBarItem;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/bar/BarController$2;->this$0:Lcom/android/systemui/bar/BarController;

    invoke-virtual {p1}, Lcom/android/systemui/bar/BarController;->calculateHiddenExpandedBarsHeight()V

    :cond_3
    return-void
.end method
