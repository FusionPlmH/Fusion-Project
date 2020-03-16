.class Lcom/android/systemui/qs/QSFragment$4;
.super Ljava/lang/Object;
.source "QSFragment.java"

# interfaces
.implements Lcom/android/systemui/bar/BarController$QSBarCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/QSFragment;->setBarController(Lcom/android/systemui/bar/BarController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$4;->this$0:Lcom/android/systemui/qs/QSFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQSBarHeightChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$4;->this$0:Lcom/android/systemui/qs/QSFragment;

    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Lcom/android/systemui/qs/QSFragment;->mLastQSExpansion:F

    return-void
.end method

.method public onQSBarLayoutChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$4;->this$0:Lcom/android/systemui/qs/QSFragment;

    iget-object v0, v0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/QSFragment$4;->this$0:Lcom/android/systemui/qs/QSFragment;

    iget-object v0, v0, Lcom/android/systemui/qs/QSFragment;->mContainer:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSContainerImpl;->updateResources()V

    :cond_0
    return-void
.end method
