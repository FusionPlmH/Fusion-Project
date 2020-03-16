.class Lcom/leo/floatingtoolbar/FloatingAnimator$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FloatingAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/leo/floatingtoolbar/FloatingAnimator;->show()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;


# direct methods
.method constructor <init>(Lcom/leo/floatingtoolbar/FloatingAnimator;)V
    .locals 0

    iput-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {p1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$300(Lcom/leo/floatingtoolbar/FloatingAnimator;)Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;

    move-result-object p1

    invoke-interface {p1}, Lcom/leo/floatingtoolbar/FloatingAnimator$FloatingAnimatorListener;->onAnimationFinished()V

    iget-object p1, p0, Lcom/leo/floatingtoolbar/FloatingAnimator$2;->this$0:Lcom/leo/floatingtoolbar/FloatingAnimator;

    invoke-static {p1}, Lcom/leo/floatingtoolbar/FloatingAnimator;->access$400(Lcom/leo/floatingtoolbar/FloatingAnimator;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method
