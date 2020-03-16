.class Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingAnimatorLollipopImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFab()Landroid/support/design/widget/FloatingActionButton;

    move-result-object p1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl$1;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;

    invoke-virtual {p1}, Lcom/leo/floatingtoolbar/FloatingAnimatorLollipopImpl;->getFloatingToolbar()Lcom/leo/floatingtoolbar/FloatingToolbar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/leo/floatingtoolbar/FloatingToolbar;->setVisibility(I)V

    return-void
.end method
